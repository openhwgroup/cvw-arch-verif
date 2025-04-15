///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaF/WALLY-COV-froundnx.s.S
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


# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x30, x22 # perform first operation
froundnx.s f20, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x11, x30 # perform first operation
froundnx.s f13, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x6, x25 # perform first operation
froundnx.s f11, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f24, f29, f3 # perform first operation
froundnx.s f3, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x27, x15 # perform first operation
froundnx.s f17, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x15, x28 # perform first operation
froundnx.s f15, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f11, f22 # perform first operation
froundnx.s f21, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f22, f18 # perform first operation
froundnx.s f14, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f11, f29 # perform first operation
froundnx.s f7, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f14, f9 # perform first operation
froundnx.s f14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f1, f2 # perform first operation
froundnx.s f2, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f8, f6 # perform first operation
froundnx.s f26, f7 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47d5c980d7817c6b # load x3 with value 0x47d5c980d7817c6b
sw x3, 0(x2) # store 0x47d5c980d7817c6b in memory
flw f0, 0(x2) # load 0x47d5c980d7817c6b from memory into f0
froundnx.s f21, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x34f7144c1e3bfc51 # load x3 with value 0x34f7144c1e3bfc51
sw x3, 0(x2) # store 0x34f7144c1e3bfc51 in memory
flw f1, 0(x2) # load 0x34f7144c1e3bfc51 from memory into f1
froundnx.s f5, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfaff6eccef17f5ad # load x3 with value 0xfaff6eccef17f5ad
sw x3, 0(x2) # store 0xfaff6eccef17f5ad in memory
flw f2, 0(x2) # load 0xfaff6eccef17f5ad from memory into f2
froundnx.s f17, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19fe95492ac83be # load x3 with value 0x19fe95492ac83be
sw x3, 0(x2) # store 0x19fe95492ac83be in memory
flw f3, 0(x2) # load 0x19fe95492ac83be from memory into f3
froundnx.s f17, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc138f66cf2ecad84 # load x3 with value 0xc138f66cf2ecad84
sw x3, 0(x2) # store 0xc138f66cf2ecad84 in memory
flw f4, 0(x2) # load 0xc138f66cf2ecad84 from memory into f4
froundnx.s f12, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x889b797a91f0fd51 # load x3 with value 0x889b797a91f0fd51
sw x3, 0(x2) # store 0x889b797a91f0fd51 in memory
flw f5, 0(x2) # load 0x889b797a91f0fd51 from memory into f5
froundnx.s f12, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8b7d21538f78d822 # load x3 with value 0x8b7d21538f78d822
sw x3, 0(x2) # store 0x8b7d21538f78d822 in memory
flw f6, 0(x2) # load 0x8b7d21538f78d822 from memory into f6
froundnx.s f20, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c075fbab9770283 # load x3 with value 0x2c075fbab9770283
sw x3, 0(x2) # store 0x2c075fbab9770283 in memory
flw f7, 0(x2) # load 0x2c075fbab9770283 from memory into f7
froundnx.s f2, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4c9b515d4be599c # load x3 with value 0xb4c9b515d4be599c
sw x3, 0(x2) # store 0xb4c9b515d4be599c in memory
flw f8, 0(x2) # load 0xb4c9b515d4be599c from memory into f8
froundnx.s f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ec9ecc74a513207 # load x3 with value 0x7ec9ecc74a513207
sw x3, 0(x2) # store 0x7ec9ecc74a513207 in memory
flw f9, 0(x2) # load 0x7ec9ecc74a513207 from memory into f9
froundnx.s f27, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x279e77fd2850a718 # load x3 with value 0x279e77fd2850a718
sw x3, 0(x2) # store 0x279e77fd2850a718 in memory
flw f10, 0(x2) # load 0x279e77fd2850a718 from memory into f10
froundnx.s f3, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7641301192bb5ee # load x3 with value 0xe7641301192bb5ee
sw x3, 0(x2) # store 0xe7641301192bb5ee in memory
flw f11, 0(x2) # load 0xe7641301192bb5ee from memory into f11
froundnx.s f3, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb61b805eb55673c1 # load x3 with value 0xb61b805eb55673c1
sw x3, 0(x2) # store 0xb61b805eb55673c1 in memory
flw f12, 0(x2) # load 0xb61b805eb55673c1 from memory into f12
froundnx.s f2, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x53ceee5bdd90162f # load x3 with value 0x53ceee5bdd90162f
sw x3, 0(x2) # store 0x53ceee5bdd90162f in memory
flw f13, 0(x2) # load 0x53ceee5bdd90162f from memory into f13
froundnx.s f14, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x20340b637960e535 # load x3 with value 0x20340b637960e535
sw x3, 0(x2) # store 0x20340b637960e535 in memory
flw f14, 0(x2) # load 0x20340b637960e535 from memory into f14
froundnx.s f2, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x217aacdad6ed7cde # load x3 with value 0x217aacdad6ed7cde
sw x3, 0(x2) # store 0x217aacdad6ed7cde in memory
flw f15, 0(x2) # load 0x217aacdad6ed7cde from memory into f15
froundnx.s f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x851b8a5d8ab72bd2 # load x3 with value 0x851b8a5d8ab72bd2
sw x3, 0(x2) # store 0x851b8a5d8ab72bd2 in memory
flw f16, 0(x2) # load 0x851b8a5d8ab72bd2 from memory into f16
froundnx.s f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd64ae35d378407c2 # load x3 with value 0xd64ae35d378407c2
sw x3, 0(x2) # store 0xd64ae35d378407c2 in memory
flw f17, 0(x2) # load 0xd64ae35d378407c2 from memory into f17
froundnx.s f1, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5f79d48f343c2b7d # load x3 with value 0x5f79d48f343c2b7d
sw x3, 0(x2) # store 0x5f79d48f343c2b7d in memory
flw f18, 0(x2) # load 0x5f79d48f343c2b7d from memory into f18
froundnx.s f24, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe968339e4a8c3ac6 # load x3 with value 0xe968339e4a8c3ac6
sw x3, 0(x2) # store 0xe968339e4a8c3ac6 in memory
flw f19, 0(x2) # load 0xe968339e4a8c3ac6 from memory into f19
froundnx.s f28, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf198fa06bdb60f85 # load x3 with value 0xf198fa06bdb60f85
sw x3, 0(x2) # store 0xf198fa06bdb60f85 in memory
flw f20, 0(x2) # load 0xf198fa06bdb60f85 from memory into f20
froundnx.s f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2220e76c66892436 # load x3 with value 0x2220e76c66892436
sw x3, 0(x2) # store 0x2220e76c66892436 in memory
flw f21, 0(x2) # load 0x2220e76c66892436 from memory into f21
froundnx.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x188c4861e1c1dc6f # load x3 with value 0x188c4861e1c1dc6f
sw x3, 0(x2) # store 0x188c4861e1c1dc6f in memory
flw f22, 0(x2) # load 0x188c4861e1c1dc6f from memory into f22
froundnx.s f7, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ee6f66291a75154 # load x3 with value 0x2ee6f66291a75154
sw x3, 0(x2) # store 0x2ee6f66291a75154 in memory
flw f23, 0(x2) # load 0x2ee6f66291a75154 from memory into f23
froundnx.s f19, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8669cf9389c45e8 # load x3 with value 0xe8669cf9389c45e8
sw x3, 0(x2) # store 0xe8669cf9389c45e8 in memory
flw f24, 0(x2) # load 0xe8669cf9389c45e8 from memory into f24
froundnx.s f14, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb2a14cc18293418 # load x3 with value 0xeb2a14cc18293418
sw x3, 0(x2) # store 0xeb2a14cc18293418 in memory
flw f25, 0(x2) # load 0xeb2a14cc18293418 from memory into f25
froundnx.s f10, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3d79adce8b3e145c # load x3 with value 0x3d79adce8b3e145c
sw x3, 0(x2) # store 0x3d79adce8b3e145c in memory
flw f26, 0(x2) # load 0x3d79adce8b3e145c from memory into f26
froundnx.s f10, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8e6e9d5dad25493 # load x3 with value 0xe8e6e9d5dad25493
sw x3, 0(x2) # store 0xe8e6e9d5dad25493 in memory
flw f27, 0(x2) # load 0xe8e6e9d5dad25493 from memory into f27
froundnx.s f17, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x582f914820cb0b07 # load x3 with value 0x582f914820cb0b07
sw x3, 0(x2) # store 0x582f914820cb0b07 in memory
flw f28, 0(x2) # load 0x582f914820cb0b07 from memory into f28
froundnx.s f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf54f1b3edaf477ac # load x3 with value 0xf54f1b3edaf477ac
sw x3, 0(x2) # store 0xf54f1b3edaf477ac in memory
flw f29, 0(x2) # load 0xf54f1b3edaf477ac from memory into f29
froundnx.s f8, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23ee522ba46ffe7d # load x3 with value 0x23ee522ba46ffe7d
sw x3, 0(x2) # store 0x23ee522ba46ffe7d in memory
flw f30, 0(x2) # load 0x23ee522ba46ffe7d from memory into f30
froundnx.s f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1aeb88c4174956a2 # load x3 with value 0x1aeb88c4174956a2
sw x3, 0(x2) # store 0x1aeb88c4174956a2 in memory
flw f31, 0(x2) # load 0x1aeb88c4174956a2 from memory into f31
froundnx.s f13, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6923e23520706250 # load x3 with value 0x6923e23520706250
sw x3, 0(x2) # store 0x6923e23520706250 in memory
flw f27, 0(x2) # load 0x6923e23520706250 from memory into f27
froundnx.s f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaeb93244cbf0d85c # load x3 with value 0xaeb93244cbf0d85c
sw x3, 0(x2) # store 0xaeb93244cbf0d85c in memory
flw f20, 0(x2) # load 0xaeb93244cbf0d85c from memory into f20
froundnx.s f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xea97c2cf34689bbb # load x3 with value 0xea97c2cf34689bbb
sw x3, 0(x2) # store 0xea97c2cf34689bbb in memory
flw f24, 0(x2) # load 0xea97c2cf34689bbb from memory into f24
froundnx.s f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1f9b295151515a25 # load x3 with value 0x1f9b295151515a25
sw x3, 0(x2) # store 0x1f9b295151515a25 in memory
flw f6, 0(x2) # load 0x1f9b295151515a25 from memory into f6
froundnx.s f3, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3cf08f93d0f5f52 # load x3 with value 0xb3cf08f93d0f5f52
sw x3, 0(x2) # store 0xb3cf08f93d0f5f52 in memory
flw f25, 0(x2) # load 0xb3cf08f93d0f5f52 from memory into f25
froundnx.s f4, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdd8090e06e5f2f17 # load x3 with value 0xdd8090e06e5f2f17
sw x3, 0(x2) # store 0xdd8090e06e5f2f17 in memory
flw f13, 0(x2) # load 0xdd8090e06e5f2f17 from memory into f13
froundnx.s f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c32da4f1e0527cb # load x3 with value 0x1c32da4f1e0527cb
sw x3, 0(x2) # store 0x1c32da4f1e0527cb in memory
flw f16, 0(x2) # load 0x1c32da4f1e0527cb from memory into f16
froundnx.s f6, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x172980a8202c1cac # load x3 with value 0x172980a8202c1cac
sw x3, 0(x2) # store 0x172980a8202c1cac in memory
flw f13, 0(x2) # load 0x172980a8202c1cac from memory into f13
froundnx.s f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48ef4b90dad2c6e6 # load x3 with value 0x48ef4b90dad2c6e6
sw x3, 0(x2) # store 0x48ef4b90dad2c6e6 in memory
flw f20, 0(x2) # load 0x48ef4b90dad2c6e6 from memory into f20
froundnx.s f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57476f72af835316 # load x3 with value 0x57476f72af835316
sw x3, 0(x2) # store 0x57476f72af835316 in memory
flw f2, 0(x2) # load 0x57476f72af835316 from memory into f2
froundnx.s f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13af1d6435f0c5f2 # load x3 with value 0x13af1d6435f0c5f2
sw x3, 0(x2) # store 0x13af1d6435f0c5f2 in memory
flw f22, 0(x2) # load 0x13af1d6435f0c5f2 from memory into f22
froundnx.s f10, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xedb6bca4cf98148 # load x3 with value 0xedb6bca4cf98148
sw x3, 0(x2) # store 0xedb6bca4cf98148 in memory
flw f22, 0(x2) # load 0xedb6bca4cf98148 from memory into f22
froundnx.s f11, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee5f5648431fabb8 # load x3 with value 0xee5f5648431fabb8
sw x3, 0(x2) # store 0xee5f5648431fabb8 in memory
flw f26, 0(x2) # load 0xee5f5648431fabb8 from memory into f26
froundnx.s f12, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d1452398b8c0248 # load x3 with value 0x5d1452398b8c0248
sw x3, 0(x2) # store 0x5d1452398b8c0248 in memory
flw f22, 0(x2) # load 0x5d1452398b8c0248 from memory into f22
froundnx.s f13, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa96457a64c38d951 # load x3 with value 0xa96457a64c38d951
sw x3, 0(x2) # store 0xa96457a64c38d951 in memory
flw f16, 0(x2) # load 0xa96457a64c38d951 from memory into f16
froundnx.s f14, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ba073df709531ff # load x3 with value 0x4ba073df709531ff
sw x3, 0(x2) # store 0x4ba073df709531ff in memory
flw f23, 0(x2) # load 0x4ba073df709531ff from memory into f23
froundnx.s f15, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaa14f912fd8368c6 # load x3 with value 0xaa14f912fd8368c6
sw x3, 0(x2) # store 0xaa14f912fd8368c6 in memory
flw f2, 0(x2) # load 0xaa14f912fd8368c6 from memory into f2
froundnx.s f16, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd2f39c6a553361dd # load x3 with value 0xd2f39c6a553361dd
sw x3, 0(x2) # store 0xd2f39c6a553361dd in memory
flw f13, 0(x2) # load 0xd2f39c6a553361dd from memory into f13
froundnx.s f17, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26c498088cc4cfcc # load x3 with value 0x26c498088cc4cfcc
sw x3, 0(x2) # store 0x26c498088cc4cfcc in memory
flw f29, 0(x2) # load 0x26c498088cc4cfcc from memory into f29
froundnx.s f18, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc9f6be1e9eac1ab # load x3 with value 0xdc9f6be1e9eac1ab
sw x3, 0(x2) # store 0xdc9f6be1e9eac1ab in memory
flw f10, 0(x2) # load 0xdc9f6be1e9eac1ab from memory into f10
froundnx.s f19, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e4038411b5783c2 # load x3 with value 0x5e4038411b5783c2
sw x3, 0(x2) # store 0x5e4038411b5783c2 in memory
flw f29, 0(x2) # load 0x5e4038411b5783c2 from memory into f29
froundnx.s f20, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacba35bc5d4e270f # load x3 with value 0xacba35bc5d4e270f
sw x3, 0(x2) # store 0xacba35bc5d4e270f in memory
flw f27, 0(x2) # load 0xacba35bc5d4e270f from memory into f27
froundnx.s f21, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4826e94f887de9a1 # load x3 with value 0x4826e94f887de9a1
sw x3, 0(x2) # store 0x4826e94f887de9a1 in memory
flw f9, 0(x2) # load 0x4826e94f887de9a1 from memory into f9
froundnx.s f22, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7ecb68e703b8dea # load x3 with value 0xd7ecb68e703b8dea
sw x3, 0(x2) # store 0xd7ecb68e703b8dea in memory
flw f15, 0(x2) # load 0xd7ecb68e703b8dea from memory into f15
froundnx.s f23, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2053c627f3b11998 # load x3 with value 0x2053c627f3b11998
sw x3, 0(x2) # store 0x2053c627f3b11998 in memory
flw f31, 0(x2) # load 0x2053c627f3b11998 from memory into f31
froundnx.s f24, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93f57a7e2732059 # load x3 with value 0x93f57a7e2732059
sw x3, 0(x2) # store 0x93f57a7e2732059 in memory
flw f29, 0(x2) # load 0x93f57a7e2732059 from memory into f29
froundnx.s f25, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb27d6ac314560a7d # load x3 with value 0xb27d6ac314560a7d
sw x3, 0(x2) # store 0xb27d6ac314560a7d in memory
flw f29, 0(x2) # load 0xb27d6ac314560a7d from memory into f29
froundnx.s f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa665ccf2b84ebbe6 # load x3 with value 0xa665ccf2b84ebbe6
sw x3, 0(x2) # store 0xa665ccf2b84ebbe6 in memory
flw f1, 0(x2) # load 0xa665ccf2b84ebbe6 from memory into f1
froundnx.s f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54debbf96e33b6e4 # load x3 with value 0x54debbf96e33b6e4
sw x3, 0(x2) # store 0x54debbf96e33b6e4 in memory
flw f13, 0(x2) # load 0x54debbf96e33b6e4 from memory into f13
froundnx.s f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6670e024587b69ba # load x3 with value 0x6670e024587b69ba
sw x3, 0(x2) # store 0x6670e024587b69ba in memory
flw f22, 0(x2) # load 0x6670e024587b69ba from memory into f22
froundnx.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc129f01064aa0ec0 # load x3 with value 0xc129f01064aa0ec0
sw x3, 0(x2) # store 0xc129f01064aa0ec0 in memory
flw f8, 0(x2) # load 0xc129f01064aa0ec0 from memory into f8
froundnx.s f30, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2494ef43ab854fd # load x3 with value 0xc2494ef43ab854fd
sw x3, 0(x2) # store 0xc2494ef43ab854fd in memory
flw f16, 0(x2) # load 0xc2494ef43ab854fd from memory into f16
froundnx.s f31, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
froundnx.s f10, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
froundnx.s f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
froundnx.s f19, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
froundnx.s f3, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
froundnx.s f18, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
froundnx.s f2, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
froundnx.s f26, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
froundnx.s f11, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
froundnx.s f20, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
froundnx.s f14, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
froundnx.s f22, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
froundnx.s f10, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
froundnx.s f18, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
froundnx.s f14, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
froundnx.s f26, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
froundnx.s f27, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
froundnx.s f5, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
froundnx.s f27, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
froundnx.s f9, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
froundnx.s f15, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
froundnx.s f5, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
froundnx.s f30, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
froundnx.s f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
froundnx.s f1, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
froundnx.s f11, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
froundnx.s f11, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
froundnx.s f18, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
froundnx.s f2, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27879e3d6a0846a0 # load x3 with value 0x27879e3d6a0846a0
sw x3, 0(x2) # store 0x27879e3d6a0846a0 in memory
flw f0, 0(x2) # load 0x27879e3d6a0846a0 from memory into f0
froundnx.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54f702425e0448bf # load x3 with value 0x54f702425e0448bf
sw x3, 0(x2) # store 0x54f702425e0448bf in memory
flw f1, 0(x2) # load 0x54f702425e0448bf from memory into f1
froundnx.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe649600d467010e3 # load x3 with value 0xe649600d467010e3
sw x3, 0(x2) # store 0xe649600d467010e3 in memory
flw f2, 0(x2) # load 0xe649600d467010e3 from memory into f2
froundnx.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7106dea388f545b7 # load x3 with value 0x7106dea388f545b7
sw x3, 0(x2) # store 0x7106dea388f545b7 in memory
flw f3, 0(x2) # load 0x7106dea388f545b7 from memory into f3
froundnx.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5955a0e23e324d7 # load x3 with value 0xb5955a0e23e324d7
sw x3, 0(x2) # store 0xb5955a0e23e324d7 in memory
flw f4, 0(x2) # load 0xb5955a0e23e324d7 from memory into f4
froundnx.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48eb3fca1593d600 # load x3 with value 0x48eb3fca1593d600
sw x3, 0(x2) # store 0x48eb3fca1593d600 in memory
flw f5, 0(x2) # load 0x48eb3fca1593d600 from memory into f5
froundnx.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfa6e6205c7df2cf9 # load x3 with value 0xfa6e6205c7df2cf9
sw x3, 0(x2) # store 0xfa6e6205c7df2cf9 in memory
flw f6, 0(x2) # load 0xfa6e6205c7df2cf9 from memory into f6
froundnx.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e72d60929395b11 # load x3 with value 0x1e72d60929395b11
sw x3, 0(x2) # store 0x1e72d60929395b11 in memory
flw f7, 0(x2) # load 0x1e72d60929395b11 from memory into f7
froundnx.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3d307cc7b0ee92f # load x3 with value 0xb3d307cc7b0ee92f
sw x3, 0(x2) # store 0xb3d307cc7b0ee92f in memory
flw f8, 0(x2) # load 0xb3d307cc7b0ee92f from memory into f8
froundnx.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fdff2b15f544180 # load x3 with value 0x4fdff2b15f544180
sw x3, 0(x2) # store 0x4fdff2b15f544180 in memory
flw f9, 0(x2) # load 0x4fdff2b15f544180 from memory into f9
froundnx.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12ad007013748aad # load x3 with value 0x12ad007013748aad
sw x3, 0(x2) # store 0x12ad007013748aad in memory
flw f10, 0(x2) # load 0x12ad007013748aad from memory into f10
froundnx.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf566cbef05162d89 # load x3 with value 0xf566cbef05162d89
sw x3, 0(x2) # store 0xf566cbef05162d89 in memory
flw f11, 0(x2) # load 0xf566cbef05162d89 from memory into f11
froundnx.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77655be0ad3ae2d6 # load x3 with value 0x77655be0ad3ae2d6
sw x3, 0(x2) # store 0x77655be0ad3ae2d6 in memory
flw f12, 0(x2) # load 0x77655be0ad3ae2d6 from memory into f12
froundnx.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9ee9710b3e487663 # load x3 with value 0x9ee9710b3e487663
sw x3, 0(x2) # store 0x9ee9710b3e487663 in memory
flw f13, 0(x2) # load 0x9ee9710b3e487663 from memory into f13
froundnx.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb5416e5451db817 # load x3 with value 0xdb5416e5451db817
sw x3, 0(x2) # store 0xdb5416e5451db817 in memory
flw f14, 0(x2) # load 0xdb5416e5451db817 from memory into f14
froundnx.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8ce412c12a4cdcf # load x3 with value 0xe8ce412c12a4cdcf
sw x3, 0(x2) # store 0xe8ce412c12a4cdcf in memory
flw f15, 0(x2) # load 0xe8ce412c12a4cdcf from memory into f15
froundnx.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb1a67d16b6bc9b7d # load x3 with value 0xb1a67d16b6bc9b7d
sw x3, 0(x2) # store 0xb1a67d16b6bc9b7d in memory
flw f16, 0(x2) # load 0xb1a67d16b6bc9b7d from memory into f16
froundnx.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e47117781288fe # load x3 with value 0x4e47117781288fe
sw x3, 0(x2) # store 0x4e47117781288fe in memory
flw f17, 0(x2) # load 0x4e47117781288fe from memory into f17
froundnx.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1d3c2dac09249574 # load x3 with value 0x1d3c2dac09249574
sw x3, 0(x2) # store 0x1d3c2dac09249574 in memory
flw f18, 0(x2) # load 0x1d3c2dac09249574 from memory into f18
froundnx.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1650ff3064e79f43 # load x3 with value 0x1650ff3064e79f43
sw x3, 0(x2) # store 0x1650ff3064e79f43 in memory
flw f19, 0(x2) # load 0x1650ff3064e79f43 from memory into f19
froundnx.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6aeb3ae2a1aa1a69 # load x3 with value 0x6aeb3ae2a1aa1a69
sw x3, 0(x2) # store 0x6aeb3ae2a1aa1a69 in memory
flw f20, 0(x2) # load 0x6aeb3ae2a1aa1a69 from memory into f20
froundnx.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe85bde8915120c25 # load x3 with value 0xe85bde8915120c25
sw x3, 0(x2) # store 0xe85bde8915120c25 in memory
flw f21, 0(x2) # load 0xe85bde8915120c25 from memory into f21
froundnx.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f14a37a6a51eb76 # load x3 with value 0x9f14a37a6a51eb76
sw x3, 0(x2) # store 0x9f14a37a6a51eb76 in memory
flw f22, 0(x2) # load 0x9f14a37a6a51eb76 from memory into f22
froundnx.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x939781406d8fb490 # load x3 with value 0x939781406d8fb490
sw x3, 0(x2) # store 0x939781406d8fb490 in memory
flw f23, 0(x2) # load 0x939781406d8fb490 from memory into f23
froundnx.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x354dd4b3735a1696 # load x3 with value 0x354dd4b3735a1696
sw x3, 0(x2) # store 0x354dd4b3735a1696 in memory
flw f24, 0(x2) # load 0x354dd4b3735a1696 from memory into f24
froundnx.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7cde22b932ab3a96 # load x3 with value 0x7cde22b932ab3a96
sw x3, 0(x2) # store 0x7cde22b932ab3a96 in memory
flw f25, 0(x2) # load 0x7cde22b932ab3a96 from memory into f25
froundnx.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe96869ee6576f477 # load x3 with value 0xe96869ee6576f477
sw x3, 0(x2) # store 0xe96869ee6576f477 in memory
flw f26, 0(x2) # load 0xe96869ee6576f477 from memory into f26
froundnx.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5fe28838a9690a51 # load x3 with value 0x5fe28838a9690a51
sw x3, 0(x2) # store 0x5fe28838a9690a51 in memory
flw f27, 0(x2) # load 0x5fe28838a9690a51 from memory into f27
froundnx.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc9832fd2f8e92b1 # load x3 with value 0xdc9832fd2f8e92b1
sw x3, 0(x2) # store 0xdc9832fd2f8e92b1 in memory
flw f28, 0(x2) # load 0xdc9832fd2f8e92b1 from memory into f28
froundnx.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85548699d759bc5e # load x3 with value 0x85548699d759bc5e
sw x3, 0(x2) # store 0x85548699d759bc5e in memory
flw f29, 0(x2) # load 0x85548699d759bc5e from memory into f29
froundnx.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23d0523b881e0c49 # load x3 with value 0x23d0523b881e0c49
sw x3, 0(x2) # store 0x23d0523b881e0c49 in memory
flw f30, 0(x2) # load 0x23d0523b881e0c49 from memory into f30
froundnx.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x74e0300746a2faa9 # load x3 with value 0x74e0300746a2faa9
sw x3, 0(x2) # store 0x74e0300746a2faa9 in memory
flw f31, 0(x2) # load 0x74e0300746a2faa9 from memory into f31
froundnx.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x269c1b1ed46d9be9 # load x3 with value 0x269c1b1ed46d9be9
sw x3, 0(x2) # store 0x269c1b1ed46d9be9 in memory
flw f3, 0(x2) # load 0x269c1b1ed46d9be9 from memory into f3
froundnx.s f23, f3, dyn # perform operation
froundnx.s f23, f3, rdn # perform operation
froundnx.s f23, f3, rmm # perform operation
froundnx.s f23, f3, rne # perform operation
froundnx.s f23, f3, rtz # perform operation
froundnx.s f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.s f23, f3 # perform operation


.EQU SIGSIZE,0


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
