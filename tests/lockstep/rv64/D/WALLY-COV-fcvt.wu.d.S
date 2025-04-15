///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.wu.d.S
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
li x3, 0x7367e811451e580b # load x3 with value 0x7367e811451e580b
sd x3, 0(x2) # store 0x7367e811451e580b in memory
fld f9, 0(x2) # load 0x7367e811451e580b from memory into f9
fcvt.wu.d x0, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xe304860ad1c4c172 # load x3 with value 0xe304860ad1c4c172
sd x3, 0(x2) # store 0xe304860ad1c4c172 in memory
fld f22, 0(x2) # load 0xe304860ad1c4c172 from memory into f22
fcvt.wu.d x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xfa9bdf26f7eb53e0 # load x3 with value 0xfa9bdf26f7eb53e0
sd x3, 0(x2) # store 0xfa9bdf26f7eb53e0 in memory
fld f29, 0(x2) # load 0xfa9bdf26f7eb53e0 from memory into f29
fcvt.wu.d x2, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x97dc4e594c095391 # load x3 with value 0x97dc4e594c095391
sd x3, 0(x2) # store 0x97dc4e594c095391 in memory
fld f25, 0(x2) # load 0x97dc4e594c095391 from memory into f25
fcvt.wu.d x3, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5f3c284b66454cac # load x3 with value 0x5f3c284b66454cac
sd x3, 0(x2) # store 0x5f3c284b66454cac in memory
fld f21, 0(x2) # load 0x5f3c284b66454cac from memory into f21
fcvt.wu.d x4, f21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf8d59576231355bf # load x3 with value 0xf8d59576231355bf
sd x3, 0(x2) # store 0xf8d59576231355bf in memory
fld f28, 0(x2) # load 0xf8d59576231355bf from memory into f28
fcvt.wu.d x5, f28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7c74cfb640de8145 # load x3 with value 0x7c74cfb640de8145
sd x3, 0(x2) # store 0x7c74cfb640de8145 in memory
fld f26, 0(x2) # load 0x7c74cfb640de8145 from memory into f26
fcvt.wu.d x6, f26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xce3dce8646ef91ab # load x3 with value 0xce3dce8646ef91ab
sd x3, 0(x2) # store 0xce3dce8646ef91ab in memory
fld f28, 0(x2) # load 0xce3dce8646ef91ab from memory into f28
fcvt.wu.d x7, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xf91395cde7b024e5 # load x3 with value 0xf91395cde7b024e5
sd x3, 0(x2) # store 0xf91395cde7b024e5 in memory
fld f13, 0(x2) # load 0xf91395cde7b024e5 from memory into f13
fcvt.wu.d x8, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xe07918d5cbfe9e71 # load x3 with value 0xe07918d5cbfe9e71
sd x3, 0(x2) # store 0xe07918d5cbfe9e71 in memory
fld f5, 0(x2) # load 0xe07918d5cbfe9e71 from memory into f5
fcvt.wu.d x9, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x5ee263cdc9bcb356 # load x3 with value 0x5ee263cdc9bcb356
sd x3, 0(x2) # store 0x5ee263cdc9bcb356 in memory
fld f20, 0(x2) # load 0x5ee263cdc9bcb356 from memory into f20
fcvt.wu.d x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x486c9216e6ee2bea # load x3 with value 0x486c9216e6ee2bea
sd x3, 0(x2) # store 0x486c9216e6ee2bea in memory
fld f7, 0(x2) # load 0x486c9216e6ee2bea from memory into f7
fcvt.wu.d x11, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xa1422ecce78d508c # load x3 with value 0xa1422ecce78d508c
sd x3, 0(x2) # store 0xa1422ecce78d508c in memory
fld f29, 0(x2) # load 0xa1422ecce78d508c from memory into f29
fcvt.wu.d x12, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xa01b198166c0c47e # load x3 with value 0xa01b198166c0c47e
sd x3, 0(x2) # store 0xa01b198166c0c47e in memory
fld f20, 0(x2) # load 0xa01b198166c0c47e from memory into f20
fcvt.wu.d x13, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x83a1cbd5bc694efe # load x3 with value 0x83a1cbd5bc694efe
sd x3, 0(x2) # store 0x83a1cbd5bc694efe in memory
fld f10, 0(x2) # load 0x83a1cbd5bc694efe from memory into f10
fcvt.wu.d x14, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x3ee7c18069b25029 # load x3 with value 0x3ee7c18069b25029
sd x3, 0(x2) # store 0x3ee7c18069b25029 in memory
fld f13, 0(x2) # load 0x3ee7c18069b25029 from memory into f13
fcvt.wu.d x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x380453f86bb0e0a4 # load x3 with value 0x380453f86bb0e0a4
sd x3, 0(x2) # store 0x380453f86bb0e0a4 in memory
fld f6, 0(x2) # load 0x380453f86bb0e0a4 from memory into f6
fcvt.wu.d x16, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x64cac257f4748eba # load x3 with value 0x64cac257f4748eba
sd x3, 0(x2) # store 0x64cac257f4748eba in memory
fld f26, 0(x2) # load 0x64cac257f4748eba from memory into f26
fcvt.wu.d x17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xf096bf2a1fee7b36 # load x3 with value 0xf096bf2a1fee7b36
sd x3, 0(x2) # store 0xf096bf2a1fee7b36 in memory
fld f8, 0(x2) # load 0xf096bf2a1fee7b36 from memory into f8
fcvt.wu.d x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x925a78074dda5a92 # load x3 with value 0x925a78074dda5a92
sd x3, 0(x2) # store 0x925a78074dda5a92 in memory
fld f9, 0(x2) # load 0x925a78074dda5a92 from memory into f9
fcvt.wu.d x19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x96a5efcb7747d142 # load x3 with value 0x96a5efcb7747d142
sd x3, 0(x2) # store 0x96a5efcb7747d142 in memory
fld f19, 0(x2) # load 0x96a5efcb7747d142 from memory into f19
fcvt.wu.d x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x4ac0ec55c44568a1 # load x3 with value 0x4ac0ec55c44568a1
sd x3, 0(x2) # store 0x4ac0ec55c44568a1 in memory
fld f8, 0(x2) # load 0x4ac0ec55c44568a1 from memory into f8
fcvt.wu.d x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x74c9a7db3d34efac # load x3 with value 0x74c9a7db3d34efac
sd x3, 0(x2) # store 0x74c9a7db3d34efac in memory
fld f26, 0(x2) # load 0x74c9a7db3d34efac from memory into f26
fcvt.wu.d x22, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x2b9c7b0b4225beae # load x3 with value 0x2b9c7b0b4225beae
sd x3, 0(x2) # store 0x2b9c7b0b4225beae in memory
fld f25, 0(x2) # load 0x2b9c7b0b4225beae from memory into f25
fcvt.wu.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x18068e944aba6ddf # load x3 with value 0x18068e944aba6ddf
sd x3, 0(x2) # store 0x18068e944aba6ddf in memory
fld f31, 0(x2) # load 0x18068e944aba6ddf from memory into f31
fcvt.wu.d x24, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x1fd47be9b34b28cd # load x3 with value 0x1fd47be9b34b28cd
sd x3, 0(x2) # store 0x1fd47be9b34b28cd in memory
fld f28, 0(x2) # load 0x1fd47be9b34b28cd from memory into f28
fcvt.wu.d x25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x0d294513f0781bb3 # load x3 with value 0x0d294513f0781bb3
sd x3, 0(x2) # store 0x0d294513f0781bb3 in memory
fld f5, 0(x2) # load 0x0d294513f0781bb3 from memory into f5
fcvt.wu.d x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xa3fbf17f315698de # load x3 with value 0xa3fbf17f315698de
sd x3, 0(x2) # store 0xa3fbf17f315698de in memory
fld f13, 0(x2) # load 0xa3fbf17f315698de from memory into f13
fcvt.wu.d x27, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x0ac7710515e00d52 # load x3 with value 0x0ac7710515e00d52
sd x3, 0(x2) # store 0x0ac7710515e00d52 in memory
fld f30, 0(x2) # load 0x0ac7710515e00d52 from memory into f30
fcvt.wu.d x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xbd2f30d6f051e71d # load x3 with value 0xbd2f30d6f051e71d
sd x3, 0(x2) # store 0xbd2f30d6f051e71d in memory
fld f8, 0(x2) # load 0xbd2f30d6f051e71d from memory into f8
fcvt.wu.d x29, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xcdb3331508562b1c # load x3 with value 0xcdb3331508562b1c
sd x3, 0(x2) # store 0xcdb3331508562b1c in memory
fld f19, 0(x2) # load 0xcdb3331508562b1c from memory into f19
fcvt.wu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x4b3fd618a9ea7def # load x3 with value 0x4b3fd618a9ea7def
sd x3, 0(x2) # store 0x4b3fd618a9ea7def in memory
fld f24, 0(x2) # load 0x4b3fd618a9ea7def from memory into f24
fcvt.wu.d x31, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x20, x7 # perform first operation
fcvt.wu.d x29, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x19, x14 # perform first operation
fcvt.wu.d x5, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x5, x24 # perform first operation
fcvt.wu.d x6, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f31, f9, f10 # perform first operation
fcvt.wu.d x25, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x11, x1 # perform first operation
fcvt.wu.d x31, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x29, x9 # perform first operation
fcvt.wu.d x9, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x13, x25 # perform first operation
fcvt.wu.d x11, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x27, x24 # perform first operation
fcvt.wu.d x20, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x16, x17 # perform first operation
fcvt.wu.d x28, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x18, x2 # perform first operation
fcvt.wu.d x14, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x25, x21 # perform first operation
fcvt.wu.d x27, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x9, x23 # perform first operation
fcvt.wu.d x7, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x2, x26 # perform first operation
fcvt.wu.d x2, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x10, x9 # perform first operation
fcvt.wu.d x9, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x3, x31 # perform first operation
fcvt.wu.d x14, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x731e513b8488fea2 # load x3 with value 0x731e513b8488fea2
sd x3, 0(x2) # store 0x731e513b8488fea2 in memory
fld f0, 0(x2) # load 0x731e513b8488fea2 from memory into f0
fcvt.wu.d x21, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xce24d9388f8c8459 # load x3 with value 0xce24d9388f8c8459
sd x3, 0(x2) # store 0xce24d9388f8c8459 in memory
fld f1, 0(x2) # load 0xce24d9388f8c8459 from memory into f1
fcvt.wu.d x3, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xa925d65f0f6d7174 # load x3 with value 0xa925d65f0f6d7174
sd x3, 0(x2) # store 0xa925d65f0f6d7174 in memory
fld f2, 0(x2) # load 0xa925d65f0f6d7174 from memory into f2
fcvt.wu.d x18, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x16ecc98ccfb19e85 # load x3 with value 0x16ecc98ccfb19e85
sd x3, 0(x2) # store 0x16ecc98ccfb19e85 in memory
fld f3, 0(x2) # load 0x16ecc98ccfb19e85 from memory into f3
fcvt.wu.d x25, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9e1cf3618ff7b423 # load x3 with value 0x9e1cf3618ff7b423
sd x3, 0(x2) # store 0x9e1cf3618ff7b423 in memory
fld f4, 0(x2) # load 0x9e1cf3618ff7b423 from memory into f4
fcvt.wu.d x1, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x61d667d99a98891b # load x3 with value 0x61d667d99a98891b
sd x3, 0(x2) # store 0x61d667d99a98891b in memory
fld f5, 0(x2) # load 0x61d667d99a98891b from memory into f5
fcvt.wu.d x29, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc2ba7c05f029db34 # load x3 with value 0xc2ba7c05f029db34
sd x3, 0(x2) # store 0xc2ba7c05f029db34 in memory
fld f6, 0(x2) # load 0xc2ba7c05f029db34 from memory into f6
fcvt.wu.d x20, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3435a8dcbf78f288 # load x3 with value 0x3435a8dcbf78f288
sd x3, 0(x2) # store 0x3435a8dcbf78f288 in memory
fld f7, 0(x2) # load 0x3435a8dcbf78f288 from memory into f7
fcvt.wu.d x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x65ea4d36c70de1dd # load x3 with value 0x65ea4d36c70de1dd
sd x3, 0(x2) # store 0x65ea4d36c70de1dd in memory
fld f8, 0(x2) # load 0x65ea4d36c70de1dd from memory into f8
fcvt.wu.d x14, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xf1f284ac8e51a8ad # load x3 with value 0xf1f284ac8e51a8ad
sd x3, 0(x2) # store 0xf1f284ac8e51a8ad in memory
fld f9, 0(x2) # load 0xf1f284ac8e51a8ad from memory into f9
fcvt.wu.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xc6498e290e651e93 # load x3 with value 0xc6498e290e651e93
sd x3, 0(x2) # store 0xc6498e290e651e93 in memory
fld f10, 0(x2) # load 0xc6498e290e651e93 from memory into f10
fcvt.wu.d x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xdc13edb5ee036f9c # load x3 with value 0xdc13edb5ee036f9c
sd x3, 0(x2) # store 0xdc13edb5ee036f9c in memory
fld f11, 0(x2) # load 0xdc13edb5ee036f9c from memory into f11
fcvt.wu.d x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x3e3d55b59e0d800a # load x3 with value 0x3e3d55b59e0d800a
sd x3, 0(x2) # store 0x3e3d55b59e0d800a in memory
fld f12, 0(x2) # load 0x3e3d55b59e0d800a from memory into f12
fcvt.wu.d x28, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x2610124bc63d0ec6 # load x3 with value 0x2610124bc63d0ec6
sd x3, 0(x2) # store 0x2610124bc63d0ec6 in memory
fld f13, 0(x2) # load 0x2610124bc63d0ec6 from memory into f13
fcvt.wu.d x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x56692794a3c119b8 # load x3 with value 0x56692794a3c119b8
sd x3, 0(x2) # store 0x56692794a3c119b8 in memory
fld f14, 0(x2) # load 0x56692794a3c119b8 from memory into f14
fcvt.wu.d x6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x1e968e768c4309dd # load x3 with value 0x1e968e768c4309dd
sd x3, 0(x2) # store 0x1e968e768c4309dd in memory
fld f15, 0(x2) # load 0x1e968e768c4309dd from memory into f15
fcvt.wu.d x17, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x2cd1f7d3dba42b94 # load x3 with value 0x2cd1f7d3dba42b94
sd x3, 0(x2) # store 0x2cd1f7d3dba42b94 in memory
fld f16, 0(x2) # load 0x2cd1f7d3dba42b94 from memory into f16
fcvt.wu.d x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x2e4f0e72f6913c95 # load x3 with value 0x2e4f0e72f6913c95
sd x3, 0(x2) # store 0x2e4f0e72f6913c95 in memory
fld f17, 0(x2) # load 0x2e4f0e72f6913c95 from memory into f17
fcvt.wu.d x16, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x475286ad73a63036 # load x3 with value 0x475286ad73a63036
sd x3, 0(x2) # store 0x475286ad73a63036 in memory
fld f18, 0(x2) # load 0x475286ad73a63036 from memory into f18
fcvt.wu.d x23, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x0463fdde6b02c1b3 # load x3 with value 0x0463fdde6b02c1b3
sd x3, 0(x2) # store 0x0463fdde6b02c1b3 in memory
fld f19, 0(x2) # load 0x0463fdde6b02c1b3 from memory into f19
fcvt.wu.d x5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xacb58f0d8ffc229a # load x3 with value 0xacb58f0d8ffc229a
sd x3, 0(x2) # store 0xacb58f0d8ffc229a in memory
fld f20, 0(x2) # load 0xacb58f0d8ffc229a from memory into f20
fcvt.wu.d x23, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa6a9f0b739bd66e6 # load x3 with value 0xa6a9f0b739bd66e6
sd x3, 0(x2) # store 0xa6a9f0b739bd66e6 in memory
fld f21, 0(x2) # load 0xa6a9f0b739bd66e6 from memory into f21
fcvt.wu.d x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x0dcf1df6ddabaac4 # load x3 with value 0x0dcf1df6ddabaac4
sd x3, 0(x2) # store 0x0dcf1df6ddabaac4 in memory
fld f22, 0(x2) # load 0x0dcf1df6ddabaac4 from memory into f22
fcvt.wu.d x27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x5bc5d6d9e7e4fce1 # load x3 with value 0x5bc5d6d9e7e4fce1
sd x3, 0(x2) # store 0x5bc5d6d9e7e4fce1 in memory
fld f23, 0(x2) # load 0x5bc5d6d9e7e4fce1 from memory into f23
fcvt.wu.d x23, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x1cf59e4099d652f4 # load x3 with value 0x1cf59e4099d652f4
sd x3, 0(x2) # store 0x1cf59e4099d652f4 in memory
fld f24, 0(x2) # load 0x1cf59e4099d652f4 from memory into f24
fcvt.wu.d x18, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x8e34dc2ea92619ca # load x3 with value 0x8e34dc2ea92619ca
sd x3, 0(x2) # store 0x8e34dc2ea92619ca in memory
fld f25, 0(x2) # load 0x8e34dc2ea92619ca from memory into f25
fcvt.wu.d x25, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xff331a7f9b18caea # load x3 with value 0xff331a7f9b18caea
sd x3, 0(x2) # store 0xff331a7f9b18caea in memory
fld f26, 0(x2) # load 0xff331a7f9b18caea from memory into f26
fcvt.wu.d x23, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x9394ac4a2f0b9fd3 # load x3 with value 0x9394ac4a2f0b9fd3
sd x3, 0(x2) # store 0x9394ac4a2f0b9fd3 in memory
fld f27, 0(x2) # load 0x9394ac4a2f0b9fd3 from memory into f27
fcvt.wu.d x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x6d32b28ce55791cd # load x3 with value 0x6d32b28ce55791cd
sd x3, 0(x2) # store 0x6d32b28ce55791cd in memory
fld f28, 0(x2) # load 0x6d32b28ce55791cd from memory into f28
fcvt.wu.d x10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xd79a7f730eead773 # load x3 with value 0xd79a7f730eead773
sd x3, 0(x2) # store 0xd79a7f730eead773 in memory
fld f29, 0(x2) # load 0xd79a7f730eead773 from memory into f29
fcvt.wu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xe3eb5e69ed53f54d # load x3 with value 0xe3eb5e69ed53f54d
sd x3, 0(x2) # store 0xe3eb5e69ed53f54d in memory
fld f30, 0(x2) # load 0xe3eb5e69ed53f54d from memory into f30
fcvt.wu.d x31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xbb4a673f0bd3ced2 # load x3 with value 0xbb4a673f0bd3ced2
sd x3, 0(x2) # store 0xbb4a673f0bd3ced2 in memory
fld f31, 0(x2) # load 0xbb4a673f0bd3ced2 from memory into f31
fcvt.wu.d x12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fcvt.wu.d x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
fcvt.wu.d x13, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fcvt.wu.d x5, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fcvt.wu.d x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fcvt.wu.d x1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fcvt.wu.d x9, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fcvt.wu.d x11, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
fcvt.wu.d x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fcvt.wu.d x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fcvt.wu.d x19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
fcvt.wu.d x14, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
fcvt.wu.d x12, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fcvt.wu.d x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
fcvt.wu.d x23, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
fcvt.wu.d x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fcvt.wu.d x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fcvt.wu.d x1, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fcvt.wu.d x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fcvt.wu.d x19, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fcvt.wu.d x6, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fcvt.wu.d x8, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fcvt.wu.d x17, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
fcvt.wu.d x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fcvt.wu.d x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fcvt.wu.d x9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f7, 0(x2) # load 0xfff0000000000001 from memory into f7
fcvt.wu.d x1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fcvt.wu.d x21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fcvt.wu.d x10, f16, dyn # perform operation
fcvt.wu.d x10, f16, rdn # perform operation
fcvt.wu.d x10, f16, rmm # perform operation
fcvt.wu.d x10, f16, rne # perform operation
fcvt.wu.d x10, f16, rtz # perform operation
fcvt.wu.d x10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fcvt.wu.d x17, f10, dyn # perform operation
fcvt.wu.d x17, f10, rdn # perform operation
fcvt.wu.d x17, f10, rmm # perform operation
fcvt.wu.d x17, f10, rne # perform operation
fcvt.wu.d x17, f10, rtz # perform operation
fcvt.wu.d x17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
fcvt.wu.d x27, f25, dyn # perform operation
fcvt.wu.d x27, f25, rdn # perform operation
fcvt.wu.d x27, f25, rmm # perform operation
fcvt.wu.d x27, f25, rne # perform operation
fcvt.wu.d x27, f25, rtz # perform operation
fcvt.wu.d x27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fcvt.wu.d x10, f1, dyn # perform operation
fcvt.wu.d x10, f1, rdn # perform operation
fcvt.wu.d x10, f1, rmm # perform operation
fcvt.wu.d x10, f1, rne # perform operation
fcvt.wu.d x10, f1, rtz # perform operation
fcvt.wu.d x10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fcvt.wu.d x6, f1, dyn # perform operation
fcvt.wu.d x6, f1, rdn # perform operation
fcvt.wu.d x6, f1, rmm # perform operation
fcvt.wu.d x6, f1, rne # perform operation
fcvt.wu.d x6, f1, rtz # perform operation
fcvt.wu.d x6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fcvt.wu.d x9, f23, dyn # perform operation
fcvt.wu.d x9, f23, rdn # perform operation
fcvt.wu.d x9, f23, rmm # perform operation
fcvt.wu.d x9, f23, rne # perform operation
fcvt.wu.d x9, f23, rtz # perform operation
fcvt.wu.d x9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fcvt.wu.d x27, f1, dyn # perform operation
fcvt.wu.d x27, f1, rdn # perform operation
fcvt.wu.d x27, f1, rmm # perform operation
fcvt.wu.d x27, f1, rne # perform operation
fcvt.wu.d x27, f1, rtz # perform operation
fcvt.wu.d x27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fcvt.wu.d x20, f19, dyn # perform operation
fcvt.wu.d x20, f19, rdn # perform operation
fcvt.wu.d x20, f19, rmm # perform operation
fcvt.wu.d x20, f19, rne # perform operation
fcvt.wu.d x20, f19, rtz # perform operation
fcvt.wu.d x20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fcvt.wu.d x11, f22, dyn # perform operation
fcvt.wu.d x11, f22, rdn # perform operation
fcvt.wu.d x11, f22, rmm # perform operation
fcvt.wu.d x11, f22, rne # perform operation
fcvt.wu.d x11, f22, rtz # perform operation
fcvt.wu.d x11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fcvt.wu.d x17, f9, dyn # perform operation
fcvt.wu.d x17, f9, rdn # perform operation
fcvt.wu.d x17, f9, rmm # perform operation
fcvt.wu.d x17, f9, rne # perform operation
fcvt.wu.d x17, f9, rtz # perform operation
fcvt.wu.d x17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fcvt.wu.d x3, f7, dyn # perform operation
fcvt.wu.d x3, f7, rdn # perform operation
fcvt.wu.d x3, f7, rmm # perform operation
fcvt.wu.d x3, f7, rne # perform operation
fcvt.wu.d x3, f7, rtz # perform operation
fcvt.wu.d x3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fcvt.wu.d x27, f14, dyn # perform operation
fcvt.wu.d x27, f14, rdn # perform operation
fcvt.wu.d x27, f14, rmm # perform operation
fcvt.wu.d x27, f14, rne # perform operation
fcvt.wu.d x27, f14, rtz # perform operation
fcvt.wu.d x27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
fcvt.wu.d x25, f29, dyn # perform operation
fcvt.wu.d x25, f29, rdn # perform operation
fcvt.wu.d x25, f29, rmm # perform operation
fcvt.wu.d x25, f29, rne # perform operation
fcvt.wu.d x25, f29, rtz # perform operation
fcvt.wu.d x25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fcvt.wu.d x12, f1, dyn # perform operation
fcvt.wu.d x12, f1, rdn # perform operation
fcvt.wu.d x12, f1, rmm # perform operation
fcvt.wu.d x12, f1, rne # perform operation
fcvt.wu.d x12, f1, rtz # perform operation
fcvt.wu.d x12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fcvt.wu.d x9, f7, dyn # perform operation
fcvt.wu.d x9, f7, rdn # perform operation
fcvt.wu.d x9, f7, rmm # perform operation
fcvt.wu.d x9, f7, rne # perform operation
fcvt.wu.d x9, f7, rtz # perform operation
fcvt.wu.d x9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fcvt.wu.d x14, f26, dyn # perform operation
fcvt.wu.d x14, f26, rdn # perform operation
fcvt.wu.d x14, f26, rmm # perform operation
fcvt.wu.d x14, f26, rne # perform operation
fcvt.wu.d x14, f26, rtz # perform operation
fcvt.wu.d x14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fcvt.wu.d x10, f20, dyn # perform operation
fcvt.wu.d x10, f20, rdn # perform operation
fcvt.wu.d x10, f20, rmm # perform operation
fcvt.wu.d x10, f20, rne # perform operation
fcvt.wu.d x10, f20, rtz # perform operation
fcvt.wu.d x10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fcvt.wu.d x8, f31, dyn # perform operation
fcvt.wu.d x8, f31, rdn # perform operation
fcvt.wu.d x8, f31, rmm # perform operation
fcvt.wu.d x8, f31, rne # perform operation
fcvt.wu.d x8, f31, rtz # perform operation
fcvt.wu.d x8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fcvt.wu.d x15, f6, dyn # perform operation
fcvt.wu.d x15, f6, rdn # perform operation
fcvt.wu.d x15, f6, rmm # perform operation
fcvt.wu.d x15, f6, rne # perform operation
fcvt.wu.d x15, f6, rtz # perform operation
fcvt.wu.d x15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x15, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x15, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x15, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x15, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x15, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fcvt.wu.d x1, f10, dyn # perform operation
fcvt.wu.d x1, f10, rdn # perform operation
fcvt.wu.d x1, f10, rmm # perform operation
fcvt.wu.d x1, f10, rne # perform operation
fcvt.wu.d x1, f10, rtz # perform operation
fcvt.wu.d x1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fcvt.wu.d x18, f6, dyn # perform operation
fcvt.wu.d x18, f6, rdn # perform operation
fcvt.wu.d x18, f6, rmm # perform operation
fcvt.wu.d x18, f6, rne # perform operation
fcvt.wu.d x18, f6, rtz # perform operation
fcvt.wu.d x18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fcvt.wu.d x17, f20, dyn # perform operation
fcvt.wu.d x17, f20, rdn # perform operation
fcvt.wu.d x17, f20, rmm # perform operation
fcvt.wu.d x17, f20, rne # perform operation
fcvt.wu.d x17, f20, rtz # perform operation
fcvt.wu.d x17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f29, 0(x2) # load 0xfff8000000000000 from memory into f29
fcvt.wu.d x13, f29, dyn # perform operation
fcvt.wu.d x13, f29, rdn # perform operation
fcvt.wu.d x13, f29, rmm # perform operation
fcvt.wu.d x13, f29, rne # perform operation
fcvt.wu.d x13, f29, rtz # perform operation
fcvt.wu.d x13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fcvt.wu.d x22, f18, dyn # perform operation
fcvt.wu.d x22, f18, rdn # perform operation
fcvt.wu.d x22, f18, rmm # perform operation
fcvt.wu.d x22, f18, rne # perform operation
fcvt.wu.d x22, f18, rtz # perform operation
fcvt.wu.d x22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fcvt.wu.d x16, f28, dyn # perform operation
fcvt.wu.d x16, f28, rdn # perform operation
fcvt.wu.d x16, f28, rmm # perform operation
fcvt.wu.d x16, f28, rne # perform operation
fcvt.wu.d x16, f28, rtz # perform operation
fcvt.wu.d x16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f3, 0(x2) # load 0xfff0000000000001 from memory into f3
fcvt.wu.d x6, f3, dyn # perform operation
fcvt.wu.d x6, f3, rdn # perform operation
fcvt.wu.d x6, f3, rmm # perform operation
fcvt.wu.d x6, f3, rne # perform operation
fcvt.wu.d x6, f3, rtz # perform operation
fcvt.wu.d x6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fcvt.wu.d x13, f21, dyn # perform operation
fcvt.wu.d x13, f21, rdn # perform operation
fcvt.wu.d x13, f21, rmm # perform operation
fcvt.wu.d x13, f21, rne # perform operation
fcvt.wu.d x13, f21, rtz # perform operation
fcvt.wu.d x13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fcvt.wu.d x17, f12, dyn # perform operation
fcvt.wu.d x17, f12, rdn # perform operation
fcvt.wu.d x17, f12, rmm # perform operation
fcvt.wu.d x17, f12, rne # perform operation
fcvt.wu.d x17, f12, rtz # perform operation
fcvt.wu.d x17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0xbbaee17a3770cb50 # load x3 with value 0xbbaee17a3770cb50
sd x3, 0(x2) # store 0xbbaee17a3770cb50 in memory
fld f5, 0(x2) # load 0xbbaee17a3770cb50 from memory into f5
fcvt.wu.d x13, f5, dyn # perform operation
fcvt.wu.d x13, f5, rdn # perform operation
fcvt.wu.d x13, f5, rmm # perform operation
fcvt.wu.d x13, f5, rne # perform operation
fcvt.wu.d x13, f5, rtz # perform operation
fcvt.wu.d x13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)


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
