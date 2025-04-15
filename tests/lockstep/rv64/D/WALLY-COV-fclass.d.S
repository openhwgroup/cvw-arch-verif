///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fclass.d.S
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
li x3, 0x98dbcb9647ea4432 # load x3 with value 0x98dbcb9647ea4432
sd x3, 0(x2) # store 0x98dbcb9647ea4432 in memory
fld f3, 0(x2) # load 0x98dbcb9647ea4432 from memory into f3
fclass.d x0, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x59d472275d99ed67 # load x3 with value 0x59d472275d99ed67
sd x3, 0(x2) # store 0x59d472275d99ed67 in memory
fld f10, 0(x2) # load 0x59d472275d99ed67 from memory into f10
fclass.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x73282aca729f9743 # load x3 with value 0x73282aca729f9743
sd x3, 0(x2) # store 0x73282aca729f9743 in memory
fld f13, 0(x2) # load 0x73282aca729f9743 from memory into f13
fclass.d x2, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xc95fe82ca60b3f88 # load x3 with value 0xc95fe82ca60b3f88
sd x3, 0(x2) # store 0xc95fe82ca60b3f88 in memory
fld f17, 0(x2) # load 0xc95fe82ca60b3f88 from memory into f17
fclass.d x3, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x99febbc057a1123a # load x3 with value 0x99febbc057a1123a
sd x3, 0(x2) # store 0x99febbc057a1123a in memory
fld f30, 0(x2) # load 0x99febbc057a1123a from memory into f30
fclass.d x4, f30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0d21e1034bd5ff24 # load x3 with value 0x0d21e1034bd5ff24
sd x3, 0(x2) # store 0x0d21e1034bd5ff24 in memory
fld f29, 0(x2) # load 0x0d21e1034bd5ff24 from memory into f29
fclass.d x5, f29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x94a8e569fdec5a6e # load x3 with value 0x94a8e569fdec5a6e
sd x3, 0(x2) # store 0x94a8e569fdec5a6e in memory
fld f2, 0(x2) # load 0x94a8e569fdec5a6e from memory into f2
fclass.d x6, f2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5f745fcb5b936614 # load x3 with value 0x5f745fcb5b936614
sd x3, 0(x2) # store 0x5f745fcb5b936614 in memory
fld f3, 0(x2) # load 0x5f745fcb5b936614 from memory into f3
fclass.d x7, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xdf8f9b2681c48de7 # load x3 with value 0xdf8f9b2681c48de7
sd x3, 0(x2) # store 0xdf8f9b2681c48de7 in memory
fld f15, 0(x2) # load 0xdf8f9b2681c48de7 from memory into f15
fclass.d x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x724ae7e79f10e57e # load x3 with value 0x724ae7e79f10e57e
sd x3, 0(x2) # store 0x724ae7e79f10e57e in memory
fld f15, 0(x2) # load 0x724ae7e79f10e57e from memory into f15
fclass.d x9, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x27d63d8fe32a2d00 # load x3 with value 0x27d63d8fe32a2d00
sd x3, 0(x2) # store 0x27d63d8fe32a2d00 in memory
fld f30, 0(x2) # load 0x27d63d8fe32a2d00 from memory into f30
fclass.d x10, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x8b2e87b1b5aa352d # load x3 with value 0x8b2e87b1b5aa352d
sd x3, 0(x2) # store 0x8b2e87b1b5aa352d in memory
fld f22, 0(x2) # load 0x8b2e87b1b5aa352d from memory into f22
fclass.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xb40ecf3eda54df29 # load x3 with value 0xb40ecf3eda54df29
sd x3, 0(x2) # store 0xb40ecf3eda54df29 in memory
fld f12, 0(x2) # load 0xb40ecf3eda54df29 from memory into f12
fclass.d x12, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x7e7cdc1d41676b17 # load x3 with value 0x7e7cdc1d41676b17
sd x3, 0(x2) # store 0x7e7cdc1d41676b17 in memory
fld f29, 0(x2) # load 0x7e7cdc1d41676b17 from memory into f29
fclass.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x521cc40596dc4894 # load x3 with value 0x521cc40596dc4894
sd x3, 0(x2) # store 0x521cc40596dc4894 in memory
fld f11, 0(x2) # load 0x521cc40596dc4894 from memory into f11
fclass.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x8778b50e9e47bb40 # load x3 with value 0x8778b50e9e47bb40
sd x3, 0(x2) # store 0x8778b50e9e47bb40 in memory
fld f31, 0(x2) # load 0x8778b50e9e47bb40 from memory into f31
fclass.d x15, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xa3a2818d5fc396d3 # load x3 with value 0xa3a2818d5fc396d3
sd x3, 0(x2) # store 0xa3a2818d5fc396d3 in memory
fld f18, 0(x2) # load 0xa3a2818d5fc396d3 from memory into f18
fclass.d x16, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x01272f4adb070afe # load x3 with value 0x01272f4adb070afe
sd x3, 0(x2) # store 0x01272f4adb070afe in memory
fld f22, 0(x2) # load 0x01272f4adb070afe from memory into f22
fclass.d x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x9a816becf99b4730 # load x3 with value 0x9a816becf99b4730
sd x3, 0(x2) # store 0x9a816becf99b4730 in memory
fld f24, 0(x2) # load 0x9a816becf99b4730 from memory into f24
fclass.d x18, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xb192b51ddbc9f37c # load x3 with value 0xb192b51ddbc9f37c
sd x3, 0(x2) # store 0xb192b51ddbc9f37c in memory
fld f17, 0(x2) # load 0xb192b51ddbc9f37c from memory into f17
fclass.d x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xe0431ea36a47466e # load x3 with value 0xe0431ea36a47466e
sd x3, 0(x2) # store 0xe0431ea36a47466e in memory
fld f14, 0(x2) # load 0xe0431ea36a47466e from memory into f14
fclass.d x20, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x995c5c863a10c70d # load x3 with value 0x995c5c863a10c70d
sd x3, 0(x2) # store 0x995c5c863a10c70d in memory
fld f1, 0(x2) # load 0x995c5c863a10c70d from memory into f1
fclass.d x21, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x79fc428ca0f1420d # load x3 with value 0x79fc428ca0f1420d
sd x3, 0(x2) # store 0x79fc428ca0f1420d in memory
fld f16, 0(x2) # load 0x79fc428ca0f1420d from memory into f16
fclass.d x22, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xed95cdf8040ce952 # load x3 with value 0xed95cdf8040ce952
sd x3, 0(x2) # store 0xed95cdf8040ce952 in memory
fld f8, 0(x2) # load 0xed95cdf8040ce952 from memory into f8
fclass.d x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x9570ea1a09c004bb # load x3 with value 0x9570ea1a09c004bb
sd x3, 0(x2) # store 0x9570ea1a09c004bb in memory
fld f5, 0(x2) # load 0x9570ea1a09c004bb from memory into f5
fclass.d x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xbe4d7c892ef796a7 # load x3 with value 0xbe4d7c892ef796a7
sd x3, 0(x2) # store 0xbe4d7c892ef796a7 in memory
fld f20, 0(x2) # load 0xbe4d7c892ef796a7 from memory into f20
fclass.d x25, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x58a8107abe4efd12 # load x3 with value 0x58a8107abe4efd12
sd x3, 0(x2) # store 0x58a8107abe4efd12 in memory
fld f1, 0(x2) # load 0x58a8107abe4efd12 from memory into f1
fclass.d x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x0a368359d224c22f # load x3 with value 0x0a368359d224c22f
sd x3, 0(x2) # store 0x0a368359d224c22f in memory
fld f19, 0(x2) # load 0x0a368359d224c22f from memory into f19
fclass.d x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x8d41ee1b3863c522 # load x3 with value 0x8d41ee1b3863c522
sd x3, 0(x2) # store 0x8d41ee1b3863c522 in memory
fld f28, 0(x2) # load 0x8d41ee1b3863c522 from memory into f28
fclass.d x28, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xd10019d190385e3a # load x3 with value 0xd10019d190385e3a
sd x3, 0(x2) # store 0xd10019d190385e3a in memory
fld f1, 0(x2) # load 0xd10019d190385e3a from memory into f1
fclass.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x1c4a2d6fdc64d9c5 # load x3 with value 0x1c4a2d6fdc64d9c5
sd x3, 0(x2) # store 0x1c4a2d6fdc64d9c5 in memory
fld f30, 0(x2) # load 0x1c4a2d6fdc64d9c5 from memory into f30
fclass.d x30, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xe9f440e800c3ff4d # load x3 with value 0xe9f440e800c3ff4d
sd x3, 0(x2) # store 0xe9f440e800c3ff4d in memory
fld f31, 0(x2) # load 0xe9f440e800c3ff4d from memory into f31
fclass.d x31, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x28, x25 # perform first operation
fclass.d x17, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x27, x12 # perform first operation
fclass.d x18, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x8, x16 # perform first operation
fclass.d x30, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f14, f29, f16 # perform first operation
fclass.d x14, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x17, x27 # perform first operation
fclass.d x17, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x3, x1 # perform first operation
fclass.d x3, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x27, x9 # perform first operation
fclass.d x11, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x19, x30 # perform first operation
fclass.d x23, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x20, x17 # perform first operation
fclass.d x11, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x2, x29 # perform first operation
fclass.d x1, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x27, x23 # perform first operation
fclass.d x20, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x23, x19 # perform first operation
fclass.d x1, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x3, x27 # perform first operation
fclass.d x3, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x12, x3 # perform first operation
fclass.d x3, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x27, x3 # perform first operation
fclass.d x31, f13 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xe9042ebb04839e9c # load x3 with value 0xe9042ebb04839e9c
sd x3, 0(x2) # store 0xe9042ebb04839e9c in memory
fld f0, 0(x2) # load 0xe9042ebb04839e9c from memory into f0
fclass.d x18, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xc853e7f9ad2859d5 # load x3 with value 0xc853e7f9ad2859d5
sd x3, 0(x2) # store 0xc853e7f9ad2859d5 in memory
fld f1, 0(x2) # load 0xc853e7f9ad2859d5 from memory into f1
fclass.d x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xd04e2c4040df0254 # load x3 with value 0xd04e2c4040df0254
sd x3, 0(x2) # store 0xd04e2c4040df0254 in memory
fld f2, 0(x2) # load 0xd04e2c4040df0254 from memory into f2
fclass.d x21, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x9371977481a91255 # load x3 with value 0x9371977481a91255
sd x3, 0(x2) # store 0x9371977481a91255 in memory
fld f3, 0(x2) # load 0x9371977481a91255 from memory into f3
fclass.d x1, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xca0bbd7b81d46ebd # load x3 with value 0xca0bbd7b81d46ebd
sd x3, 0(x2) # store 0xca0bbd7b81d46ebd in memory
fld f4, 0(x2) # load 0xca0bbd7b81d46ebd from memory into f4
fclass.d x26, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x41c2c5e76a1fb95f # load x3 with value 0x41c2c5e76a1fb95f
sd x3, 0(x2) # store 0x41c2c5e76a1fb95f in memory
fld f5, 0(x2) # load 0x41c2c5e76a1fb95f from memory into f5
fclass.d x18, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8f126280fd57e70b # load x3 with value 0x8f126280fd57e70b
sd x3, 0(x2) # store 0x8f126280fd57e70b in memory
fld f6, 0(x2) # load 0x8f126280fd57e70b from memory into f6
fclass.d x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
la x2, scratch
li x3, 0xd0edc4853d2711eb # load x3 with value 0xd0edc4853d2711eb
sd x3, 0(x2) # store 0xd0edc4853d2711eb in memory
fld f7, 0(x2) # load 0xd0edc4853d2711eb from memory into f7
fclass.d x29, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x73d6b69a6d693e78 # load x3 with value 0x73d6b69a6d693e78
sd x3, 0(x2) # store 0x73d6b69a6d693e78 in memory
fld f8, 0(x2) # load 0x73d6b69a6d693e78 from memory into f8
fclass.d x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xcbeb5701a5f3880f # load x3 with value 0xcbeb5701a5f3880f
sd x3, 0(x2) # store 0xcbeb5701a5f3880f in memory
fld f9, 0(x2) # load 0xcbeb5701a5f3880f from memory into f9
fclass.d x16, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x6e9bdd4877c33a32 # load x3 with value 0x6e9bdd4877c33a32
sd x3, 0(x2) # store 0x6e9bdd4877c33a32 in memory
fld f10, 0(x2) # load 0x6e9bdd4877c33a32 from memory into f10
fclass.d x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xf5762b0a6da88ccc # load x3 with value 0xf5762b0a6da88ccc
sd x3, 0(x2) # store 0xf5762b0a6da88ccc in memory
fld f11, 0(x2) # load 0xf5762b0a6da88ccc from memory into f11
fclass.d x17, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xed59ed6795dcbfe5 # load x3 with value 0xed59ed6795dcbfe5
sd x3, 0(x2) # store 0xed59ed6795dcbfe5 in memory
fld f12, 0(x2) # load 0xed59ed6795dcbfe5 from memory into f12
fclass.d x23, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x2cf8c6c459930ecf # load x3 with value 0x2cf8c6c459930ecf
sd x3, 0(x2) # store 0x2cf8c6c459930ecf in memory
fld f13, 0(x2) # load 0x2cf8c6c459930ecf from memory into f13
fclass.d x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xbbc85bff51c87763 # load x3 with value 0xbbc85bff51c87763
sd x3, 0(x2) # store 0xbbc85bff51c87763 in memory
fld f14, 0(x2) # load 0xbbc85bff51c87763 from memory into f14
fclass.d x16, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x6d2310ab9e8f2878 # load x3 with value 0x6d2310ab9e8f2878
sd x3, 0(x2) # store 0x6d2310ab9e8f2878 in memory
fld f15, 0(x2) # load 0x6d2310ab9e8f2878 from memory into f15
fclass.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x0ec278635328421f # load x3 with value 0x0ec278635328421f
sd x3, 0(x2) # store 0x0ec278635328421f in memory
fld f16, 0(x2) # load 0x0ec278635328421f from memory into f16
fclass.d x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xc948af122560a635 # load x3 with value 0xc948af122560a635
sd x3, 0(x2) # store 0xc948af122560a635 in memory
fld f17, 0(x2) # load 0xc948af122560a635 from memory into f17
fclass.d x6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xc52341ec3b2b96c7 # load x3 with value 0xc52341ec3b2b96c7
sd x3, 0(x2) # store 0xc52341ec3b2b96c7 in memory
fld f18, 0(x2) # load 0xc52341ec3b2b96c7 from memory into f18
fclass.d x23, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xaed3548736502ea1 # load x3 with value 0xaed3548736502ea1
sd x3, 0(x2) # store 0xaed3548736502ea1 in memory
fld f19, 0(x2) # load 0xaed3548736502ea1 from memory into f19
fclass.d x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x99bbb16530435b7f # load x3 with value 0x99bbb16530435b7f
sd x3, 0(x2) # store 0x99bbb16530435b7f in memory
fld f20, 0(x2) # load 0x99bbb16530435b7f from memory into f20
fclass.d x21, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa2b03dbe567513af # load x3 with value 0xa2b03dbe567513af
sd x3, 0(x2) # store 0xa2b03dbe567513af in memory
fld f21, 0(x2) # load 0xa2b03dbe567513af from memory into f21
fclass.d x9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x11fdd07d44449f54 # load x3 with value 0x11fdd07d44449f54
sd x3, 0(x2) # store 0x11fdd07d44449f54 in memory
fld f22, 0(x2) # load 0x11fdd07d44449f54 from memory into f22
fclass.d x5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x748b0ba2b8b2325a # load x3 with value 0x748b0ba2b8b2325a
sd x3, 0(x2) # store 0x748b0ba2b8b2325a in memory
fld f23, 0(x2) # load 0x748b0ba2b8b2325a from memory into f23
fclass.d x10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x681906205e5bb154 # load x3 with value 0x681906205e5bb154
sd x3, 0(x2) # store 0x681906205e5bb154 in memory
fld f24, 0(x2) # load 0x681906205e5bb154 from memory into f24
fclass.d x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xec9e968a542cce53 # load x3 with value 0xec9e968a542cce53
sd x3, 0(x2) # store 0xec9e968a542cce53 in memory
fld f25, 0(x2) # load 0xec9e968a542cce53 from memory into f25
fclass.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xa51155c4ab01f540 # load x3 with value 0xa51155c4ab01f540
sd x3, 0(x2) # store 0xa51155c4ab01f540 in memory
fld f26, 0(x2) # load 0xa51155c4ab01f540 from memory into f26
fclass.d x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x563d47e2b1285c13 # load x3 with value 0x563d47e2b1285c13
sd x3, 0(x2) # store 0x563d47e2b1285c13 in memory
fld f27, 0(x2) # load 0x563d47e2b1285c13 from memory into f27
fclass.d x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xa9518e31a498b737 # load x3 with value 0xa9518e31a498b737
sd x3, 0(x2) # store 0xa9518e31a498b737 in memory
fld f28, 0(x2) # load 0xa9518e31a498b737 from memory into f28
fclass.d x28, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x3c59ad6898edd217 # load x3 with value 0x3c59ad6898edd217
sd x3, 0(x2) # store 0x3c59ad6898edd217 in memory
fld f29, 0(x2) # load 0x3c59ad6898edd217 from memory into f29
fclass.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x34b952eae71c96e0 # load x3 with value 0x34b952eae71c96e0
sd x3, 0(x2) # store 0x34b952eae71c96e0 in memory
fld f30, 0(x2) # load 0x34b952eae71c96e0 from memory into f30
fclass.d x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xcbf7c1441c2e1b98 # load x3 with value 0xcbf7c1441c2e1b98
sd x3, 0(x2) # store 0xcbf7c1441c2e1b98 in memory
fld f31, 0(x2) # load 0xcbf7c1441c2e1b98 from memory into f31
fclass.d x31, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fclass.d x16, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fclass.d x7, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fclass.d x18, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fclass.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fclass.d x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fclass.d x21, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fclass.d x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fclass.d x10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fclass.d x25, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fclass.d x28, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fclass.d x11, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fclass.d x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fclass.d x31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fclass.d x9, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fclass.d x11, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fclass.d x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fclass.d x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fclass.d x28, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fclass.d x15, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fclass.d x1, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fclass.d x21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fclass.d x10, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f12, 0(x2) # load 0xfff8000000000000 from memory into f12
fclass.d x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fclass.d x11, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fclass.d x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f30, 0(x2) # load 0xfff0000000000001 from memory into f30
fclass.d x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fclass.d x31, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fclass.d x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 728)

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
