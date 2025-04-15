///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fsub.h.S
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
add x6, x20, x15 # perform first operation
fsub.h f23, f25, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x11, x29 # perform first operation
fsub.h f18, f22, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x5, x2 # perform first operation
fsub.h f12, f26, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f31, f17, f11 # perform first operation
fsub.h f17, f31, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f14, f20, f13 # perform first operation
fsub.h f13, f29, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x27, x1 # perform first operation
fsub.h f9, f11, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f12, f11, f10 # perform first operation
fsub.h f12, f9, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f22, f7 # perform first operation
fsub.h f8, f20, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f18, f23 # perform first operation
fsub.h f5, f2, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f22, f15 # perform first operation
fsub.h f22, f12, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f11, f1 # perform first operation
fsub.h f1, f18, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f28, f6 # perform first operation
fsub.h f25, f16, f11 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x2f5a9ed10514cb7b # load x3 with value 0x2f5a9ed10514cb7b
sw x3, 0(x2) # store 0x2f5a9ed10514cb7b in memory
flh f0, 0(x2) # load 0x2f5a9ed10514cb7b from memory into f0
la x2, scratch
li x3, 0xe63e2c9807e2ee67 # load x3 with value 0xe63e2c9807e2ee67
sw x3, 0(x2) # store 0xe63e2c9807e2ee67 in memory
flh f24, 0(x2) # load 0xe63e2c9807e2ee67 from memory into f24
fsub.h f12, f0, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x5a63a545f9fddd44 # load x3 with value 0x5a63a545f9fddd44
sw x3, 0(x2) # store 0x5a63a545f9fddd44 in memory
flh f1, 0(x2) # load 0x5a63a545f9fddd44 from memory into f1
la x2, scratch
li x3, 0x87ac990aab96044d # load x3 with value 0x87ac990aab96044d
sw x3, 0(x2) # store 0x87ac990aab96044d in memory
flh f20, 0(x2) # load 0x87ac990aab96044d from memory into f20
fsub.h f15, f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xaf717f472fa964f9 # load x3 with value 0xaf717f472fa964f9
sw x3, 0(x2) # store 0xaf717f472fa964f9 in memory
flh f2, 0(x2) # load 0xaf717f472fa964f9 from memory into f2
la x2, scratch
li x3, 0x5c49136373db97e # load x3 with value 0x5c49136373db97e
sw x3, 0(x2) # store 0x5c49136373db97e in memory
flh f25, 0(x2) # load 0x5c49136373db97e from memory into f25
fsub.h f27, f2, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x99fe031edc31154f # load x3 with value 0x99fe031edc31154f
sw x3, 0(x2) # store 0x99fe031edc31154f in memory
flh f3, 0(x2) # load 0x99fe031edc31154f from memory into f3
la x2, scratch
li x3, 0x6bf95bc2bca245af # load x3 with value 0x6bf95bc2bca245af
sw x3, 0(x2) # store 0x6bf95bc2bca245af in memory
flh f12, 0(x2) # load 0x6bf95bc2bca245af from memory into f12
fsub.h f22, f3, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd10ff87ba747746 # load x3 with value 0xd10ff87ba747746
sw x3, 0(x2) # store 0xd10ff87ba747746 in memory
flh f4, 0(x2) # load 0xd10ff87ba747746 from memory into f4
la x2, scratch
li x3, 0x6d47b09e4cc7a2ab # load x3 with value 0x6d47b09e4cc7a2ab
sw x3, 0(x2) # store 0x6d47b09e4cc7a2ab in memory
flh f13, 0(x2) # load 0x6d47b09e4cc7a2ab from memory into f13
fsub.h f16, f4, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbdafbf2690ac8495 # load x3 with value 0xbdafbf2690ac8495
sw x3, 0(x2) # store 0xbdafbf2690ac8495 in memory
flh f5, 0(x2) # load 0xbdafbf2690ac8495 from memory into f5
la x2, scratch
li x3, 0x4dc6792a4070d37b # load x3 with value 0x4dc6792a4070d37b
sw x3, 0(x2) # store 0x4dc6792a4070d37b in memory
flh f21, 0(x2) # load 0x4dc6792a4070d37b from memory into f21
fsub.h f18, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x889417626e31351a # load x3 with value 0x889417626e31351a
sw x3, 0(x2) # store 0x889417626e31351a in memory
flh f6, 0(x2) # load 0x889417626e31351a from memory into f6
la x2, scratch
li x3, 0x4b85a7a8a7bc350c # load x3 with value 0x4b85a7a8a7bc350c
sw x3, 0(x2) # store 0x4b85a7a8a7bc350c in memory
flh f23, 0(x2) # load 0x4b85a7a8a7bc350c from memory into f23
fsub.h f25, f6, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2eacdbf516322548 # load x3 with value 0x2eacdbf516322548
sw x3, 0(x2) # store 0x2eacdbf516322548 in memory
flh f7, 0(x2) # load 0x2eacdbf516322548 from memory into f7
la x2, scratch
li x3, 0xbcc5d0bc47cd6dc4 # load x3 with value 0xbcc5d0bc47cd6dc4
sw x3, 0(x2) # store 0xbcc5d0bc47cd6dc4 in memory
flh f17, 0(x2) # load 0xbcc5d0bc47cd6dc4 from memory into f17
fsub.h f1, f7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x4c3d7b022579fb06 # load x3 with value 0x4c3d7b022579fb06
sw x3, 0(x2) # store 0x4c3d7b022579fb06 in memory
flh f8, 0(x2) # load 0x4c3d7b022579fb06 from memory into f8
la x2, scratch
li x3, 0x1f48d43ad363921e # load x3 with value 0x1f48d43ad363921e
sw x3, 0(x2) # store 0x1f48d43ad363921e in memory
flh f19, 0(x2) # load 0x1f48d43ad363921e from memory into f19
fsub.h f21, f8, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x9e730bca04bef886 # load x3 with value 0x9e730bca04bef886
sw x3, 0(x2) # store 0x9e730bca04bef886 in memory
flh f9, 0(x2) # load 0x9e730bca04bef886 from memory into f9
la x2, scratch
li x3, 0xb7fc487a6d601b07 # load x3 with value 0xb7fc487a6d601b07
sw x3, 0(x2) # store 0xb7fc487a6d601b07 in memory
flh f14, 0(x2) # load 0xb7fc487a6d601b07 from memory into f14
fsub.h f15, f9, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x6d0dc757155583b1 # load x3 with value 0x6d0dc757155583b1
sw x3, 0(x2) # store 0x6d0dc757155583b1 in memory
flh f10, 0(x2) # load 0x6d0dc757155583b1 from memory into f10
la x2, scratch
li x3, 0x205f54ad287b8b11 # load x3 with value 0x205f54ad287b8b11
sw x3, 0(x2) # store 0x205f54ad287b8b11 in memory
flh f21, 0(x2) # load 0x205f54ad287b8b11 from memory into f21
fsub.h f19, f10, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x3ac9744dda1887db # load x3 with value 0x3ac9744dda1887db
sw x3, 0(x2) # store 0x3ac9744dda1887db in memory
flh f11, 0(x2) # load 0x3ac9744dda1887db from memory into f11
la x2, scratch
li x3, 0x494c27312c69d9fb # load x3 with value 0x494c27312c69d9fb
sw x3, 0(x2) # store 0x494c27312c69d9fb in memory
flh f14, 0(x2) # load 0x494c27312c69d9fb from memory into f14
fsub.h f15, f11, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xe2bace8e66a2806e # load x3 with value 0xe2bace8e66a2806e
sw x3, 0(x2) # store 0xe2bace8e66a2806e in memory
flh f12, 0(x2) # load 0xe2bace8e66a2806e from memory into f12
la x2, scratch
li x3, 0xb191e82383b00f23 # load x3 with value 0xb191e82383b00f23
sw x3, 0(x2) # store 0xb191e82383b00f23 in memory
flh f21, 0(x2) # load 0xb191e82383b00f23 from memory into f21
fsub.h f19, f12, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x1af90129e92c560f # load x3 with value 0x1af90129e92c560f
sw x3, 0(x2) # store 0x1af90129e92c560f in memory
flh f13, 0(x2) # load 0x1af90129e92c560f from memory into f13
la x2, scratch
li x3, 0x2ec2c3e17bbbff8d # load x3 with value 0x2ec2c3e17bbbff8d
sw x3, 0(x2) # store 0x2ec2c3e17bbbff8d in memory
flh f17, 0(x2) # load 0x2ec2c3e17bbbff8d from memory into f17
fsub.h f11, f13, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x3e3b3070c4c1d1ef # load x3 with value 0x3e3b3070c4c1d1ef
sw x3, 0(x2) # store 0x3e3b3070c4c1d1ef in memory
flh f14, 0(x2) # load 0x3e3b3070c4c1d1ef from memory into f14
la x2, scratch
li x3, 0x99289eacf473510c # load x3 with value 0x99289eacf473510c
sw x3, 0(x2) # store 0x99289eacf473510c in memory
flh f5, 0(x2) # load 0x99289eacf473510c from memory into f5
fsub.h f17, f14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x4be545649cbe925e # load x3 with value 0x4be545649cbe925e
sw x3, 0(x2) # store 0x4be545649cbe925e in memory
flh f15, 0(x2) # load 0x4be545649cbe925e from memory into f15
la x2, scratch
li x3, 0x1c61a3c356047211 # load x3 with value 0x1c61a3c356047211
sw x3, 0(x2) # store 0x1c61a3c356047211 in memory
flh f31, 0(x2) # load 0x1c61a3c356047211 from memory into f31
fsub.h f10, f15, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x6ecf9e620e647711 # load x3 with value 0x6ecf9e620e647711
sw x3, 0(x2) # store 0x6ecf9e620e647711 in memory
flh f16, 0(x2) # load 0x6ecf9e620e647711 from memory into f16
la x2, scratch
li x3, 0x3b82f1f581603f5 # load x3 with value 0x3b82f1f581603f5
sw x3, 0(x2) # store 0x3b82f1f581603f5 in memory
flh f12, 0(x2) # load 0x3b82f1f581603f5 from memory into f12
fsub.h f29, f16, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xf9c65e6a296325c0 # load x3 with value 0xf9c65e6a296325c0
sw x3, 0(x2) # store 0xf9c65e6a296325c0 in memory
flh f17, 0(x2) # load 0xf9c65e6a296325c0 from memory into f17
la x2, scratch
li x3, 0x65668cd929650ebe # load x3 with value 0x65668cd929650ebe
sw x3, 0(x2) # store 0x65668cd929650ebe in memory
flh f26, 0(x2) # load 0x65668cd929650ebe from memory into f26
fsub.h f23, f17, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xa9996d1584618059 # load x3 with value 0xa9996d1584618059
sw x3, 0(x2) # store 0xa9996d1584618059 in memory
flh f18, 0(x2) # load 0xa9996d1584618059 from memory into f18
la x2, scratch
li x3, 0x7cc56e15319cda3c # load x3 with value 0x7cc56e15319cda3c
sw x3, 0(x2) # store 0x7cc56e15319cda3c in memory
flh f10, 0(x2) # load 0x7cc56e15319cda3c from memory into f10
fsub.h f25, f18, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xfdf83be33f9ed767 # load x3 with value 0xfdf83be33f9ed767
sw x3, 0(x2) # store 0xfdf83be33f9ed767 in memory
flh f19, 0(x2) # load 0xfdf83be33f9ed767 from memory into f19
la x2, scratch
li x3, 0x523fae76c60dc855 # load x3 with value 0x523fae76c60dc855
sw x3, 0(x2) # store 0x523fae76c60dc855 in memory
flh f8, 0(x2) # load 0x523fae76c60dc855 from memory into f8
fsub.h f20, f19, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xa1a6fa81873d03c2 # load x3 with value 0xa1a6fa81873d03c2
sw x3, 0(x2) # store 0xa1a6fa81873d03c2 in memory
flh f20, 0(x2) # load 0xa1a6fa81873d03c2 from memory into f20
la x2, scratch
li x3, 0x3b9d7d9f6c34170f # load x3 with value 0x3b9d7d9f6c34170f
sw x3, 0(x2) # store 0x3b9d7d9f6c34170f in memory
flh f31, 0(x2) # load 0x3b9d7d9f6c34170f from memory into f31
fsub.h f8, f20, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xd75a94862e479f97 # load x3 with value 0xd75a94862e479f97
sw x3, 0(x2) # store 0xd75a94862e479f97 in memory
flh f21, 0(x2) # load 0xd75a94862e479f97 from memory into f21
la x2, scratch
li x3, 0x68c3d15c10632b93 # load x3 with value 0x68c3d15c10632b93
sw x3, 0(x2) # store 0x68c3d15c10632b93 in memory
flh f14, 0(x2) # load 0x68c3d15c10632b93 from memory into f14
fsub.h f3, f21, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x131456580c5ac75a # load x3 with value 0x131456580c5ac75a
sw x3, 0(x2) # store 0x131456580c5ac75a in memory
flh f22, 0(x2) # load 0x131456580c5ac75a from memory into f22
la x2, scratch
li x3, 0xe2629670646f4684 # load x3 with value 0xe2629670646f4684
sw x3, 0(x2) # store 0xe2629670646f4684 in memory
flh f1, 0(x2) # load 0xe2629670646f4684 from memory into f1
fsub.h f28, f22, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x4cdedd2b4383a5b2 # load x3 with value 0x4cdedd2b4383a5b2
sw x3, 0(x2) # store 0x4cdedd2b4383a5b2 in memory
flh f23, 0(x2) # load 0x4cdedd2b4383a5b2 from memory into f23
la x2, scratch
li x3, 0x680d567ecf9803cb # load x3 with value 0x680d567ecf9803cb
sw x3, 0(x2) # store 0x680d567ecf9803cb in memory
flh f21, 0(x2) # load 0x680d567ecf9803cb from memory into f21
fsub.h f15, f23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xf4e4ac3e29f0282a # load x3 with value 0xf4e4ac3e29f0282a
sw x3, 0(x2) # store 0xf4e4ac3e29f0282a in memory
flh f24, 0(x2) # load 0xf4e4ac3e29f0282a from memory into f24
la x2, scratch
li x3, 0x9b67d008a5aeb178 # load x3 with value 0x9b67d008a5aeb178
sw x3, 0(x2) # store 0x9b67d008a5aeb178 in memory
flh f15, 0(x2) # load 0x9b67d008a5aeb178 from memory into f15
fsub.h f1, f24, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xb559e7c14fb2cc16 # load x3 with value 0xb559e7c14fb2cc16
sw x3, 0(x2) # store 0xb559e7c14fb2cc16 in memory
flh f25, 0(x2) # load 0xb559e7c14fb2cc16 from memory into f25
la x2, scratch
li x3, 0x381a4b0112d16510 # load x3 with value 0x381a4b0112d16510
sw x3, 0(x2) # store 0x381a4b0112d16510 in memory
flh f1, 0(x2) # load 0x381a4b0112d16510 from memory into f1
fsub.h f24, f25, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x558057b93ba87370 # load x3 with value 0x558057b93ba87370
sw x3, 0(x2) # store 0x558057b93ba87370 in memory
flh f26, 0(x2) # load 0x558057b93ba87370 from memory into f26
la x2, scratch
li x3, 0xeb91ade2f93f96c5 # load x3 with value 0xeb91ade2f93f96c5
sw x3, 0(x2) # store 0xeb91ade2f93f96c5 in memory
flh f10, 0(x2) # load 0xeb91ade2f93f96c5 from memory into f10
fsub.h f26, f26, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x3a0f64d1668467b # load x3 with value 0x3a0f64d1668467b
sw x3, 0(x2) # store 0x3a0f64d1668467b in memory
flh f27, 0(x2) # load 0x3a0f64d1668467b from memory into f27
la x2, scratch
li x3, 0x62a1870f6a036ece # load x3 with value 0x62a1870f6a036ece
sw x3, 0(x2) # store 0x62a1870f6a036ece in memory
flh f22, 0(x2) # load 0x62a1870f6a036ece from memory into f22
fsub.h f28, f27, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x7abf8a106e23d566 # load x3 with value 0x7abf8a106e23d566
sw x3, 0(x2) # store 0x7abf8a106e23d566 in memory
flh f28, 0(x2) # load 0x7abf8a106e23d566 from memory into f28
la x2, scratch
li x3, 0x57f6c55ecf5379a # load x3 with value 0x57f6c55ecf5379a
sw x3, 0(x2) # store 0x57f6c55ecf5379a in memory
flh f22, 0(x2) # load 0x57f6c55ecf5379a from memory into f22
fsub.h f27, f28, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xff3256b0ec625f44 # load x3 with value 0xff3256b0ec625f44
sw x3, 0(x2) # store 0xff3256b0ec625f44 in memory
flh f29, 0(x2) # load 0xff3256b0ec625f44 from memory into f29
la x2, scratch
li x3, 0x17490fd14ba8de89 # load x3 with value 0x17490fd14ba8de89
sw x3, 0(x2) # store 0x17490fd14ba8de89 in memory
flh f11, 0(x2) # load 0x17490fd14ba8de89 from memory into f11
fsub.h f21, f29, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x2e1c80f9b1d69cc3 # load x3 with value 0x2e1c80f9b1d69cc3
sw x3, 0(x2) # store 0x2e1c80f9b1d69cc3 in memory
flh f30, 0(x2) # load 0x2e1c80f9b1d69cc3 from memory into f30
la x2, scratch
li x3, 0x5ed2f5b9846de720 # load x3 with value 0x5ed2f5b9846de720
sw x3, 0(x2) # store 0x5ed2f5b9846de720 in memory
flh f8, 0(x2) # load 0x5ed2f5b9846de720 from memory into f8
fsub.h f18, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xed241aa18bafaed5 # load x3 with value 0xed241aa18bafaed5
sw x3, 0(x2) # store 0xed241aa18bafaed5 in memory
flh f31, 0(x2) # load 0xed241aa18bafaed5 from memory into f31
la x2, scratch
li x3, 0x7049e35d26a323ff # load x3 with value 0x7049e35d26a323ff
sw x3, 0(x2) # store 0x7049e35d26a323ff in memory
flh f23, 0(x2) # load 0x7049e35d26a323ff from memory into f23
fsub.h f16, f31, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x8cef6f7e5b391a33 # load x3 with value 0x8cef6f7e5b391a33
sw x3, 0(x2) # store 0x8cef6f7e5b391a33 in memory
flh f2, 0(x2) # load 0x8cef6f7e5b391a33 from memory into f2
la x2, scratch
li x3, 0x72d1fb216bc1e642 # load x3 with value 0x72d1fb216bc1e642
sw x3, 0(x2) # store 0x72d1fb216bc1e642 in memory
flh f0, 0(x2) # load 0x72d1fb216bc1e642 from memory into f0
fsub.h f8, f2, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x5310cee396b60c36 # load x3 with value 0x5310cee396b60c36
sw x3, 0(x2) # store 0x5310cee396b60c36 in memory
flh f19, 0(x2) # load 0x5310cee396b60c36 from memory into f19
la x2, scratch
li x3, 0x8406ee9c34af1882 # load x3 with value 0x8406ee9c34af1882
sw x3, 0(x2) # store 0x8406ee9c34af1882 in memory
flh f1, 0(x2) # load 0x8406ee9c34af1882 from memory into f1
fsub.h f18, f19, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x53e885cadbba77ce # load x3 with value 0x53e885cadbba77ce
sw x3, 0(x2) # store 0x53e885cadbba77ce in memory
flh f3, 0(x2) # load 0x53e885cadbba77ce from memory into f3
la x2, scratch
li x3, 0xdecefe517be1a1f6 # load x3 with value 0xdecefe517be1a1f6
sw x3, 0(x2) # store 0xdecefe517be1a1f6 in memory
flh f2, 0(x2) # load 0xdecefe517be1a1f6 from memory into f2
fsub.h f24, f3, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x1fd7419e2247d154 # load x3 with value 0x1fd7419e2247d154
sw x3, 0(x2) # store 0x1fd7419e2247d154 in memory
flh f7, 0(x2) # load 0x1fd7419e2247d154 from memory into f7
la x2, scratch
li x3, 0x9af2c7db337e6ca6 # load x3 with value 0x9af2c7db337e6ca6
sw x3, 0(x2) # store 0x9af2c7db337e6ca6 in memory
flh f3, 0(x2) # load 0x9af2c7db337e6ca6 from memory into f3
fsub.h f9, f7, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe3073b29fe0810db # load x3 with value 0xe3073b29fe0810db
sw x3, 0(x2) # store 0xe3073b29fe0810db in memory
flh f5, 0(x2) # load 0xe3073b29fe0810db from memory into f5
la x2, scratch
li x3, 0xd6247b7233ec819e # load x3 with value 0xd6247b7233ec819e
sw x3, 0(x2) # store 0xd6247b7233ec819e in memory
flh f4, 0(x2) # load 0xd6247b7233ec819e from memory into f4
fsub.h f24, f5, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
la x2, scratch
li x3, 0x99b9d3e7beab3ba6 # load x3 with value 0x99b9d3e7beab3ba6
sw x3, 0(x2) # store 0x99b9d3e7beab3ba6 in memory
flh f9, 0(x2) # load 0x99b9d3e7beab3ba6 from memory into f9
la x2, scratch
li x3, 0x81f87c9dca98e461 # load x3 with value 0x81f87c9dca98e461
sw x3, 0(x2) # store 0x81f87c9dca98e461 in memory
flh f5, 0(x2) # load 0x81f87c9dca98e461 from memory into f5
fsub.h f3, f9, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4edc92c2e2bac78d # load x3 with value 0x4edc92c2e2bac78d
sw x3, 0(x2) # store 0x4edc92c2e2bac78d in memory
flh f29, 0(x2) # load 0x4edc92c2e2bac78d from memory into f29
la x2, scratch
li x3, 0xf8e9856370ec5c8b # load x3 with value 0xf8e9856370ec5c8b
sw x3, 0(x2) # store 0xf8e9856370ec5c8b in memory
flh f6, 0(x2) # load 0xf8e9856370ec5c8b from memory into f6
fsub.h f31, f29, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x148bfb95abc267ce # load x3 with value 0x148bfb95abc267ce
sw x3, 0(x2) # store 0x148bfb95abc267ce in memory
flh f2, 0(x2) # load 0x148bfb95abc267ce from memory into f2
la x2, scratch
li x3, 0x4b5270b110b7ce90 # load x3 with value 0x4b5270b110b7ce90
sw x3, 0(x2) # store 0x4b5270b110b7ce90 in memory
flh f7, 0(x2) # load 0x4b5270b110b7ce90 from memory into f7
fsub.h f26, f2, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x8a31719a9bee7ad6 # load x3 with value 0x8a31719a9bee7ad6
sw x3, 0(x2) # store 0x8a31719a9bee7ad6 in memory
flh f23, 0(x2) # load 0x8a31719a9bee7ad6 from memory into f23
la x2, scratch
li x3, 0x9c18bb9f0597c196 # load x3 with value 0x9c18bb9f0597c196
sw x3, 0(x2) # store 0x9c18bb9f0597c196 in memory
flh f8, 0(x2) # load 0x9c18bb9f0597c196 from memory into f8
fsub.h f20, f23, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xf52851e647f532f5 # load x3 with value 0xf52851e647f532f5
sw x3, 0(x2) # store 0xf52851e647f532f5 in memory
flh f30, 0(x2) # load 0xf52851e647f532f5 from memory into f30
la x2, scratch
li x3, 0x2ab942b3abd673fc # load x3 with value 0x2ab942b3abd673fc
sw x3, 0(x2) # store 0x2ab942b3abd673fc in memory
flh f9, 0(x2) # load 0x2ab942b3abd673fc from memory into f9
fsub.h f2, f30, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x98e34ec8bcabf31 # load x3 with value 0x98e34ec8bcabf31
sw x3, 0(x2) # store 0x98e34ec8bcabf31 in memory
flh f26, 0(x2) # load 0x98e34ec8bcabf31 from memory into f26
la x2, scratch
li x3, 0xd7ce24b03122de33 # load x3 with value 0xd7ce24b03122de33
sw x3, 0(x2) # store 0xd7ce24b03122de33 in memory
flh f10, 0(x2) # load 0xd7ce24b03122de33 from memory into f10
fsub.h f6, f26, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x11fb743cb84b3395 # load x3 with value 0x11fb743cb84b3395
sw x3, 0(x2) # store 0x11fb743cb84b3395 in memory
flh f12, 0(x2) # load 0x11fb743cb84b3395 from memory into f12
la x2, scratch
li x3, 0xb655b2d1369bdaac # load x3 with value 0xb655b2d1369bdaac
sw x3, 0(x2) # store 0xb655b2d1369bdaac in memory
flh f11, 0(x2) # load 0xb655b2d1369bdaac from memory into f11
fsub.h f10, f12, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0xca073766bc5e031e # load x3 with value 0xca073766bc5e031e
sw x3, 0(x2) # store 0xca073766bc5e031e in memory
flh f10, 0(x2) # load 0xca073766bc5e031e from memory into f10
la x2, scratch
li x3, 0xc26be1bd161b3048 # load x3 with value 0xc26be1bd161b3048
sw x3, 0(x2) # store 0xc26be1bd161b3048 in memory
flh f12, 0(x2) # load 0xc26be1bd161b3048 from memory into f12
fsub.h f22, f10, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x80d0a3a9ca444e6c # load x3 with value 0x80d0a3a9ca444e6c
sw x3, 0(x2) # store 0x80d0a3a9ca444e6c in memory
flh f6, 0(x2) # load 0x80d0a3a9ca444e6c from memory into f6
la x2, scratch
li x3, 0x96ec46aa425f891a # load x3 with value 0x96ec46aa425f891a
sw x3, 0(x2) # store 0x96ec46aa425f891a in memory
flh f13, 0(x2) # load 0x96ec46aa425f891a from memory into f13
fsub.h f3, f6, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x1c5e188e592fdf59 # load x3 with value 0x1c5e188e592fdf59
sw x3, 0(x2) # store 0x1c5e188e592fdf59 in memory
flh f29, 0(x2) # load 0x1c5e188e592fdf59 from memory into f29
la x2, scratch
li x3, 0x953440af6e3657fd # load x3 with value 0x953440af6e3657fd
sw x3, 0(x2) # store 0x953440af6e3657fd in memory
flh f14, 0(x2) # load 0x953440af6e3657fd from memory into f14
fsub.h f5, f29, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xc77c2c01e3ed300c # load x3 with value 0xc77c2c01e3ed300c
sw x3, 0(x2) # store 0xc77c2c01e3ed300c in memory
flh f5, 0(x2) # load 0xc77c2c01e3ed300c from memory into f5
la x2, scratch
li x3, 0x6240487ead7297e5 # load x3 with value 0x6240487ead7297e5
sw x3, 0(x2) # store 0x6240487ead7297e5 in memory
flh f15, 0(x2) # load 0x6240487ead7297e5 from memory into f15
fsub.h f9, f5, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x367ba4f922bbb6ae # load x3 with value 0x367ba4f922bbb6ae
sw x3, 0(x2) # store 0x367ba4f922bbb6ae in memory
flh f20, 0(x2) # load 0x367ba4f922bbb6ae from memory into f20
la x2, scratch
li x3, 0x90f1754d8febd9ac # load x3 with value 0x90f1754d8febd9ac
sw x3, 0(x2) # store 0x90f1754d8febd9ac in memory
flh f16, 0(x2) # load 0x90f1754d8febd9ac from memory into f16
fsub.h f30, f20, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xa396c2c11be63184 # load x3 with value 0xa396c2c11be63184
sw x3, 0(x2) # store 0xa396c2c11be63184 in memory
flh f23, 0(x2) # load 0xa396c2c11be63184 from memory into f23
la x2, scratch
li x3, 0x769e99971ee65367 # load x3 with value 0x769e99971ee65367
sw x3, 0(x2) # store 0x769e99971ee65367 in memory
flh f17, 0(x2) # load 0x769e99971ee65367 from memory into f17
fsub.h f20, f23, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xaad494cefd43d1b3 # load x3 with value 0xaad494cefd43d1b3
sw x3, 0(x2) # store 0xaad494cefd43d1b3 in memory
flh f22, 0(x2) # load 0xaad494cefd43d1b3 from memory into f22
la x2, scratch
li x3, 0x34f340beb21469a8 # load x3 with value 0x34f340beb21469a8
sw x3, 0(x2) # store 0x34f340beb21469a8 in memory
flh f18, 0(x2) # load 0x34f340beb21469a8 from memory into f18
fsub.h f8, f22, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x4bf962e5de53d5c0 # load x3 with value 0x4bf962e5de53d5c0
sw x3, 0(x2) # store 0x4bf962e5de53d5c0 in memory
flh f29, 0(x2) # load 0x4bf962e5de53d5c0 from memory into f29
la x2, scratch
li x3, 0xfd68b1431a9e5787 # load x3 with value 0xfd68b1431a9e5787
sw x3, 0(x2) # store 0xfd68b1431a9e5787 in memory
flh f19, 0(x2) # load 0xfd68b1431a9e5787 from memory into f19
fsub.h f14, f29, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x92925cec18cbdb49 # load x3 with value 0x92925cec18cbdb49
sw x3, 0(x2) # store 0x92925cec18cbdb49 in memory
flh f11, 0(x2) # load 0x92925cec18cbdb49 from memory into f11
la x2, scratch
li x3, 0x3b93d11ffc2bddce # load x3 with value 0x3b93d11ffc2bddce
sw x3, 0(x2) # store 0x3b93d11ffc2bddce in memory
flh f20, 0(x2) # load 0x3b93d11ffc2bddce from memory into f20
fsub.h f24, f11, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x85d774d32288a59f # load x3 with value 0x85d774d32288a59f
sw x3, 0(x2) # store 0x85d774d32288a59f in memory
flh f10, 0(x2) # load 0x85d774d32288a59f from memory into f10
la x2, scratch
li x3, 0xe255e2c73f577434 # load x3 with value 0xe255e2c73f577434
sw x3, 0(x2) # store 0xe255e2c73f577434 in memory
flh f21, 0(x2) # load 0xe255e2c73f577434 from memory into f21
fsub.h f31, f10, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xcb6bfdda9916d6bf # load x3 with value 0xcb6bfdda9916d6bf
sw x3, 0(x2) # store 0xcb6bfdda9916d6bf in memory
flh f13, 0(x2) # load 0xcb6bfdda9916d6bf from memory into f13
la x2, scratch
li x3, 0x3b61cd1035d9ea04 # load x3 with value 0x3b61cd1035d9ea04
sw x3, 0(x2) # store 0x3b61cd1035d9ea04 in memory
flh f22, 0(x2) # load 0x3b61cd1035d9ea04 from memory into f22
fsub.h f19, f13, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xa210ccb529d0997e # load x3 with value 0xa210ccb529d0997e
sw x3, 0(x2) # store 0xa210ccb529d0997e in memory
flh f8, 0(x2) # load 0xa210ccb529d0997e from memory into f8
la x2, scratch
li x3, 0x273715da317dc2b9 # load x3 with value 0x273715da317dc2b9
sw x3, 0(x2) # store 0x273715da317dc2b9 in memory
flh f23, 0(x2) # load 0x273715da317dc2b9 from memory into f23
fsub.h f20, f8, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x2c0a20dd2a3158b2 # load x3 with value 0x2c0a20dd2a3158b2
sw x3, 0(x2) # store 0x2c0a20dd2a3158b2 in memory
flh f11, 0(x2) # load 0x2c0a20dd2a3158b2 from memory into f11
la x2, scratch
li x3, 0x62d2b9e129917a7b # load x3 with value 0x62d2b9e129917a7b
sw x3, 0(x2) # store 0x62d2b9e129917a7b in memory
flh f24, 0(x2) # load 0x62d2b9e129917a7b from memory into f24
fsub.h f20, f11, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x8699a8f50d34d968 # load x3 with value 0x8699a8f50d34d968
sw x3, 0(x2) # store 0x8699a8f50d34d968 in memory
flh f9, 0(x2) # load 0x8699a8f50d34d968 from memory into f9
la x2, scratch
li x3, 0x68502aca2cae1ce7 # load x3 with value 0x68502aca2cae1ce7
sw x3, 0(x2) # store 0x68502aca2cae1ce7 in memory
flh f25, 0(x2) # load 0x68502aca2cae1ce7 from memory into f25
fsub.h f22, f9, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x5d5e4fc4ca88658 # load x3 with value 0x5d5e4fc4ca88658
sw x3, 0(x2) # store 0x5d5e4fc4ca88658 in memory
flh f15, 0(x2) # load 0x5d5e4fc4ca88658 from memory into f15
la x2, scratch
li x3, 0x82361b5598b3f1a5 # load x3 with value 0x82361b5598b3f1a5
sw x3, 0(x2) # store 0x82361b5598b3f1a5 in memory
flh f26, 0(x2) # load 0x82361b5598b3f1a5 from memory into f26
fsub.h f14, f15, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x4122da43850c2b75 # load x3 with value 0x4122da43850c2b75
sw x3, 0(x2) # store 0x4122da43850c2b75 in memory
flh f25, 0(x2) # load 0x4122da43850c2b75 from memory into f25
la x2, scratch
li x3, 0x74f24da239b50ceb # load x3 with value 0x74f24da239b50ceb
sw x3, 0(x2) # store 0x74f24da239b50ceb in memory
flh f27, 0(x2) # load 0x74f24da239b50ceb from memory into f27
fsub.h f22, f25, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x6b71d8104c6219e7 # load x3 with value 0x6b71d8104c6219e7
sw x3, 0(x2) # store 0x6b71d8104c6219e7 in memory
flh f19, 0(x2) # load 0x6b71d8104c6219e7 from memory into f19
la x2, scratch
li x3, 0x6022a4b44b46c980 # load x3 with value 0x6022a4b44b46c980
sw x3, 0(x2) # store 0x6022a4b44b46c980 in memory
flh f28, 0(x2) # load 0x6022a4b44b46c980 from memory into f28
fsub.h f15, f19, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xce550268f11f6492 # load x3 with value 0xce550268f11f6492
sw x3, 0(x2) # store 0xce550268f11f6492 in memory
flh f5, 0(x2) # load 0xce550268f11f6492 from memory into f5
la x2, scratch
li x3, 0x21838d66db63d2cb # load x3 with value 0x21838d66db63d2cb
sw x3, 0(x2) # store 0x21838d66db63d2cb in memory
flh f29, 0(x2) # load 0x21838d66db63d2cb from memory into f29
fsub.h f20, f5, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x14f91a5a43aabf70 # load x3 with value 0x14f91a5a43aabf70
sw x3, 0(x2) # store 0x14f91a5a43aabf70 in memory
flh f19, 0(x2) # load 0x14f91a5a43aabf70 from memory into f19
la x2, scratch
li x3, 0xad9e96f2ec093906 # load x3 with value 0xad9e96f2ec093906
sw x3, 0(x2) # store 0xad9e96f2ec093906 in memory
flh f30, 0(x2) # load 0xad9e96f2ec093906 from memory into f30
fsub.h f13, f19, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xc8b505e2023fa42a # load x3 with value 0xc8b505e2023fa42a
sw x3, 0(x2) # store 0xc8b505e2023fa42a in memory
flh f25, 0(x2) # load 0xc8b505e2023fa42a from memory into f25
la x2, scratch
li x3, 0xfc0f8a4b3144fbc6 # load x3 with value 0xfc0f8a4b3144fbc6
sw x3, 0(x2) # store 0xfc0f8a4b3144fbc6 in memory
flh f31, 0(x2) # load 0xfc0f8a4b3144fbc6 from memory into f31
fsub.h f10, f25, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x871e879368585ae5 # load x3 with value 0x871e879368585ae5
sw x3, 0(x2) # store 0x871e879368585ae5 in memory
flh f1, 0(x2) # load 0x871e879368585ae5 from memory into f1
la x2, scratch
li x3, 0xeecfa6f396b7435 # load x3 with value 0xeecfa6f396b7435
sw x3, 0(x2) # store 0xeecfa6f396b7435 in memory
flh f30, 0(x2) # load 0xeecfa6f396b7435 from memory into f30
fsub.h f0, f1, f30 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x6cfe7394ff95bfda # load x3 with value 0x6cfe7394ff95bfda
sw x3, 0(x2) # store 0x6cfe7394ff95bfda in memory
flh f7, 0(x2) # load 0x6cfe7394ff95bfda from memory into f7
la x2, scratch
li x3, 0x7f952ea9fe1712da # load x3 with value 0x7f952ea9fe1712da
sw x3, 0(x2) # store 0x7f952ea9fe1712da in memory
flh f17, 0(x2) # load 0x7f952ea9fe1712da from memory into f17
fsub.h f1, f7, f17 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xf99ea5d921f568e3 # load x3 with value 0xf99ea5d921f568e3
sw x3, 0(x2) # store 0xf99ea5d921f568e3 in memory
flh f25, 0(x2) # load 0xf99ea5d921f568e3 from memory into f25
la x2, scratch
li x3, 0x41bf0ac00c9a2488 # load x3 with value 0x41bf0ac00c9a2488
sw x3, 0(x2) # store 0x41bf0ac00c9a2488 in memory
flh f23, 0(x2) # load 0x41bf0ac00c9a2488 from memory into f23
fsub.h f2, f25, f23 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0xbf3b07f7dff330a6 # load x3 with value 0xbf3b07f7dff330a6
sw x3, 0(x2) # store 0xbf3b07f7dff330a6 in memory
flh f8, 0(x2) # load 0xbf3b07f7dff330a6 from memory into f8
la x2, scratch
li x3, 0x4a0991722598d637 # load x3 with value 0x4a0991722598d637
sw x3, 0(x2) # store 0x4a0991722598d637 in memory
flh f13, 0(x2) # load 0x4a0991722598d637 from memory into f13
fsub.h f3, f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfe16290c331abc6b # load x3 with value 0xfe16290c331abc6b
sw x3, 0(x2) # store 0xfe16290c331abc6b in memory
flh f30, 0(x2) # load 0xfe16290c331abc6b from memory into f30
la x2, scratch
li x3, 0x393442a2029fdb12 # load x3 with value 0x393442a2029fdb12
sw x3, 0(x2) # store 0x393442a2029fdb12 in memory
flh f21, 0(x2) # load 0x393442a2029fdb12 from memory into f21
fsub.h f4, f30, f21 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb4144f347b2cf05d # load x3 with value 0xb4144f347b2cf05d
sw x3, 0(x2) # store 0xb4144f347b2cf05d in memory
flh f22, 0(x2) # load 0xb4144f347b2cf05d from memory into f22
la x2, scratch
li x3, 0xdb2f32fb246b4aff # load x3 with value 0xdb2f32fb246b4aff
sw x3, 0(x2) # store 0xdb2f32fb246b4aff in memory
flh f13, 0(x2) # load 0xdb2f32fb246b4aff from memory into f13
fsub.h f5, f22, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x49541bfcfadbc8b2 # load x3 with value 0x49541bfcfadbc8b2
sw x3, 0(x2) # store 0x49541bfcfadbc8b2 in memory
flh f3, 0(x2) # load 0x49541bfcfadbc8b2 from memory into f3
la x2, scratch
li x3, 0x6b0cd26066012eea # load x3 with value 0x6b0cd26066012eea
sw x3, 0(x2) # store 0x6b0cd26066012eea in memory
flh f8, 0(x2) # load 0x6b0cd26066012eea from memory into f8
fsub.h f6, f3, f8 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4c45302a96db0065 # load x3 with value 0x4c45302a96db0065
sw x3, 0(x2) # store 0x4c45302a96db0065 in memory
flh f21, 0(x2) # load 0x4c45302a96db0065 from memory into f21
la x2, scratch
li x3, 0x622797a70e3ccee6 # load x3 with value 0x622797a70e3ccee6
sw x3, 0(x2) # store 0x622797a70e3ccee6 in memory
flh f12, 0(x2) # load 0x622797a70e3ccee6 from memory into f12
fsub.h f7, f21, f12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0xc5e8355b507fa761 # load x3 with value 0xc5e8355b507fa761
sw x3, 0(x2) # store 0xc5e8355b507fa761 in memory
flh f21, 0(x2) # load 0xc5e8355b507fa761 from memory into f21
la x2, scratch
li x3, 0x782ff46aab9db2b7 # load x3 with value 0x782ff46aab9db2b7
sw x3, 0(x2) # store 0x782ff46aab9db2b7 in memory
flh f2, 0(x2) # load 0x782ff46aab9db2b7 from memory into f2
fsub.h f8, f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x3f8c9dbe23d5c17d # load x3 with value 0x3f8c9dbe23d5c17d
sw x3, 0(x2) # store 0x3f8c9dbe23d5c17d in memory
flh f20, 0(x2) # load 0x3f8c9dbe23d5c17d from memory into f20
la x2, scratch
li x3, 0x615f965005a65532 # load x3 with value 0x615f965005a65532
sw x3, 0(x2) # store 0x615f965005a65532 in memory
flh f24, 0(x2) # load 0x615f965005a65532 from memory into f24
fsub.h f9, f20, f24 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xc6d42e196e0049d8 # load x3 with value 0xc6d42e196e0049d8
sw x3, 0(x2) # store 0xc6d42e196e0049d8 in memory
flh f27, 0(x2) # load 0xc6d42e196e0049d8 from memory into f27
la x2, scratch
li x3, 0x15555d4ac398e8c6 # load x3 with value 0x15555d4ac398e8c6
sw x3, 0(x2) # store 0x15555d4ac398e8c6 in memory
flh f16, 0(x2) # load 0x15555d4ac398e8c6 from memory into f16
fsub.h f10, f27, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x92a218c8bab395d1 # load x3 with value 0x92a218c8bab395d1
sw x3, 0(x2) # store 0x92a218c8bab395d1 in memory
flh f24, 0(x2) # load 0x92a218c8bab395d1 from memory into f24
la x2, scratch
li x3, 0x777735660aa2ff15 # load x3 with value 0x777735660aa2ff15
sw x3, 0(x2) # store 0x777735660aa2ff15 in memory
flh f14, 0(x2) # load 0x777735660aa2ff15 from memory into f14
fsub.h f11, f24, f14 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xdf9ceee697847aea # load x3 with value 0xdf9ceee697847aea
sw x3, 0(x2) # store 0xdf9ceee697847aea in memory
flh f11, 0(x2) # load 0xdf9ceee697847aea from memory into f11
la x2, scratch
li x3, 0xe635611d846eec6c # load x3 with value 0xe635611d846eec6c
sw x3, 0(x2) # store 0xe635611d846eec6c in memory
flh f8, 0(x2) # load 0xe635611d846eec6c from memory into f8
fsub.h f12, f11, f8 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x8bb9799417922891 # load x3 with value 0x8bb9799417922891
sw x3, 0(x2) # store 0x8bb9799417922891 in memory
flh f18, 0(x2) # load 0x8bb9799417922891 from memory into f18
la x2, scratch
li x3, 0x29b07fb5c272324d # load x3 with value 0x29b07fb5c272324d
sw x3, 0(x2) # store 0x29b07fb5c272324d in memory
flh f25, 0(x2) # load 0x29b07fb5c272324d from memory into f25
fsub.h f13, f18, f25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x92b2131d6cbe65de # load x3 with value 0x92b2131d6cbe65de
sw x3, 0(x2) # store 0x92b2131d6cbe65de in memory
flh f6, 0(x2) # load 0x92b2131d6cbe65de from memory into f6
la x2, scratch
li x3, 0x55f26251d3cd84e8 # load x3 with value 0x55f26251d3cd84e8
sw x3, 0(x2) # store 0x55f26251d3cd84e8 in memory
flh f27, 0(x2) # load 0x55f26251d3cd84e8 from memory into f27
fsub.h f14, f6, f27 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xb5ced66aa75677b7 # load x3 with value 0xb5ced66aa75677b7
sw x3, 0(x2) # store 0xb5ced66aa75677b7 in memory
flh f21, 0(x2) # load 0xb5ced66aa75677b7 from memory into f21
la x2, scratch
li x3, 0x3c82dc124b2da974 # load x3 with value 0x3c82dc124b2da974
sw x3, 0(x2) # store 0x3c82dc124b2da974 in memory
flh f31, 0(x2) # load 0x3c82dc124b2da974 from memory into f31
fsub.h f15, f21, f31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xfd62ef441fef67f8 # load x3 with value 0xfd62ef441fef67f8
sw x3, 0(x2) # store 0xfd62ef441fef67f8 in memory
flh f17, 0(x2) # load 0xfd62ef441fef67f8 from memory into f17
la x2, scratch
li x3, 0xe6fd78bfebf13f1b # load x3 with value 0xe6fd78bfebf13f1b
sw x3, 0(x2) # store 0xe6fd78bfebf13f1b in memory
flh f10, 0(x2) # load 0xe6fd78bfebf13f1b from memory into f10
fsub.h f16, f17, f10 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xf5025ce64e40228 # load x3 with value 0xf5025ce64e40228
sw x3, 0(x2) # store 0xf5025ce64e40228 in memory
flh f28, 0(x2) # load 0xf5025ce64e40228 from memory into f28
la x2, scratch
li x3, 0xe66bc704f85416aa # load x3 with value 0xe66bc704f85416aa
sw x3, 0(x2) # store 0xe66bc704f85416aa in memory
flh f15, 0(x2) # load 0xe66bc704f85416aa from memory into f15
fsub.h f17, f28, f15 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xaf6739550dfffb1d # load x3 with value 0xaf6739550dfffb1d
sw x3, 0(x2) # store 0xaf6739550dfffb1d in memory
flh f6, 0(x2) # load 0xaf6739550dfffb1d from memory into f6
la x2, scratch
li x3, 0xc5ef16b24a25db58 # load x3 with value 0xc5ef16b24a25db58
sw x3, 0(x2) # store 0xc5ef16b24a25db58 in memory
flh f20, 0(x2) # load 0xc5ef16b24a25db58 from memory into f20
fsub.h f18, f6, f20 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x9e2ebdb9fb1be40a # load x3 with value 0x9e2ebdb9fb1be40a
sw x3, 0(x2) # store 0x9e2ebdb9fb1be40a in memory
flh f10, 0(x2) # load 0x9e2ebdb9fb1be40a from memory into f10
la x2, scratch
li x3, 0x118d78f282fa7b2d # load x3 with value 0x118d78f282fa7b2d
sw x3, 0(x2) # store 0x118d78f282fa7b2d in memory
flh f8, 0(x2) # load 0x118d78f282fa7b2d from memory into f8
fsub.h f19, f10, f8 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x9dd6861767aa733 # load x3 with value 0x9dd6861767aa733
sw x3, 0(x2) # store 0x9dd6861767aa733 in memory
flh f20, 0(x2) # load 0x9dd6861767aa733 from memory into f20
la x2, scratch
li x3, 0xca5b8491b318a0 # load x3 with value 0xca5b8491b318a0
sw x3, 0(x2) # store 0xca5b8491b318a0 in memory
flh f2, 0(x2) # load 0xca5b8491b318a0 from memory into f2
fsub.h f20, f20, f2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x5b52ad7de3f0c800 # load x3 with value 0x5b52ad7de3f0c800
sw x3, 0(x2) # store 0x5b52ad7de3f0c800 in memory
flh f12, 0(x2) # load 0x5b52ad7de3f0c800 from memory into f12
la x2, scratch
li x3, 0x6f39892c38fe9a18 # load x3 with value 0x6f39892c38fe9a18
sw x3, 0(x2) # store 0x6f39892c38fe9a18 in memory
flh f23, 0(x2) # load 0x6f39892c38fe9a18 from memory into f23
fsub.h f21, f12, f23 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x134dea5e2d486c94 # load x3 with value 0x134dea5e2d486c94
sw x3, 0(x2) # store 0x134dea5e2d486c94 in memory
flh f16, 0(x2) # load 0x134dea5e2d486c94 from memory into f16
la x2, scratch
li x3, 0xfa83cfb53357a737 # load x3 with value 0xfa83cfb53357a737
sw x3, 0(x2) # store 0xfa83cfb53357a737 in memory
flh f6, 0(x2) # load 0xfa83cfb53357a737 from memory into f6
fsub.h f22, f16, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x6cc511ab2a646f88 # load x3 with value 0x6cc511ab2a646f88
sw x3, 0(x2) # store 0x6cc511ab2a646f88 in memory
flh f21, 0(x2) # load 0x6cc511ab2a646f88 from memory into f21
la x2, scratch
li x3, 0xaef57c4c298ccc1a # load x3 with value 0xaef57c4c298ccc1a
sw x3, 0(x2) # store 0xaef57c4c298ccc1a in memory
flh f8, 0(x2) # load 0xaef57c4c298ccc1a from memory into f8
fsub.h f23, f21, f8 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x9fc8be63653ff1d9 # load x3 with value 0x9fc8be63653ff1d9
sw x3, 0(x2) # store 0x9fc8be63653ff1d9 in memory
flh f3, 0(x2) # load 0x9fc8be63653ff1d9 from memory into f3
la x2, scratch
li x3, 0xdd1c251291ec740d # load x3 with value 0xdd1c251291ec740d
sw x3, 0(x2) # store 0xdd1c251291ec740d in memory
flh f6, 0(x2) # load 0xdd1c251291ec740d from memory into f6
fsub.h f24, f3, f6 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x467b1de77ba787e3 # load x3 with value 0x467b1de77ba787e3
sw x3, 0(x2) # store 0x467b1de77ba787e3 in memory
flh f21, 0(x2) # load 0x467b1de77ba787e3 from memory into f21
la x2, scratch
li x3, 0x255b0a59d0f564fc # load x3 with value 0x255b0a59d0f564fc
sw x3, 0(x2) # store 0x255b0a59d0f564fc in memory
flh f22, 0(x2) # load 0x255b0a59d0f564fc from memory into f22
fsub.h f25, f21, f22 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xa3ee4b8e5471a6de # load x3 with value 0xa3ee4b8e5471a6de
sw x3, 0(x2) # store 0xa3ee4b8e5471a6de in memory
flh f7, 0(x2) # load 0xa3ee4b8e5471a6de from memory into f7
la x2, scratch
li x3, 0x4e9099f082c8c012 # load x3 with value 0x4e9099f082c8c012
sw x3, 0(x2) # store 0x4e9099f082c8c012 in memory
flh f3, 0(x2) # load 0x4e9099f082c8c012 from memory into f3
fsub.h f26, f7, f3 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xd4b9c0023e26c06d # load x3 with value 0xd4b9c0023e26c06d
sw x3, 0(x2) # store 0xd4b9c0023e26c06d in memory
flh f18, 0(x2) # load 0xd4b9c0023e26c06d from memory into f18
la x2, scratch
li x3, 0xb7ff719c5ba3a16e # load x3 with value 0xb7ff719c5ba3a16e
sw x3, 0(x2) # store 0xb7ff719c5ba3a16e in memory
flh f30, 0(x2) # load 0xb7ff719c5ba3a16e from memory into f30
fsub.h f27, f18, f30 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x3d0f75ad7c4765a6 # load x3 with value 0x3d0f75ad7c4765a6
sw x3, 0(x2) # store 0x3d0f75ad7c4765a6 in memory
flh f15, 0(x2) # load 0x3d0f75ad7c4765a6 from memory into f15
la x2, scratch
li x3, 0xf1ed563f5ac53ada # load x3 with value 0xf1ed563f5ac53ada
sw x3, 0(x2) # store 0xf1ed563f5ac53ada in memory
flh f19, 0(x2) # load 0xf1ed563f5ac53ada from memory into f19
fsub.h f28, f15, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xfbcd6756be41c834 # load x3 with value 0xfbcd6756be41c834
sw x3, 0(x2) # store 0xfbcd6756be41c834 in memory
flh f7, 0(x2) # load 0xfbcd6756be41c834 from memory into f7
la x2, scratch
li x3, 0xe7fe634134faaa82 # load x3 with value 0xe7fe634134faaa82
sw x3, 0(x2) # store 0xe7fe634134faaa82 in memory
flh f10, 0(x2) # load 0xe7fe634134faaa82 from memory into f10
fsub.h f29, f7, f10 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x7ed457a010fe0a29 # load x3 with value 0x7ed457a010fe0a29
sw x3, 0(x2) # store 0x7ed457a010fe0a29 in memory
flh f14, 0(x2) # load 0x7ed457a010fe0a29 from memory into f14
la x2, scratch
li x3, 0x9673c64354c1e85a # load x3 with value 0x9673c64354c1e85a
sw x3, 0(x2) # store 0x9673c64354c1e85a in memory
flh f12, 0(x2) # load 0x9673c64354c1e85a from memory into f12
fsub.h f30, f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x88813230655c322c # load x3 with value 0x88813230655c322c
sw x3, 0(x2) # store 0x88813230655c322c in memory
flh f27, 0(x2) # load 0x88813230655c322c from memory into f27
la x2, scratch
li x3, 0xe7925ed1705007ea # load x3 with value 0xe7925ed1705007ea
sw x3, 0(x2) # store 0xe7925ed1705007ea in memory
flh f3, 0(x2) # load 0xe7925ed1705007ea from memory into f3
fsub.h f31, f27, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x7ed0b33b654c2125 # load x3 with value 0x7ed0b33b654c2125
sw x3, 0(x2) # store 0x7ed0b33b654c2125 in memory
flh f24, 0(x2) # load 0x7ed0b33b654c2125 from memory into f24
fsub.h f30, f20, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
la x2, scratch
li x3, 0xb1b217c9d5c599e8 # load x3 with value 0xb1b217c9d5c599e8
sw x3, 0(x2) # store 0xb1b217c9d5c599e8 in memory
flh f6, 0(x2) # load 0xb1b217c9d5c599e8 from memory into f6
fsub.h f7, f8, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
la x2, scratch
li x3, 0x776cac6b12872f34 # load x3 with value 0x776cac6b12872f34
sw x3, 0(x2) # store 0x776cac6b12872f34 in memory
flh f22, 0(x2) # load 0x776cac6b12872f34 from memory into f22
fsub.h f16, f11, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x9edeca86ad095193 # load x3 with value 0x9edeca86ad095193
sw x3, 0(x2) # store 0x9edeca86ad095193 in memory
flh f31, 0(x2) # load 0x9edeca86ad095193 from memory into f31
fsub.h f5, f28, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0xba126053392df58b # load x3 with value 0xba126053392df58b
sw x3, 0(x2) # store 0xba126053392df58b in memory
flh f9, 0(x2) # load 0xba126053392df58b from memory into f9
fsub.h f5, f1, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0xf82fe2a584e07e4c # load x3 with value 0xf82fe2a584e07e4c
sw x3, 0(x2) # store 0xf82fe2a584e07e4c in memory
flh f14, 0(x2) # load 0xf82fe2a584e07e4c from memory into f14
fsub.h f11, f17, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
la x2, scratch
li x3, 0x172aa6bc13d2f900 # load x3 with value 0x172aa6bc13d2f900
sw x3, 0(x2) # store 0x172aa6bc13d2f900 in memory
flh f5, 0(x2) # load 0x172aa6bc13d2f900 from memory into f5
fsub.h f10, f1, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0xeeb5a5a38354416e # load x3 with value 0xeeb5a5a38354416e
sw x3, 0(x2) # store 0xeeb5a5a38354416e in memory
flh f25, 0(x2) # load 0xeeb5a5a38354416e from memory into f25
fsub.h f15, f7, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0xb689910af3c789ae # load x3 with value 0xb689910af3c789ae
sw x3, 0(x2) # store 0xb689910af3c789ae in memory
flh f10, 0(x2) # load 0xb689910af3c789ae from memory into f10
fsub.h f26, f20, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0xc4a6a49bc6596f22 # load x3 with value 0xc4a6a49bc6596f22
sw x3, 0(x2) # store 0xc4a6a49bc6596f22 in memory
flh f10, 0(x2) # load 0xc4a6a49bc6596f22 from memory into f10
fsub.h f30, f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x25b8424ea6d72f1c # load x3 with value 0x25b8424ea6d72f1c
sw x3, 0(x2) # store 0x25b8424ea6d72f1c in memory
flh f6, 0(x2) # load 0x25b8424ea6d72f1c from memory into f6
fsub.h f5, f18, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
la x2, scratch
li x3, 0x8ca2f1d4d11dbd62 # load x3 with value 0x8ca2f1d4d11dbd62
sw x3, 0(x2) # store 0x8ca2f1d4d11dbd62 in memory
flh f31, 0(x2) # load 0x8ca2f1d4d11dbd62 from memory into f31
fsub.h f15, f1, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0xb83e2a31b243496e # load x3 with value 0xb83e2a31b243496e
sw x3, 0(x2) # store 0xb83e2a31b243496e in memory
flh f26, 0(x2) # load 0xb83e2a31b243496e from memory into f26
fsub.h f31, f24, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0x4ec3a932740d265f # load x3 with value 0x4ec3a932740d265f
sw x3, 0(x2) # store 0x4ec3a932740d265f in memory
flh f27, 0(x2) # load 0x4ec3a932740d265f from memory into f27
fsub.h f23, f13, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0xc50c7d081b4b4232 # load x3 with value 0xc50c7d081b4b4232
sw x3, 0(x2) # store 0xc50c7d081b4b4232 in memory
flh f16, 0(x2) # load 0xc50c7d081b4b4232 from memory into f16
fsub.h f30, f19, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x4ab84cb0e5488baa # load x3 with value 0x4ab84cb0e5488baa
sw x3, 0(x2) # store 0x4ab84cb0e5488baa in memory
flh f17, 0(x2) # load 0x4ab84cb0e5488baa from memory into f17
fsub.h f5, f13, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0xa72b9c28f0e3f3ba # load x3 with value 0xa72b9c28f0e3f3ba
sw x3, 0(x2) # store 0xa72b9c28f0e3f3ba in memory
flh f16, 0(x2) # load 0xa72b9c28f0e3f3ba from memory into f16
fsub.h f31, f8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
la x2, scratch
li x3, 0x809ffe05c5b9c6f8 # load x3 with value 0x809ffe05c5b9c6f8
sw x3, 0(x2) # store 0x809ffe05c5b9c6f8 in memory
flh f1, 0(x2) # load 0x809ffe05c5b9c6f8 from memory into f1
fsub.h f21, f2, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x5cec8e622b999a08 # load x3 with value 0x5cec8e622b999a08
sw x3, 0(x2) # store 0x5cec8e622b999a08 in memory
flh f19, 0(x2) # load 0x5cec8e622b999a08 from memory into f19
fsub.h f6, f8, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0xeddde1b6f6f2e40f # load x3 with value 0xeddde1b6f6f2e40f
sw x3, 0(x2) # store 0xeddde1b6f6f2e40f in memory
flh f7, 0(x2) # load 0xeddde1b6f6f2e40f from memory into f7
fsub.h f28, f31, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0xa3c2fc87076e8be9 # load x3 with value 0xa3c2fc87076e8be9
sw x3, 0(x2) # store 0xa3c2fc87076e8be9 in memory
flh f8, 0(x2) # load 0xa3c2fc87076e8be9 from memory into f8
fsub.h f31, f9, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x7fa8bce736523632 # load x3 with value 0x7fa8bce736523632
sw x3, 0(x2) # store 0x7fa8bce736523632 in memory
flh f27, 0(x2) # load 0x7fa8bce736523632 from memory into f27
fsub.h f20, f10, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0xce69ce8939dc7bac # load x3 with value 0xce69ce8939dc7bac
sw x3, 0(x2) # store 0xce69ce8939dc7bac in memory
flh f30, 0(x2) # load 0xce69ce8939dc7bac from memory into f30
fsub.h f18, f1, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x2, scratch
li x3, 0xa5e193a524ea383b # load x3 with value 0xa5e193a524ea383b
sw x3, 0(x2) # store 0xa5e193a524ea383b in memory
flh f19, 0(x2) # load 0xa5e193a524ea383b from memory into f19
fsub.h f30, f12, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x56a67b622bc7e2b # load x3 with value 0x56a67b622bc7e2b
sw x3, 0(x2) # store 0x56a67b622bc7e2b in memory
flh f10, 0(x2) # load 0x56a67b622bc7e2b from memory into f10
fsub.h f16, f29, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x797f7c65ea14baa1 # load x3 with value 0x797f7c65ea14baa1
sw x3, 0(x2) # store 0x797f7c65ea14baa1 in memory
flh f17, 0(x2) # load 0x797f7c65ea14baa1 from memory into f17
fsub.h f6, f14, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x458b884bc734c7e0 # load x3 with value 0x458b884bc734c7e0
sw x3, 0(x2) # store 0x458b884bc734c7e0 in memory
flh f24, 0(x2) # load 0x458b884bc734c7e0 from memory into f24
fsub.h f9, f10, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x41594db971bdb0db # load x3 with value 0x41594db971bdb0db
sw x3, 0(x2) # store 0x41594db971bdb0db in memory
flh f25, 0(x2) # load 0x41594db971bdb0db from memory into f25
fsub.h f16, f23, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xd76ebf5b68f84898 # load x3 with value 0xd76ebf5b68f84898
sw x3, 0(x2) # store 0xd76ebf5b68f84898 in memory
flh f1, 0(x2) # load 0xd76ebf5b68f84898 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fsub.h f27, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0xe96d024a83c8e4fb # load x3 with value 0xe96d024a83c8e4fb
sw x3, 0(x2) # store 0xe96d024a83c8e4fb in memory
flh f7, 0(x2) # load 0xe96d024a83c8e4fb from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fsub.h f24, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0xc811497c22c082d9 # load x3 with value 0xc811497c22c082d9
sw x3, 0(x2) # store 0xc811497c22c082d9 in memory
flh f17, 0(x2) # load 0xc811497c22c082d9 from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f25, f17, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x955fe0768a7f35a5 # load x3 with value 0x955fe0768a7f35a5
sw x3, 0(x2) # store 0x955fe0768a7f35a5 in memory
flh f30, 0(x2) # load 0x955fe0768a7f35a5 from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fsub.h f14, f30, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x3d97b5a70b738d0e # load x3 with value 0x3d97b5a70b738d0e
sw x3, 0(x2) # store 0x3d97b5a70b738d0e in memory
flh f24, 0(x2) # load 0x3d97b5a70b738d0e from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fsub.h f3, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0xe279074f1a03d9ca # load x3 with value 0xe279074f1a03d9ca
sw x3, 0(x2) # store 0xe279074f1a03d9ca in memory
flh f2, 0(x2) # load 0xe279074f1a03d9ca from memory into f2
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f10, f2, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x3883d672056e8944 # load x3 with value 0x3883d672056e8944
sw x3, 0(x2) # store 0x3883d672056e8944 in memory
flh f18, 0(x2) # load 0x3883d672056e8944 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fsub.h f12, f18, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x7321563fe3bb2bbb # load x3 with value 0x7321563fe3bb2bbb
sw x3, 0(x2) # store 0x7321563fe3bb2bbb in memory
flh f2, 0(x2) # load 0x7321563fe3bb2bbb from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fsub.h f1, f2, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0xa3d70bdd37a4cd16 # load x3 with value 0xa3d70bdd37a4cd16
sw x3, 0(x2) # store 0xa3d70bdd37a4cd16 in memory
flh f9, 0(x2) # load 0xa3d70bdd37a4cd16 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fsub.h f22, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0xb17bc801e8ae8bf4 # load x3 with value 0xb17bc801e8ae8bf4
sw x3, 0(x2) # store 0xb17bc801e8ae8bf4 in memory
flh f12, 0(x2) # load 0xb17bc801e8ae8bf4 from memory into f12
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fsub.h f17, f12, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x490fd6397ed3947 # load x3 with value 0x490fd6397ed3947
sw x3, 0(x2) # store 0x490fd6397ed3947 in memory
flh f28, 0(x2) # load 0x490fd6397ed3947 from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fsub.h f16, f28, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x7e34de336987a8af # load x3 with value 0x7e34de336987a8af
sw x3, 0(x2) # store 0x7e34de336987a8af in memory
flh f24, 0(x2) # load 0x7e34de336987a8af from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f19, f24, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x7df985031329f30f # load x3 with value 0x7df985031329f30f
sw x3, 0(x2) # store 0x7df985031329f30f in memory
flh f25, 0(x2) # load 0x7df985031329f30f from memory into f25
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fsub.h f10, f25, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x879d9eb43728da9e # load x3 with value 0x879d9eb43728da9e
sw x3, 0(x2) # store 0x879d9eb43728da9e in memory
flh f9, 0(x2) # load 0x879d9eb43728da9e from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fsub.h f23, f9, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0xb5f5bd92ace9e89 # load x3 with value 0xb5f5bd92ace9e89
sw x3, 0(x2) # store 0xb5f5bd92ace9e89 in memory
flh f8, 0(x2) # load 0xb5f5bd92ace9e89 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f7, f8, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x30e3c94e128d61d0 # load x3 with value 0x30e3c94e128d61d0
sw x3, 0(x2) # store 0x30e3c94e128d61d0 in memory
flh f17, 0(x2) # load 0x30e3c94e128d61d0 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fsub.h f27, f17, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0xf885ea466554b361 # load x3 with value 0xf885ea466554b361
sw x3, 0(x2) # store 0xf885ea466554b361 in memory
flh f31, 0(x2) # load 0xf885ea466554b361 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f29, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x1cf03e14714f4502 # load x3 with value 0x1cf03e14714f4502
sw x3, 0(x2) # store 0x1cf03e14714f4502 in memory
flh f2, 0(x2) # load 0x1cf03e14714f4502 from memory into f2
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fsub.h f26, f2, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x59135d61565abcf0 # load x3 with value 0x59135d61565abcf0
sw x3, 0(x2) # store 0x59135d61565abcf0 in memory
flh f9, 0(x2) # load 0x59135d61565abcf0 from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f25, f9, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0xa0b78c34d01c6f93 # load x3 with value 0xa0b78c34d01c6f93
sw x3, 0(x2) # store 0xa0b78c34d01c6f93 in memory
flh f29, 0(x2) # load 0xa0b78c34d01c6f93 from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fsub.h f28, f29, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x31c74d00692e1984 # load x3 with value 0x31c74d00692e1984
sw x3, 0(x2) # store 0x31c74d00692e1984 in memory
flh f17, 0(x2) # load 0x31c74d00692e1984 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fsub.h f8, f17, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0xf67cf5460fa35b9a # load x3 with value 0xf67cf5460fa35b9a
sw x3, 0(x2) # store 0xf67cf5460fa35b9a in memory
flh f31, 0(x2) # load 0xf67cf5460fa35b9a from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fsub.h f27, f31, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0xe171ebb117538851 # load x3 with value 0xe171ebb117538851
sw x3, 0(x2) # store 0xe171ebb117538851 in memory
flh f30, 0(x2) # load 0xe171ebb117538851 from memory into f30
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fsub.h f5, f30, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x18e1bf6f230f5f83 # load x3 with value 0x18e1bf6f230f5f83
sw x3, 0(x2) # store 0x18e1bf6f230f5f83 in memory
flh f12, 0(x2) # load 0x18e1bf6f230f5f83 from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsub.h f20, f12, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x4276e52bf9da880 # load x3 with value 0x4276e52bf9da880
sw x3, 0(x2) # store 0x4276e52bf9da880 in memory
flh f17, 0(x2) # load 0x4276e52bf9da880 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fsub.h f28, f17, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0xbf7112594d321a41 # load x3 with value 0xbf7112594d321a41
sw x3, 0(x2) # store 0xbf7112594d321a41 in memory
flh f14, 0(x2) # load 0xbf7112594d321a41 from memory into f14
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
fsub.h f9, f14, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x8428782b6c0e0f2c # load x3 with value 0x8428782b6c0e0f2c
sw x3, 0(x2) # store 0x8428782b6c0e0f2c in memory
flh f1, 0(x2) # load 0x8428782b6c0e0f2c from memory into f1
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f31, f1, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x72036abc1464e927 # load x3 with value 0x72036abc1464e927
sw x3, 0(x2) # store 0x72036abc1464e927 in memory
flh f9, 0(x2) # load 0x72036abc1464e927 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fsub.h f28, f9, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xe9e3be2b0f334492 # load x3 with value 0xe9e3be2b0f334492
sw x3, 0(x2) # store 0xe9e3be2b0f334492 in memory
flh f0, 0(x2) # load 0xe9e3be2b0f334492 from memory into f0
la x2, scratch
li x3, 0x95677d9e6085a471 # load x3 with value 0x95677d9e6085a471
sw x3, 0(x2) # store 0x95677d9e6085a471 in memory
flh f9, 0(x2) # load 0x95677d9e6085a471 from memory into f9
fsub.h f0, f0, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xa7925f46bc9f0997 # load x3 with value 0xa7925f46bc9f0997
sw x3, 0(x2) # store 0xa7925f46bc9f0997 in memory
flh f1, 0(x2) # load 0xa7925f46bc9f0997 from memory into f1
la x2, scratch
li x3, 0xf776151676990193 # load x3 with value 0xf776151676990193
sw x3, 0(x2) # store 0xf776151676990193 in memory
flh f3, 0(x2) # load 0xf776151676990193 from memory into f3
fsub.h f1, f1, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x6eea3f34dd787622 # load x3 with value 0x6eea3f34dd787622
sw x3, 0(x2) # store 0x6eea3f34dd787622 in memory
flh f2, 0(x2) # load 0x6eea3f34dd787622 from memory into f2
la x2, scratch
li x3, 0x7101679b87f43ec2 # load x3 with value 0x7101679b87f43ec2
sw x3, 0(x2) # store 0x7101679b87f43ec2 in memory
flh f27, 0(x2) # load 0x7101679b87f43ec2 from memory into f27
fsub.h f2, f2, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x340a9582fdd6e5f4 # load x3 with value 0x340a9582fdd6e5f4
sw x3, 0(x2) # store 0x340a9582fdd6e5f4 in memory
flh f3, 0(x2) # load 0x340a9582fdd6e5f4 from memory into f3
la x2, scratch
li x3, 0xc5e08f389e135506 # load x3 with value 0xc5e08f389e135506
sw x3, 0(x2) # store 0xc5e08f389e135506 in memory
flh f19, 0(x2) # load 0xc5e08f389e135506 from memory into f19
fsub.h f3, f3, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7a5352bb688555dc # load x3 with value 0x7a5352bb688555dc
sw x3, 0(x2) # store 0x7a5352bb688555dc in memory
flh f4, 0(x2) # load 0x7a5352bb688555dc from memory into f4
la x2, scratch
li x3, 0xce1d1df4bec9a79e # load x3 with value 0xce1d1df4bec9a79e
sw x3, 0(x2) # store 0xce1d1df4bec9a79e in memory
flh f31, 0(x2) # load 0xce1d1df4bec9a79e from memory into f31
fsub.h f4, f4, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9ece0b0bb43a6df7 # load x3 with value 0x9ece0b0bb43a6df7
sw x3, 0(x2) # store 0x9ece0b0bb43a6df7 in memory
flh f5, 0(x2) # load 0x9ece0b0bb43a6df7 from memory into f5
la x2, scratch
li x3, 0x515430a82e888452 # load x3 with value 0x515430a82e888452
sw x3, 0(x2) # store 0x515430a82e888452 in memory
flh f25, 0(x2) # load 0x515430a82e888452 from memory into f25
fsub.h f5, f5, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfeefb8fd0a003c1b # load x3 with value 0xfeefb8fd0a003c1b
sw x3, 0(x2) # store 0xfeefb8fd0a003c1b in memory
flh f6, 0(x2) # load 0xfeefb8fd0a003c1b from memory into f6
la x2, scratch
li x3, 0x736153f63f8c8f9f # load x3 with value 0x736153f63f8c8f9f
sw x3, 0(x2) # store 0x736153f63f8c8f9f in memory
flh f31, 0(x2) # load 0x736153f63f8c8f9f from memory into f31
fsub.h f6, f6, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x361f8efba94c11dc # load x3 with value 0x361f8efba94c11dc
sw x3, 0(x2) # store 0x361f8efba94c11dc in memory
flh f7, 0(x2) # load 0x361f8efba94c11dc from memory into f7
la x2, scratch
li x3, 0xb787296f30eb1830 # load x3 with value 0xb787296f30eb1830
sw x3, 0(x2) # store 0xb787296f30eb1830 in memory
flh f11, 0(x2) # load 0xb787296f30eb1830 from memory into f11
fsub.h f7, f7, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xbc7cebbceef2ff89 # load x3 with value 0xbc7cebbceef2ff89
sw x3, 0(x2) # store 0xbc7cebbceef2ff89 in memory
flh f8, 0(x2) # load 0xbc7cebbceef2ff89 from memory into f8
la x2, scratch
li x3, 0xe5bd540273b37b70 # load x3 with value 0xe5bd540273b37b70
sw x3, 0(x2) # store 0xe5bd540273b37b70 in memory
flh f15, 0(x2) # load 0xe5bd540273b37b70 from memory into f15
fsub.h f8, f8, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xf6f830060ca67a74 # load x3 with value 0xf6f830060ca67a74
sw x3, 0(x2) # store 0xf6f830060ca67a74 in memory
flh f9, 0(x2) # load 0xf6f830060ca67a74 from memory into f9
la x2, scratch
li x3, 0x6e0631c1c381eb6f # load x3 with value 0x6e0631c1c381eb6f
sw x3, 0(x2) # store 0x6e0631c1c381eb6f in memory
flh f3, 0(x2) # load 0x6e0631c1c381eb6f from memory into f3
fsub.h f9, f9, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xaec927690da65a66 # load x3 with value 0xaec927690da65a66
sw x3, 0(x2) # store 0xaec927690da65a66 in memory
flh f10, 0(x2) # load 0xaec927690da65a66 from memory into f10
la x2, scratch
li x3, 0x2ba7ddcfda1534e1 # load x3 with value 0x2ba7ddcfda1534e1
sw x3, 0(x2) # store 0x2ba7ddcfda1534e1 in memory
flh f28, 0(x2) # load 0x2ba7ddcfda1534e1 from memory into f28
fsub.h f10, f10, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x2d5e27938f9cf7f3 # load x3 with value 0x2d5e27938f9cf7f3
sw x3, 0(x2) # store 0x2d5e27938f9cf7f3 in memory
flh f11, 0(x2) # load 0x2d5e27938f9cf7f3 from memory into f11
la x2, scratch
li x3, 0x838f0f0b668b5bbe # load x3 with value 0x838f0f0b668b5bbe
sw x3, 0(x2) # store 0x838f0f0b668b5bbe in memory
flh f13, 0(x2) # load 0x838f0f0b668b5bbe from memory into f13
fsub.h f11, f11, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0x7a2e4e1effb35aa8 # load x3 with value 0x7a2e4e1effb35aa8
sw x3, 0(x2) # store 0x7a2e4e1effb35aa8 in memory
flh f12, 0(x2) # load 0x7a2e4e1effb35aa8 from memory into f12
la x2, scratch
li x3, 0x8d5584b32b7440b5 # load x3 with value 0x8d5584b32b7440b5
sw x3, 0(x2) # store 0x8d5584b32b7440b5 in memory
flh f2, 0(x2) # load 0x8d5584b32b7440b5 from memory into f2
fsub.h f12, f12, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xbccd48a456d49472 # load x3 with value 0xbccd48a456d49472
sw x3, 0(x2) # store 0xbccd48a456d49472 in memory
flh f13, 0(x2) # load 0xbccd48a456d49472 from memory into f13
la x2, scratch
li x3, 0x14b1ef7219cedd4d # load x3 with value 0x14b1ef7219cedd4d
sw x3, 0(x2) # store 0x14b1ef7219cedd4d in memory
flh f30, 0(x2) # load 0x14b1ef7219cedd4d from memory into f30
fsub.h f13, f13, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x25ae6dad04bf44a2 # load x3 with value 0x25ae6dad04bf44a2
sw x3, 0(x2) # store 0x25ae6dad04bf44a2 in memory
flh f14, 0(x2) # load 0x25ae6dad04bf44a2 from memory into f14
la x2, scratch
li x3, 0xdebc259d507a3ecb # load x3 with value 0xdebc259d507a3ecb
sw x3, 0(x2) # store 0xdebc259d507a3ecb in memory
flh f5, 0(x2) # load 0xdebc259d507a3ecb from memory into f5
fsub.h f14, f14, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x58121747a9a37093 # load x3 with value 0x58121747a9a37093
sw x3, 0(x2) # store 0x58121747a9a37093 in memory
flh f15, 0(x2) # load 0x58121747a9a37093 from memory into f15
la x2, scratch
li x3, 0x9af1b0a2a2fdaa4f # load x3 with value 0x9af1b0a2a2fdaa4f
sw x3, 0(x2) # store 0x9af1b0a2a2fdaa4f in memory
flh f17, 0(x2) # load 0x9af1b0a2a2fdaa4f from memory into f17
fsub.h f15, f15, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x676a1121ec868d72 # load x3 with value 0x676a1121ec868d72
sw x3, 0(x2) # store 0x676a1121ec868d72 in memory
flh f16, 0(x2) # load 0x676a1121ec868d72 from memory into f16
la x2, scratch
li x3, 0x9e426771f0ee1a33 # load x3 with value 0x9e426771f0ee1a33
sw x3, 0(x2) # store 0x9e426771f0ee1a33 in memory
flh f7, 0(x2) # load 0x9e426771f0ee1a33 from memory into f7
fsub.h f16, f16, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0xcc792927c15a745d # load x3 with value 0xcc792927c15a745d
sw x3, 0(x2) # store 0xcc792927c15a745d in memory
flh f17, 0(x2) # load 0xcc792927c15a745d from memory into f17
la x2, scratch
li x3, 0xef0d4bef29eef3e # load x3 with value 0xef0d4bef29eef3e
sw x3, 0(x2) # store 0xef0d4bef29eef3e in memory
flh f20, 0(x2) # load 0xef0d4bef29eef3e from memory into f20
fsub.h f17, f17, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x93b8b577dbf52c28 # load x3 with value 0x93b8b577dbf52c28
sw x3, 0(x2) # store 0x93b8b577dbf52c28 in memory
flh f18, 0(x2) # load 0x93b8b577dbf52c28 from memory into f18
la x2, scratch
li x3, 0xf25546e67aaceafe # load x3 with value 0xf25546e67aaceafe
sw x3, 0(x2) # store 0xf25546e67aaceafe in memory
flh f21, 0(x2) # load 0xf25546e67aaceafe from memory into f21
fsub.h f18, f18, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x1dbb5c97c1ae8635 # load x3 with value 0x1dbb5c97c1ae8635
sw x3, 0(x2) # store 0x1dbb5c97c1ae8635 in memory
flh f19, 0(x2) # load 0x1dbb5c97c1ae8635 from memory into f19
la x2, scratch
li x3, 0xd18d0012e82f4abb # load x3 with value 0xd18d0012e82f4abb
sw x3, 0(x2) # store 0xd18d0012e82f4abb in memory
flh f8, 0(x2) # load 0xd18d0012e82f4abb from memory into f8
fsub.h f19, f19, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0xaceca9e891ba4e03 # load x3 with value 0xaceca9e891ba4e03
sw x3, 0(x2) # store 0xaceca9e891ba4e03 in memory
flh f20, 0(x2) # load 0xaceca9e891ba4e03 from memory into f20
la x2, scratch
li x3, 0x7e2d85fb3598a988 # load x3 with value 0x7e2d85fb3598a988
sw x3, 0(x2) # store 0x7e2d85fb3598a988 in memory
flh f6, 0(x2) # load 0x7e2d85fb3598a988 from memory into f6
fsub.h f20, f20, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x186a4d09179f807 # load x3 with value 0x186a4d09179f807
sw x3, 0(x2) # store 0x186a4d09179f807 in memory
flh f21, 0(x2) # load 0x186a4d09179f807 from memory into f21
la x2, scratch
li x3, 0x9d51e34c782e673d # load x3 with value 0x9d51e34c782e673d
sw x3, 0(x2) # store 0x9d51e34c782e673d in memory
flh f17, 0(x2) # load 0x9d51e34c782e673d from memory into f17
fsub.h f21, f21, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x699edd7705c9806 # load x3 with value 0x699edd7705c9806
sw x3, 0(x2) # store 0x699edd7705c9806 in memory
flh f22, 0(x2) # load 0x699edd7705c9806 from memory into f22
la x2, scratch
li x3, 0xbbc1c03d3122c02d # load x3 with value 0xbbc1c03d3122c02d
sw x3, 0(x2) # store 0xbbc1c03d3122c02d in memory
flh f25, 0(x2) # load 0xbbc1c03d3122c02d from memory into f25
fsub.h f22, f22, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xa44cfdbe71e3e74e # load x3 with value 0xa44cfdbe71e3e74e
sw x3, 0(x2) # store 0xa44cfdbe71e3e74e in memory
flh f23, 0(x2) # load 0xa44cfdbe71e3e74e from memory into f23
la x2, scratch
li x3, 0xde9e79d169999b64 # load x3 with value 0xde9e79d169999b64
sw x3, 0(x2) # store 0xde9e79d169999b64 in memory
flh f29, 0(x2) # load 0xde9e79d169999b64 from memory into f29
fsub.h f23, f23, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xed298a8aca1dbb9a # load x3 with value 0xed298a8aca1dbb9a
sw x3, 0(x2) # store 0xed298a8aca1dbb9a in memory
flh f24, 0(x2) # load 0xed298a8aca1dbb9a from memory into f24
la x2, scratch
li x3, 0xd121deab33cc2807 # load x3 with value 0xd121deab33cc2807
sw x3, 0(x2) # store 0xd121deab33cc2807 in memory
flh f30, 0(x2) # load 0xd121deab33cc2807 from memory into f30
fsub.h f24, f24, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x9144783de721c5bb # load x3 with value 0x9144783de721c5bb
sw x3, 0(x2) # store 0x9144783de721c5bb in memory
flh f25, 0(x2) # load 0x9144783de721c5bb from memory into f25
la x2, scratch
li x3, 0xb020d703a5bbdcae # load x3 with value 0xb020d703a5bbdcae
sw x3, 0(x2) # store 0xb020d703a5bbdcae in memory
flh f23, 0(x2) # load 0xb020d703a5bbdcae from memory into f23
fsub.h f25, f25, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x119c473630d01142 # load x3 with value 0x119c473630d01142
sw x3, 0(x2) # store 0x119c473630d01142 in memory
flh f26, 0(x2) # load 0x119c473630d01142 from memory into f26
la x2, scratch
li x3, 0xf698c68810d2947f # load x3 with value 0xf698c68810d2947f
sw x3, 0(x2) # store 0xf698c68810d2947f in memory
flh f2, 0(x2) # load 0xf698c68810d2947f from memory into f2
fsub.h f26, f26, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x760c03437db3fe03 # load x3 with value 0x760c03437db3fe03
sw x3, 0(x2) # store 0x760c03437db3fe03 in memory
flh f27, 0(x2) # load 0x760c03437db3fe03 from memory into f27
la x2, scratch
li x3, 0xa22cb3cd88164310 # load x3 with value 0xa22cb3cd88164310
sw x3, 0(x2) # store 0xa22cb3cd88164310 in memory
flh f10, 0(x2) # load 0xa22cb3cd88164310 from memory into f10
fsub.h f27, f27, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0xb03c79ed04b5d8f5 # load x3 with value 0xb03c79ed04b5d8f5
sw x3, 0(x2) # store 0xb03c79ed04b5d8f5 in memory
flh f28, 0(x2) # load 0xb03c79ed04b5d8f5 from memory into f28
la x2, scratch
li x3, 0x2645dfcaf3b4021c # load x3 with value 0x2645dfcaf3b4021c
sw x3, 0(x2) # store 0x2645dfcaf3b4021c in memory
flh f31, 0(x2) # load 0x2645dfcaf3b4021c from memory into f31
fsub.h f28, f28, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xaa4282561e4ab3b2 # load x3 with value 0xaa4282561e4ab3b2
sw x3, 0(x2) # store 0xaa4282561e4ab3b2 in memory
flh f29, 0(x2) # load 0xaa4282561e4ab3b2 from memory into f29
la x2, scratch
li x3, 0x66db672805a9d3fa # load x3 with value 0x66db672805a9d3fa
sw x3, 0(x2) # store 0x66db672805a9d3fa in memory
flh f7, 0(x2) # load 0x66db672805a9d3fa from memory into f7
fsub.h f29, f29, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xea1fd5e6ab7a72b7 # load x3 with value 0xea1fd5e6ab7a72b7
sw x3, 0(x2) # store 0xea1fd5e6ab7a72b7 in memory
flh f30, 0(x2) # load 0xea1fd5e6ab7a72b7 from memory into f30
la x2, scratch
li x3, 0xdb3207d2b002468 # load x3 with value 0xdb3207d2b002468
sw x3, 0(x2) # store 0xdb3207d2b002468 in memory
flh f27, 0(x2) # load 0xdb3207d2b002468 from memory into f27
fsub.h f30, f30, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x5bf5da8e8c68e18d # load x3 with value 0x5bf5da8e8c68e18d
sw x3, 0(x2) # store 0x5bf5da8e8c68e18d in memory
flh f31, 0(x2) # load 0x5bf5da8e8c68e18d from memory into f31
la x2, scratch
li x3, 0x554bbd5c34eea038 # load x3 with value 0x554bbd5c34eea038
sw x3, 0(x2) # store 0x554bbd5c34eea038 in memory
flh f31, 0(x2) # load 0x554bbd5c34eea038 from memory into f31
fsub.h f31, f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x4e43cc9c79ef491 # load x3 with value 0x4e43cc9c79ef491
sw x3, 0(x2) # store 0x4e43cc9c79ef491 in memory
flh f28, 0(x2) # load 0x4e43cc9c79ef491 from memory into f28
la x2, scratch
li x3, 0xdbf3c8b8ea8e64f # load x3 with value 0xdbf3c8b8ea8e64f
sw x3, 0(x2) # store 0xdbf3c8b8ea8e64f in memory
flh f0, 0(x2) # load 0xdbf3c8b8ea8e64f from memory into f0
fsub.h f0, f28, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xb6925239883b66b7 # load x3 with value 0xb6925239883b66b7
sw x3, 0(x2) # store 0xb6925239883b66b7 in memory
flh f24, 0(x2) # load 0xb6925239883b66b7 from memory into f24
la x2, scratch
li x3, 0x693eca1014941613 # load x3 with value 0x693eca1014941613
sw x3, 0(x2) # store 0x693eca1014941613 in memory
flh f1, 0(x2) # load 0x693eca1014941613 from memory into f1
fsub.h f1, f24, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xff0ecfc48505187f # load x3 with value 0xff0ecfc48505187f
sw x3, 0(x2) # store 0xff0ecfc48505187f in memory
flh f27, 0(x2) # load 0xff0ecfc48505187f from memory into f27
la x2, scratch
li x3, 0xead7b8576e2b6a3a # load x3 with value 0xead7b8576e2b6a3a
sw x3, 0(x2) # store 0xead7b8576e2b6a3a in memory
flh f2, 0(x2) # load 0xead7b8576e2b6a3a from memory into f2
fsub.h f2, f27, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x8ea8e51d3639b3f # load x3 with value 0x8ea8e51d3639b3f
sw x3, 0(x2) # store 0x8ea8e51d3639b3f in memory
flh f18, 0(x2) # load 0x8ea8e51d3639b3f from memory into f18
la x2, scratch
li x3, 0x2a5c00c18a98f588 # load x3 with value 0x2a5c00c18a98f588
sw x3, 0(x2) # store 0x2a5c00c18a98f588 in memory
flh f3, 0(x2) # load 0x2a5c00c18a98f588 from memory into f3
fsub.h f3, f18, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4ffd2364d3780a96 # load x3 with value 0x4ffd2364d3780a96
sw x3, 0(x2) # store 0x4ffd2364d3780a96 in memory
flh f2, 0(x2) # load 0x4ffd2364d3780a96 from memory into f2
la x2, scratch
li x3, 0x379829c83a9b44af # load x3 with value 0x379829c83a9b44af
sw x3, 0(x2) # store 0x379829c83a9b44af in memory
flh f4, 0(x2) # load 0x379829c83a9b44af from memory into f4
fsub.h f4, f2, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe62c4d8b74b65db3 # load x3 with value 0xe62c4d8b74b65db3
sw x3, 0(x2) # store 0xe62c4d8b74b65db3 in memory
flh f7, 0(x2) # load 0xe62c4d8b74b65db3 from memory into f7
la x2, scratch
li x3, 0x4e779c24f534b095 # load x3 with value 0x4e779c24f534b095
sw x3, 0(x2) # store 0x4e779c24f534b095 in memory
flh f5, 0(x2) # load 0x4e779c24f534b095 from memory into f5
fsub.h f5, f7, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb69443852f198f7a # load x3 with value 0xb69443852f198f7a
sw x3, 0(x2) # store 0xb69443852f198f7a in memory
flh f24, 0(x2) # load 0xb69443852f198f7a from memory into f24
la x2, scratch
li x3, 0xfe29bd7c5afee2d0 # load x3 with value 0xfe29bd7c5afee2d0
sw x3, 0(x2) # store 0xfe29bd7c5afee2d0 in memory
flh f6, 0(x2) # load 0xfe29bd7c5afee2d0 from memory into f6
fsub.h f6, f24, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xded259b16e0e4b11 # load x3 with value 0xded259b16e0e4b11
sw x3, 0(x2) # store 0xded259b16e0e4b11 in memory
flh f11, 0(x2) # load 0xded259b16e0e4b11 from memory into f11
la x2, scratch
li x3, 0x7e493624cc948c2 # load x3 with value 0x7e493624cc948c2
sw x3, 0(x2) # store 0x7e493624cc948c2 in memory
flh f7, 0(x2) # load 0x7e493624cc948c2 from memory into f7
fsub.h f7, f11, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x76804587bd34794c # load x3 with value 0x76804587bd34794c
sw x3, 0(x2) # store 0x76804587bd34794c in memory
flh f2, 0(x2) # load 0x76804587bd34794c from memory into f2
la x2, scratch
li x3, 0x47c7146e3b98254c # load x3 with value 0x47c7146e3b98254c
sw x3, 0(x2) # store 0x47c7146e3b98254c in memory
flh f8, 0(x2) # load 0x47c7146e3b98254c from memory into f8
fsub.h f8, f2, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xf84fca6b7f431221 # load x3 with value 0xf84fca6b7f431221
sw x3, 0(x2) # store 0xf84fca6b7f431221 in memory
flh f13, 0(x2) # load 0xf84fca6b7f431221 from memory into f13
la x2, scratch
li x3, 0x787e87dff761c707 # load x3 with value 0x787e87dff761c707
sw x3, 0(x2) # store 0x787e87dff761c707 in memory
flh f9, 0(x2) # load 0x787e87dff761c707 from memory into f9
fsub.h f9, f13, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x932608fb383f2e09 # load x3 with value 0x932608fb383f2e09
sw x3, 0(x2) # store 0x932608fb383f2e09 in memory
flh f18, 0(x2) # load 0x932608fb383f2e09 from memory into f18
la x2, scratch
li x3, 0x1b8ac19f78f6cc17 # load x3 with value 0x1b8ac19f78f6cc17
sw x3, 0(x2) # store 0x1b8ac19f78f6cc17 in memory
flh f10, 0(x2) # load 0x1b8ac19f78f6cc17 from memory into f10
fsub.h f10, f18, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xdc3a7f16b764d03 # load x3 with value 0xdc3a7f16b764d03
sw x3, 0(x2) # store 0xdc3a7f16b764d03 in memory
flh f12, 0(x2) # load 0xdc3a7f16b764d03 from memory into f12
la x2, scratch
li x3, 0xd298620e412f59aa # load x3 with value 0xd298620e412f59aa
sw x3, 0(x2) # store 0xd298620e412f59aa in memory
flh f11, 0(x2) # load 0xd298620e412f59aa from memory into f11
fsub.h f11, f12, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xe7dc69db05a9a1cc # load x3 with value 0xe7dc69db05a9a1cc
sw x3, 0(x2) # store 0xe7dc69db05a9a1cc in memory
flh f27, 0(x2) # load 0xe7dc69db05a9a1cc from memory into f27
la x2, scratch
li x3, 0xa80591023a37bad3 # load x3 with value 0xa80591023a37bad3
sw x3, 0(x2) # store 0xa80591023a37bad3 in memory
flh f12, 0(x2) # load 0xa80591023a37bad3 from memory into f12
fsub.h f12, f27, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xe53b8568c62b1c6 # load x3 with value 0xe53b8568c62b1c6
sw x3, 0(x2) # store 0xe53b8568c62b1c6 in memory
flh f7, 0(x2) # load 0xe53b8568c62b1c6 from memory into f7
la x2, scratch
li x3, 0x168692212df04b03 # load x3 with value 0x168692212df04b03
sw x3, 0(x2) # store 0x168692212df04b03 in memory
flh f13, 0(x2) # load 0x168692212df04b03 from memory into f13
fsub.h f13, f7, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xc3d6ae184cb89e0d # load x3 with value 0xc3d6ae184cb89e0d
sw x3, 0(x2) # store 0xc3d6ae184cb89e0d in memory
flh f13, 0(x2) # load 0xc3d6ae184cb89e0d from memory into f13
la x2, scratch
li x3, 0xf46000457b779293 # load x3 with value 0xf46000457b779293
sw x3, 0(x2) # store 0xf46000457b779293 in memory
flh f14, 0(x2) # load 0xf46000457b779293 from memory into f14
fsub.h f14, f13, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0xc42ae82f1457d260 # load x3 with value 0xc42ae82f1457d260
sw x3, 0(x2) # store 0xc42ae82f1457d260 in memory
flh f23, 0(x2) # load 0xc42ae82f1457d260 from memory into f23
la x2, scratch
li x3, 0xb408c1e2b91c52 # load x3 with value 0xb408c1e2b91c52
sw x3, 0(x2) # store 0xb408c1e2b91c52 in memory
flh f15, 0(x2) # load 0xb408c1e2b91c52 from memory into f15
fsub.h f15, f23, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xe16c3f0b3387b718 # load x3 with value 0xe16c3f0b3387b718
sw x3, 0(x2) # store 0xe16c3f0b3387b718 in memory
flh f27, 0(x2) # load 0xe16c3f0b3387b718 from memory into f27
la x2, scratch
li x3, 0x1844e8dc72f887f3 # load x3 with value 0x1844e8dc72f887f3
sw x3, 0(x2) # store 0x1844e8dc72f887f3 in memory
flh f16, 0(x2) # load 0x1844e8dc72f887f3 from memory into f16
fsub.h f16, f27, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xfc9bca89dd53757d # load x3 with value 0xfc9bca89dd53757d
sw x3, 0(x2) # store 0xfc9bca89dd53757d in memory
flh f30, 0(x2) # load 0xfc9bca89dd53757d from memory into f30
la x2, scratch
li x3, 0x9d52993172262742 # load x3 with value 0x9d52993172262742
sw x3, 0(x2) # store 0x9d52993172262742 in memory
flh f17, 0(x2) # load 0x9d52993172262742 from memory into f17
fsub.h f17, f30, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x2218252b5413fd52 # load x3 with value 0x2218252b5413fd52
sw x3, 0(x2) # store 0x2218252b5413fd52 in memory
flh f28, 0(x2) # load 0x2218252b5413fd52 from memory into f28
la x2, scratch
li x3, 0x298ff12e09b590d3 # load x3 with value 0x298ff12e09b590d3
sw x3, 0(x2) # store 0x298ff12e09b590d3 in memory
flh f18, 0(x2) # load 0x298ff12e09b590d3 from memory into f18
fsub.h f18, f28, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xbbd359a5306db53a # load x3 with value 0xbbd359a5306db53a
sw x3, 0(x2) # store 0xbbd359a5306db53a in memory
flh f21, 0(x2) # load 0xbbd359a5306db53a from memory into f21
la x2, scratch
li x3, 0x2f4113cec2efe8ce # load x3 with value 0x2f4113cec2efe8ce
sw x3, 0(x2) # store 0x2f4113cec2efe8ce in memory
flh f19, 0(x2) # load 0x2f4113cec2efe8ce from memory into f19
fsub.h f19, f21, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x1571e014a4668d0d # load x3 with value 0x1571e014a4668d0d
sw x3, 0(x2) # store 0x1571e014a4668d0d in memory
flh f3, 0(x2) # load 0x1571e014a4668d0d from memory into f3
la x2, scratch
li x3, 0xa9e7fda097cf5fdc # load x3 with value 0xa9e7fda097cf5fdc
sw x3, 0(x2) # store 0xa9e7fda097cf5fdc in memory
flh f20, 0(x2) # load 0xa9e7fda097cf5fdc from memory into f20
fsub.h f20, f3, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x1f658175aca7a135 # load x3 with value 0x1f658175aca7a135
sw x3, 0(x2) # store 0x1f658175aca7a135 in memory
flh f12, 0(x2) # load 0x1f658175aca7a135 from memory into f12
la x2, scratch
li x3, 0xdda8ca597e396199 # load x3 with value 0xdda8ca597e396199
sw x3, 0(x2) # store 0xdda8ca597e396199 in memory
flh f21, 0(x2) # load 0xdda8ca597e396199 from memory into f21
fsub.h f21, f12, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0xeea759d6403052 # load x3 with value 0xeea759d6403052
sw x3, 0(x2) # store 0xeea759d6403052 in memory
flh f9, 0(x2) # load 0xeea759d6403052 from memory into f9
la x2, scratch
li x3, 0x69537b708ce969ef # load x3 with value 0x69537b708ce969ef
sw x3, 0(x2) # store 0x69537b708ce969ef in memory
flh f22, 0(x2) # load 0x69537b708ce969ef from memory into f22
fsub.h f22, f9, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xd1db7c3500538218 # load x3 with value 0xd1db7c3500538218
sw x3, 0(x2) # store 0xd1db7c3500538218 in memory
flh f30, 0(x2) # load 0xd1db7c3500538218 from memory into f30
la x2, scratch
li x3, 0x1db6671c5121fd32 # load x3 with value 0x1db6671c5121fd32
sw x3, 0(x2) # store 0x1db6671c5121fd32 in memory
flh f23, 0(x2) # load 0x1db6671c5121fd32 from memory into f23
fsub.h f23, f30, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x60fa3fd5a18bfcf0 # load x3 with value 0x60fa3fd5a18bfcf0
sw x3, 0(x2) # store 0x60fa3fd5a18bfcf0 in memory
flh f18, 0(x2) # load 0x60fa3fd5a18bfcf0 from memory into f18
la x2, scratch
li x3, 0x814bf12eec0bf2a3 # load x3 with value 0x814bf12eec0bf2a3
sw x3, 0(x2) # store 0x814bf12eec0bf2a3 in memory
flh f24, 0(x2) # load 0x814bf12eec0bf2a3 from memory into f24
fsub.h f24, f18, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xf6055e6516912818 # load x3 with value 0xf6055e6516912818
sw x3, 0(x2) # store 0xf6055e6516912818 in memory
flh f15, 0(x2) # load 0xf6055e6516912818 from memory into f15
la x2, scratch
li x3, 0x82a60827d850316a # load x3 with value 0x82a60827d850316a
sw x3, 0(x2) # store 0x82a60827d850316a in memory
flh f25, 0(x2) # load 0x82a60827d850316a from memory into f25
fsub.h f25, f15, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x1317db4d8a87b1f3 # load x3 with value 0x1317db4d8a87b1f3
sw x3, 0(x2) # store 0x1317db4d8a87b1f3 in memory
flh f12, 0(x2) # load 0x1317db4d8a87b1f3 from memory into f12
la x2, scratch
li x3, 0x1a93f348d9a520ea # load x3 with value 0x1a93f348d9a520ea
sw x3, 0(x2) # store 0x1a93f348d9a520ea in memory
flh f26, 0(x2) # load 0x1a93f348d9a520ea from memory into f26
fsub.h f26, f12, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xcdfcd15b56df7403 # load x3 with value 0xcdfcd15b56df7403
sw x3, 0(x2) # store 0xcdfcd15b56df7403 in memory
flh f31, 0(x2) # load 0xcdfcd15b56df7403 from memory into f31
la x2, scratch
li x3, 0x3d73340ec7138467 # load x3 with value 0x3d73340ec7138467
sw x3, 0(x2) # store 0x3d73340ec7138467 in memory
flh f27, 0(x2) # load 0x3d73340ec7138467 from memory into f27
fsub.h f27, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x5aa316f04fe85e8e # load x3 with value 0x5aa316f04fe85e8e
sw x3, 0(x2) # store 0x5aa316f04fe85e8e in memory
flh f22, 0(x2) # load 0x5aa316f04fe85e8e from memory into f22
la x2, scratch
li x3, 0x60fca4f2fa289cdb # load x3 with value 0x60fca4f2fa289cdb
sw x3, 0(x2) # store 0x60fca4f2fa289cdb in memory
flh f28, 0(x2) # load 0x60fca4f2fa289cdb from memory into f28
fsub.h f28, f22, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x7b52426f6ff6aff2 # load x3 with value 0x7b52426f6ff6aff2
sw x3, 0(x2) # store 0x7b52426f6ff6aff2 in memory
flh f11, 0(x2) # load 0x7b52426f6ff6aff2 from memory into f11
la x2, scratch
li x3, 0xa0b8f2c6a5a7e412 # load x3 with value 0xa0b8f2c6a5a7e412
sw x3, 0(x2) # store 0xa0b8f2c6a5a7e412 in memory
flh f29, 0(x2) # load 0xa0b8f2c6a5a7e412 from memory into f29
fsub.h f29, f11, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x1d5e2b69fe95edbc # load x3 with value 0x1d5e2b69fe95edbc
sw x3, 0(x2) # store 0x1d5e2b69fe95edbc in memory
flh f14, 0(x2) # load 0x1d5e2b69fe95edbc from memory into f14
la x2, scratch
li x3, 0xac7ce040fe5acb1 # load x3 with value 0xac7ce040fe5acb1
sw x3, 0(x2) # store 0xac7ce040fe5acb1 in memory
flh f30, 0(x2) # load 0xac7ce040fe5acb1 from memory into f30
fsub.h f30, f14, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0xf2b21ff82b6b1967 # load x3 with value 0xf2b21ff82b6b1967
sw x3, 0(x2) # store 0xf2b21ff82b6b1967 in memory
flh f28, 0(x2) # load 0xf2b21ff82b6b1967 from memory into f28
la x2, scratch
li x3, 0x6bc6487049140320 # load x3 with value 0x6bc6487049140320
sw x3, 0(x2) # store 0x6bc6487049140320 in memory
flh f31, 0(x2) # load 0x6bc6487049140320 from memory into f31
fsub.h f31, f28, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x2fec86b30797d1b1 # load x3 with value 0x2fec86b30797d1b1
sw x3, 0(x2) # store 0x2fec86b30797d1b1 in memory
flh f26, 0(x2) # load 0x2fec86b30797d1b1 from memory into f26
la x2, scratch
li x3, 0x39694b566dfe9221 # load x3 with value 0x39694b566dfe9221
sw x3, 0(x2) # store 0x39694b566dfe9221 in memory
flh f18, 0(x2) # load 0x39694b566dfe9221 from memory into f18
fsub.h f11, f26, f18, dyn # perform operation
fsub.h f11, f26, f18, rdn # perform operation
fsub.h f11, f26, f18, rmm # perform operation
fsub.h f11, f26, f18, rne # perform operation
fsub.h f11, f26, f18, rtz # perform operation
fsub.h f11, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f22, f1, f9, dyn # perform operation
fsub.h f22, f1, f9, rdn # perform operation
fsub.h f22, f1, f9, rmm # perform operation
fsub.h f22, f1, f9, rne # perform operation
fsub.h f22, f1, f9, rtz # perform operation
fsub.h f22, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fsub.h f23, f2, f22, dyn # perform operation
fsub.h f23, f2, f22, rdn # perform operation
fsub.h f23, f2, f22, rmm # perform operation
fsub.h f23, f2, f22, rne # perform operation
fsub.h f23, f2, f22, rtz # perform operation
fsub.h f23, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fsub.h f8, f6, f25, dyn # perform operation
fsub.h f8, f6, f25, rdn # perform operation
fsub.h f8, f6, f25, rmm # perform operation
fsub.h f8, f6, f25, rne # perform operation
fsub.h f8, f6, f25, rtz # perform operation
fsub.h f8, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f28, f2, f26, dyn # perform operation
fsub.h f28, f2, f26, rdn # perform operation
fsub.h f28, f2, f26, rmm # perform operation
fsub.h f28, f2, f26, rne # perform operation
fsub.h f28, f2, f26, rtz # perform operation
fsub.h f28, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fsub.h f18, f7, f28, dyn # perform operation
fsub.h f18, f7, f28, rdn # perform operation
fsub.h f18, f7, f28, rmm # perform operation
fsub.h f18, f7, f28, rne # perform operation
fsub.h f18, f7, f28, rtz # perform operation
fsub.h f18, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fsub.h f27, f9, f5, dyn # perform operation
fsub.h f27, f9, f5, rdn # perform operation
fsub.h f27, f9, f5, rmm # perform operation
fsub.h f27, f9, f5, rne # perform operation
fsub.h f27, f9, f5, rtz # perform operation
fsub.h f27, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fsub.h f20, f13, f15, dyn # perform operation
fsub.h f20, f13, f15, rdn # perform operation
fsub.h f20, f13, f15, rmm # perform operation
fsub.h f20, f13, f15, rne # perform operation
fsub.h f20, f13, f15, rtz # perform operation
fsub.h f20, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsub.h f22, f6, f21, dyn # perform operation
fsub.h f22, f6, f21, rdn # perform operation
fsub.h f22, f6, f21, rmm # perform operation
fsub.h f22, f6, f21, rne # perform operation
fsub.h f22, f6, f21, rtz # perform operation
fsub.h f22, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fsub.h f7, f25, f19, dyn # perform operation
fsub.h f7, f25, f19, rdn # perform operation
fsub.h f7, f25, f19, rmm # perform operation
fsub.h f7, f25, f19, rne # perform operation
fsub.h f7, f25, f19, rtz # perform operation
fsub.h f7, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fsub.h f7, f20, f6, dyn # perform operation
fsub.h f7, f20, f6, rdn # perform operation
fsub.h f7, f20, f6, rmm # perform operation
fsub.h f7, f20, f6, rne # perform operation
fsub.h f7, f20, f6, rtz # perform operation
fsub.h f7, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fsub.h f24, f27, f21, dyn # perform operation
fsub.h f24, f27, f21, rdn # perform operation
fsub.h f24, f27, f21, rmm # perform operation
fsub.h f24, f27, f21, rne # perform operation
fsub.h f24, f27, f21, rtz # perform operation
fsub.h f24, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f7, f24, f14, dyn # perform operation
fsub.h f7, f24, f14, rdn # perform operation
fsub.h f7, f24, f14, rmm # perform operation
fsub.h f7, f24, f14, rne # perform operation
fsub.h f7, f24, f14, rtz # perform operation
fsub.h f7, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fsub.h f1, f9, f21, dyn # perform operation
fsub.h f1, f9, f21, rdn # perform operation
fsub.h f1, f9, f21, rmm # perform operation
fsub.h f1, f9, f21, rne # perform operation
fsub.h f1, f9, f21, rtz # perform operation
fsub.h f1, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fsub.h f21, f24, f30, dyn # perform operation
fsub.h f21, f24, f30, rdn # perform operation
fsub.h f21, f24, f30, rmm # perform operation
fsub.h f21, f24, f30, rne # perform operation
fsub.h f21, f24, f30, rtz # perform operation
fsub.h f21, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fsub.h f26, f29, f18, dyn # perform operation
fsub.h f26, f29, f18, rdn # perform operation
fsub.h f26, f29, f18, rmm # perform operation
fsub.h f26, f29, f18, rne # perform operation
fsub.h f26, f29, f18, rtz # perform operation
fsub.h f26, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fsub.h f17, f10, f19, dyn # perform operation
fsub.h f17, f10, f19, rdn # perform operation
fsub.h f17, f10, f19, rmm # perform operation
fsub.h f17, f10, f19, rne # perform operation
fsub.h f17, f10, f19, rtz # perform operation
fsub.h f17, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fsub.h f8, f11, f14, dyn # perform operation
fsub.h f8, f11, f14, rdn # perform operation
fsub.h f8, f11, f14, rmm # perform operation
fsub.h f8, f11, f14, rne # perform operation
fsub.h f8, f11, f14, rtz # perform operation
fsub.h f8, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fsub.h f11, f24, f25, dyn # perform operation
fsub.h f11, f24, f25, rdn # perform operation
fsub.h f11, f24, f25, rmm # perform operation
fsub.h f11, f24, f25, rne # perform operation
fsub.h f11, f24, f25, rtz # perform operation
fsub.h f11, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f13, f28, f1, dyn # perform operation
fsub.h f13, f28, f1, rdn # perform operation
fsub.h f13, f28, f1, rmm # perform operation
fsub.h f13, f28, f1, rne # perform operation
fsub.h f13, f28, f1, rtz # perform operation
fsub.h f13, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fsub.h f28, f27, f15, dyn # perform operation
fsub.h f28, f27, f15, rdn # perform operation
fsub.h f28, f27, f15, rmm # perform operation
fsub.h f28, f27, f15, rne # perform operation
fsub.h f28, f27, f15, rtz # perform operation
fsub.h f28, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fsub.h f26, f17, f2, dyn # perform operation
fsub.h f26, f17, f2, rdn # perform operation
fsub.h f26, f17, f2, rmm # perform operation
fsub.h f26, f17, f2, rne # perform operation
fsub.h f26, f17, f2, rtz # perform operation
fsub.h f26, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fsub.h f15, f5, f25, dyn # perform operation
fsub.h f15, f5, f25, rdn # perform operation
fsub.h f15, f5, f25, rmm # perform operation
fsub.h f15, f5, f25, rne # perform operation
fsub.h f15, f5, f25, rtz # perform operation
fsub.h f15, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fsub.h f19, f1, f15, dyn # perform operation
fsub.h f19, f1, f15, rdn # perform operation
fsub.h f19, f1, f15, rmm # perform operation
fsub.h f19, f1, f15, rne # perform operation
fsub.h f19, f1, f15, rtz # perform operation
fsub.h f19, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fsub.h f2, f24, f17, dyn # perform operation
fsub.h f2, f24, f17, rdn # perform operation
fsub.h f2, f24, f17, rmm # perform operation
fsub.h f2, f24, f17, rne # perform operation
fsub.h f2, f24, f17, rtz # perform operation
fsub.h f2, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f26, f24, f10, dyn # perform operation
fsub.h f26, f24, f10, rdn # perform operation
fsub.h f26, f24, f10, rmm # perform operation
fsub.h f26, f24, f10, rne # perform operation
fsub.h f26, f24, f10, rtz # perform operation
fsub.h f26, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
fsub.h f1, f19, f17, dyn # perform operation
fsub.h f1, f19, f17, rdn # perform operation
fsub.h f1, f19, f17, rmm # perform operation
fsub.h f1, f19, f17, rne # perform operation
fsub.h f1, f19, f17, rtz # perform operation
fsub.h f1, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fsub.h f15, f17, f6, dyn # perform operation
fsub.h f15, f17, f6, rdn # perform operation
fsub.h f15, f17, f6, rmm # perform operation
fsub.h f15, f17, f6, rne # perform operation
fsub.h f15, f17, f6, rtz # perform operation
fsub.h f15, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fsub.h f6, f5, f15, dyn # perform operation
fsub.h f6, f5, f15, rdn # perform operation
fsub.h f6, f5, f15, rmm # perform operation
fsub.h f6, f5, f15, rne # perform operation
fsub.h f6, f5, f15, rtz # perform operation
fsub.h f6, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fsub.h f19, f23, f14, dyn # perform operation
fsub.h f19, f23, f14, rdn # perform operation
fsub.h f19, f23, f14, rmm # perform operation
fsub.h f19, f23, f14, rne # perform operation
fsub.h f19, f23, f14, rtz # perform operation
fsub.h f19, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fsub.h f19, f31, f13, dyn # perform operation
fsub.h f19, f31, f13, rdn # perform operation
fsub.h f19, f31, f13, rmm # perform operation
fsub.h f19, f31, f13, rne # perform operation
fsub.h f19, f31, f13, rtz # perform operation
fsub.h f19, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fsub.h f15, f16, f24, dyn # perform operation
fsub.h f15, f16, f24, rdn # perform operation
fsub.h f15, f16, f24, rmm # perform operation
fsub.h f15, f16, f24, rne # perform operation
fsub.h f15, f16, f24, rtz # perform operation
fsub.h f15, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fsub.h f25, f29, f20, dyn # perform operation
fsub.h f25, f29, f20, rdn # perform operation
fsub.h f25, f29, f20, rmm # perform operation
fsub.h f25, f29, f20, rne # perform operation
fsub.h f25, f29, f20, rtz # perform operation
fsub.h f25, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsub.h f7, f13, f9, dyn # perform operation
fsub.h f7, f13, f9, rdn # perform operation
fsub.h f7, f13, f9, rmm # perform operation
fsub.h f7, f13, f9, rne # perform operation
fsub.h f7, f13, f9, rtz # perform operation
fsub.h f7, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f15, f14, f31, dyn # perform operation
fsub.h f15, f14, f31, rdn # perform operation
fsub.h f15, f14, f31, rmm # perform operation
fsub.h f15, f14, f31, rne # perform operation
fsub.h f15, f14, f31, rtz # perform operation
fsub.h f15, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fsub.h f30, f5, f6, dyn # perform operation
fsub.h f30, f5, f6, rdn # perform operation
fsub.h f30, f5, f6, rmm # perform operation
fsub.h f30, f5, f6, rne # perform operation
fsub.h f30, f5, f6, rtz # perform operation
fsub.h f30, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fsub.h f23, f1, f16, dyn # perform operation
fsub.h f23, f1, f16, rdn # perform operation
fsub.h f23, f1, f16, rmm # perform operation
fsub.h f23, f1, f16, rne # perform operation
fsub.h f23, f1, f16, rtz # perform operation
fsub.h f23, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f5, f23, f14, dyn # perform operation
fsub.h f5, f23, f14, rdn # perform operation
fsub.h f5, f23, f14, rmm # perform operation
fsub.h f5, f23, f14, rne # perform operation
fsub.h f5, f23, f14, rtz # perform operation
fsub.h f5, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fsub.h f5, f31, f30, dyn # perform operation
fsub.h f5, f31, f30, rdn # perform operation
fsub.h f5, f31, f30, rmm # perform operation
fsub.h f5, f31, f30, rne # perform operation
fsub.h f5, f31, f30, rtz # perform operation
fsub.h f5, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fsub.h f25, f20, f9, dyn # perform operation
fsub.h f25, f20, f9, rdn # perform operation
fsub.h f25, f20, f9, rmm # perform operation
fsub.h f25, f20, f9, rne # perform operation
fsub.h f25, f20, f9, rtz # perform operation
fsub.h f25, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fsub.h f27, f15, f9, dyn # perform operation
fsub.h f27, f15, f9, rdn # perform operation
fsub.h f27, f15, f9, rmm # perform operation
fsub.h f27, f15, f9, rne # perform operation
fsub.h f27, f15, f9, rtz # perform operation
fsub.h f27, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fsub.h f6, f12, f28, dyn # perform operation
fsub.h f6, f12, f28, rdn # perform operation
fsub.h f6, f12, f28, rmm # perform operation
fsub.h f6, f12, f28, rne # perform operation
fsub.h f6, f12, f28, rtz # perform operation
fsub.h f6, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fsub.h f22, f20, f24, dyn # perform operation
fsub.h f22, f20, f24, rdn # perform operation
fsub.h f22, f20, f24, rmm # perform operation
fsub.h f22, f20, f24, rne # perform operation
fsub.h f22, f20, f24, rtz # perform operation
fsub.h f22, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fsub.h f6, f31, f16, dyn # perform operation
fsub.h f6, f31, f16, rdn # perform operation
fsub.h f6, f31, f16, rmm # perform operation
fsub.h f6, f31, f16, rne # perform operation
fsub.h f6, f31, f16, rtz # perform operation
fsub.h f6, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f21, f7, f17, dyn # perform operation
fsub.h f21, f7, f17, rdn # perform operation
fsub.h f21, f7, f17, rmm # perform operation
fsub.h f21, f7, f17, rne # perform operation
fsub.h f21, f7, f17, rtz # perform operation
fsub.h f21, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fsub.h f22, f6, f28, dyn # perform operation
fsub.h f22, f6, f28, rdn # perform operation
fsub.h f22, f6, f28, rmm # perform operation
fsub.h f22, f6, f28, rne # perform operation
fsub.h f22, f6, f28, rtz # perform operation
fsub.h f22, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fsub.h f5, f30, f15, dyn # perform operation
fsub.h f5, f30, f15, rdn # perform operation
fsub.h f5, f30, f15, rmm # perform operation
fsub.h f5, f30, f15, rne # perform operation
fsub.h f5, f30, f15, rtz # perform operation
fsub.h f5, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fsub.h f3, f20, f16, dyn # perform operation
fsub.h f3, f20, f16, rdn # perform operation
fsub.h f3, f20, f16, rmm # perform operation
fsub.h f3, f20, f16, rne # perform operation
fsub.h f3, f20, f16, rtz # perform operation
fsub.h f3, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fsub.h f3, f1, f25, dyn # perform operation
fsub.h f3, f1, f25, rdn # perform operation
fsub.h f3, f1, f25, rmm # perform operation
fsub.h f3, f1, f25, rne # perform operation
fsub.h f3, f1, f25, rtz # perform operation
fsub.h f3, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f22, f29, f19, dyn # perform operation
fsub.h f22, f29, f19, rdn # perform operation
fsub.h f22, f29, f19, rmm # perform operation
fsub.h f22, f29, f19, rne # perform operation
fsub.h f22, f29, f19, rtz # perform operation
fsub.h f22, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f20, f31, f30, dyn # perform operation
fsub.h f20, f31, f30, rdn # perform operation
fsub.h f20, f31, f30, rmm # perform operation
fsub.h f20, f31, f30, rne # perform operation
fsub.h f20, f31, f30, rtz # perform operation
fsub.h f20, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fsub.h f18, f13, f7, dyn # perform operation
fsub.h f18, f13, f7, rdn # perform operation
fsub.h f18, f13, f7, rmm # perform operation
fsub.h f18, f13, f7, rne # perform operation
fsub.h f18, f13, f7, rtz # perform operation
fsub.h f18, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsub.h f19, f5, f8, dyn # perform operation
fsub.h f19, f5, f8, rdn # perform operation
fsub.h f19, f5, f8, rmm # perform operation
fsub.h f19, f5, f8, rne # perform operation
fsub.h f19, f5, f8, rtz # perform operation
fsub.h f19, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f30, f5, f7, dyn # perform operation
fsub.h f30, f5, f7, rdn # perform operation
fsub.h f30, f5, f7, rmm # perform operation
fsub.h f30, f5, f7, rne # perform operation
fsub.h f30, f5, f7, rtz # perform operation
fsub.h f30, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fsub.h f19, f24, f25, dyn # perform operation
fsub.h f19, f24, f25, rdn # perform operation
fsub.h f19, f24, f25, rmm # perform operation
fsub.h f19, f24, f25, rne # perform operation
fsub.h f19, f24, f25, rtz # perform operation
fsub.h f19, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fsub.h f28, f2, f25, dyn # perform operation
fsub.h f28, f2, f25, rdn # perform operation
fsub.h f28, f2, f25, rmm # perform operation
fsub.h f28, f2, f25, rne # perform operation
fsub.h f28, f2, f25, rtz # perform operation
fsub.h f28, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f14, f11, f26, dyn # perform operation
fsub.h f14, f11, f26, rdn # perform operation
fsub.h f14, f11, f26, rmm # perform operation
fsub.h f14, f11, f26, rne # perform operation
fsub.h f14, f11, f26, rtz # perform operation
fsub.h f14, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fsub.h f20, f13, f18, dyn # perform operation
fsub.h f20, f13, f18, rdn # perform operation
fsub.h f20, f13, f18, rmm # perform operation
fsub.h f20, f13, f18, rne # perform operation
fsub.h f20, f13, f18, rtz # perform operation
fsub.h f20, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f3, f8, f10, dyn # perform operation
fsub.h f3, f8, f10, rdn # perform operation
fsub.h f3, f8, f10, rmm # perform operation
fsub.h f3, f8, f10, rne # perform operation
fsub.h f3, f8, f10, rtz # perform operation
fsub.h f3, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fsub.h f19, f7, f12, dyn # perform operation
fsub.h f19, f7, f12, rdn # perform operation
fsub.h f19, f7, f12, rmm # perform operation
fsub.h f19, f7, f12, rne # perform operation
fsub.h f19, f7, f12, rtz # perform operation
fsub.h f19, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fsub.h f1, f14, f27, dyn # perform operation
fsub.h f1, f14, f27, rdn # perform operation
fsub.h f1, f14, f27, rmm # perform operation
fsub.h f1, f14, f27, rne # perform operation
fsub.h f1, f14, f27, rtz # perform operation
fsub.h f1, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f10, f13, f5, dyn # perform operation
fsub.h f10, f13, f5, rdn # perform operation
fsub.h f10, f13, f5, rmm # perform operation
fsub.h f10, f13, f5, rne # perform operation
fsub.h f10, f13, f5, rtz # perform operation
fsub.h f10, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fsub.h f24, f22, f28, dyn # perform operation
fsub.h f24, f22, f28, rdn # perform operation
fsub.h f24, f22, f28, rmm # perform operation
fsub.h f24, f22, f28, rne # perform operation
fsub.h f24, f22, f28, rtz # perform operation
fsub.h f24, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fsub.h f25, f7, f1, dyn # perform operation
fsub.h f25, f7, f1, rdn # perform operation
fsub.h f25, f7, f1, rmm # perform operation
fsub.h f25, f7, f1, rne # perform operation
fsub.h f25, f7, f1, rtz # perform operation
fsub.h f25, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fsub.h f14, f10, f16, dyn # perform operation
fsub.h f14, f10, f16, rdn # perform operation
fsub.h f14, f10, f16, rmm # perform operation
fsub.h f14, f10, f16, rne # perform operation
fsub.h f14, f10, f16, rtz # perform operation
fsub.h f14, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fsub.h f15, f16, f12, dyn # perform operation
fsub.h f15, f16, f12, rdn # perform operation
fsub.h f15, f16, f12, rmm # perform operation
fsub.h f15, f16, f12, rne # perform operation
fsub.h f15, f16, f12, rtz # perform operation
fsub.h f15, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fsub.h f1, f7, f16, dyn # perform operation
fsub.h f1, f7, f16, rdn # perform operation
fsub.h f1, f7, f16, rmm # perform operation
fsub.h f1, f7, f16, rne # perform operation
fsub.h f1, f7, f16, rtz # perform operation
fsub.h f1, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f26, f20, f8, dyn # perform operation
fsub.h f26, f20, f8, rdn # perform operation
fsub.h f26, f20, f8, rmm # perform operation
fsub.h f26, f20, f8, rne # perform operation
fsub.h f26, f20, f8, rtz # perform operation
fsub.h f26, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fsub.h f27, f8, f30, dyn # perform operation
fsub.h f27, f8, f30, rdn # perform operation
fsub.h f27, f8, f30, rmm # perform operation
fsub.h f27, f8, f30, rne # perform operation
fsub.h f27, f8, f30, rtz # perform operation
fsub.h f27, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsub.h f2, f24, f14, dyn # perform operation
fsub.h f2, f24, f14, rdn # perform operation
fsub.h f2, f24, f14, rmm # perform operation
fsub.h f2, f24, f14, rne # perform operation
fsub.h f2, f24, f14, rtz # perform operation
fsub.h f2, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fsub.h f23, f28, f1, dyn # perform operation
fsub.h f23, f28, f1, rdn # perform operation
fsub.h f23, f28, f1, rmm # perform operation
fsub.h f23, f28, f1, rne # perform operation
fsub.h f23, f28, f1, rtz # perform operation
fsub.h f23, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fsub.h f29, f30, f6, dyn # perform operation
fsub.h f29, f30, f6, rdn # perform operation
fsub.h f29, f30, f6, rmm # perform operation
fsub.h f29, f30, f6, rne # perform operation
fsub.h f29, f30, f6, rtz # perform operation
fsub.h f29, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fsub.h f23, f2, f11, dyn # perform operation
fsub.h f23, f2, f11, rdn # perform operation
fsub.h f23, f2, f11, rmm # perform operation
fsub.h f23, f2, f11, rne # perform operation
fsub.h f23, f2, f11, rtz # perform operation
fsub.h f23, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fsub.h f7, f17, f30, dyn # perform operation
fsub.h f7, f17, f30, rdn # perform operation
fsub.h f7, f17, f30, rmm # perform operation
fsub.h f7, f17, f30, rne # perform operation
fsub.h f7, f17, f30, rtz # perform operation
fsub.h f7, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fsub.h f20, f5, f15, dyn # perform operation
fsub.h f20, f5, f15, rdn # perform operation
fsub.h f20, f5, f15, rmm # perform operation
fsub.h f20, f5, f15, rne # perform operation
fsub.h f20, f5, f15, rtz # perform operation
fsub.h f20, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fsub.h f16, f13, f23, dyn # perform operation
fsub.h f16, f13, f23, rdn # perform operation
fsub.h f16, f13, f23, rmm # perform operation
fsub.h f16, f13, f23, rne # perform operation
fsub.h f16, f13, f23, rtz # perform operation
fsub.h f16, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fsub.h f29, f16, f6, dyn # perform operation
fsub.h f29, f16, f6, rdn # perform operation
fsub.h f29, f16, f6, rmm # perform operation
fsub.h f29, f16, f6, rne # perform operation
fsub.h f29, f16, f6, rtz # perform operation
fsub.h f29, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f29, f19, f21, dyn # perform operation
fsub.h f29, f19, f21, rdn # perform operation
fsub.h f29, f19, f21, rmm # perform operation
fsub.h f29, f19, f21, rne # perform operation
fsub.h f29, f19, f21, rtz # perform operation
fsub.h f29, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fsub.h f27, f28, f23, dyn # perform operation
fsub.h f27, f28, f23, rdn # perform operation
fsub.h f27, f28, f23, rmm # perform operation
fsub.h f27, f28, f23, rne # perform operation
fsub.h f27, f28, f23, rtz # perform operation
fsub.h f27, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fsub.h f31, f27, f17, dyn # perform operation
fsub.h f31, f27, f17, rdn # perform operation
fsub.h f31, f27, f17, rmm # perform operation
fsub.h f31, f27, f17, rne # perform operation
fsub.h f31, f27, f17, rtz # perform operation
fsub.h f31, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fsub.h f19, f2, f29, dyn # perform operation
fsub.h f19, f2, f29, rdn # perform operation
fsub.h f19, f2, f29, rmm # perform operation
fsub.h f19, f2, f29, rne # perform operation
fsub.h f19, f2, f29, rtz # perform operation
fsub.h f19, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fsub.h f15, f17, f28, dyn # perform operation
fsub.h f15, f17, f28, rdn # perform operation
fsub.h f15, f17, f28, rmm # perform operation
fsub.h f15, f17, f28, rne # perform operation
fsub.h f15, f17, f28, rtz # perform operation
fsub.h f15, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fsub.h f10, f8, f31, dyn # perform operation
fsub.h f10, f8, f31, rdn # perform operation
fsub.h f10, f8, f31, rmm # perform operation
fsub.h f10, f8, f31, rne # perform operation
fsub.h f10, f8, f31, rtz # perform operation
fsub.h f10, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fsub.h f20, f15, f21, dyn # perform operation
fsub.h f20, f15, f21, rdn # perform operation
fsub.h f20, f15, f21, rmm # perform operation
fsub.h f20, f15, f21, rne # perform operation
fsub.h f20, f15, f21, rtz # perform operation
fsub.h f20, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fsub.h f12, f11, f6, dyn # perform operation
fsub.h f12, f11, f6, rdn # perform operation
fsub.h f12, f11, f6, rmm # perform operation
fsub.h f12, f11, f6, rne # perform operation
fsub.h f12, f11, f6, rtz # perform operation
fsub.h f12, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fsub.h f14, f23, f19, dyn # perform operation
fsub.h f14, f23, f19, rdn # perform operation
fsub.h f14, f23, f19, rmm # perform operation
fsub.h f14, f23, f19, rne # perform operation
fsub.h f14, f23, f19, rtz # perform operation
fsub.h f14, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fsub.h f25, f12, f11, dyn # perform operation
fsub.h f25, f12, f11, rdn # perform operation
fsub.h f25, f12, f11, rmm # perform operation
fsub.h f25, f12, f11, rne # perform operation
fsub.h f25, f12, f11, rtz # perform operation
fsub.h f25, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fsub.h f20, f26, f22, dyn # perform operation
fsub.h f20, f26, f22, rdn # perform operation
fsub.h f20, f26, f22, rmm # perform operation
fsub.h f20, f26, f22, rne # perform operation
fsub.h f20, f26, f22, rtz # perform operation
fsub.h f20, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fsub.h f7, f14, f25, dyn # perform operation
fsub.h f7, f14, f25, rdn # perform operation
fsub.h f7, f14, f25, rmm # perform operation
fsub.h f7, f14, f25, rne # perform operation
fsub.h f7, f14, f25, rtz # perform operation
fsub.h f7, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f31, f2, f5, dyn # perform operation
fsub.h f31, f2, f5, rdn # perform operation
fsub.h f31, f2, f5, rmm # perform operation
fsub.h f31, f2, f5, rne # perform operation
fsub.h f31, f2, f5, rtz # perform operation
fsub.h f31, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fsub.h f22, f18, f23, dyn # perform operation
fsub.h f22, f18, f23, rdn # perform operation
fsub.h f22, f18, f23, rmm # perform operation
fsub.h f22, f18, f23, rne # perform operation
fsub.h f22, f18, f23, rtz # perform operation
fsub.h f22, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fsub.h f11, f5, f31, dyn # perform operation
fsub.h f11, f5, f31, rdn # perform operation
fsub.h f11, f5, f31, rmm # perform operation
fsub.h f11, f5, f31, rne # perform operation
fsub.h f11, f5, f31, rtz # perform operation
fsub.h f11, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f30, f28, f23, dyn # perform operation
fsub.h f30, f28, f23, rdn # perform operation
fsub.h f30, f28, f23, rmm # perform operation
fsub.h f30, f28, f23, rne # perform operation
fsub.h f30, f28, f23, rtz # perform operation
fsub.h f30, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fsub.h f13, f9, f6, dyn # perform operation
fsub.h f13, f9, f6, rdn # perform operation
fsub.h f13, f9, f6, rmm # perform operation
fsub.h f13, f9, f6, rne # perform operation
fsub.h f13, f9, f6, rtz # perform operation
fsub.h f13, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fsub.h f27, f5, f23, dyn # perform operation
fsub.h f27, f5, f23, rdn # perform operation
fsub.h f27, f5, f23, rmm # perform operation
fsub.h f27, f5, f23, rne # perform operation
fsub.h f27, f5, f23, rtz # perform operation
fsub.h f27, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f23, f14, f24, dyn # perform operation
fsub.h f23, f14, f24, rdn # perform operation
fsub.h f23, f14, f24, rmm # perform operation
fsub.h f23, f14, f24, rne # perform operation
fsub.h f23, f14, f24, rtz # perform operation
fsub.h f23, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fsub.h f11, f2, f30, dyn # perform operation
fsub.h f11, f2, f30, rdn # perform operation
fsub.h f11, f2, f30, rmm # perform operation
fsub.h f11, f2, f30, rne # perform operation
fsub.h f11, f2, f30, rtz # perform operation
fsub.h f11, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsub.h f5, f18, f14, dyn # perform operation
fsub.h f5, f18, f14, rdn # perform operation
fsub.h f5, f18, f14, rmm # perform operation
fsub.h f5, f18, f14, rne # perform operation
fsub.h f5, f18, f14, rtz # perform operation
fsub.h f5, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fsub.h f29, f14, f19, dyn # perform operation
fsub.h f29, f14, f19, rdn # perform operation
fsub.h f29, f14, f19, rmm # perform operation
fsub.h f29, f14, f19, rne # perform operation
fsub.h f29, f14, f19, rtz # perform operation
fsub.h f29, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fsub.h f24, f13, f1, dyn # perform operation
fsub.h f24, f13, f1, rdn # perform operation
fsub.h f24, f13, f1, rmm # perform operation
fsub.h f24, f13, f1, rne # perform operation
fsub.h f24, f13, f1, rtz # perform operation
fsub.h f24, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f3, f18, f15, dyn # perform operation
fsub.h f3, f18, f15, rdn # perform operation
fsub.h f3, f18, f15, rmm # perform operation
fsub.h f3, f18, f15, rne # perform operation
fsub.h f3, f18, f15, rtz # perform operation
fsub.h f3, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fsub.h f12, f19, f11, dyn # perform operation
fsub.h f12, f19, f11, rdn # perform operation
fsub.h f12, f19, f11, rmm # perform operation
fsub.h f12, f19, f11, rne # perform operation
fsub.h f12, f19, f11, rtz # perform operation
fsub.h f12, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fsub.h f6, f26, f23, dyn # perform operation
fsub.h f6, f26, f23, rdn # perform operation
fsub.h f6, f26, f23, rmm # perform operation
fsub.h f6, f26, f23, rne # perform operation
fsub.h f6, f26, f23, rtz # perform operation
fsub.h f6, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fsub.h f13, f6, f14, dyn # perform operation
fsub.h f13, f6, f14, rdn # perform operation
fsub.h f13, f6, f14, rmm # perform operation
fsub.h f13, f6, f14, rne # perform operation
fsub.h f13, f6, f14, rtz # perform operation
fsub.h f13, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fsub.h f20, f12, f14, dyn # perform operation
fsub.h f20, f12, f14, rdn # perform operation
fsub.h f20, f12, f14, rmm # perform operation
fsub.h f20, f12, f14, rne # perform operation
fsub.h f20, f12, f14, rtz # perform operation
fsub.h f20, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fsub.h f12, f13, f16, dyn # perform operation
fsub.h f12, f13, f16, rdn # perform operation
fsub.h f12, f13, f16, rmm # perform operation
fsub.h f12, f13, f16, rne # perform operation
fsub.h f12, f13, f16, rtz # perform operation
fsub.h f12, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f25, f16, f27, dyn # perform operation
fsub.h f25, f16, f27, rdn # perform operation
fsub.h f25, f16, f27, rmm # perform operation
fsub.h f25, f16, f27, rne # perform operation
fsub.h f25, f16, f27, rtz # perform operation
fsub.h f25, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
fsub.h f23, f21, f14, dyn # perform operation
fsub.h f23, f21, f14, rdn # perform operation
fsub.h f23, f21, f14, rmm # perform operation
fsub.h f23, f21, f14, rne # perform operation
fsub.h f23, f21, f14, rtz # perform operation
fsub.h f23, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fsub.h f27, f30, f26, dyn # perform operation
fsub.h f27, f30, f26, rdn # perform operation
fsub.h f27, f30, f26, rmm # perform operation
fsub.h f27, f30, f26, rne # perform operation
fsub.h f27, f30, f26, rtz # perform operation
fsub.h f27, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f8, f9, f14, dyn # perform operation
fsub.h f8, f9, f14, rdn # perform operation
fsub.h f8, f9, f14, rmm # perform operation
fsub.h f8, f9, f14, rne # perform operation
fsub.h f8, f9, f14, rtz # perform operation
fsub.h f8, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fsub.h f10, f1, f21, dyn # perform operation
fsub.h f10, f1, f21, rdn # perform operation
fsub.h f10, f1, f21, rmm # perform operation
fsub.h f10, f1, f21, rne # perform operation
fsub.h f10, f1, f21, rtz # perform operation
fsub.h f10, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fsub.h f26, f11, f1, dyn # perform operation
fsub.h f26, f11, f1, rdn # perform operation
fsub.h f26, f11, f1, rmm # perform operation
fsub.h f26, f11, f1, rne # perform operation
fsub.h f26, f11, f1, rtz # perform operation
fsub.h f26, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fsub.h f16, f27, f20, dyn # perform operation
fsub.h f16, f27, f20, rdn # perform operation
fsub.h f16, f27, f20, rmm # perform operation
fsub.h f16, f27, f20, rne # perform operation
fsub.h f16, f27, f20, rtz # perform operation
fsub.h f16, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f9, f3, f25, dyn # perform operation
fsub.h f9, f3, f25, rdn # perform operation
fsub.h f9, f3, f25, rmm # perform operation
fsub.h f9, f3, f25, rne # perform operation
fsub.h f9, f3, f25, rtz # perform operation
fsub.h f9, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fsub.h f2, f29, f31, dyn # perform operation
fsub.h f2, f29, f31, rdn # perform operation
fsub.h f2, f29, f31, rmm # perform operation
fsub.h f2, f29, f31, rne # perform operation
fsub.h f2, f29, f31, rtz # perform operation
fsub.h f2, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fsub.h f13, f30, f2, dyn # perform operation
fsub.h f13, f30, f2, rdn # perform operation
fsub.h f13, f30, f2, rmm # perform operation
fsub.h f13, f30, f2, rne # perform operation
fsub.h f13, f30, f2, rtz # perform operation
fsub.h f13, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fsub.h f5, f26, f18, dyn # perform operation
fsub.h f5, f26, f18, rdn # perform operation
fsub.h f5, f26, f18, rmm # perform operation
fsub.h f5, f26, f18, rne # perform operation
fsub.h f5, f26, f18, rtz # perform operation
fsub.h f5, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fsub.h f20, f22, f29, dyn # perform operation
fsub.h f20, f22, f29, rdn # perform operation
fsub.h f20, f22, f29, rmm # perform operation
fsub.h f20, f22, f29, rne # perform operation
fsub.h f20, f22, f29, rtz # perform operation
fsub.h f20, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fsub.h f24, f12, f25, dyn # perform operation
fsub.h f24, f12, f25, rdn # perform operation
fsub.h f24, f12, f25, rmm # perform operation
fsub.h f24, f12, f25, rne # perform operation
fsub.h f24, f12, f25, rtz # perform operation
fsub.h f24, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fsub.h f16, f18, f10, dyn # perform operation
fsub.h f16, f18, f10, rdn # perform operation
fsub.h f16, f18, f10, rmm # perform operation
fsub.h f16, f18, f10, rne # perform operation
fsub.h f16, f18, f10, rtz # perform operation
fsub.h f16, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fsub.h f3, f28, f8, dyn # perform operation
fsub.h f3, f28, f8, rdn # perform operation
fsub.h f3, f28, f8, rmm # perform operation
fsub.h f3, f28, f8, rne # perform operation
fsub.h f3, f28, f8, rtz # perform operation
fsub.h f3, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsub.h f21, f1, f15, dyn # perform operation
fsub.h f21, f1, f15, rdn # perform operation
fsub.h f21, f1, f15, rmm # perform operation
fsub.h f21, f1, f15, rne # perform operation
fsub.h f21, f1, f15, rtz # perform operation
fsub.h f21, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fsub.h f1, f20, f29, dyn # perform operation
fsub.h f1, f20, f29, rdn # perform operation
fsub.h f1, f20, f29, rmm # perform operation
fsub.h f1, f20, f29, rne # perform operation
fsub.h f1, f20, f29, rtz # perform operation
fsub.h f1, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fsub.h f12, f20, f25, dyn # perform operation
fsub.h f12, f20, f25, rdn # perform operation
fsub.h f12, f20, f25, rmm # perform operation
fsub.h f12, f20, f25, rne # perform operation
fsub.h f12, f20, f25, rtz # perform operation
fsub.h f12, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fsub.h f10, f30, f8, dyn # perform operation
fsub.h f10, f30, f8, rdn # perform operation
fsub.h f10, f30, f8, rmm # perform operation
fsub.h f10, f30, f8, rne # perform operation
fsub.h f10, f30, f8, rtz # perform operation
fsub.h f10, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsub.h f19, f7, f26, dyn # perform operation
fsub.h f19, f7, f26, rdn # perform operation
fsub.h f19, f7, f26, rmm # perform operation
fsub.h f19, f7, f26, rne # perform operation
fsub.h f19, f7, f26, rtz # perform operation
fsub.h f19, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f6, f1, f10, dyn # perform operation
fsub.h f6, f1, f10, rdn # perform operation
fsub.h f6, f1, f10, rmm # perform operation
fsub.h f6, f1, f10, rne # perform operation
fsub.h f6, f1, f10, rtz # perform operation
fsub.h f6, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f7, f29, f13, dyn # perform operation
fsub.h f7, f29, f13, rdn # perform operation
fsub.h f7, f29, f13, rmm # perform operation
fsub.h f7, f29, f13, rne # perform operation
fsub.h f7, f29, f13, rtz # perform operation
fsub.h f7, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f6, f18, f24, dyn # perform operation
fsub.h f6, f18, f24, rdn # perform operation
fsub.h f6, f18, f24, rmm # perform operation
fsub.h f6, f18, f24, rne # perform operation
fsub.h f6, f18, f24, rtz # perform operation
fsub.h f6, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fsub.h f2, f23, f7, dyn # perform operation
fsub.h f2, f23, f7, rdn # perform operation
fsub.h f2, f23, f7, rmm # perform operation
fsub.h f2, f23, f7, rne # perform operation
fsub.h f2, f23, f7, rtz # perform operation
fsub.h f2, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f31, f9, f22, dyn # perform operation
fsub.h f31, f9, f22, rdn # perform operation
fsub.h f31, f9, f22, rmm # perform operation
fsub.h f31, f9, f22, rne # perform operation
fsub.h f31, f9, f22, rtz # perform operation
fsub.h f31, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fsub.h f3, f2, f27, dyn # perform operation
fsub.h f3, f2, f27, rdn # perform operation
fsub.h f3, f2, f27, rmm # perform operation
fsub.h f3, f2, f27, rne # perform operation
fsub.h f3, f2, f27, rtz # perform operation
fsub.h f3, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fsub.h f6, f1, f24, dyn # perform operation
fsub.h f6, f1, f24, rdn # perform operation
fsub.h f6, f1, f24, rmm # perform operation
fsub.h f6, f1, f24, rne # perform operation
fsub.h f6, f1, f24, rtz # perform operation
fsub.h f6, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fsub.h f18, f25, f2, dyn # perform operation
fsub.h f18, f25, f2, rdn # perform operation
fsub.h f18, f25, f2, rmm # perform operation
fsub.h f18, f25, f2, rne # perform operation
fsub.h f18, f25, f2, rtz # perform operation
fsub.h f18, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fsub.h f18, f23, f14, dyn # perform operation
fsub.h f18, f23, f14, rdn # perform operation
fsub.h f18, f23, f14, rmm # perform operation
fsub.h f18, f23, f14, rne # perform operation
fsub.h f18, f23, f14, rtz # perform operation
fsub.h f18, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fsub.h f17, f8, f22, dyn # perform operation
fsub.h f17, f8, f22, rdn # perform operation
fsub.h f17, f8, f22, rmm # perform operation
fsub.h f17, f8, f22, rne # perform operation
fsub.h f17, f8, f22, rtz # perform operation
fsub.h f17, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsub.h f26, f1, f8, dyn # perform operation
fsub.h f26, f1, f8, rdn # perform operation
fsub.h f26, f1, f8, rmm # perform operation
fsub.h f26, f1, f8, rne # perform operation
fsub.h f26, f1, f8, rtz # perform operation
fsub.h f26, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f31, f20, f10, dyn # perform operation
fsub.h f31, f20, f10, rdn # perform operation
fsub.h f31, f20, f10, rmm # perform operation
fsub.h f31, f20, f10, rne # perform operation
fsub.h f31, f20, f10, rtz # perform operation
fsub.h f31, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fsub.h f2, f18, f29, dyn # perform operation
fsub.h f2, f18, f29, rdn # perform operation
fsub.h f2, f18, f29, rmm # perform operation
fsub.h f2, f18, f29, rne # perform operation
fsub.h f2, f18, f29, rtz # perform operation
fsub.h f2, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f28, f7, f10, dyn # perform operation
fsub.h f28, f7, f10, rdn # perform operation
fsub.h f28, f7, f10, rmm # perform operation
fsub.h f28, f7, f10, rne # perform operation
fsub.h f28, f7, f10, rtz # perform operation
fsub.h f28, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f10, f1, f26, dyn # perform operation
fsub.h f10, f1, f26, rdn # perform operation
fsub.h f10, f1, f26, rmm # perform operation
fsub.h f10, f1, f26, rne # perform operation
fsub.h f10, f1, f26, rtz # perform operation
fsub.h f10, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fsub.h f19, f17, f18, dyn # perform operation
fsub.h f19, f17, f18, rdn # perform operation
fsub.h f19, f17, f18, rmm # perform operation
fsub.h f19, f17, f18, rne # perform operation
fsub.h f19, f17, f18, rtz # perform operation
fsub.h f19, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fsub.h f17, f12, f13, dyn # perform operation
fsub.h f17, f12, f13, rdn # perform operation
fsub.h f17, f12, f13, rmm # perform operation
fsub.h f17, f12, f13, rne # perform operation
fsub.h f17, f12, f13, rtz # perform operation
fsub.h f17, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f21, f3, f16, dyn # perform operation
fsub.h f21, f3, f16, rdn # perform operation
fsub.h f21, f3, f16, rmm # perform operation
fsub.h f21, f3, f16, rne # perform operation
fsub.h f21, f3, f16, rtz # perform operation
fsub.h f21, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fsub.h f14, f2, f19, dyn # perform operation
fsub.h f14, f2, f19, rdn # perform operation
fsub.h f14, f2, f19, rmm # perform operation
fsub.h f14, f2, f19, rne # perform operation
fsub.h f14, f2, f19, rtz # perform operation
fsub.h f14, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fsub.h f14, f1, f20, dyn # perform operation
fsub.h f14, f1, f20, rdn # perform operation
fsub.h f14, f1, f20, rmm # perform operation
fsub.h f14, f1, f20, rne # perform operation
fsub.h f14, f1, f20, rtz # perform operation
fsub.h f14, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fsub.h f2, f10, f13, dyn # perform operation
fsub.h f2, f10, f13, rdn # perform operation
fsub.h f2, f10, f13, rmm # perform operation
fsub.h f2, f10, f13, rne # perform operation
fsub.h f2, f10, f13, rtz # perform operation
fsub.h f2, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fsub.h f2, f27, f17, dyn # perform operation
fsub.h f2, f27, f17, rdn # perform operation
fsub.h f2, f27, f17, rmm # perform operation
fsub.h f2, f27, f17, rne # perform operation
fsub.h f2, f27, f17, rtz # perform operation
fsub.h f2, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f29, f12, f3, dyn # perform operation
fsub.h f29, f12, f3, rdn # perform operation
fsub.h f29, f12, f3, rmm # perform operation
fsub.h f29, f12, f3, rne # perform operation
fsub.h f29, f12, f3, rtz # perform operation
fsub.h f29, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fsub.h f9, f13, f29, dyn # perform operation
fsub.h f9, f13, f29, rdn # perform operation
fsub.h f9, f13, f29, rmm # perform operation
fsub.h f9, f13, f29, rne # perform operation
fsub.h f9, f13, f29, rtz # perform operation
fsub.h f9, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fsub.h f28, f26, f27, dyn # perform operation
fsub.h f28, f26, f27, rdn # perform operation
fsub.h f28, f26, f27, rmm # perform operation
fsub.h f28, f26, f27, rne # perform operation
fsub.h f28, f26, f27, rtz # perform operation
fsub.h f28, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f28, f27, f29, dyn # perform operation
fsub.h f28, f27, f29, rdn # perform operation
fsub.h f28, f27, f29, rmm # perform operation
fsub.h f28, f27, f29, rne # perform operation
fsub.h f28, f27, f29, rtz # perform operation
fsub.h f28, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fsub.h f17, f28, f6, dyn # perform operation
fsub.h f17, f28, f6, rdn # perform operation
fsub.h f17, f28, f6, rmm # perform operation
fsub.h f17, f28, f6, rne # perform operation
fsub.h f17, f28, f6, rtz # perform operation
fsub.h f17, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fsub.h f7, f6, f8, dyn # perform operation
fsub.h f7, f6, f8, rdn # perform operation
fsub.h f7, f6, f8, rmm # perform operation
fsub.h f7, f6, f8, rne # perform operation
fsub.h f7, f6, f8, rtz # perform operation
fsub.h f7, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fsub.h f2, f25, f3, dyn # perform operation
fsub.h f2, f25, f3, rdn # perform operation
fsub.h f2, f25, f3, rmm # perform operation
fsub.h f2, f25, f3, rne # perform operation
fsub.h f2, f25, f3, rtz # perform operation
fsub.h f2, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f20, f24, f13, dyn # perform operation
fsub.h f20, f24, f13, rdn # perform operation
fsub.h f20, f24, f13, rmm # perform operation
fsub.h f20, f24, f13, rne # perform operation
fsub.h f20, f24, f13, rtz # perform operation
fsub.h f20, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fsub.h f26, f23, f21, dyn # perform operation
fsub.h f26, f23, f21, rdn # perform operation
fsub.h f26, f23, f21, rmm # perform operation
fsub.h f26, f23, f21, rne # perform operation
fsub.h f26, f23, f21, rtz # perform operation
fsub.h f26, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fsub.h f21, f17, f29, dyn # perform operation
fsub.h f21, f17, f29, rdn # perform operation
fsub.h f21, f17, f29, rmm # perform operation
fsub.h f21, f17, f29, rne # perform operation
fsub.h f21, f17, f29, rtz # perform operation
fsub.h f21, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f31, f30, f28, dyn # perform operation
fsub.h f31, f30, f28, rdn # perform operation
fsub.h f31, f30, f28, rmm # perform operation
fsub.h f31, f30, f28, rne # perform operation
fsub.h f31, f30, f28, rtz # perform operation
fsub.h f31, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fsub.h f28, f5, f23, dyn # perform operation
fsub.h f28, f5, f23, rdn # perform operation
fsub.h f28, f5, f23, rmm # perform operation
fsub.h f28, f5, f23, rne # perform operation
fsub.h f28, f5, f23, rtz # perform operation
fsub.h f28, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fsub.h f21, f2, f23, dyn # perform operation
fsub.h f21, f2, f23, rdn # perform operation
fsub.h f21, f2, f23, rmm # perform operation
fsub.h f21, f2, f23, rne # perform operation
fsub.h f21, f2, f23, rtz # perform operation
fsub.h f21, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fsub.h f16, f6, f15, dyn # perform operation
fsub.h f16, f6, f15, rdn # perform operation
fsub.h f16, f6, f15, rmm # perform operation
fsub.h f16, f6, f15, rne # perform operation
fsub.h f16, f6, f15, rtz # perform operation
fsub.h f16, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fsub.h f12, f23, f2, dyn # perform operation
fsub.h f12, f23, f2, rdn # perform operation
fsub.h f12, f23, f2, rmm # perform operation
fsub.h f12, f23, f2, rne # perform operation
fsub.h f12, f23, f2, rtz # perform operation
fsub.h f12, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fsub.h f30, f11, f12, dyn # perform operation
fsub.h f30, f11, f12, rdn # perform operation
fsub.h f30, f11, f12, rmm # perform operation
fsub.h f30, f11, f12, rne # perform operation
fsub.h f30, f11, f12, rtz # perform operation
fsub.h f30, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fsub.h f22, f27, f9, dyn # perform operation
fsub.h f22, f27, f9, rdn # perform operation
fsub.h f22, f27, f9, rmm # perform operation
fsub.h f22, f27, f9, rne # perform operation
fsub.h f22, f27, f9, rtz # perform operation
fsub.h f22, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fsub.h f24, f22, f13, dyn # perform operation
fsub.h f24, f22, f13, rdn # perform operation
fsub.h f24, f22, f13, rmm # perform operation
fsub.h f24, f22, f13, rne # perform operation
fsub.h f24, f22, f13, rtz # perform operation
fsub.h f24, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fsub.h f26, f22, f27, dyn # perform operation
fsub.h f26, f22, f27, rdn # perform operation
fsub.h f26, f22, f27, rmm # perform operation
fsub.h f26, f22, f27, rne # perform operation
fsub.h f26, f22, f27, rtz # perform operation
fsub.h f26, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fsub.h f30, f7, f28, dyn # perform operation
fsub.h f30, f7, f28, rdn # perform operation
fsub.h f30, f7, f28, rmm # perform operation
fsub.h f30, f7, f28, rne # perform operation
fsub.h f30, f7, f28, rtz # perform operation
fsub.h f30, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fsub.h f18, f5, f8, dyn # perform operation
fsub.h f18, f5, f8, rdn # perform operation
fsub.h f18, f5, f8, rmm # perform operation
fsub.h f18, f5, f8, rne # perform operation
fsub.h f18, f5, f8, rtz # perform operation
fsub.h f18, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fsub.h f12, f30, f16, dyn # perform operation
fsub.h f12, f30, f16, rdn # perform operation
fsub.h f12, f30, f16, rmm # perform operation
fsub.h f12, f30, f16, rne # perform operation
fsub.h f12, f30, f16, rtz # perform operation
fsub.h f12, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fsub.h f1, f3, f23, dyn # perform operation
fsub.h f1, f3, f23, rdn # perform operation
fsub.h f1, f3, f23, rmm # perform operation
fsub.h f1, f3, f23, rne # perform operation
fsub.h f1, f3, f23, rtz # perform operation
fsub.h f1, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fsub.h f30, f25, f3, dyn # perform operation
fsub.h f30, f25, f3, rdn # perform operation
fsub.h f30, f25, f3, rmm # perform operation
fsub.h f30, f25, f3, rne # perform operation
fsub.h f30, f25, f3, rtz # perform operation
fsub.h f30, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f17, f29, f26, dyn # perform operation
fsub.h f17, f29, f26, rdn # perform operation
fsub.h f17, f29, f26, rmm # perform operation
fsub.h f17, f29, f26, rne # perform operation
fsub.h f17, f29, f26, rtz # perform operation
fsub.h f17, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fsub.h f14, f3, f18, dyn # perform operation
fsub.h f14, f3, f18, rdn # perform operation
fsub.h f14, f3, f18, rmm # perform operation
fsub.h f14, f3, f18, rne # perform operation
fsub.h f14, f3, f18, rtz # perform operation
fsub.h f14, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fsub.h f27, f24, f26, dyn # perform operation
fsub.h f27, f24, f26, rdn # perform operation
fsub.h f27, f24, f26, rmm # perform operation
fsub.h f27, f24, f26, rne # perform operation
fsub.h f27, f24, f26, rtz # perform operation
fsub.h f27, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fsub.h f30, f21, f9, dyn # perform operation
fsub.h f30, f21, f9, rdn # perform operation
fsub.h f30, f21, f9, rmm # perform operation
fsub.h f30, f21, f9, rne # perform operation
fsub.h f30, f21, f9, rtz # perform operation
fsub.h f30, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fsub.h f10, f2, f5, dyn # perform operation
fsub.h f10, f2, f5, rdn # perform operation
fsub.h f10, f2, f5, rmm # perform operation
fsub.h f10, f2, f5, rne # perform operation
fsub.h f10, f2, f5, rtz # perform operation
fsub.h f10, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f24, f3, f1, dyn # perform operation
fsub.h f24, f3, f1, rdn # perform operation
fsub.h f24, f3, f1, rmm # perform operation
fsub.h f24, f3, f1, rne # perform operation
fsub.h f24, f3, f1, rtz # perform operation
fsub.h f24, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fsub.h f24, f22, f7, dyn # perform operation
fsub.h f24, f22, f7, rdn # perform operation
fsub.h f24, f22, f7, rmm # perform operation
fsub.h f24, f22, f7, rne # perform operation
fsub.h f24, f22, f7, rtz # perform operation
fsub.h f24, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fsub.h f19, f9, f13, dyn # perform operation
fsub.h f19, f9, f13, rdn # perform operation
fsub.h f19, f9, f13, rmm # perform operation
fsub.h f19, f9, f13, rne # perform operation
fsub.h f19, f9, f13, rtz # perform operation
fsub.h f19, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fsub.h f28, f7, f13, dyn # perform operation
fsub.h f28, f7, f13, rdn # perform operation
fsub.h f28, f7, f13, rmm # perform operation
fsub.h f28, f7, f13, rne # perform operation
fsub.h f28, f7, f13, rtz # perform operation
fsub.h f28, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fsub.h f28, f3, f1, dyn # perform operation
fsub.h f28, f3, f1, rdn # perform operation
fsub.h f28, f3, f1, rmm # perform operation
fsub.h f28, f3, f1, rne # perform operation
fsub.h f28, f3, f1, rtz # perform operation
fsub.h f28, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f21, f13, f11, dyn # perform operation
fsub.h f21, f13, f11, rdn # perform operation
fsub.h f21, f13, f11, rmm # perform operation
fsub.h f21, f13, f11, rne # perform operation
fsub.h f21, f13, f11, rtz # perform operation
fsub.h f21, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fsub.h f12, f21, f17, dyn # perform operation
fsub.h f12, f21, f17, rdn # perform operation
fsub.h f12, f21, f17, rmm # perform operation
fsub.h f12, f21, f17, rne # perform operation
fsub.h f12, f21, f17, rtz # perform operation
fsub.h f12, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f6, f19, f24, dyn # perform operation
fsub.h f6, f19, f24, rdn # perform operation
fsub.h f6, f19, f24, rmm # perform operation
fsub.h f6, f19, f24, rne # perform operation
fsub.h f6, f19, f24, rtz # perform operation
fsub.h f6, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fsub.h f26, f28, f1, dyn # perform operation
fsub.h f26, f28, f1, rdn # perform operation
fsub.h f26, f28, f1, rmm # perform operation
fsub.h f26, f28, f1, rne # perform operation
fsub.h f26, f28, f1, rtz # perform operation
fsub.h f26, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fsub.h f1, f2, f5, dyn # perform operation
fsub.h f1, f2, f5, rdn # perform operation
fsub.h f1, f2, f5, rmm # perform operation
fsub.h f1, f2, f5, rne # perform operation
fsub.h f1, f2, f5, rtz # perform operation
fsub.h f1, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fsub.h f18, f24, f10, dyn # perform operation
fsub.h f18, f24, f10, rdn # perform operation
fsub.h f18, f24, f10, rmm # perform operation
fsub.h f18, f24, f10, rne # perform operation
fsub.h f18, f24, f10, rtz # perform operation
fsub.h f18, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsub.h f7, f23, f27, dyn # perform operation
fsub.h f7, f23, f27, rdn # perform operation
fsub.h f7, f23, f27, rmm # perform operation
fsub.h f7, f23, f27, rne # perform operation
fsub.h f7, f23, f27, rtz # perform operation
fsub.h f7, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f2, f17, f3, dyn # perform operation
fsub.h f2, f17, f3, rdn # perform operation
fsub.h f2, f17, f3, rmm # perform operation
fsub.h f2, f17, f3, rne # perform operation
fsub.h f2, f17, f3, rtz # perform operation
fsub.h f2, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fsub.h f17, f21, f11, dyn # perform operation
fsub.h f17, f21, f11, rdn # perform operation
fsub.h f17, f21, f11, rmm # perform operation
fsub.h f17, f21, f11, rne # perform operation
fsub.h f17, f21, f11, rtz # perform operation
fsub.h f17, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fsub.h f29, f20, f12, dyn # perform operation
fsub.h f29, f20, f12, rdn # perform operation
fsub.h f29, f20, f12, rmm # perform operation
fsub.h f29, f20, f12, rne # perform operation
fsub.h f29, f20, f12, rtz # perform operation
fsub.h f29, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fsub.h f7, f26, f13, dyn # perform operation
fsub.h f7, f26, f13, rdn # perform operation
fsub.h f7, f26, f13, rmm # perform operation
fsub.h f7, f26, f13, rne # perform operation
fsub.h f7, f26, f13, rtz # perform operation
fsub.h f7, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fsub.h f31, f25, f15, dyn # perform operation
fsub.h f31, f25, f15, rdn # perform operation
fsub.h f31, f25, f15, rmm # perform operation
fsub.h f31, f25, f15, rne # perform operation
fsub.h f31, f25, f15, rtz # perform operation
fsub.h f31, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
fsub.h f10, f16, f20, dyn # perform operation
fsub.h f10, f16, f20, rdn # perform operation
fsub.h f10, f16, f20, rmm # perform operation
fsub.h f10, f16, f20, rne # perform operation
fsub.h f10, f16, f20, rtz # perform operation
fsub.h f10, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fsub.h f30, f9, f18, dyn # perform operation
fsub.h f30, f9, f18, rdn # perform operation
fsub.h f30, f9, f18, rmm # perform operation
fsub.h f30, f9, f18, rne # perform operation
fsub.h f30, f9, f18, rtz # perform operation
fsub.h f30, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fsub.h f17, f26, f18, dyn # perform operation
fsub.h f17, f26, f18, rdn # perform operation
fsub.h f17, f26, f18, rmm # perform operation
fsub.h f17, f26, f18, rne # perform operation
fsub.h f17, f26, f18, rtz # perform operation
fsub.h f17, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fsub.h f20, f25, f30, dyn # perform operation
fsub.h f20, f25, f30, rdn # perform operation
fsub.h f20, f25, f30, rmm # perform operation
fsub.h f20, f25, f30, rne # perform operation
fsub.h f20, f25, f30, rtz # perform operation
fsub.h f20, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsub.h f23, f14, f7, dyn # perform operation
fsub.h f23, f14, f7, rdn # perform operation
fsub.h f23, f14, f7, rmm # perform operation
fsub.h f23, f14, f7, rne # perform operation
fsub.h f23, f14, f7, rtz # perform operation
fsub.h f23, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fsub.h f7, f9, f31, dyn # perform operation
fsub.h f7, f9, f31, rdn # perform operation
fsub.h f7, f9, f31, rmm # perform operation
fsub.h f7, f9, f31, rne # perform operation
fsub.h f7, f9, f31, rtz # perform operation
fsub.h f7, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fsub.h f20, f3, f24, dyn # perform operation
fsub.h f20, f3, f24, rdn # perform operation
fsub.h f20, f3, f24, rmm # perform operation
fsub.h f20, f3, f24, rne # perform operation
fsub.h f20, f3, f24, rtz # perform operation
fsub.h f20, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fsub.h f14, f17, f27, dyn # perform operation
fsub.h f14, f17, f27, rdn # perform operation
fsub.h f14, f17, f27, rmm # perform operation
fsub.h f14, f17, f27, rne # perform operation
fsub.h f14, f17, f27, rtz # perform operation
fsub.h f14, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fsub.h f15, f24, f26, dyn # perform operation
fsub.h f15, f24, f26, rdn # perform operation
fsub.h f15, f24, f26, rmm # perform operation
fsub.h f15, f24, f26, rne # perform operation
fsub.h f15, f24, f26, rtz # perform operation
fsub.h f15, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fsub.h f1, f27, f9, dyn # perform operation
fsub.h f1, f27, f9, rdn # perform operation
fsub.h f1, f27, f9, rmm # perform operation
fsub.h f1, f27, f9, rne # perform operation
fsub.h f1, f27, f9, rtz # perform operation
fsub.h f1, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fsub.h f2, f1, f18, dyn # perform operation
fsub.h f2, f1, f18, rdn # perform operation
fsub.h f2, f1, f18, rmm # perform operation
fsub.h f2, f1, f18, rne # perform operation
fsub.h f2, f1, f18, rtz # perform operation
fsub.h f2, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f16, f22, f30, dyn # perform operation
fsub.h f16, f22, f30, rdn # perform operation
fsub.h f16, f22, f30, rmm # perform operation
fsub.h f16, f22, f30, rne # perform operation
fsub.h f16, f22, f30, rtz # perform operation
fsub.h f16, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fsub.h f8, f5, f30, dyn # perform operation
fsub.h f8, f5, f30, rdn # perform operation
fsub.h f8, f5, f30, rmm # perform operation
fsub.h f8, f5, f30, rne # perform operation
fsub.h f8, f5, f30, rtz # perform operation
fsub.h f8, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fsub.h f8, f7, f15, dyn # perform operation
fsub.h f8, f7, f15, rdn # perform operation
fsub.h f8, f7, f15, rmm # perform operation
fsub.h f8, f7, f15, rne # perform operation
fsub.h f8, f7, f15, rtz # perform operation
fsub.h f8, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f5, f13, f12, dyn # perform operation
fsub.h f5, f13, f12, rdn # perform operation
fsub.h f5, f13, f12, rmm # perform operation
fsub.h f5, f13, f12, rne # perform operation
fsub.h f5, f13, f12, rtz # perform operation
fsub.h f5, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fsub.h f19, f17, f28, dyn # perform operation
fsub.h f19, f17, f28, rdn # perform operation
fsub.h f19, f17, f28, rmm # perform operation
fsub.h f19, f17, f28, rne # perform operation
fsub.h f19, f17, f28, rtz # perform operation
fsub.h f19, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fsub.h f22, f3, f9, dyn # perform operation
fsub.h f22, f3, f9, rdn # perform operation
fsub.h f22, f3, f9, rmm # perform operation
fsub.h f22, f3, f9, rne # perform operation
fsub.h f22, f3, f9, rtz # perform operation
fsub.h f22, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f15, f26, f13, dyn # perform operation
fsub.h f15, f26, f13, rdn # perform operation
fsub.h f15, f26, f13, rmm # perform operation
fsub.h f15, f26, f13, rne # perform operation
fsub.h f15, f26, f13, rtz # perform operation
fsub.h f15, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fsub.h f2, f6, f22, dyn # perform operation
fsub.h f2, f6, f22, rdn # perform operation
fsub.h f2, f6, f22, rmm # perform operation
fsub.h f2, f6, f22, rne # perform operation
fsub.h f2, f6, f22, rtz # perform operation
fsub.h f2, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fsub.h f27, f29, f28, dyn # perform operation
fsub.h f27, f29, f28, rdn # perform operation
fsub.h f27, f29, f28, rmm # perform operation
fsub.h f27, f29, f28, rne # perform operation
fsub.h f27, f29, f28, rtz # perform operation
fsub.h f27, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fsub.h f20, f27, f23, dyn # perform operation
fsub.h f20, f27, f23, rdn # perform operation
fsub.h f20, f27, f23, rmm # perform operation
fsub.h f20, f27, f23, rne # perform operation
fsub.h f20, f27, f23, rtz # perform operation
fsub.h f20, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fsub.h f5, f14, f15, dyn # perform operation
fsub.h f5, f14, f15, rdn # perform operation
fsub.h f5, f14, f15, rmm # perform operation
fsub.h f5, f14, f15, rne # perform operation
fsub.h f5, f14, f15, rtz # perform operation
fsub.h f5, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fsub.h f26, f6, f8, dyn # perform operation
fsub.h f26, f6, f8, rdn # perform operation
fsub.h f26, f6, f8, rmm # perform operation
fsub.h f26, f6, f8, rne # perform operation
fsub.h f26, f6, f8, rtz # perform operation
fsub.h f26, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fsub.h f3, f9, f8, dyn # perform operation
fsub.h f3, f9, f8, rdn # perform operation
fsub.h f3, f9, f8, rmm # perform operation
fsub.h f3, f9, f8, rne # perform operation
fsub.h f3, f9, f8, rtz # perform operation
fsub.h f3, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fsub.h f20, f5, f15, dyn # perform operation
fsub.h f20, f5, f15, rdn # perform operation
fsub.h f20, f5, f15, rmm # perform operation
fsub.h f20, f5, f15, rne # perform operation
fsub.h f20, f5, f15, rtz # perform operation
fsub.h f20, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fsub.h f12, f9, f3, dyn # perform operation
fsub.h f12, f9, f3, rdn # perform operation
fsub.h f12, f9, f3, rmm # perform operation
fsub.h f12, f9, f3, rne # perform operation
fsub.h f12, f9, f3, rtz # perform operation
fsub.h f12, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsub.h f5, f1, f3, dyn # perform operation
fsub.h f5, f1, f3, rdn # perform operation
fsub.h f5, f1, f3, rmm # perform operation
fsub.h f5, f1, f3, rne # perform operation
fsub.h f5, f1, f3, rtz # perform operation
fsub.h f5, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f21, f12, f14, dyn # perform operation
fsub.h f21, f12, f14, rdn # perform operation
fsub.h f21, f12, f14, rmm # perform operation
fsub.h f21, f12, f14, rne # perform operation
fsub.h f21, f12, f14, rtz # perform operation
fsub.h f21, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
fsub.h f7, f16, f17, dyn # perform operation
fsub.h f7, f16, f17, rdn # perform operation
fsub.h f7, f16, f17, rmm # perform operation
fsub.h f7, f16, f17, rne # perform operation
fsub.h f7, f16, f17, rtz # perform operation
fsub.h f7, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fsub.h f24, f20, f14, dyn # perform operation
fsub.h f24, f20, f14, rdn # perform operation
fsub.h f24, f20, f14, rmm # perform operation
fsub.h f24, f20, f14, rne # perform operation
fsub.h f24, f20, f14, rtz # perform operation
fsub.h f24, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fsub.h f7, f24, f18, dyn # perform operation
fsub.h f7, f24, f18, rdn # perform operation
fsub.h f7, f24, f18, rmm # perform operation
fsub.h f7, f24, f18, rne # perform operation
fsub.h f7, f24, f18, rtz # perform operation
fsub.h f7, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f28, f5, f27, dyn # perform operation
fsub.h f28, f5, f27, rdn # perform operation
fsub.h f28, f5, f27, rmm # perform operation
fsub.h f28, f5, f27, rne # perform operation
fsub.h f28, f5, f27, rtz # perform operation
fsub.h f28, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fsub.h f23, f11, f8, dyn # perform operation
fsub.h f23, f11, f8, rdn # perform operation
fsub.h f23, f11, f8, rmm # perform operation
fsub.h f23, f11, f8, rne # perform operation
fsub.h f23, f11, f8, rtz # perform operation
fsub.h f23, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f13, f20, f16, dyn # perform operation
fsub.h f13, f20, f16, rdn # perform operation
fsub.h f13, f20, f16, rmm # perform operation
fsub.h f13, f20, f16, rne # perform operation
fsub.h f13, f20, f16, rtz # perform operation
fsub.h f13, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fsub.h f21, f24, f2, dyn # perform operation
fsub.h f21, f24, f2, rdn # perform operation
fsub.h f21, f24, f2, rmm # perform operation
fsub.h f21, f24, f2, rne # perform operation
fsub.h f21, f24, f2, rtz # perform operation
fsub.h f21, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fsub.h f18, f23, f11, dyn # perform operation
fsub.h f18, f23, f11, rdn # perform operation
fsub.h f18, f23, f11, rmm # perform operation
fsub.h f18, f23, f11, rne # perform operation
fsub.h f18, f23, f11, rtz # perform operation
fsub.h f18, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fsub.h f8, f28, f17, dyn # perform operation
fsub.h f8, f28, f17, rdn # perform operation
fsub.h f8, f28, f17, rmm # perform operation
fsub.h f8, f28, f17, rne # perform operation
fsub.h f8, f28, f17, rtz # perform operation
fsub.h f8, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fsub.h f26, f10, f24, dyn # perform operation
fsub.h f26, f10, f24, rdn # perform operation
fsub.h f26, f10, f24, rmm # perform operation
fsub.h f26, f10, f24, rne # perform operation
fsub.h f26, f10, f24, rtz # perform operation
fsub.h f26, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f28, f18, f3, dyn # perform operation
fsub.h f28, f18, f3, rdn # perform operation
fsub.h f28, f18, f3, rmm # perform operation
fsub.h f28, f18, f3, rne # perform operation
fsub.h f28, f18, f3, rtz # perform operation
fsub.h f28, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f10, f17, f30, dyn # perform operation
fsub.h f10, f17, f30, rdn # perform operation
fsub.h f10, f17, f30, rmm # perform operation
fsub.h f10, f17, f30, rne # perform operation
fsub.h f10, f17, f30, rtz # perform operation
fsub.h f10, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fsub.h f10, f5, f31, dyn # perform operation
fsub.h f10, f5, f31, rdn # perform operation
fsub.h f10, f5, f31, rmm # perform operation
fsub.h f10, f5, f31, rne # perform operation
fsub.h f10, f5, f31, rtz # perform operation
fsub.h f10, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fsub.h f9, f12, f17, dyn # perform operation
fsub.h f9, f12, f17, rdn # perform operation
fsub.h f9, f12, f17, rmm # perform operation
fsub.h f9, f12, f17, rne # perform operation
fsub.h f9, f12, f17, rtz # perform operation
fsub.h f9, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fsub.h f30, f29, f27, dyn # perform operation
fsub.h f30, f29, f27, rdn # perform operation
fsub.h f30, f29, f27, rmm # perform operation
fsub.h f30, f29, f27, rne # perform operation
fsub.h f30, f29, f27, rtz # perform operation
fsub.h f30, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fsub.h f1, f16, f29, dyn # perform operation
fsub.h f1, f16, f29, rdn # perform operation
fsub.h f1, f16, f29, rmm # perform operation
fsub.h f1, f16, f29, rne # perform operation
fsub.h f1, f16, f29, rtz # perform operation
fsub.h f1, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fsub.h f2, f20, f9, dyn # perform operation
fsub.h f2, f20, f9, rdn # perform operation
fsub.h f2, f20, f9, rmm # perform operation
fsub.h f2, f20, f9, rne # perform operation
fsub.h f2, f20, f9, rtz # perform operation
fsub.h f2, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fsub.h f31, f24, f12, dyn # perform operation
fsub.h f31, f24, f12, rdn # perform operation
fsub.h f31, f24, f12, rmm # perform operation
fsub.h f31, f24, f12, rne # perform operation
fsub.h f31, f24, f12, rtz # perform operation
fsub.h f31, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fsub.h f16, f1, f2, dyn # perform operation
fsub.h f16, f1, f2, rdn # perform operation
fsub.h f16, f1, f2, rmm # perform operation
fsub.h f16, f1, f2, rne # perform operation
fsub.h f16, f1, f2, rtz # perform operation
fsub.h f16, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fsub.h f10, f14, f15, dyn # perform operation
fsub.h f10, f14, f15, rdn # perform operation
fsub.h f10, f14, f15, rmm # perform operation
fsub.h f10, f14, f15, rne # perform operation
fsub.h f10, f14, f15, rtz # perform operation
fsub.h f10, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fsub.h f21, f25, f8, dyn # perform operation
fsub.h f21, f25, f8, rdn # perform operation
fsub.h f21, f25, f8, rmm # perform operation
fsub.h f21, f25, f8, rne # perform operation
fsub.h f21, f25, f8, rtz # perform operation
fsub.h f21, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fsub.h f10, f8, f9, dyn # perform operation
fsub.h f10, f8, f9, rdn # perform operation
fsub.h f10, f8, f9, rmm # perform operation
fsub.h f10, f8, f9, rne # perform operation
fsub.h f10, f8, f9, rtz # perform operation
fsub.h f10, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fsub.h f24, f23, f12, dyn # perform operation
fsub.h f24, f23, f12, rdn # perform operation
fsub.h f24, f23, f12, rmm # perform operation
fsub.h f24, f23, f12, rne # perform operation
fsub.h f24, f23, f12, rtz # perform operation
fsub.h f24, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fsub.h f5, f9, f2, dyn # perform operation
fsub.h f5, f9, f2, rdn # perform operation
fsub.h f5, f9, f2, rmm # perform operation
fsub.h f5, f9, f2, rne # perform operation
fsub.h f5, f9, f2, rtz # perform operation
fsub.h f5, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fsub.h f13, f30, f7, dyn # perform operation
fsub.h f13, f30, f7, rdn # perform operation
fsub.h f13, f30, f7, rmm # perform operation
fsub.h f13, f30, f7, rne # perform operation
fsub.h f13, f30, f7, rtz # perform operation
fsub.h f13, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fsub.h f28, f3, f16, dyn # perform operation
fsub.h f28, f3, f16, rdn # perform operation
fsub.h f28, f3, f16, rmm # perform operation
fsub.h f28, f3, f16, rne # perform operation
fsub.h f28, f3, f16, rtz # perform operation
fsub.h f28, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fsub.h f20, f18, f23, dyn # perform operation
fsub.h f20, f18, f23, rdn # perform operation
fsub.h f20, f18, f23, rmm # perform operation
fsub.h f20, f18, f23, rne # perform operation
fsub.h f20, f18, f23, rtz # perform operation
fsub.h f20, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f27, f10, f7, dyn # perform operation
fsub.h f27, f10, f7, rdn # perform operation
fsub.h f27, f10, f7, rmm # perform operation
fsub.h f27, f10, f7, rne # perform operation
fsub.h f27, f10, f7, rtz # perform operation
fsub.h f27, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fsub.h f18, f8, f19, dyn # perform operation
fsub.h f18, f8, f19, rdn # perform operation
fsub.h f18, f8, f19, rmm # perform operation
fsub.h f18, f8, f19, rne # perform operation
fsub.h f18, f8, f19, rtz # perform operation
fsub.h f18, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fsub.h f19, f8, f2, dyn # perform operation
fsub.h f19, f8, f2, rdn # perform operation
fsub.h f19, f8, f2, rmm # perform operation
fsub.h f19, f8, f2, rne # perform operation
fsub.h f19, f8, f2, rtz # perform operation
fsub.h f19, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fsub.h f15, f3, f19, dyn # perform operation
fsub.h f15, f3, f19, rdn # perform operation
fsub.h f15, f3, f19, rmm # perform operation
fsub.h f15, f3, f19, rne # perform operation
fsub.h f15, f3, f19, rtz # perform operation
fsub.h f15, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fsub.h f25, f8, f16, dyn # perform operation
fsub.h f25, f8, f16, rdn # perform operation
fsub.h f25, f8, f16, rmm # perform operation
fsub.h f25, f8, f16, rne # perform operation
fsub.h f25, f8, f16, rtz # perform operation
fsub.h f25, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fsub.h f8, f11, f25, dyn # perform operation
fsub.h f8, f11, f25, rdn # perform operation
fsub.h f8, f11, f25, rmm # perform operation
fsub.h f8, f11, f25, rne # perform operation
fsub.h f8, f11, f25, rtz # perform operation
fsub.h f8, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fsub.h f5, f20, f21, dyn # perform operation
fsub.h f5, f20, f21, rdn # perform operation
fsub.h f5, f20, f21, rmm # perform operation
fsub.h f5, f20, f21, rne # perform operation
fsub.h f5, f20, f21, rtz # perform operation
fsub.h f5, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fsub.h f21, f1, f15, dyn # perform operation
fsub.h f21, f1, f15, rdn # perform operation
fsub.h f21, f1, f15, rmm # perform operation
fsub.h f21, f1, f15, rne # perform operation
fsub.h f21, f1, f15, rtz # perform operation
fsub.h f21, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fsub.h f22, f21, f15, dyn # perform operation
fsub.h f22, f21, f15, rdn # perform operation
fsub.h f22, f21, f15, rmm # perform operation
fsub.h f22, f21, f15, rne # perform operation
fsub.h f22, f21, f15, rtz # perform operation
fsub.h f22, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fsub.h f20, f21, f14, dyn # perform operation
fsub.h f20, f21, f14, rdn # perform operation
fsub.h f20, f21, f14, rmm # perform operation
fsub.h f20, f21, f14, rne # perform operation
fsub.h f20, f21, f14, rtz # perform operation
fsub.h f20, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f12, f5, f23, dyn # perform operation
fsub.h f12, f5, f23, rdn # perform operation
fsub.h f12, f5, f23, rmm # perform operation
fsub.h f12, f5, f23, rne # perform operation
fsub.h f12, f5, f23, rtz # perform operation
fsub.h f12, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fsub.h f2, f10, f8, dyn # perform operation
fsub.h f2, f10, f8, rdn # perform operation
fsub.h f2, f10, f8, rmm # perform operation
fsub.h f2, f10, f8, rne # perform operation
fsub.h f2, f10, f8, rtz # perform operation
fsub.h f2, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fsub.h f3, f9, f8, dyn # perform operation
fsub.h f3, f9, f8, rdn # perform operation
fsub.h f3, f9, f8, rmm # perform operation
fsub.h f3, f9, f8, rne # perform operation
fsub.h f3, f9, f8, rtz # perform operation
fsub.h f3, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fsub.h f15, f24, f10, dyn # perform operation
fsub.h f15, f24, f10, rdn # perform operation
fsub.h f15, f24, f10, rmm # perform operation
fsub.h f15, f24, f10, rne # perform operation
fsub.h f15, f24, f10, rtz # perform operation
fsub.h f15, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fsub.h f7, f25, f21, dyn # perform operation
fsub.h f7, f25, f21, rdn # perform operation
fsub.h f7, f25, f21, rmm # perform operation
fsub.h f7, f25, f21, rne # perform operation
fsub.h f7, f25, f21, rtz # perform operation
fsub.h f7, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f10, f2, f26, dyn # perform operation
fsub.h f10, f2, f26, rdn # perform operation
fsub.h f10, f2, f26, rmm # perform operation
fsub.h f10, f2, f26, rne # perform operation
fsub.h f10, f2, f26, rtz # perform operation
fsub.h f10, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f16, f18, f12, dyn # perform operation
fsub.h f16, f18, f12, rdn # perform operation
fsub.h f16, f18, f12, rmm # perform operation
fsub.h f16, f18, f12, rne # perform operation
fsub.h f16, f18, f12, rtz # perform operation
fsub.h f16, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fsub.h f10, f22, f1, dyn # perform operation
fsub.h f10, f22, f1, rdn # perform operation
fsub.h f10, f22, f1, rmm # perform operation
fsub.h f10, f22, f1, rne # perform operation
fsub.h f10, f22, f1, rtz # perform operation
fsub.h f10, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fsub.h f9, f8, f2, dyn # perform operation
fsub.h f9, f8, f2, rdn # perform operation
fsub.h f9, f8, f2, rmm # perform operation
fsub.h f9, f8, f2, rne # perform operation
fsub.h f9, f8, f2, rtz # perform operation
fsub.h f9, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f7, f1, f24, dyn # perform operation
fsub.h f7, f1, f24, rdn # perform operation
fsub.h f7, f1, f24, rmm # perform operation
fsub.h f7, f1, f24, rne # perform operation
fsub.h f7, f1, f24, rtz # perform operation
fsub.h f7, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fsub.h f28, f22, f20, dyn # perform operation
fsub.h f28, f22, f20, rdn # perform operation
fsub.h f28, f22, f20, rmm # perform operation
fsub.h f28, f22, f20, rne # perform operation
fsub.h f28, f22, f20, rtz # perform operation
fsub.h f28, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fsub.h f18, f7, f31, dyn # perform operation
fsub.h f18, f7, f31, rdn # perform operation
fsub.h f18, f7, f31, rmm # perform operation
fsub.h f18, f7, f31, rne # perform operation
fsub.h f18, f7, f31, rtz # perform operation
fsub.h f18, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fsub.h f24, f25, f3, dyn # perform operation
fsub.h f24, f25, f3, rdn # perform operation
fsub.h f24, f25, f3, rmm # perform operation
fsub.h f24, f25, f3, rne # perform operation
fsub.h f24, f25, f3, rtz # perform operation
fsub.h f24, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fsub.h f27, f2, f29, dyn # perform operation
fsub.h f27, f2, f29, rdn # perform operation
fsub.h f27, f2, f29, rmm # perform operation
fsub.h f27, f2, f29, rne # perform operation
fsub.h f27, f2, f29, rtz # perform operation
fsub.h f27, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fsub.h f27, f29, f5, dyn # perform operation
fsub.h f27, f29, f5, rdn # perform operation
fsub.h f27, f29, f5, rmm # perform operation
fsub.h f27, f29, f5, rne # perform operation
fsub.h f27, f29, f5, rtz # perform operation
fsub.h f27, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fsub.h f11, f27, f28, dyn # perform operation
fsub.h f11, f27, f28, rdn # perform operation
fsub.h f11, f27, f28, rmm # perform operation
fsub.h f11, f27, f28, rne # perform operation
fsub.h f11, f27, f28, rtz # perform operation
fsub.h f11, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fsub.h f17, f14, f7, dyn # perform operation
fsub.h f17, f14, f7, rdn # perform operation
fsub.h f17, f14, f7, rmm # perform operation
fsub.h f17, f14, f7, rne # perform operation
fsub.h f17, f14, f7, rtz # perform operation
fsub.h f17, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fsub.h f12, f7, f14, dyn # perform operation
fsub.h f12, f7, f14, rdn # perform operation
fsub.h f12, f7, f14, rmm # perform operation
fsub.h f12, f7, f14, rne # perform operation
fsub.h f12, f7, f14, rtz # perform operation
fsub.h f12, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsub.h f31, f11, f12, dyn # perform operation
fsub.h f31, f11, f12, rdn # perform operation
fsub.h f31, f11, f12, rmm # perform operation
fsub.h f31, f11, f12, rne # perform operation
fsub.h f31, f11, f12, rtz # perform operation
fsub.h f31, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fsub.h f14, f27, f10, dyn # perform operation
fsub.h f14, f27, f10, rdn # perform operation
fsub.h f14, f27, f10, rmm # perform operation
fsub.h f14, f27, f10, rne # perform operation
fsub.h f14, f27, f10, rtz # perform operation
fsub.h f14, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fsub.h f18, f26, f9, dyn # perform operation
fsub.h f18, f26, f9, rdn # perform operation
fsub.h f18, f26, f9, rmm # perform operation
fsub.h f18, f26, f9, rne # perform operation
fsub.h f18, f26, f9, rtz # perform operation
fsub.h f18, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fsub.h f13, f28, f5, dyn # perform operation
fsub.h f13, f28, f5, rdn # perform operation
fsub.h f13, f28, f5, rmm # perform operation
fsub.h f13, f28, f5, rne # perform operation
fsub.h f13, f28, f5, rtz # perform operation
fsub.h f13, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fsub.h f9, f19, f10, dyn # perform operation
fsub.h f9, f19, f10, rdn # perform operation
fsub.h f9, f19, f10, rmm # perform operation
fsub.h f9, f19, f10, rne # perform operation
fsub.h f9, f19, f10, rtz # perform operation
fsub.h f9, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsub.h f18, f1, f7, dyn # perform operation
fsub.h f18, f1, f7, rdn # perform operation
fsub.h f18, f1, f7, rmm # perform operation
fsub.h f18, f1, f7, rne # perform operation
fsub.h f18, f1, f7, rtz # perform operation
fsub.h f18, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fsub.h f19, f15, f25, dyn # perform operation
fsub.h f19, f15, f25, rdn # perform operation
fsub.h f19, f15, f25, rmm # perform operation
fsub.h f19, f15, f25, rne # perform operation
fsub.h f19, f15, f25, rtz # perform operation
fsub.h f19, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fsub.h f13, f18, f20, dyn # perform operation
fsub.h f13, f18, f20, rdn # perform operation
fsub.h f13, f18, f20, rmm # perform operation
fsub.h f13, f18, f20, rne # perform operation
fsub.h f13, f18, f20, rtz # perform operation
fsub.h f13, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fsub.h f6, f2, f12, dyn # perform operation
fsub.h f6, f2, f12, rdn # perform operation
fsub.h f6, f2, f12, rmm # perform operation
fsub.h f6, f2, f12, rne # perform operation
fsub.h f6, f2, f12, rtz # perform operation
fsub.h f6, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f19, f26, f8, dyn # perform operation
fsub.h f19, f26, f8, rdn # perform operation
fsub.h f19, f26, f8, rmm # perform operation
fsub.h f19, f26, f8, rne # perform operation
fsub.h f19, f26, f8, rtz # perform operation
fsub.h f19, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fsub.h f18, f12, f2, dyn # perform operation
fsub.h f18, f12, f2, rdn # perform operation
fsub.h f18, f12, f2, rmm # perform operation
fsub.h f18, f12, f2, rne # perform operation
fsub.h f18, f12, f2, rtz # perform operation
fsub.h f18, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fsub.h f18, f30, f9, dyn # perform operation
fsub.h f18, f30, f9, rdn # perform operation
fsub.h f18, f30, f9, rmm # perform operation
fsub.h f18, f30, f9, rne # perform operation
fsub.h f18, f30, f9, rtz # perform operation
fsub.h f18, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fsub.h f29, f28, f18, dyn # perform operation
fsub.h f29, f28, f18, rdn # perform operation
fsub.h f29, f28, f18, rmm # perform operation
fsub.h f29, f28, f18, rne # perform operation
fsub.h f29, f28, f18, rtz # perform operation
fsub.h f29, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fsub.h f14, f5, f17, dyn # perform operation
fsub.h f14, f5, f17, rdn # perform operation
fsub.h f14, f5, f17, rmm # perform operation
fsub.h f14, f5, f17, rne # perform operation
fsub.h f14, f5, f17, rtz # perform operation
fsub.h f14, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fsub.h f11, f29, f18, dyn # perform operation
fsub.h f11, f29, f18, rdn # perform operation
fsub.h f11, f29, f18, rmm # perform operation
fsub.h f11, f29, f18, rne # perform operation
fsub.h f11, f29, f18, rtz # perform operation
fsub.h f11, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fsub.h f9, f26, f30, dyn # perform operation
fsub.h f9, f26, f30, rdn # perform operation
fsub.h f9, f26, f30, rmm # perform operation
fsub.h f9, f26, f30, rne # perform operation
fsub.h f9, f26, f30, rtz # perform operation
fsub.h f9, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fsub.h f26, f23, f22, dyn # perform operation
fsub.h f26, f23, f22, rdn # perform operation
fsub.h f26, f23, f22, rmm # perform operation
fsub.h f26, f23, f22, rne # perform operation
fsub.h f26, f23, f22, rtz # perform operation
fsub.h f26, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fsub.h f18, f21, f8, dyn # perform operation
fsub.h f18, f21, f8, rdn # perform operation
fsub.h f18, f21, f8, rmm # perform operation
fsub.h f18, f21, f8, rne # perform operation
fsub.h f18, f21, f8, rtz # perform operation
fsub.h f18, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fsub.h f10, f6, f29, dyn # perform operation
fsub.h f10, f6, f29, rdn # perform operation
fsub.h f10, f6, f29, rmm # perform operation
fsub.h f10, f6, f29, rne # perform operation
fsub.h f10, f6, f29, rtz # perform operation
fsub.h f10, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fsub.h f7, f30, f3, dyn # perform operation
fsub.h f7, f30, f3, rdn # perform operation
fsub.h f7, f30, f3, rmm # perform operation
fsub.h f7, f30, f3, rne # perform operation
fsub.h f7, f30, f3, rtz # perform operation
fsub.h f7, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fsub.h f9, f2, f3, dyn # perform operation
fsub.h f9, f2, f3, rdn # perform operation
fsub.h f9, f2, f3, rmm # perform operation
fsub.h f9, f2, f3, rne # perform operation
fsub.h f9, f2, f3, rtz # perform operation
fsub.h f9, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fsub.h f8, f12, f14, dyn # perform operation
fsub.h f8, f12, f14, rdn # perform operation
fsub.h f8, f12, f14, rmm # perform operation
fsub.h f8, f12, f14, rne # perform operation
fsub.h f8, f12, f14, rtz # perform operation
fsub.h f8, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fsub.h f3, f9, f13, dyn # perform operation
fsub.h f3, f9, f13, rdn # perform operation
fsub.h f3, f9, f13, rmm # perform operation
fsub.h f3, f9, f13, rne # perform operation
fsub.h f3, f9, f13, rtz # perform operation
fsub.h f3, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fsub.h f7, f19, f28, dyn # perform operation
fsub.h f7, f19, f28, rdn # perform operation
fsub.h f7, f19, f28, rmm # perform operation
fsub.h f7, f19, f28, rne # perform operation
fsub.h f7, f19, f28, rtz # perform operation
fsub.h f7, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f12, f15, f6, dyn # perform operation
fsub.h f12, f15, f6, rdn # perform operation
fsub.h f12, f15, f6, rmm # perform operation
fsub.h f12, f15, f6, rne # perform operation
fsub.h f12, f15, f6, rtz # perform operation
fsub.h f12, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fsub.h f2, f23, f7, dyn # perform operation
fsub.h f2, f23, f7, rdn # perform operation
fsub.h f2, f23, f7, rmm # perform operation
fsub.h f2, f23, f7, rne # perform operation
fsub.h f2, f23, f7, rtz # perform operation
fsub.h f2, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fsub.h f30, f8, f1, dyn # perform operation
fsub.h f30, f8, f1, rdn # perform operation
fsub.h f30, f8, f1, rmm # perform operation
fsub.h f30, f8, f1, rne # perform operation
fsub.h f30, f8, f1, rtz # perform operation
fsub.h f30, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fsub.h f17, f20, f10, dyn # perform operation
fsub.h f17, f20, f10, rdn # perform operation
fsub.h f17, f20, f10, rmm # perform operation
fsub.h f17, f20, f10, rne # perform operation
fsub.h f17, f20, f10, rtz # perform operation
fsub.h f17, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f29, f19, f31, dyn # perform operation
fsub.h f29, f19, f31, rdn # perform operation
fsub.h f29, f19, f31, rmm # perform operation
fsub.h f29, f19, f31, rne # perform operation
fsub.h f29, f19, f31, rtz # perform operation
fsub.h f29, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fsub.h f15, f30, f27, dyn # perform operation
fsub.h f15, f30, f27, rdn # perform operation
fsub.h f15, f30, f27, rmm # perform operation
fsub.h f15, f30, f27, rne # perform operation
fsub.h f15, f30, f27, rtz # perform operation
fsub.h f15, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fsub.h f13, f26, f12, dyn # perform operation
fsub.h f13, f26, f12, rdn # perform operation
fsub.h f13, f26, f12, rmm # perform operation
fsub.h f13, f26, f12, rne # perform operation
fsub.h f13, f26, f12, rtz # perform operation
fsub.h f13, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fsub.h f23, f12, f27, dyn # perform operation
fsub.h f23, f12, f27, rdn # perform operation
fsub.h f23, f12, f27, rmm # perform operation
fsub.h f23, f12, f27, rne # perform operation
fsub.h f23, f12, f27, rtz # perform operation
fsub.h f23, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fsub.h f2, f31, f24, dyn # perform operation
fsub.h f2, f31, f24, rdn # perform operation
fsub.h f2, f31, f24, rmm # perform operation
fsub.h f2, f31, f24, rne # perform operation
fsub.h f2, f31, f24, rtz # perform operation
fsub.h f2, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f20, f29, f10, dyn # perform operation
fsub.h f20, f29, f10, rdn # perform operation
fsub.h f20, f29, f10, rmm # perform operation
fsub.h f20, f29, f10, rne # perform operation
fsub.h f20, f29, f10, rtz # perform operation
fsub.h f20, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fsub.h f26, f22, f10, dyn # perform operation
fsub.h f26, f22, f10, rdn # perform operation
fsub.h f26, f22, f10, rmm # perform operation
fsub.h f26, f22, f10, rne # perform operation
fsub.h f26, f22, f10, rtz # perform operation
fsub.h f26, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fsub.h f30, f24, f23, dyn # perform operation
fsub.h f30, f24, f23, rdn # perform operation
fsub.h f30, f24, f23, rmm # perform operation
fsub.h f30, f24, f23, rne # perform operation
fsub.h f30, f24, f23, rtz # perform operation
fsub.h f30, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fsub.h f5, f23, f18, dyn # perform operation
fsub.h f5, f23, f18, rdn # perform operation
fsub.h f5, f23, f18, rmm # perform operation
fsub.h f5, f23, f18, rne # perform operation
fsub.h f5, f23, f18, rtz # perform operation
fsub.h f5, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fsub.h f14, f13, f12, dyn # perform operation
fsub.h f14, f13, f12, rdn # perform operation
fsub.h f14, f13, f12, rmm # perform operation
fsub.h f14, f13, f12, rne # perform operation
fsub.h f14, f13, f12, rtz # perform operation
fsub.h f14, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fsub.h f13, f23, f28, dyn # perform operation
fsub.h f13, f23, f28, rdn # perform operation
fsub.h f13, f23, f28, rmm # perform operation
fsub.h f13, f23, f28, rne # perform operation
fsub.h f13, f23, f28, rtz # perform operation
fsub.h f13, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fsub.h f2, f21, f16, dyn # perform operation
fsub.h f2, f21, f16, rdn # perform operation
fsub.h f2, f21, f16, rmm # perform operation
fsub.h f2, f21, f16, rne # perform operation
fsub.h f2, f21, f16, rtz # perform operation
fsub.h f2, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fsub.h f23, f31, f29, dyn # perform operation
fsub.h f23, f31, f29, rdn # perform operation
fsub.h f23, f31, f29, rmm # perform operation
fsub.h f23, f31, f29, rne # perform operation
fsub.h f23, f31, f29, rtz # perform operation
fsub.h f23, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fsub.h f27, f30, f24, dyn # perform operation
fsub.h f27, f30, f24, rdn # perform operation
fsub.h f27, f30, f24, rmm # perform operation
fsub.h f27, f30, f24, rne # perform operation
fsub.h f27, f30, f24, rtz # perform operation
fsub.h f27, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fsub.h f13, f3, f2, dyn # perform operation
fsub.h f13, f3, f2, rdn # perform operation
fsub.h f13, f3, f2, rmm # perform operation
fsub.h f13, f3, f2, rne # perform operation
fsub.h f13, f3, f2, rtz # perform operation
fsub.h f13, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fsub.h f31, f7, f25, dyn # perform operation
fsub.h f31, f7, f25, rdn # perform operation
fsub.h f31, f7, f25, rmm # perform operation
fsub.h f31, f7, f25, rne # perform operation
fsub.h f31, f7, f25, rtz # perform operation
fsub.h f31, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f8, f15, f27, dyn # perform operation
fsub.h f8, f15, f27, rdn # perform operation
fsub.h f8, f15, f27, rmm # perform operation
fsub.h f8, f15, f27, rne # perform operation
fsub.h f8, f15, f27, rtz # perform operation
fsub.h f8, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fsub.h f19, f17, f29, dyn # perform operation
fsub.h f19, f17, f29, rdn # perform operation
fsub.h f19, f17, f29, rmm # perform operation
fsub.h f19, f17, f29, rne # perform operation
fsub.h f19, f17, f29, rtz # perform operation
fsub.h f19, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fsub.h f16, f30, f22, dyn # perform operation
fsub.h f16, f30, f22, rdn # perform operation
fsub.h f16, f30, f22, rmm # perform operation
fsub.h f16, f30, f22, rne # perform operation
fsub.h f16, f30, f22, rtz # perform operation
fsub.h f16, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fsub.h f2, f29, f18, dyn # perform operation
fsub.h f2, f29, f18, rdn # perform operation
fsub.h f2, f29, f18, rmm # perform operation
fsub.h f2, f29, f18, rne # perform operation
fsub.h f2, f29, f18, rtz # perform operation
fsub.h f2, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fsub.h f8, f19, f10, dyn # perform operation
fsub.h f8, f19, f10, rdn # perform operation
fsub.h f8, f19, f10, rmm # perform operation
fsub.h f8, f19, f10, rne # perform operation
fsub.h f8, f19, f10, rtz # perform operation
fsub.h f8, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fsub.h f17, f27, f29, dyn # perform operation
fsub.h f17, f27, f29, rdn # perform operation
fsub.h f17, f27, f29, rmm # perform operation
fsub.h f17, f27, f29, rne # perform operation
fsub.h f17, f27, f29, rtz # perform operation
fsub.h f17, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fsub.h f24, f17, f23, dyn # perform operation
fsub.h f24, f17, f23, rdn # perform operation
fsub.h f24, f17, f23, rmm # perform operation
fsub.h f24, f17, f23, rne # perform operation
fsub.h f24, f17, f23, rtz # perform operation
fsub.h f24, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fsub.h f30, f6, f8, dyn # perform operation
fsub.h f30, f6, f8, rdn # perform operation
fsub.h f30, f6, f8, rmm # perform operation
fsub.h f30, f6, f8, rne # perform operation
fsub.h f30, f6, f8, rtz # perform operation
fsub.h f30, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fsub.h f11, f23, f15, dyn # perform operation
fsub.h f11, f23, f15, rdn # perform operation
fsub.h f11, f23, f15, rmm # perform operation
fsub.h f11, f23, f15, rne # perform operation
fsub.h f11, f23, f15, rtz # perform operation
fsub.h f11, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fsub.h f30, f26, f10, dyn # perform operation
fsub.h f30, f26, f10, rdn # perform operation
fsub.h f30, f26, f10, rmm # perform operation
fsub.h f30, f26, f10, rne # perform operation
fsub.h f30, f26, f10, rtz # perform operation
fsub.h f30, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
fsub.h f10, f29, f31, dyn # perform operation
fsub.h f10, f29, f31, rdn # perform operation
fsub.h f10, f29, f31, rmm # perform operation
fsub.h f10, f29, f31, rne # perform operation
fsub.h f10, f29, f31, rtz # perform operation
fsub.h f10, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fsub.h f9, f8, f15, dyn # perform operation
fsub.h f9, f8, f15, rdn # perform operation
fsub.h f9, f8, f15, rmm # perform operation
fsub.h f9, f8, f15, rne # perform operation
fsub.h f9, f8, f15, rtz # perform operation
fsub.h f9, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fsub.h f11, f22, f15, dyn # perform operation
fsub.h f11, f22, f15, rdn # perform operation
fsub.h f11, f22, f15, rmm # perform operation
fsub.h f11, f22, f15, rne # perform operation
fsub.h f11, f22, f15, rtz # perform operation
fsub.h f11, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fsub.h f22, f27, f16, dyn # perform operation
fsub.h f22, f27, f16, rdn # perform operation
fsub.h f22, f27, f16, rmm # perform operation
fsub.h f22, f27, f16, rne # perform operation
fsub.h f22, f27, f16, rtz # perform operation
fsub.h f22, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fsub.h f23, f6, f26, dyn # perform operation
fsub.h f23, f6, f26, rdn # perform operation
fsub.h f23, f6, f26, rmm # perform operation
fsub.h f23, f6, f26, rne # perform operation
fsub.h f23, f6, f26, rtz # perform operation
fsub.h f23, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsub.h f8, f25, f9, dyn # perform operation
fsub.h f8, f25, f9, rdn # perform operation
fsub.h f8, f25, f9, rmm # perform operation
fsub.h f8, f25, f9, rne # perform operation
fsub.h f8, f25, f9, rtz # perform operation
fsub.h f8, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fsub.h f24, f5, f2, dyn # perform operation
fsub.h f24, f5, f2, rdn # perform operation
fsub.h f24, f5, f2, rmm # perform operation
fsub.h f24, f5, f2, rne # perform operation
fsub.h f24, f5, f2, rtz # perform operation
fsub.h f24, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f31, f25, f10, dyn # perform operation
fsub.h f31, f25, f10, rdn # perform operation
fsub.h f31, f25, f10, rmm # perform operation
fsub.h f31, f25, f10, rne # perform operation
fsub.h f31, f25, f10, rtz # perform operation
fsub.h f31, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fsub.h f19, f9, f1, dyn # perform operation
fsub.h f19, f9, f1, rdn # perform operation
fsub.h f19, f9, f1, rmm # perform operation
fsub.h f19, f9, f1, rne # perform operation
fsub.h f19, f9, f1, rtz # perform operation
fsub.h f19, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fsub.h f10, f26, f27, dyn # perform operation
fsub.h f10, f26, f27, rdn # perform operation
fsub.h f10, f26, f27, rmm # perform operation
fsub.h f10, f26, f27, rne # perform operation
fsub.h f10, f26, f27, rtz # perform operation
fsub.h f10, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fsub.h f3, f25, f20, dyn # perform operation
fsub.h f3, f25, f20, rdn # perform operation
fsub.h f3, f25, f20, rmm # perform operation
fsub.h f3, f25, f20, rne # perform operation
fsub.h f3, f25, f20, rtz # perform operation
fsub.h f3, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f3, f13, f8, dyn # perform operation
fsub.h f3, f13, f8, rdn # perform operation
fsub.h f3, f13, f8, rmm # perform operation
fsub.h f3, f13, f8, rne # perform operation
fsub.h f3, f13, f8, rtz # perform operation
fsub.h f3, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f3, f28, f19, dyn # perform operation
fsub.h f3, f28, f19, rdn # perform operation
fsub.h f3, f28, f19, rmm # perform operation
fsub.h f3, f28, f19, rne # perform operation
fsub.h f3, f28, f19, rtz # perform operation
fsub.h f3, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fsub.h f13, f29, f15, dyn # perform operation
fsub.h f13, f29, f15, rdn # perform operation
fsub.h f13, f29, f15, rmm # perform operation
fsub.h f13, f29, f15, rne # perform operation
fsub.h f13, f29, f15, rtz # perform operation
fsub.h f13, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f9, f2, f30, dyn # perform operation
fsub.h f9, f2, f30, rdn # perform operation
fsub.h f9, f2, f30, rmm # perform operation
fsub.h f9, f2, f30, rne # perform operation
fsub.h f9, f2, f30, rtz # perform operation
fsub.h f9, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fsub.h f14, f21, f16, dyn # perform operation
fsub.h f14, f21, f16, rdn # perform operation
fsub.h f14, f21, f16, rmm # perform operation
fsub.h f14, f21, f16, rne # perform operation
fsub.h f14, f21, f16, rtz # perform operation
fsub.h f14, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fsub.h f22, f23, f5, dyn # perform operation
fsub.h f22, f23, f5, rdn # perform operation
fsub.h f22, f23, f5, rmm # perform operation
fsub.h f22, f23, f5, rne # perform operation
fsub.h f22, f23, f5, rtz # perform operation
fsub.h f22, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fsub.h f1, f28, f24, dyn # perform operation
fsub.h f1, f28, f24, rdn # perform operation
fsub.h f1, f28, f24, rmm # perform operation
fsub.h f1, f28, f24, rne # perform operation
fsub.h f1, f28, f24, rtz # perform operation
fsub.h f1, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fsub.h f18, f3, f2, dyn # perform operation
fsub.h f18, f3, f2, rdn # perform operation
fsub.h f18, f3, f2, rmm # perform operation
fsub.h f18, f3, f2, rne # perform operation
fsub.h f18, f3, f2, rtz # perform operation
fsub.h f18, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fsub.h f14, f9, f29, dyn # perform operation
fsub.h f14, f9, f29, rdn # perform operation
fsub.h f14, f9, f29, rmm # perform operation
fsub.h f14, f9, f29, rne # perform operation
fsub.h f14, f9, f29, rtz # perform operation
fsub.h f14, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fsub.h f1, f29, f31, dyn # perform operation
fsub.h f1, f29, f31, rdn # perform operation
fsub.h f1, f29, f31, rmm # perform operation
fsub.h f1, f29, f31, rne # perform operation
fsub.h f1, f29, f31, rtz # perform operation
fsub.h f1, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f9, f31, f28, dyn # perform operation
fsub.h f9, f31, f28, rdn # perform operation
fsub.h f9, f31, f28, rmm # perform operation
fsub.h f9, f31, f28, rne # perform operation
fsub.h f9, f31, f28, rtz # perform operation
fsub.h f9, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fsub.h f19, f20, f3, dyn # perform operation
fsub.h f19, f20, f3, rdn # perform operation
fsub.h f19, f20, f3, rmm # perform operation
fsub.h f19, f20, f3, rne # perform operation
fsub.h f19, f20, f3, rtz # perform operation
fsub.h f19, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fsub.h f28, f22, f2, dyn # perform operation
fsub.h f28, f22, f2, rdn # perform operation
fsub.h f28, f22, f2, rmm # perform operation
fsub.h f28, f22, f2, rne # perform operation
fsub.h f28, f22, f2, rtz # perform operation
fsub.h f28, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fsub.h f18, f1, f24, dyn # perform operation
fsub.h f18, f1, f24, rdn # perform operation
fsub.h f18, f1, f24, rmm # perform operation
fsub.h f18, f1, f24, rne # perform operation
fsub.h f18, f1, f24, rtz # perform operation
fsub.h f18, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fsub.h f3, f7, f23, dyn # perform operation
fsub.h f3, f7, f23, rdn # perform operation
fsub.h f3, f7, f23, rmm # perform operation
fsub.h f3, f7, f23, rne # perform operation
fsub.h f3, f7, f23, rtz # perform operation
fsub.h f3, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f29, f21, f6, dyn # perform operation
fsub.h f29, f21, f6, rdn # perform operation
fsub.h f29, f21, f6, rmm # perform operation
fsub.h f29, f21, f6, rne # perform operation
fsub.h f29, f21, f6, rtz # perform operation
fsub.h f29, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fsub.h f19, f6, f8, dyn # perform operation
fsub.h f19, f6, f8, rdn # perform operation
fsub.h f19, f6, f8, rmm # perform operation
fsub.h f19, f6, f8, rne # perform operation
fsub.h f19, f6, f8, rtz # perform operation
fsub.h f19, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fsub.h f23, f11, f15, dyn # perform operation
fsub.h f23, f11, f15, rdn # perform operation
fsub.h f23, f11, f15, rmm # perform operation
fsub.h f23, f11, f15, rne # perform operation
fsub.h f23, f11, f15, rtz # perform operation
fsub.h f23, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fsub.h f25, f6, f7, dyn # perform operation
fsub.h f25, f6, f7, rdn # perform operation
fsub.h f25, f6, f7, rmm # perform operation
fsub.h f25, f6, f7, rne # perform operation
fsub.h f25, f6, f7, rtz # perform operation
fsub.h f25, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f14, f15, f30, dyn # perform operation
fsub.h f14, f15, f30, rdn # perform operation
fsub.h f14, f15, f30, rmm # perform operation
fsub.h f14, f15, f30, rne # perform operation
fsub.h f14, f15, f30, rtz # perform operation
fsub.h f14, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
fsub.h f1, f7, f28, dyn # perform operation
fsub.h f1, f7, f28, rdn # perform operation
fsub.h f1, f7, f28, rmm # perform operation
fsub.h f1, f7, f28, rne # perform operation
fsub.h f1, f7, f28, rtz # perform operation
fsub.h f1, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f6, f15, f13, dyn # perform operation
fsub.h f6, f15, f13, rdn # perform operation
fsub.h f6, f15, f13, rmm # perform operation
fsub.h f6, f15, f13, rne # perform operation
fsub.h f6, f15, f13, rtz # perform operation
fsub.h f6, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fsub.h f17, f1, f30, dyn # perform operation
fsub.h f17, f1, f30, rdn # perform operation
fsub.h f17, f1, f30, rmm # perform operation
fsub.h f17, f1, f30, rne # perform operation
fsub.h f17, f1, f30, rtz # perform operation
fsub.h f17, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fsub.h f9, f11, f17, dyn # perform operation
fsub.h f9, f11, f17, rdn # perform operation
fsub.h f9, f11, f17, rmm # perform operation
fsub.h f9, f11, f17, rne # perform operation
fsub.h f9, f11, f17, rtz # perform operation
fsub.h f9, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fsub.h f18, f11, f3, dyn # perform operation
fsub.h f18, f11, f3, rdn # perform operation
fsub.h f18, f11, f3, rmm # perform operation
fsub.h f18, f11, f3, rne # perform operation
fsub.h f18, f11, f3, rtz # perform operation
fsub.h f18, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fsub.h f5, f29, f22, dyn # perform operation
fsub.h f5, f29, f22, rdn # perform operation
fsub.h f5, f29, f22, rmm # perform operation
fsub.h f5, f29, f22, rne # perform operation
fsub.h f5, f29, f22, rtz # perform operation
fsub.h f5, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsub.h f9, f30, f5, dyn # perform operation
fsub.h f9, f30, f5, rdn # perform operation
fsub.h f9, f30, f5, rmm # perform operation
fsub.h f9, f30, f5, rne # perform operation
fsub.h f9, f30, f5, rtz # perform operation
fsub.h f9, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fsub.h f11, f29, f8, dyn # perform operation
fsub.h f11, f29, f8, rdn # perform operation
fsub.h f11, f29, f8, rmm # perform operation
fsub.h f11, f29, f8, rne # perform operation
fsub.h f11, f29, f8, rtz # perform operation
fsub.h f11, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fsub.h f30, f19, f2, dyn # perform operation
fsub.h f30, f19, f2, rdn # perform operation
fsub.h f30, f19, f2, rmm # perform operation
fsub.h f30, f19, f2, rne # perform operation
fsub.h f30, f19, f2, rtz # perform operation
fsub.h f30, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fsub.h f5, f31, f30, dyn # perform operation
fsub.h f5, f31, f30, rdn # perform operation
fsub.h f5, f31, f30, rmm # perform operation
fsub.h f5, f31, f30, rne # perform operation
fsub.h f5, f31, f30, rtz # perform operation
fsub.h f5, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fsub.h f31, f23, f25, dyn # perform operation
fsub.h f31, f23, f25, rdn # perform operation
fsub.h f31, f23, f25, rmm # perform operation
fsub.h f31, f23, f25, rne # perform operation
fsub.h f31, f23, f25, rtz # perform operation
fsub.h f31, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f31, f14, f23, dyn # perform operation
fsub.h f31, f14, f23, rdn # perform operation
fsub.h f31, f14, f23, rmm # perform operation
fsub.h f31, f14, f23, rne # perform operation
fsub.h f31, f14, f23, rtz # perform operation
fsub.h f31, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fsub.h f7, f13, f17, dyn # perform operation
fsub.h f7, f13, f17, rdn # perform operation
fsub.h f7, f13, f17, rmm # perform operation
fsub.h f7, f13, f17, rne # perform operation
fsub.h f7, f13, f17, rtz # perform operation
fsub.h f7, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f24, f16, f10, dyn # perform operation
fsub.h f24, f16, f10, rdn # perform operation
fsub.h f24, f16, f10, rmm # perform operation
fsub.h f24, f16, f10, rne # perform operation
fsub.h f24, f16, f10, rtz # perform operation
fsub.h f24, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fsub.h f15, f24, f20, dyn # perform operation
fsub.h f15, f24, f20, rdn # perform operation
fsub.h f15, f24, f20, rmm # perform operation
fsub.h f15, f24, f20, rne # perform operation
fsub.h f15, f24, f20, rtz # perform operation
fsub.h f15, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f21, f27, f19, dyn # perform operation
fsub.h f21, f27, f19, rdn # perform operation
fsub.h f21, f27, f19, rmm # perform operation
fsub.h f21, f27, f19, rne # perform operation
fsub.h f21, f27, f19, rtz # perform operation
fsub.h f21, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fsub.h f22, f1, f24, dyn # perform operation
fsub.h f22, f1, f24, rdn # perform operation
fsub.h f22, f1, f24, rmm # perform operation
fsub.h f22, f1, f24, rne # perform operation
fsub.h f22, f1, f24, rtz # perform operation
fsub.h f22, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fsub.h f20, f15, f1, dyn # perform operation
fsub.h f20, f15, f1, rdn # perform operation
fsub.h f20, f15, f1, rmm # perform operation
fsub.h f20, f15, f1, rne # perform operation
fsub.h f20, f15, f1, rtz # perform operation
fsub.h f20, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fsub.h f5, f11, f29, dyn # perform operation
fsub.h f5, f11, f29, rdn # perform operation
fsub.h f5, f11, f29, rmm # perform operation
fsub.h f5, f11, f29, rne # perform operation
fsub.h f5, f11, f29, rtz # perform operation
fsub.h f5, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fsub.h f3, f8, f26, dyn # perform operation
fsub.h f3, f8, f26, rdn # perform operation
fsub.h f3, f8, f26, rmm # perform operation
fsub.h f3, f8, f26, rne # perform operation
fsub.h f3, f8, f26, rtz # perform operation
fsub.h f3, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fsub.h f10, f22, f13, dyn # perform operation
fsub.h f10, f22, f13, rdn # perform operation
fsub.h f10, f22, f13, rmm # perform operation
fsub.h f10, f22, f13, rne # perform operation
fsub.h f10, f22, f13, rtz # perform operation
fsub.h f10, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fsub.h f25, f31, f10, dyn # perform operation
fsub.h f25, f31, f10, rdn # perform operation
fsub.h f25, f31, f10, rmm # perform operation
fsub.h f25, f31, f10, rne # perform operation
fsub.h f25, f31, f10, rtz # perform operation
fsub.h f25, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fsub.h f20, f27, f13, dyn # perform operation
fsub.h f20, f27, f13, rdn # perform operation
fsub.h f20, f27, f13, rmm # perform operation
fsub.h f20, f27, f13, rne # perform operation
fsub.h f20, f27, f13, rtz # perform operation
fsub.h f20, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fsub.h f17, f9, f2, dyn # perform operation
fsub.h f17, f9, f2, rdn # perform operation
fsub.h f17, f9, f2, rmm # perform operation
fsub.h f17, f9, f2, rne # perform operation
fsub.h f17, f9, f2, rtz # perform operation
fsub.h f17, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f21, f27, f30, dyn # perform operation
fsub.h f21, f27, f30, rdn # perform operation
fsub.h f21, f27, f30, rmm # perform operation
fsub.h f21, f27, f30, rne # perform operation
fsub.h f21, f27, f30, rtz # perform operation
fsub.h f21, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fsub.h f3, f28, f29, dyn # perform operation
fsub.h f3, f28, f29, rdn # perform operation
fsub.h f3, f28, f29, rmm # perform operation
fsub.h f3, f28, f29, rne # perform operation
fsub.h f3, f28, f29, rtz # perform operation
fsub.h f3, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fsub.h f9, f16, f2, dyn # perform operation
fsub.h f9, f16, f2, rdn # perform operation
fsub.h f9, f16, f2, rmm # perform operation
fsub.h f9, f16, f2, rne # perform operation
fsub.h f9, f16, f2, rtz # perform operation
fsub.h f9, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f26, f6, f31, dyn # perform operation
fsub.h f26, f6, f31, rdn # perform operation
fsub.h f26, f6, f31, rmm # perform operation
fsub.h f26, f6, f31, rne # perform operation
fsub.h f26, f6, f31, rtz # perform operation
fsub.h f26, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fsub.h f24, f20, f6, dyn # perform operation
fsub.h f24, f20, f6, rdn # perform operation
fsub.h f24, f20, f6, rmm # perform operation
fsub.h f24, f20, f6, rne # perform operation
fsub.h f24, f20, f6, rtz # perform operation
fsub.h f24, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f29, f27, f13, dyn # perform operation
fsub.h f29, f27, f13, rdn # perform operation
fsub.h f29, f27, f13, rmm # perform operation
fsub.h f29, f27, f13, rne # perform operation
fsub.h f29, f27, f13, rtz # perform operation
fsub.h f29, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f6, f10, f29, dyn # perform operation
fsub.h f6, f10, f29, rdn # perform operation
fsub.h f6, f10, f29, rmm # perform operation
fsub.h f6, f10, f29, rne # perform operation
fsub.h f6, f10, f29, rtz # perform operation
fsub.h f6, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f5, f23, f9, dyn # perform operation
fsub.h f5, f23, f9, rdn # perform operation
fsub.h f5, f23, f9, rmm # perform operation
fsub.h f5, f23, f9, rne # perform operation
fsub.h f5, f23, f9, rtz # perform operation
fsub.h f5, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fsub.h f1, f20, f28, dyn # perform operation
fsub.h f1, f20, f28, rdn # perform operation
fsub.h f1, f20, f28, rmm # perform operation
fsub.h f1, f20, f28, rne # perform operation
fsub.h f1, f20, f28, rtz # perform operation
fsub.h f1, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f2, f25, f19, dyn # perform operation
fsub.h f2, f25, f19, rdn # perform operation
fsub.h f2, f25, f19, rmm # perform operation
fsub.h f2, f25, f19, rne # perform operation
fsub.h f2, f25, f19, rtz # perform operation
fsub.h f2, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsub.h f27, f12, f28, dyn # perform operation
fsub.h f27, f12, f28, rdn # perform operation
fsub.h f27, f12, f28, rmm # perform operation
fsub.h f27, f12, f28, rne # perform operation
fsub.h f27, f12, f28, rtz # perform operation
fsub.h f27, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsub.h f6, f25, f9, dyn # perform operation
fsub.h f6, f25, f9, rdn # perform operation
fsub.h f6, f25, f9, rmm # perform operation
fsub.h f6, f25, f9, rne # perform operation
fsub.h f6, f25, f9, rtz # perform operation
fsub.h f6, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fsub.h f6, f28, f16, dyn # perform operation
fsub.h f6, f28, f16, rdn # perform operation
fsub.h f6, f28, f16, rmm # perform operation
fsub.h f6, f28, f16, rne # perform operation
fsub.h f6, f28, f16, rtz # perform operation
fsub.h f6, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fsub.h f6, f15, f7, dyn # perform operation
fsub.h f6, f15, f7, rdn # perform operation
fsub.h f6, f15, f7, rmm # perform operation
fsub.h f6, f15, f7, rne # perform operation
fsub.h f6, f15, f7, rtz # perform operation
fsub.h f6, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fsub.h f23, f28, f5, dyn # perform operation
fsub.h f23, f28, f5, rdn # perform operation
fsub.h f23, f28, f5, rmm # perform operation
fsub.h f23, f28, f5, rne # perform operation
fsub.h f23, f28, f5, rtz # perform operation
fsub.h f23, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fsub.h f20, f15, f11, dyn # perform operation
fsub.h f20, f15, f11, rdn # perform operation
fsub.h f20, f15, f11, rmm # perform operation
fsub.h f20, f15, f11, rne # perform operation
fsub.h f20, f15, f11, rtz # perform operation
fsub.h f20, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fsub.h f17, f31, f5, dyn # perform operation
fsub.h f17, f31, f5, rdn # perform operation
fsub.h f17, f31, f5, rmm # perform operation
fsub.h f17, f31, f5, rne # perform operation
fsub.h f17, f31, f5, rtz # perform operation
fsub.h f17, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fsub.h f25, f16, f11, dyn # perform operation
fsub.h f25, f16, f11, rdn # perform operation
fsub.h f25, f16, f11, rmm # perform operation
fsub.h f25, f16, f11, rne # perform operation
fsub.h f25, f16, f11, rtz # perform operation
fsub.h f25, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fsub.h f11, f28, f16, dyn # perform operation
fsub.h f11, f28, f16, rdn # perform operation
fsub.h f11, f28, f16, rmm # perform operation
fsub.h f11, f28, f16, rne # perform operation
fsub.h f11, f28, f16, rtz # perform operation
fsub.h f11, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsub.h f2, f29, f14, dyn # perform operation
fsub.h f2, f29, f14, rdn # perform operation
fsub.h f2, f29, f14, rmm # perform operation
fsub.h f2, f29, f14, rne # perform operation
fsub.h f2, f29, f14, rtz # perform operation
fsub.h f2, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fsub.h f15, f17, f2, dyn # perform operation
fsub.h f15, f17, f2, rdn # perform operation
fsub.h f15, f17, f2, rmm # perform operation
fsub.h f15, f17, f2, rne # perform operation
fsub.h f15, f17, f2, rtz # perform operation
fsub.h f15, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsub.h f17, f10, f3, dyn # perform operation
fsub.h f17, f10, f3, rdn # perform operation
fsub.h f17, f10, f3, rmm # perform operation
fsub.h f17, f10, f3, rne # perform operation
fsub.h f17, f10, f3, rtz # perform operation
fsub.h f17, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fsub.h f21, f1, f29, dyn # perform operation
fsub.h f21, f1, f29, rdn # perform operation
fsub.h f21, f1, f29, rmm # perform operation
fsub.h f21, f1, f29, rne # perform operation
fsub.h f21, f1, f29, rtz # perform operation
fsub.h f21, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsub.h f7, f24, f22, dyn # perform operation
fsub.h f7, f24, f22, rdn # perform operation
fsub.h f7, f24, f22, rmm # perform operation
fsub.h f7, f24, f22, rne # perform operation
fsub.h f7, f24, f22, rtz # perform operation
fsub.h f7, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fsub.h f17, f24, f2, dyn # perform operation
fsub.h f17, f24, f2, rdn # perform operation
fsub.h f17, f24, f2, rmm # perform operation
fsub.h f17, f24, f2, rne # perform operation
fsub.h f17, f24, f2, rtz # perform operation
fsub.h f17, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fsub.h f22, f27, f17, dyn # perform operation
fsub.h f22, f27, f17, rdn # perform operation
fsub.h f22, f27, f17, rmm # perform operation
fsub.h f22, f27, f17, rne # perform operation
fsub.h f22, f27, f17, rtz # perform operation
fsub.h f22, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fsub.h f23, f28, f16, dyn # perform operation
fsub.h f23, f28, f16, rdn # perform operation
fsub.h f23, f28, f16, rmm # perform operation
fsub.h f23, f28, f16, rne # perform operation
fsub.h f23, f28, f16, rtz # perform operation
fsub.h f23, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fsub.h f6, f11, f12, dyn # perform operation
fsub.h f6, f11, f12, rdn # perform operation
fsub.h f6, f11, f12, rmm # perform operation
fsub.h f6, f11, f12, rne # perform operation
fsub.h f6, f11, f12, rtz # perform operation
fsub.h f6, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fsub.h f30, f15, f23, dyn # perform operation
fsub.h f30, f15, f23, rdn # perform operation
fsub.h f30, f15, f23, rmm # perform operation
fsub.h f30, f15, f23, rne # perform operation
fsub.h f30, f15, f23, rtz # perform operation
fsub.h f30, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fsub.h f28, f26, f11, dyn # perform operation
fsub.h f28, f26, f11, rdn # perform operation
fsub.h f28, f26, f11, rmm # perform operation
fsub.h f28, f26, f11, rne # perform operation
fsub.h f28, f26, f11, rtz # perform operation
fsub.h f28, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fsub.h f11, f30, f12, dyn # perform operation
fsub.h f11, f30, f12, rdn # perform operation
fsub.h f11, f30, f12, rmm # perform operation
fsub.h f11, f30, f12, rne # perform operation
fsub.h f11, f30, f12, rtz # perform operation
fsub.h f11, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fsub.h f2, f15, f16, dyn # perform operation
fsub.h f2, f15, f16, rdn # perform operation
fsub.h f2, f15, f16, rmm # perform operation
fsub.h f2, f15, f16, rne # perform operation
fsub.h f2, f15, f16, rtz # perform operation
fsub.h f2, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fsub.h f6, f24, f1, dyn # perform operation
fsub.h f6, f24, f1, rdn # perform operation
fsub.h f6, f24, f1, rmm # perform operation
fsub.h f6, f24, f1, rne # perform operation
fsub.h f6, f24, f1, rtz # perform operation
fsub.h f6, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fsub.h f29, f17, f7, dyn # perform operation
fsub.h f29, f17, f7, rdn # perform operation
fsub.h f29, f17, f7, rmm # perform operation
fsub.h f29, f17, f7, rne # perform operation
fsub.h f29, f17, f7, rtz # perform operation
fsub.h f29, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fsub.h f19, f30, f1, dyn # perform operation
fsub.h f19, f30, f1, rdn # perform operation
fsub.h f19, f30, f1, rmm # perform operation
fsub.h f19, f30, f1, rne # perform operation
fsub.h f19, f30, f1, rtz # perform operation
fsub.h f19, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fsub.h f23, f11, f19, dyn # perform operation
fsub.h f23, f11, f19, rdn # perform operation
fsub.h f23, f11, f19, rmm # perform operation
fsub.h f23, f11, f19, rne # perform operation
fsub.h f23, f11, f19, rtz # perform operation
fsub.h f23, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsub.h f29, f11, f7, dyn # perform operation
fsub.h f29, f11, f7, rdn # perform operation
fsub.h f29, f11, f7, rmm # perform operation
fsub.h f29, f11, f7, rne # perform operation
fsub.h f29, f11, f7, rtz # perform operation
fsub.h f29, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fsub.h f14, f6, f10, dyn # perform operation
fsub.h f14, f6, f10, rdn # perform operation
fsub.h f14, f6, f10, rmm # perform operation
fsub.h f14, f6, f10, rne # perform operation
fsub.h f14, f6, f10, rtz # perform operation
fsub.h f14, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fsub.h f23, f21, f29, dyn # perform operation
fsub.h f23, f21, f29, rdn # perform operation
fsub.h f23, f21, f29, rmm # perform operation
fsub.h f23, f21, f29, rne # perform operation
fsub.h f23, f21, f29, rtz # perform operation
fsub.h f23, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fsub.h f7, f15, f16, dyn # perform operation
fsub.h f7, f15, f16, rdn # perform operation
fsub.h f7, f15, f16, rmm # perform operation
fsub.h f7, f15, f16, rne # perform operation
fsub.h f7, f15, f16, rtz # perform operation
fsub.h f7, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fsub.h f29, f12, f30, dyn # perform operation
fsub.h f29, f12, f30, rdn # perform operation
fsub.h f29, f12, f30, rmm # perform operation
fsub.h f29, f12, f30, rne # perform operation
fsub.h f29, f12, f30, rtz # perform operation
fsub.h f29, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fsub.h f6, f17, f25, dyn # perform operation
fsub.h f6, f17, f25, rdn # perform operation
fsub.h f6, f17, f25, rmm # perform operation
fsub.h f6, f17, f25, rne # perform operation
fsub.h f6, f17, f25, rtz # perform operation
fsub.h f6, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsub.h f23, f10, f21, dyn # perform operation
fsub.h f23, f10, f21, rdn # perform operation
fsub.h f23, f10, f21, rmm # perform operation
fsub.h f23, f10, f21, rne # perform operation
fsub.h f23, f10, f21, rtz # perform operation
fsub.h f23, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f28, f13, f24, dyn # perform operation
fsub.h f28, f13, f24, rdn # perform operation
fsub.h f28, f13, f24, rmm # perform operation
fsub.h f28, f13, f24, rne # perform operation
fsub.h f28, f13, f24, rtz # perform operation
fsub.h f28, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fsub.h f10, f19, f16, dyn # perform operation
fsub.h f10, f19, f16, rdn # perform operation
fsub.h f10, f19, f16, rmm # perform operation
fsub.h f10, f19, f16, rne # perform operation
fsub.h f10, f19, f16, rtz # perform operation
fsub.h f10, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fsub.h f12, f31, f5, dyn # perform operation
fsub.h f12, f31, f5, rdn # perform operation
fsub.h f12, f31, f5, rmm # perform operation
fsub.h f12, f31, f5, rne # perform operation
fsub.h f12, f31, f5, rtz # perform operation
fsub.h f12, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fsub.h f29, f6, f17, dyn # perform operation
fsub.h f29, f6, f17, rdn # perform operation
fsub.h f29, f6, f17, rmm # perform operation
fsub.h f29, f6, f17, rne # perform operation
fsub.h f29, f6, f17, rtz # perform operation
fsub.h f29, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fsub.h f18, f3, f15, dyn # perform operation
fsub.h f18, f3, f15, rdn # perform operation
fsub.h f18, f3, f15, rmm # perform operation
fsub.h f18, f3, f15, rne # perform operation
fsub.h f18, f3, f15, rtz # perform operation
fsub.h f18, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fsub.h f21, f13, f19, dyn # perform operation
fsub.h f21, f13, f19, rdn # perform operation
fsub.h f21, f13, f19, rmm # perform operation
fsub.h f21, f13, f19, rne # perform operation
fsub.h f21, f13, f19, rtz # perform operation
fsub.h f21, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fsub.h f2, f1, f19, dyn # perform operation
fsub.h f2, f1, f19, rdn # perform operation
fsub.h f2, f1, f19, rmm # perform operation
fsub.h f2, f1, f19, rne # perform operation
fsub.h f2, f1, f19, rtz # perform operation
fsub.h f2, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fsub.h f27, f20, f21, dyn # perform operation
fsub.h f27, f20, f21, rdn # perform operation
fsub.h f27, f20, f21, rmm # perform operation
fsub.h f27, f20, f21, rne # perform operation
fsub.h f27, f20, f21, rtz # perform operation
fsub.h f27, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fsub.h f7, f11, f6, dyn # perform operation
fsub.h f7, f11, f6, rdn # perform operation
fsub.h f7, f11, f6, rmm # perform operation
fsub.h f7, f11, f6, rne # perform operation
fsub.h f7, f11, f6, rtz # perform operation
fsub.h f7, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fsub.h f9, f28, f6, dyn # perform operation
fsub.h f9, f28, f6, rdn # perform operation
fsub.h f9, f28, f6, rmm # perform operation
fsub.h f9, f28, f6, rne # perform operation
fsub.h f9, f28, f6, rtz # perform operation
fsub.h f9, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fsub.h f10, f16, f30, dyn # perform operation
fsub.h f10, f16, f30, rdn # perform operation
fsub.h f10, f16, f30, rmm # perform operation
fsub.h f10, f16, f30, rne # perform operation
fsub.h f10, f16, f30, rtz # perform operation
fsub.h f10, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fsub.h f11, f1, f21, dyn # perform operation
fsub.h f11, f1, f21, rdn # perform operation
fsub.h f11, f1, f21, rmm # perform operation
fsub.h f11, f1, f21, rne # perform operation
fsub.h f11, f1, f21, rtz # perform operation
fsub.h f11, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fsub.h f31, f21, f10, dyn # perform operation
fsub.h f31, f21, f10, rdn # perform operation
fsub.h f31, f21, f10, rmm # perform operation
fsub.h f31, f21, f10, rne # perform operation
fsub.h f31, f21, f10, rtz # perform operation
fsub.h f31, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fsub.h f10, f16, f2, dyn # perform operation
fsub.h f10, f16, f2, rdn # perform operation
fsub.h f10, f16, f2, rmm # perform operation
fsub.h f10, f16, f2, rne # perform operation
fsub.h f10, f16, f2, rtz # perform operation
fsub.h f10, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fsub.h f26, f2, f17, dyn # perform operation
fsub.h f26, f2, f17, rdn # perform operation
fsub.h f26, f2, f17, rmm # perform operation
fsub.h f26, f2, f17, rne # perform operation
fsub.h f26, f2, f17, rtz # perform operation
fsub.h f26, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fsub.h f9, f27, f5, dyn # perform operation
fsub.h f9, f27, f5, rdn # perform operation
fsub.h f9, f27, f5, rmm # perform operation
fsub.h f9, f27, f5, rne # perform operation
fsub.h f9, f27, f5, rtz # perform operation
fsub.h f9, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsub.h f25, f3, f12, dyn # perform operation
fsub.h f25, f3, f12, rdn # perform operation
fsub.h f25, f3, f12, rmm # perform operation
fsub.h f25, f3, f12, rne # perform operation
fsub.h f25, f3, f12, rtz # perform operation
fsub.h f25, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fsub.h f24, f10, f6, dyn # perform operation
fsub.h f24, f10, f6, rdn # perform operation
fsub.h f24, f10, f6, rmm # perform operation
fsub.h f24, f10, f6, rne # perform operation
fsub.h f24, f10, f6, rtz # perform operation
fsub.h f24, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fsub.h f22, f6, f28, dyn # perform operation
fsub.h f22, f6, f28, rdn # perform operation
fsub.h f22, f6, f28, rmm # perform operation
fsub.h f22, f6, f28, rne # perform operation
fsub.h f22, f6, f28, rtz # perform operation
fsub.h f22, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fsub.h f16, f1, f7, dyn # perform operation
fsub.h f16, f1, f7, rdn # perform operation
fsub.h f16, f1, f7, rmm # perform operation
fsub.h f16, f1, f7, rne # perform operation
fsub.h f16, f1, f7, rtz # perform operation
fsub.h f16, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f27, f2, f25, dyn # perform operation
fsub.h f27, f2, f25, rdn # perform operation
fsub.h f27, f2, f25, rmm # perform operation
fsub.h f27, f2, f25, rne # perform operation
fsub.h f27, f2, f25, rtz # perform operation
fsub.h f27, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fsub.h f11, f6, f14, dyn # perform operation
fsub.h f11, f6, f14, rdn # perform operation
fsub.h f11, f6, f14, rmm # perform operation
fsub.h f11, f6, f14, rne # perform operation
fsub.h f11, f6, f14, rtz # perform operation
fsub.h f11, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fsub.h f18, f3, f29, dyn # perform operation
fsub.h f18, f3, f29, rdn # perform operation
fsub.h f18, f3, f29, rmm # perform operation
fsub.h f18, f3, f29, rne # perform operation
fsub.h f18, f3, f29, rtz # perform operation
fsub.h f18, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsub.h f22, f27, f5, dyn # perform operation
fsub.h f22, f27, f5, rdn # perform operation
fsub.h f22, f27, f5, rmm # perform operation
fsub.h f22, f27, f5, rne # perform operation
fsub.h f22, f27, f5, rtz # perform operation
fsub.h f22, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsub.h f15, f28, f9, dyn # perform operation
fsub.h f15, f28, f9, rdn # perform operation
fsub.h f15, f28, f9, rmm # perform operation
fsub.h f15, f28, f9, rne # perform operation
fsub.h f15, f28, f9, rtz # perform operation
fsub.h f15, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fsub.h f23, f29, f1, dyn # perform operation
fsub.h f23, f29, f1, rdn # perform operation
fsub.h f23, f29, f1, rmm # perform operation
fsub.h f23, f29, f1, rne # perform operation
fsub.h f23, f29, f1, rtz # perform operation
fsub.h f23, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fsub.h f19, f24, f27, dyn # perform operation
fsub.h f19, f24, f27, rdn # perform operation
fsub.h f19, f24, f27, rmm # perform operation
fsub.h f19, f24, f27, rne # perform operation
fsub.h f19, f24, f27, rtz # perform operation
fsub.h f19, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fsub.h f25, f20, f16, dyn # perform operation
fsub.h f25, f20, f16, rdn # perform operation
fsub.h f25, f20, f16, rmm # perform operation
fsub.h f25, f20, f16, rne # perform operation
fsub.h f25, f20, f16, rtz # perform operation
fsub.h f25, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f28, f8, f30, dyn # perform operation
fsub.h f28, f8, f30, rdn # perform operation
fsub.h f28, f8, f30, rmm # perform operation
fsub.h f28, f8, f30, rne # perform operation
fsub.h f28, f8, f30, rtz # perform operation
fsub.h f28, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fsub.h f25, f17, f18, dyn # perform operation
fsub.h f25, f17, f18, rdn # perform operation
fsub.h f25, f17, f18, rmm # perform operation
fsub.h f25, f17, f18, rne # perform operation
fsub.h f25, f17, f18, rtz # perform operation
fsub.h f25, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fsub.h f16, f14, f2, dyn # perform operation
fsub.h f16, f14, f2, rdn # perform operation
fsub.h f16, f14, f2, rmm # perform operation
fsub.h f16, f14, f2, rne # perform operation
fsub.h f16, f14, f2, rtz # perform operation
fsub.h f16, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fsub.h f22, f21, f5, dyn # perform operation
fsub.h f22, f21, f5, rdn # perform operation
fsub.h f22, f21, f5, rmm # perform operation
fsub.h f22, f21, f5, rne # perform operation
fsub.h f22, f21, f5, rtz # perform operation
fsub.h f22, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fsub.h f14, f15, f29, dyn # perform operation
fsub.h f14, f15, f29, rdn # perform operation
fsub.h f14, f15, f29, rmm # perform operation
fsub.h f14, f15, f29, rne # perform operation
fsub.h f14, f15, f29, rtz # perform operation
fsub.h f14, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fsub.h f2, f31, f14, dyn # perform operation
fsub.h f2, f31, f14, rdn # perform operation
fsub.h f2, f31, f14, rmm # perform operation
fsub.h f2, f31, f14, rne # perform operation
fsub.h f2, f31, f14, rtz # perform operation
fsub.h f2, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fsub.h f16, f1, f24, dyn # perform operation
fsub.h f16, f1, f24, rdn # perform operation
fsub.h f16, f1, f24, rmm # perform operation
fsub.h f16, f1, f24, rne # perform operation
fsub.h f16, f1, f24, rtz # perform operation
fsub.h f16, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fsub.h f14, f13, f5, dyn # perform operation
fsub.h f14, f13, f5, rdn # perform operation
fsub.h f14, f13, f5, rmm # perform operation
fsub.h f14, f13, f5, rne # perform operation
fsub.h f14, f13, f5, rtz # perform operation
fsub.h f14, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsub.h f8, f29, f22, dyn # perform operation
fsub.h f8, f29, f22, rdn # perform operation
fsub.h f8, f29, f22, rmm # perform operation
fsub.h f8, f29, f22, rne # perform operation
fsub.h f8, f29, f22, rtz # perform operation
fsub.h f8, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f17, f26, f16, dyn # perform operation
fsub.h f17, f26, f16, rdn # perform operation
fsub.h f17, f26, f16, rmm # perform operation
fsub.h f17, f26, f16, rne # perform operation
fsub.h f17, f26, f16, rtz # perform operation
fsub.h f17, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fsub.h f13, f20, f28, dyn # perform operation
fsub.h f13, f20, f28, rdn # perform operation
fsub.h f13, f20, f28, rmm # perform operation
fsub.h f13, f20, f28, rne # perform operation
fsub.h f13, f20, f28, rtz # perform operation
fsub.h f13, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fsub.h f21, f9, f16, dyn # perform operation
fsub.h f21, f9, f16, rdn # perform operation
fsub.h f21, f9, f16, rmm # perform operation
fsub.h f21, f9, f16, rne # perform operation
fsub.h f21, f9, f16, rtz # perform operation
fsub.h f21, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fsub.h f16, f17, f24, dyn # perform operation
fsub.h f16, f17, f24, rdn # perform operation
fsub.h f16, f17, f24, rmm # perform operation
fsub.h f16, f17, f24, rne # perform operation
fsub.h f16, f17, f24, rtz # perform operation
fsub.h f16, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fsub.h f1, f7, f12, dyn # perform operation
fsub.h f1, f7, f12, rdn # perform operation
fsub.h f1, f7, f12, rmm # perform operation
fsub.h f1, f7, f12, rne # perform operation
fsub.h f1, f7, f12, rtz # perform operation
fsub.h f1, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fsub.h f25, f29, f21, dyn # perform operation
fsub.h f25, f29, f21, rdn # perform operation
fsub.h f25, f29, f21, rmm # perform operation
fsub.h f25, f29, f21, rne # perform operation
fsub.h f25, f29, f21, rtz # perform operation
fsub.h f25, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsub.h f18, f26, f25, dyn # perform operation
fsub.h f18, f26, f25, rdn # perform operation
fsub.h f18, f26, f25, rmm # perform operation
fsub.h f18, f26, f25, rne # perform operation
fsub.h f18, f26, f25, rtz # perform operation
fsub.h f18, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fsub.h f9, f29, f13, dyn # perform operation
fsub.h f9, f29, f13, rdn # perform operation
fsub.h f9, f29, f13, rmm # perform operation
fsub.h f9, f29, f13, rne # perform operation
fsub.h f9, f29, f13, rtz # perform operation
fsub.h f9, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
fsub.h f22, f29, f2, dyn # perform operation
fsub.h f22, f29, f2, rdn # perform operation
fsub.h f22, f29, f2, rmm # perform operation
fsub.h f22, f29, f2, rne # perform operation
fsub.h f22, f29, f2, rtz # perform operation
fsub.h f22, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fsub.h f15, f28, f18, dyn # perform operation
fsub.h f15, f28, f18, rdn # perform operation
fsub.h f15, f28, f18, rmm # perform operation
fsub.h f15, f28, f18, rne # perform operation
fsub.h f15, f28, f18, rtz # perform operation
fsub.h f15, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsub.h f7, f14, f9, dyn # perform operation
fsub.h f7, f14, f9, rdn # perform operation
fsub.h f7, f14, f9, rmm # perform operation
fsub.h f7, f14, f9, rne # perform operation
fsub.h f7, f14, f9, rtz # perform operation
fsub.h f7, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fsub.h f30, f16, f29, dyn # perform operation
fsub.h f30, f16, f29, rdn # perform operation
fsub.h f30, f16, f29, rmm # perform operation
fsub.h f30, f16, f29, rne # perform operation
fsub.h f30, f16, f29, rtz # perform operation
fsub.h f30, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fsub.h f24, f22, f15, dyn # perform operation
fsub.h f24, f22, f15, rdn # perform operation
fsub.h f24, f22, f15, rmm # perform operation
fsub.h f24, f22, f15, rne # perform operation
fsub.h f24, f22, f15, rtz # perform operation
fsub.h f24, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fsub.h f19, f10, f26, dyn # perform operation
fsub.h f19, f10, f26, rdn # perform operation
fsub.h f19, f10, f26, rmm # perform operation
fsub.h f19, f10, f26, rne # perform operation
fsub.h f19, f10, f26, rtz # perform operation
fsub.h f19, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fsub.h f12, f27, f14, dyn # perform operation
fsub.h f12, f27, f14, rdn # perform operation
fsub.h f12, f27, f14, rmm # perform operation
fsub.h f12, f27, f14, rne # perform operation
fsub.h f12, f27, f14, rtz # perform operation
fsub.h f12, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fsub.h f17, f16, f6, dyn # perform operation
fsub.h f17, f16, f6, rdn # perform operation
fsub.h f17, f16, f6, rmm # perform operation
fsub.h f17, f16, f6, rne # perform operation
fsub.h f17, f16, f6, rtz # perform operation
fsub.h f17, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fsub.h f10, f18, f20, dyn # perform operation
fsub.h f10, f18, f20, rdn # perform operation
fsub.h f10, f18, f20, rmm # perform operation
fsub.h f10, f18, f20, rne # perform operation
fsub.h f10, f18, f20, rtz # perform operation
fsub.h f10, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f15, f7, f19, dyn # perform operation
fsub.h f15, f7, f19, rdn # perform operation
fsub.h f15, f7, f19, rmm # perform operation
fsub.h f15, f7, f19, rne # perform operation
fsub.h f15, f7, f19, rtz # perform operation
fsub.h f15, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fsub.h f22, f11, f20, dyn # perform operation
fsub.h f22, f11, f20, rdn # perform operation
fsub.h f22, f11, f20, rmm # perform operation
fsub.h f22, f11, f20, rne # perform operation
fsub.h f22, f11, f20, rtz # perform operation
fsub.h f22, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f20, f11, f24, dyn # perform operation
fsub.h f20, f11, f24, rdn # perform operation
fsub.h f20, f11, f24, rmm # perform operation
fsub.h f20, f11, f24, rne # perform operation
fsub.h f20, f11, f24, rtz # perform operation
fsub.h f20, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fsub.h f18, f23, f29, dyn # perform operation
fsub.h f18, f23, f29, rdn # perform operation
fsub.h f18, f23, f29, rmm # perform operation
fsub.h f18, f23, f29, rne # perform operation
fsub.h f18, f23, f29, rtz # perform operation
fsub.h f18, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fsub.h f2, f8, f18, dyn # perform operation
fsub.h f2, f8, f18, rdn # perform operation
fsub.h f2, f8, f18, rmm # perform operation
fsub.h f2, f8, f18, rne # perform operation
fsub.h f2, f8, f18, rtz # perform operation
fsub.h f2, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fsub.h f23, f17, f10, dyn # perform operation
fsub.h f23, f17, f10, rdn # perform operation
fsub.h f23, f17, f10, rmm # perform operation
fsub.h f23, f17, f10, rne # perform operation
fsub.h f23, f17, f10, rtz # perform operation
fsub.h f23, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fsub.h f5, f18, f23, dyn # perform operation
fsub.h f5, f18, f23, rdn # perform operation
fsub.h f5, f18, f23, rmm # perform operation
fsub.h f5, f18, f23, rne # perform operation
fsub.h f5, f18, f23, rtz # perform operation
fsub.h f5, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fsub.h f17, f3, f24, dyn # perform operation
fsub.h f17, f3, f24, rdn # perform operation
fsub.h f17, f3, f24, rmm # perform operation
fsub.h f17, f3, f24, rne # perform operation
fsub.h f17, f3, f24, rtz # perform operation
fsub.h f17, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fsub.h f20, f31, f10, dyn # perform operation
fsub.h f20, f31, f10, rdn # perform operation
fsub.h f20, f31, f10, rmm # perform operation
fsub.h f20, f31, f10, rne # perform operation
fsub.h f20, f31, f10, rtz # perform operation
fsub.h f20, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fsub.h f25, f9, f2, dyn # perform operation
fsub.h f25, f9, f2, rdn # perform operation
fsub.h f25, f9, f2, rmm # perform operation
fsub.h f25, f9, f2, rne # perform operation
fsub.h f25, f9, f2, rtz # perform operation
fsub.h f25, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fsub.h f15, f13, f27, dyn # perform operation
fsub.h f15, f13, f27, rdn # perform operation
fsub.h f15, f13, f27, rmm # perform operation
fsub.h f15, f13, f27, rne # perform operation
fsub.h f15, f13, f27, rtz # perform operation
fsub.h f15, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsub.h f27, f24, f18, dyn # perform operation
fsub.h f27, f24, f18, rdn # perform operation
fsub.h f27, f24, f18, rmm # perform operation
fsub.h f27, f24, f18, rne # perform operation
fsub.h f27, f24, f18, rtz # perform operation
fsub.h f27, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fsub.h f12, f17, f8, dyn # perform operation
fsub.h f12, f17, f8, rdn # perform operation
fsub.h f12, f17, f8, rmm # perform operation
fsub.h f12, f17, f8, rne # perform operation
fsub.h f12, f17, f8, rtz # perform operation
fsub.h f12, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fsub.h f25, f18, f7, dyn # perform operation
fsub.h f25, f18, f7, rdn # perform operation
fsub.h f25, f18, f7, rmm # perform operation
fsub.h f25, f18, f7, rne # perform operation
fsub.h f25, f18, f7, rtz # perform operation
fsub.h f25, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fsub.h f25, f22, f26, dyn # perform operation
fsub.h f25, f22, f26, rdn # perform operation
fsub.h f25, f22, f26, rmm # perform operation
fsub.h f25, f22, f26, rne # perform operation
fsub.h f25, f22, f26, rtz # perform operation
fsub.h f25, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fsub.h f1, f12, f14, dyn # perform operation
fsub.h f1, f12, f14, rdn # perform operation
fsub.h f1, f12, f14, rmm # perform operation
fsub.h f1, f12, f14, rne # perform operation
fsub.h f1, f12, f14, rtz # perform operation
fsub.h f1, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fsub.h f26, f17, f11, dyn # perform operation
fsub.h f26, f17, f11, rdn # perform operation
fsub.h f26, f17, f11, rmm # perform operation
fsub.h f26, f17, f11, rne # perform operation
fsub.h f26, f17, f11, rtz # perform operation
fsub.h f26, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fsub.h f25, f8, f10, dyn # perform operation
fsub.h f25, f8, f10, rdn # perform operation
fsub.h f25, f8, f10, rmm # perform operation
fsub.h f25, f8, f10, rne # perform operation
fsub.h f25, f8, f10, rtz # perform operation
fsub.h f25, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fsub.h f2, f15, f20, dyn # perform operation
fsub.h f2, f15, f20, rdn # perform operation
fsub.h f2, f15, f20, rmm # perform operation
fsub.h f2, f15, f20, rne # perform operation
fsub.h f2, f15, f20, rtz # perform operation
fsub.h f2, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fsub.h f6, f9, f21, dyn # perform operation
fsub.h f6, f9, f21, rdn # perform operation
fsub.h f6, f9, f21, rmm # perform operation
fsub.h f6, f9, f21, rne # perform operation
fsub.h f6, f9, f21, rtz # perform operation
fsub.h f6, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fsub.h f5, f10, f22, dyn # perform operation
fsub.h f5, f10, f22, rdn # perform operation
fsub.h f5, f10, f22, rmm # perform operation
fsub.h f5, f10, f22, rne # perform operation
fsub.h f5, f10, f22, rtz # perform operation
fsub.h f5, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f26, f18, f21, dyn # perform operation
fsub.h f26, f18, f21, rdn # perform operation
fsub.h f26, f18, f21, rmm # perform operation
fsub.h f26, f18, f21, rne # perform operation
fsub.h f26, f18, f21, rtz # perform operation
fsub.h f26, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fsub.h f6, f30, f14, dyn # perform operation
fsub.h f6, f30, f14, rdn # perform operation
fsub.h f6, f30, f14, rmm # perform operation
fsub.h f6, f30, f14, rne # perform operation
fsub.h f6, f30, f14, rtz # perform operation
fsub.h f6, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fsub.h f2, f21, f31, dyn # perform operation
fsub.h f2, f21, f31, rdn # perform operation
fsub.h f2, f21, f31, rmm # perform operation
fsub.h f2, f21, f31, rne # perform operation
fsub.h f2, f21, f31, rtz # perform operation
fsub.h f2, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f29, f11, f19, dyn # perform operation
fsub.h f29, f11, f19, rdn # perform operation
fsub.h f29, f11, f19, rmm # perform operation
fsub.h f29, f11, f19, rne # perform operation
fsub.h f29, f11, f19, rtz # perform operation
fsub.h f29, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fsub.h f7, f5, f17, dyn # perform operation
fsub.h f7, f5, f17, rdn # perform operation
fsub.h f7, f5, f17, rmm # perform operation
fsub.h f7, f5, f17, rne # perform operation
fsub.h f7, f5, f17, rtz # perform operation
fsub.h f7, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fsub.h f17, f26, f12, dyn # perform operation
fsub.h f17, f26, f12, rdn # perform operation
fsub.h f17, f26, f12, rmm # perform operation
fsub.h f17, f26, f12, rne # perform operation
fsub.h f17, f26, f12, rtz # perform operation
fsub.h f17, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fsub.h f30, f13, f9, dyn # perform operation
fsub.h f30, f13, f9, rdn # perform operation
fsub.h f30, f13, f9, rmm # perform operation
fsub.h f30, f13, f9, rne # perform operation
fsub.h f30, f13, f9, rtz # perform operation
fsub.h f30, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f29, f24, f23, dyn # perform operation
fsub.h f29, f24, f23, rdn # perform operation
fsub.h f29, f24, f23, rmm # perform operation
fsub.h f29, f24, f23, rne # perform operation
fsub.h f29, f24, f23, rtz # perform operation
fsub.h f29, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f6, f3, f23, dyn # perform operation
fsub.h f6, f3, f23, rdn # perform operation
fsub.h f6, f3, f23, rmm # perform operation
fsub.h f6, f3, f23, rne # perform operation
fsub.h f6, f3, f23, rtz # perform operation
fsub.h f6, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fsub.h f22, f12, f18, dyn # perform operation
fsub.h f22, f12, f18, rdn # perform operation
fsub.h f22, f12, f18, rmm # perform operation
fsub.h f22, f12, f18, rne # perform operation
fsub.h f22, f12, f18, rtz # perform operation
fsub.h f22, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fsub.h f24, f10, f26, dyn # perform operation
fsub.h f24, f10, f26, rdn # perform operation
fsub.h f24, f10, f26, rmm # perform operation
fsub.h f24, f10, f26, rne # perform operation
fsub.h f24, f10, f26, rtz # perform operation
fsub.h f24, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fsub.h f12, f2, f9, dyn # perform operation
fsub.h f12, f2, f9, rdn # perform operation
fsub.h f12, f2, f9, rmm # perform operation
fsub.h f12, f2, f9, rne # perform operation
fsub.h f12, f2, f9, rtz # perform operation
fsub.h f12, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f17, f18, f26, dyn # perform operation
fsub.h f17, f18, f26, rdn # perform operation
fsub.h f17, f18, f26, rmm # perform operation
fsub.h f17, f18, f26, rne # perform operation
fsub.h f17, f18, f26, rtz # perform operation
fsub.h f17, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fsub.h f19, f22, f3, dyn # perform operation
fsub.h f19, f22, f3, rdn # perform operation
fsub.h f19, f22, f3, rmm # perform operation
fsub.h f19, f22, f3, rne # perform operation
fsub.h f19, f22, f3, rtz # perform operation
fsub.h f19, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fsub.h f20, f30, f23, dyn # perform operation
fsub.h f20, f30, f23, rdn # perform operation
fsub.h f20, f30, f23, rmm # perform operation
fsub.h f20, f30, f23, rne # perform operation
fsub.h f20, f30, f23, rtz # perform operation
fsub.h f20, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f13, f11, f25, dyn # perform operation
fsub.h f13, f11, f25, rdn # perform operation
fsub.h f13, f11, f25, rmm # perform operation
fsub.h f13, f11, f25, rne # perform operation
fsub.h f13, f11, f25, rtz # perform operation
fsub.h f13, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fsub.h f28, f13, f6, dyn # perform operation
fsub.h f28, f13, f6, rdn # perform operation
fsub.h f28, f13, f6, rmm # perform operation
fsub.h f28, f13, f6, rne # perform operation
fsub.h f28, f13, f6, rtz # perform operation
fsub.h f28, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fsub.h f13, f2, f19, dyn # perform operation
fsub.h f13, f2, f19, rdn # perform operation
fsub.h f13, f2, f19, rmm # perform operation
fsub.h f13, f2, f19, rne # perform operation
fsub.h f13, f2, f19, rtz # perform operation
fsub.h f13, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fsub.h f28, f17, f24, dyn # perform operation
fsub.h f28, f17, f24, rdn # perform operation
fsub.h f28, f17, f24, rmm # perform operation
fsub.h f28, f17, f24, rne # perform operation
fsub.h f28, f17, f24, rtz # perform operation
fsub.h f28, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fsub.h f14, f12, f25, dyn # perform operation
fsub.h f14, f12, f25, rdn # perform operation
fsub.h f14, f12, f25, rmm # perform operation
fsub.h f14, f12, f25, rne # perform operation
fsub.h f14, f12, f25, rtz # perform operation
fsub.h f14, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fsub.h f25, f11, f5, dyn # perform operation
fsub.h f25, f11, f5, rdn # perform operation
fsub.h f25, f11, f5, rmm # perform operation
fsub.h f25, f11, f5, rne # perform operation
fsub.h f25, f11, f5, rtz # perform operation
fsub.h f25, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fsub.h f12, f21, f14, dyn # perform operation
fsub.h f12, f21, f14, rdn # perform operation
fsub.h f12, f21, f14, rmm # perform operation
fsub.h f12, f21, f14, rne # perform operation
fsub.h f12, f21, f14, rtz # perform operation
fsub.h f12, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fsub.h f3, f11, f26, dyn # perform operation
fsub.h f3, f11, f26, rdn # perform operation
fsub.h f3, f11, f26, rmm # perform operation
fsub.h f3, f11, f26, rne # perform operation
fsub.h f3, f11, f26, rtz # perform operation
fsub.h f3, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fsub.h f14, f10, f27, dyn # perform operation
fsub.h f14, f10, f27, rdn # perform operation
fsub.h f14, f10, f27, rmm # perform operation
fsub.h f14, f10, f27, rne # perform operation
fsub.h f14, f10, f27, rtz # perform operation
fsub.h f14, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fsub.h f31, f10, f19, dyn # perform operation
fsub.h f31, f10, f19, rdn # perform operation
fsub.h f31, f10, f19, rmm # perform operation
fsub.h f31, f10, f19, rne # perform operation
fsub.h f31, f10, f19, rtz # perform operation
fsub.h f31, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fsub.h f28, f31, f19, dyn # perform operation
fsub.h f28, f31, f19, rdn # perform operation
fsub.h f28, f31, f19, rmm # perform operation
fsub.h f28, f31, f19, rne # perform operation
fsub.h f28, f31, f19, rtz # perform operation
fsub.h f28, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fsub.h f18, f17, f19, dyn # perform operation
fsub.h f18, f17, f19, rdn # perform operation
fsub.h f18, f17, f19, rmm # perform operation
fsub.h f18, f17, f19, rne # perform operation
fsub.h f18, f17, f19, rtz # perform operation
fsub.h f18, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f27, f31, f13, dyn # perform operation
fsub.h f27, f31, f13, rdn # perform operation
fsub.h f27, f31, f13, rmm # perform operation
fsub.h f27, f31, f13, rne # perform operation
fsub.h f27, f31, f13, rtz # perform operation
fsub.h f27, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fsub.h f29, f5, f2, dyn # perform operation
fsub.h f29, f5, f2, rdn # perform operation
fsub.h f29, f5, f2, rmm # perform operation
fsub.h f29, f5, f2, rne # perform operation
fsub.h f29, f5, f2, rtz # perform operation
fsub.h f29, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fsub.h f15, f23, f12, dyn # perform operation
fsub.h f15, f23, f12, rdn # perform operation
fsub.h f15, f23, f12, rmm # perform operation
fsub.h f15, f23, f12, rne # perform operation
fsub.h f15, f23, f12, rtz # perform operation
fsub.h f15, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fsub.h f15, f6, f27, dyn # perform operation
fsub.h f15, f6, f27, rdn # perform operation
fsub.h f15, f6, f27, rmm # perform operation
fsub.h f15, f6, f27, rne # perform operation
fsub.h f15, f6, f27, rtz # perform operation
fsub.h f15, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fsub.h f18, f23, f26, dyn # perform operation
fsub.h f18, f23, f26, rdn # perform operation
fsub.h f18, f23, f26, rmm # perform operation
fsub.h f18, f23, f26, rne # perform operation
fsub.h f18, f23, f26, rtz # perform operation
fsub.h f18, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fsub.h f13, f9, f18, dyn # perform operation
fsub.h f13, f9, f18, rdn # perform operation
fsub.h f13, f9, f18, rmm # perform operation
fsub.h f13, f9, f18, rne # perform operation
fsub.h f13, f9, f18, rtz # perform operation
fsub.h f13, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fsub.h f25, f28, f22, dyn # perform operation
fsub.h f25, f28, f22, rdn # perform operation
fsub.h f25, f28, f22, rmm # perform operation
fsub.h f25, f28, f22, rne # perform operation
fsub.h f25, f28, f22, rtz # perform operation
fsub.h f25, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fsub.h f29, f6, f17, dyn # perform operation
fsub.h f29, f6, f17, rdn # perform operation
fsub.h f29, f6, f17, rmm # perform operation
fsub.h f29, f6, f17, rne # perform operation
fsub.h f29, f6, f17, rtz # perform operation
fsub.h f29, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f27, f17, f19, dyn # perform operation
fsub.h f27, f17, f19, rdn # perform operation
fsub.h f27, f17, f19, rmm # perform operation
fsub.h f27, f17, f19, rne # perform operation
fsub.h f27, f17, f19, rtz # perform operation
fsub.h f27, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fsub.h f1, f9, f29, dyn # perform operation
fsub.h f1, f9, f29, rdn # perform operation
fsub.h f1, f9, f29, rmm # perform operation
fsub.h f1, f9, f29, rne # perform operation
fsub.h f1, f9, f29, rtz # perform operation
fsub.h f1, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fsub.h f25, f1, f10, dyn # perform operation
fsub.h f25, f1, f10, rdn # perform operation
fsub.h f25, f1, f10, rmm # perform operation
fsub.h f25, f1, f10, rne # perform operation
fsub.h f25, f1, f10, rtz # perform operation
fsub.h f25, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fsub.h f1, f24, f6, dyn # perform operation
fsub.h f1, f24, f6, rdn # perform operation
fsub.h f1, f24, f6, rmm # perform operation
fsub.h f1, f24, f6, rne # perform operation
fsub.h f1, f24, f6, rtz # perform operation
fsub.h f1, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fsub.h f9, f11, f2, dyn # perform operation
fsub.h f9, f11, f2, rdn # perform operation
fsub.h f9, f11, f2, rmm # perform operation
fsub.h f9, f11, f2, rne # perform operation
fsub.h f9, f11, f2, rtz # perform operation
fsub.h f9, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fsub.h f25, f19, f2, dyn # perform operation
fsub.h f25, f19, f2, rdn # perform operation
fsub.h f25, f19, f2, rmm # perform operation
fsub.h f25, f19, f2, rne # perform operation
fsub.h f25, f19, f2, rtz # perform operation
fsub.h f25, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fsub.h f20, f16, f11, dyn # perform operation
fsub.h f20, f16, f11, rdn # perform operation
fsub.h f20, f16, f11, rmm # perform operation
fsub.h f20, f16, f11, rne # perform operation
fsub.h f20, f16, f11, rtz # perform operation
fsub.h f20, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fsub.h f8, f21, f12, dyn # perform operation
fsub.h f8, f21, f12, rdn # perform operation
fsub.h f8, f21, f12, rmm # perform operation
fsub.h f8, f21, f12, rne # perform operation
fsub.h f8, f21, f12, rtz # perform operation
fsub.h f8, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fsub.h f7, f5, f11, dyn # perform operation
fsub.h f7, f5, f11, rdn # perform operation
fsub.h f7, f5, f11, rmm # perform operation
fsub.h f7, f5, f11, rne # perform operation
fsub.h f7, f5, f11, rtz # perform operation
fsub.h f7, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fsub.h f25, f9, f21, dyn # perform operation
fsub.h f25, f9, f21, rdn # perform operation
fsub.h f25, f9, f21, rmm # perform operation
fsub.h f25, f9, f21, rne # perform operation
fsub.h f25, f9, f21, rtz # perform operation
fsub.h f25, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fsub.h f29, f13, f1, dyn # perform operation
fsub.h f29, f13, f1, rdn # perform operation
fsub.h f29, f13, f1, rmm # perform operation
fsub.h f29, f13, f1, rne # perform operation
fsub.h f29, f13, f1, rtz # perform operation
fsub.h f29, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fsub.h f26, f30, f19, dyn # perform operation
fsub.h f26, f30, f19, rdn # perform operation
fsub.h f26, f30, f19, rmm # perform operation
fsub.h f26, f30, f19, rne # perform operation
fsub.h f26, f30, f19, rtz # perform operation
fsub.h f26, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fsub.h f1, f3, f12, dyn # perform operation
fsub.h f1, f3, f12, rdn # perform operation
fsub.h f1, f3, f12, rmm # perform operation
fsub.h f1, f3, f12, rne # perform operation
fsub.h f1, f3, f12, rtz # perform operation
fsub.h f1, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fsub.h f20, f30, f10, dyn # perform operation
fsub.h f20, f30, f10, rdn # perform operation
fsub.h f20, f30, f10, rmm # perform operation
fsub.h f20, f30, f10, rne # perform operation
fsub.h f20, f30, f10, rtz # perform operation
fsub.h f20, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fsub.h f14, f17, f13, dyn # perform operation
fsub.h f14, f17, f13, rdn # perform operation
fsub.h f14, f17, f13, rmm # perform operation
fsub.h f14, f17, f13, rne # perform operation
fsub.h f14, f17, f13, rtz # perform operation
fsub.h f14, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fsub.h f6, f30, f23, dyn # perform operation
fsub.h f6, f30, f23, rdn # perform operation
fsub.h f6, f30, f23, rmm # perform operation
fsub.h f6, f30, f23, rne # perform operation
fsub.h f6, f30, f23, rtz # perform operation
fsub.h f6, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fsub.h f18, f8, f17, dyn # perform operation
fsub.h f18, f8, f17, rdn # perform operation
fsub.h f18, f8, f17, rmm # perform operation
fsub.h f18, f8, f17, rne # perform operation
fsub.h f18, f8, f17, rtz # perform operation
fsub.h f18, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fsub.h f12, f11, f30, dyn # perform operation
fsub.h f12, f11, f30, rdn # perform operation
fsub.h f12, f11, f30, rmm # perform operation
fsub.h f12, f11, f30, rne # perform operation
fsub.h f12, f11, f30, rtz # perform operation
fsub.h f12, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fsub.h f30, f19, f23, dyn # perform operation
fsub.h f30, f19, f23, rdn # perform operation
fsub.h f30, f19, f23, rmm # perform operation
fsub.h f30, f19, f23, rne # perform operation
fsub.h f30, f19, f23, rtz # perform operation
fsub.h f30, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fsub.h f31, f1, f21, dyn # perform operation
fsub.h f31, f1, f21, rdn # perform operation
fsub.h f31, f1, f21, rmm # perform operation
fsub.h f31, f1, f21, rne # perform operation
fsub.h f31, f1, f21, rtz # perform operation
fsub.h f31, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fsub.h f27, f8, f6, dyn # perform operation
fsub.h f27, f8, f6, rdn # perform operation
fsub.h f27, f8, f6, rmm # perform operation
fsub.h f27, f8, f6, rne # perform operation
fsub.h f27, f8, f6, rtz # perform operation
fsub.h f27, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fsub.h f26, f28, f2, dyn # perform operation
fsub.h f26, f28, f2, rdn # perform operation
fsub.h f26, f28, f2, rmm # perform operation
fsub.h f26, f28, f2, rne # perform operation
fsub.h f26, f28, f2, rtz # perform operation
fsub.h f26, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fsub.h f16, f27, f5, dyn # perform operation
fsub.h f16, f27, f5, rdn # perform operation
fsub.h f16, f27, f5, rmm # perform operation
fsub.h f16, f27, f5, rne # perform operation
fsub.h f16, f27, f5, rtz # perform operation
fsub.h f16, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsub.h f27, f1, f12, dyn # perform operation
fsub.h f27, f1, f12, rdn # perform operation
fsub.h f27, f1, f12, rmm # perform operation
fsub.h f27, f1, f12, rne # perform operation
fsub.h f27, f1, f12, rtz # perform operation
fsub.h f27, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fsub.h f16, f21, f2, dyn # perform operation
fsub.h f16, f21, f2, rdn # perform operation
fsub.h f16, f21, f2, rmm # perform operation
fsub.h f16, f21, f2, rne # perform operation
fsub.h f16, f21, f2, rtz # perform operation
fsub.h f16, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fsub.h f26, f11, f3, dyn # perform operation
fsub.h f26, f11, f3, rdn # perform operation
fsub.h f26, f11, f3, rmm # perform operation
fsub.h f26, f11, f3, rne # perform operation
fsub.h f26, f11, f3, rtz # perform operation
fsub.h f26, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fsub.h f15, f14, f11, dyn # perform operation
fsub.h f15, f14, f11, rdn # perform operation
fsub.h f15, f14, f11, rmm # perform operation
fsub.h f15, f14, f11, rne # perform operation
fsub.h f15, f14, f11, rtz # perform operation
fsub.h f15, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f24, f6, f27, dyn # perform operation
fsub.h f24, f6, f27, rdn # perform operation
fsub.h f24, f6, f27, rmm # perform operation
fsub.h f24, f6, f27, rne # perform operation
fsub.h f24, f6, f27, rtz # perform operation
fsub.h f24, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fsub.h f1, f11, f15, dyn # perform operation
fsub.h f1, f11, f15, rdn # perform operation
fsub.h f1, f11, f15, rmm # perform operation
fsub.h f1, f11, f15, rne # perform operation
fsub.h f1, f11, f15, rtz # perform operation
fsub.h f1, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f13, f29, f3, dyn # perform operation
fsub.h f13, f29, f3, rdn # perform operation
fsub.h f13, f29, f3, rmm # perform operation
fsub.h f13, f29, f3, rne # perform operation
fsub.h f13, f29, f3, rtz # perform operation
fsub.h f13, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fsub.h f24, f13, f26, dyn # perform operation
fsub.h f24, f13, f26, rdn # perform operation
fsub.h f24, f13, f26, rmm # perform operation
fsub.h f24, f13, f26, rne # perform operation
fsub.h f24, f13, f26, rtz # perform operation
fsub.h f24, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fsub.h f2, f17, f11, dyn # perform operation
fsub.h f2, f17, f11, rdn # perform operation
fsub.h f2, f17, f11, rmm # perform operation
fsub.h f2, f17, f11, rne # perform operation
fsub.h f2, f17, f11, rtz # perform operation
fsub.h f2, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f14, f18, f8, dyn # perform operation
fsub.h f14, f18, f8, rdn # perform operation
fsub.h f14, f18, f8, rmm # perform operation
fsub.h f14, f18, f8, rne # perform operation
fsub.h f14, f18, f8, rtz # perform operation
fsub.h f14, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fsub.h f25, f15, f31, dyn # perform operation
fsub.h f25, f15, f31, rdn # perform operation
fsub.h f25, f15, f31, rmm # perform operation
fsub.h f25, f15, f31, rne # perform operation
fsub.h f25, f15, f31, rtz # perform operation
fsub.h f25, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f6, f23, f27, dyn # perform operation
fsub.h f6, f23, f27, rdn # perform operation
fsub.h f6, f23, f27, rmm # perform operation
fsub.h f6, f23, f27, rne # perform operation
fsub.h f6, f23, f27, rtz # perform operation
fsub.h f6, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fsub.h f30, f23, f8, dyn # perform operation
fsub.h f30, f23, f8, rdn # perform operation
fsub.h f30, f23, f8, rmm # perform operation
fsub.h f30, f23, f8, rne # perform operation
fsub.h f30, f23, f8, rtz # perform operation
fsub.h f30, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fsub.h f21, f28, f29, dyn # perform operation
fsub.h f21, f28, f29, rdn # perform operation
fsub.h f21, f28, f29, rmm # perform operation
fsub.h f21, f28, f29, rne # perform operation
fsub.h f21, f28, f29, rtz # perform operation
fsub.h f21, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fsub.h f25, f24, f7, dyn # perform operation
fsub.h f25, f24, f7, rdn # perform operation
fsub.h f25, f24, f7, rmm # perform operation
fsub.h f25, f24, f7, rne # perform operation
fsub.h f25, f24, f7, rtz # perform operation
fsub.h f25, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fsub.h f23, f20, f17, dyn # perform operation
fsub.h f23, f20, f17, rdn # perform operation
fsub.h f23, f20, f17, rmm # perform operation
fsub.h f23, f20, f17, rne # perform operation
fsub.h f23, f20, f17, rtz # perform operation
fsub.h f23, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsub.h f8, f5, f18, dyn # perform operation
fsub.h f8, f5, f18, rdn # perform operation
fsub.h f8, f5, f18, rmm # perform operation
fsub.h f8, f5, f18, rne # perform operation
fsub.h f8, f5, f18, rtz # perform operation
fsub.h f8, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fsub.h f20, f19, f26, dyn # perform operation
fsub.h f20, f19, f26, rdn # perform operation
fsub.h f20, f19, f26, rmm # perform operation
fsub.h f20, f19, f26, rne # perform operation
fsub.h f20, f19, f26, rtz # perform operation
fsub.h f20, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fsub.h f25, f19, f21, dyn # perform operation
fsub.h f25, f19, f21, rdn # perform operation
fsub.h f25, f19, f21, rmm # perform operation
fsub.h f25, f19, f21, rne # perform operation
fsub.h f25, f19, f21, rtz # perform operation
fsub.h f25, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f24, f17, f6, dyn # perform operation
fsub.h f24, f17, f6, rdn # perform operation
fsub.h f24, f17, f6, rmm # perform operation
fsub.h f24, f17, f6, rne # perform operation
fsub.h f24, f17, f6, rtz # perform operation
fsub.h f24, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fsub.h f3, f9, f25, dyn # perform operation
fsub.h f3, f9, f25, rdn # perform operation
fsub.h f3, f9, f25, rmm # perform operation
fsub.h f3, f9, f25, rne # perform operation
fsub.h f3, f9, f25, rtz # perform operation
fsub.h f3, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fsub.h f28, f10, f11, dyn # perform operation
fsub.h f28, f10, f11, rdn # perform operation
fsub.h f28, f10, f11, rmm # perform operation
fsub.h f28, f10, f11, rne # perform operation
fsub.h f28, f10, f11, rtz # perform operation
fsub.h f28, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fsub.h f6, f23, f14, dyn # perform operation
fsub.h f6, f23, f14, rdn # perform operation
fsub.h f6, f23, f14, rmm # perform operation
fsub.h f6, f23, f14, rne # perform operation
fsub.h f6, f23, f14, rtz # perform operation
fsub.h f6, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f29, f28, f7, dyn # perform operation
fsub.h f29, f28, f7, rdn # perform operation
fsub.h f29, f28, f7, rmm # perform operation
fsub.h f29, f28, f7, rne # perform operation
fsub.h f29, f28, f7, rtz # perform operation
fsub.h f29, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fsub.h f10, f6, f23, dyn # perform operation
fsub.h f10, f6, f23, rdn # perform operation
fsub.h f10, f6, f23, rmm # perform operation
fsub.h f10, f6, f23, rne # perform operation
fsub.h f10, f6, f23, rtz # perform operation
fsub.h f10, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fsub.h f24, f16, f11, dyn # perform operation
fsub.h f24, f16, f11, rdn # perform operation
fsub.h f24, f16, f11, rmm # perform operation
fsub.h f24, f16, f11, rne # perform operation
fsub.h f24, f16, f11, rtz # perform operation
fsub.h f24, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f1, f18, f21, dyn # perform operation
fsub.h f1, f18, f21, rdn # perform operation
fsub.h f1, f18, f21, rmm # perform operation
fsub.h f1, f18, f21, rne # perform operation
fsub.h f1, f18, f21, rtz # perform operation
fsub.h f1, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f20, f8, f23, dyn # perform operation
fsub.h f20, f8, f23, rdn # perform operation
fsub.h f20, f8, f23, rmm # perform operation
fsub.h f20, f8, f23, rne # perform operation
fsub.h f20, f8, f23, rtz # perform operation
fsub.h f20, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fsub.h f26, f21, f25, dyn # perform operation
fsub.h f26, f21, f25, rdn # perform operation
fsub.h f26, f21, f25, rmm # perform operation
fsub.h f26, f21, f25, rne # perform operation
fsub.h f26, f21, f25, rtz # perform operation
fsub.h f26, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fsub.h f12, f18, f27, dyn # perform operation
fsub.h f12, f18, f27, rdn # perform operation
fsub.h f12, f18, f27, rmm # perform operation
fsub.h f12, f18, f27, rne # perform operation
fsub.h f12, f18, f27, rtz # perform operation
fsub.h f12, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fsub.h f8, f14, f15, dyn # perform operation
fsub.h f8, f14, f15, rdn # perform operation
fsub.h f8, f14, f15, rmm # perform operation
fsub.h f8, f14, f15, rne # perform operation
fsub.h f8, f14, f15, rtz # perform operation
fsub.h f8, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fsub.h f19, f2, f13, dyn # perform operation
fsub.h f19, f2, f13, rdn # perform operation
fsub.h f19, f2, f13, rmm # perform operation
fsub.h f19, f2, f13, rne # perform operation
fsub.h f19, f2, f13, rtz # perform operation
fsub.h f19, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fsub.h f25, f23, f16, dyn # perform operation
fsub.h f25, f23, f16, rdn # perform operation
fsub.h f25, f23, f16, rmm # perform operation
fsub.h f25, f23, f16, rne # perform operation
fsub.h f25, f23, f16, rtz # perform operation
fsub.h f25, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fsub.h f8, f18, f3, dyn # perform operation
fsub.h f8, f18, f3, rdn # perform operation
fsub.h f8, f18, f3, rmm # perform operation
fsub.h f8, f18, f3, rne # perform operation
fsub.h f8, f18, f3, rtz # perform operation
fsub.h f8, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fsub.h f5, f20, f1, dyn # perform operation
fsub.h f5, f20, f1, rdn # perform operation
fsub.h f5, f20, f1, rmm # perform operation
fsub.h f5, f20, f1, rne # perform operation
fsub.h f5, f20, f1, rtz # perform operation
fsub.h f5, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fsub.h f22, f12, f2, dyn # perform operation
fsub.h f22, f12, f2, rdn # perform operation
fsub.h f22, f12, f2, rmm # perform operation
fsub.h f22, f12, f2, rne # perform operation
fsub.h f22, f12, f2, rtz # perform operation
fsub.h f22, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fsub.h f17, f22, f12, dyn # perform operation
fsub.h f17, f22, f12, rdn # perform operation
fsub.h f17, f22, f12, rmm # perform operation
fsub.h f17, f22, f12, rne # perform operation
fsub.h f17, f22, f12, rtz # perform operation
fsub.h f17, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fsub.h f14, f22, f19, dyn # perform operation
fsub.h f14, f22, f19, rdn # perform operation
fsub.h f14, f22, f19, rmm # perform operation
fsub.h f14, f22, f19, rne # perform operation
fsub.h f14, f22, f19, rtz # perform operation
fsub.h f14, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fsub.h f24, f2, f3, dyn # perform operation
fsub.h f24, f2, f3, rdn # perform operation
fsub.h f24, f2, f3, rmm # perform operation
fsub.h f24, f2, f3, rne # perform operation
fsub.h f24, f2, f3, rtz # perform operation
fsub.h f24, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fsub.h f27, f19, f31, dyn # perform operation
fsub.h f27, f19, f31, rdn # perform operation
fsub.h f27, f19, f31, rmm # perform operation
fsub.h f27, f19, f31, rne # perform operation
fsub.h f27, f19, f31, rtz # perform operation
fsub.h f27, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fsub.h f2, f25, f14, dyn # perform operation
fsub.h f2, f25, f14, rdn # perform operation
fsub.h f2, f25, f14, rmm # perform operation
fsub.h f2, f25, f14, rne # perform operation
fsub.h f2, f25, f14, rtz # perform operation
fsub.h f2, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fsub.h f10, f21, f19, dyn # perform operation
fsub.h f10, f21, f19, rdn # perform operation
fsub.h f10, f21, f19, rmm # perform operation
fsub.h f10, f21, f19, rne # perform operation
fsub.h f10, f21, f19, rtz # perform operation
fsub.h f10, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f20, f1, f28, dyn # perform operation
fsub.h f20, f1, f28, rdn # perform operation
fsub.h f20, f1, f28, rmm # perform operation
fsub.h f20, f1, f28, rne # perform operation
fsub.h f20, f1, f28, rtz # perform operation
fsub.h f20, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fsub.h f7, f3, f27, dyn # perform operation
fsub.h f7, f3, f27, rdn # perform operation
fsub.h f7, f3, f27, rmm # perform operation
fsub.h f7, f3, f27, rne # perform operation
fsub.h f7, f3, f27, rtz # perform operation
fsub.h f7, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fsub.h f27, f18, f9, dyn # perform operation
fsub.h f27, f18, f9, rdn # perform operation
fsub.h f27, f18, f9, rmm # perform operation
fsub.h f27, f18, f9, rne # perform operation
fsub.h f27, f18, f9, rtz # perform operation
fsub.h f27, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fsub.h f26, f31, f24, dyn # perform operation
fsub.h f26, f31, f24, rdn # perform operation
fsub.h f26, f31, f24, rmm # perform operation
fsub.h f26, f31, f24, rne # perform operation
fsub.h f26, f31, f24, rtz # perform operation
fsub.h f26, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fsub.h f31, f29, f23, dyn # perform operation
fsub.h f31, f29, f23, rdn # perform operation
fsub.h f31, f29, f23, rmm # perform operation
fsub.h f31, f29, f23, rne # perform operation
fsub.h f31, f29, f23, rtz # perform operation
fsub.h f31, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fsub.h f5, f16, f26, dyn # perform operation
fsub.h f5, f16, f26, rdn # perform operation
fsub.h f5, f16, f26, rmm # perform operation
fsub.h f5, f16, f26, rne # perform operation
fsub.h f5, f16, f26, rtz # perform operation
fsub.h f5, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f2, f21, f27, dyn # perform operation
fsub.h f2, f21, f27, rdn # perform operation
fsub.h f2, f21, f27, rmm # perform operation
fsub.h f2, f21, f27, rne # perform operation
fsub.h f2, f21, f27, rtz # perform operation
fsub.h f2, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fsub.h f30, f26, f17, dyn # perform operation
fsub.h f30, f26, f17, rdn # perform operation
fsub.h f30, f26, f17, rmm # perform operation
fsub.h f30, f26, f17, rne # perform operation
fsub.h f30, f26, f17, rtz # perform operation
fsub.h f30, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsub.h f25, f26, f8, dyn # perform operation
fsub.h f25, f26, f8, rdn # perform operation
fsub.h f25, f26, f8, rmm # perform operation
fsub.h f25, f26, f8, rne # perform operation
fsub.h f25, f26, f8, rtz # perform operation
fsub.h f25, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fsub.h f15, f29, f27, dyn # perform operation
fsub.h f15, f29, f27, rdn # perform operation
fsub.h f15, f29, f27, rmm # perform operation
fsub.h f15, f29, f27, rne # perform operation
fsub.h f15, f29, f27, rtz # perform operation
fsub.h f15, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fsub.h f29, f19, f25, dyn # perform operation
fsub.h f29, f19, f25, rdn # perform operation
fsub.h f29, f19, f25, rmm # perform operation
fsub.h f29, f19, f25, rne # perform operation
fsub.h f29, f19, f25, rtz # perform operation
fsub.h f29, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fsub.h f18, f20, f17, dyn # perform operation
fsub.h f18, f20, f17, rdn # perform operation
fsub.h f18, f20, f17, rmm # perform operation
fsub.h f18, f20, f17, rne # perform operation
fsub.h f18, f20, f17, rtz # perform operation
fsub.h f18, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f19, f9, f29, dyn # perform operation
fsub.h f19, f9, f29, rdn # perform operation
fsub.h f19, f9, f29, rmm # perform operation
fsub.h f19, f9, f29, rne # perform operation
fsub.h f19, f9, f29, rtz # perform operation
fsub.h f19, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fsub.h f5, f10, f1, dyn # perform operation
fsub.h f5, f10, f1, rdn # perform operation
fsub.h f5, f10, f1, rmm # perform operation
fsub.h f5, f10, f1, rne # perform operation
fsub.h f5, f10, f1, rtz # perform operation
fsub.h f5, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fsub.h f13, f23, f21, dyn # perform operation
fsub.h f13, f23, f21, rdn # perform operation
fsub.h f13, f23, f21, rmm # perform operation
fsub.h f13, f23, f21, rne # perform operation
fsub.h f13, f23, f21, rtz # perform operation
fsub.h f13, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fsub.h f22, f23, f30, dyn # perform operation
fsub.h f22, f23, f30, rdn # perform operation
fsub.h f22, f23, f30, rmm # perform operation
fsub.h f22, f23, f30, rne # perform operation
fsub.h f22, f23, f30, rtz # perform operation
fsub.h f22, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f25, f11, f26, dyn # perform operation
fsub.h f25, f11, f26, rdn # perform operation
fsub.h f25, f11, f26, rmm # perform operation
fsub.h f25, f11, f26, rne # perform operation
fsub.h f25, f11, f26, rtz # perform operation
fsub.h f25, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fsub.h f26, f18, f28, dyn # perform operation
fsub.h f26, f18, f28, rdn # perform operation
fsub.h f26, f18, f28, rmm # perform operation
fsub.h f26, f18, f28, rne # perform operation
fsub.h f26, f18, f28, rtz # perform operation
fsub.h f26, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fsub.h f18, f12, f23, dyn # perform operation
fsub.h f18, f12, f23, rdn # perform operation
fsub.h f18, f12, f23, rmm # perform operation
fsub.h f18, f12, f23, rne # perform operation
fsub.h f18, f12, f23, rtz # perform operation
fsub.h f18, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fsub.h f11, f29, f1, dyn # perform operation
fsub.h f11, f29, f1, rdn # perform operation
fsub.h f11, f29, f1, rmm # perform operation
fsub.h f11, f29, f1, rne # perform operation
fsub.h f11, f29, f1, rtz # perform operation
fsub.h f11, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fsub.h f19, f17, f18, dyn # perform operation
fsub.h f19, f17, f18, rdn # perform operation
fsub.h f19, f17, f18, rmm # perform operation
fsub.h f19, f17, f18, rne # perform operation
fsub.h f19, f17, f18, rtz # perform operation
fsub.h f19, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f25, f26, f1, dyn # perform operation
fsub.h f25, f26, f1, rdn # perform operation
fsub.h f25, f26, f1, rmm # perform operation
fsub.h f25, f26, f1, rne # perform operation
fsub.h f25, f26, f1, rtz # perform operation
fsub.h f25, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fsub.h f6, f18, f31, dyn # perform operation
fsub.h f6, f18, f31, rdn # perform operation
fsub.h f6, f18, f31, rmm # perform operation
fsub.h f6, f18, f31, rne # perform operation
fsub.h f6, f18, f31, rtz # perform operation
fsub.h f6, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fsub.h f6, f25, f11, dyn # perform operation
fsub.h f6, f25, f11, rdn # perform operation
fsub.h f6, f25, f11, rmm # perform operation
fsub.h f6, f25, f11, rne # perform operation
fsub.h f6, f25, f11, rtz # perform operation
fsub.h f6, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fsub.h f21, f14, f28, dyn # perform operation
fsub.h f21, f14, f28, rdn # perform operation
fsub.h f21, f14, f28, rmm # perform operation
fsub.h f21, f14, f28, rne # perform operation
fsub.h f21, f14, f28, rtz # perform operation
fsub.h f21, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fsub.h f17, f1, f15, dyn # perform operation
fsub.h f17, f1, f15, rdn # perform operation
fsub.h f17, f1, f15, rmm # perform operation
fsub.h f17, f1, f15, rne # perform operation
fsub.h f17, f1, f15, rtz # perform operation
fsub.h f17, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fsub.h f1, f13, f17, dyn # perform operation
fsub.h f1, f13, f17, rdn # perform operation
fsub.h f1, f13, f17, rmm # perform operation
fsub.h f1, f13, f17, rne # perform operation
fsub.h f1, f13, f17, rtz # perform operation
fsub.h f1, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f3, f27, f25, dyn # perform operation
fsub.h f3, f27, f25, rdn # perform operation
fsub.h f3, f27, f25, rmm # perform operation
fsub.h f3, f27, f25, rne # perform operation
fsub.h f3, f27, f25, rtz # perform operation
fsub.h f3, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fsub.h f19, f23, f1, dyn # perform operation
fsub.h f19, f23, f1, rdn # perform operation
fsub.h f19, f23, f1, rmm # perform operation
fsub.h f19, f23, f1, rne # perform operation
fsub.h f19, f23, f1, rtz # perform operation
fsub.h f19, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f26, f2, f8, dyn # perform operation
fsub.h f26, f2, f8, rdn # perform operation
fsub.h f26, f2, f8, rmm # perform operation
fsub.h f26, f2, f8, rne # perform operation
fsub.h f26, f2, f8, rtz # perform operation
fsub.h f26, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsub.h f8, f24, f27, dyn # perform operation
fsub.h f8, f24, f27, rdn # perform operation
fsub.h f8, f24, f27, rmm # perform operation
fsub.h f8, f24, f27, rne # perform operation
fsub.h f8, f24, f27, rtz # perform operation
fsub.h f8, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fsub.h f12, f23, f15, dyn # perform operation
fsub.h f12, f23, f15, rdn # perform operation
fsub.h f12, f23, f15, rmm # perform operation
fsub.h f12, f23, f15, rne # perform operation
fsub.h f12, f23, f15, rtz # perform operation
fsub.h f12, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fsub.h f22, f8, f16, dyn # perform operation
fsub.h f22, f8, f16, rdn # perform operation
fsub.h f22, f8, f16, rmm # perform operation
fsub.h f22, f8, f16, rne # perform operation
fsub.h f22, f8, f16, rtz # perform operation
fsub.h f22, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsub.h f12, f20, f6, dyn # perform operation
fsub.h f12, f20, f6, rdn # perform operation
fsub.h f12, f20, f6, rmm # perform operation
fsub.h f12, f20, f6, rne # perform operation
fsub.h f12, f20, f6, rtz # perform operation
fsub.h f12, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fsub.h f1, f14, f11, dyn # perform operation
fsub.h f1, f14, f11, rdn # perform operation
fsub.h f1, f14, f11, rmm # perform operation
fsub.h f1, f14, f11, rne # perform operation
fsub.h f1, f14, f11, rtz # perform operation
fsub.h f1, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fsub.h f26, f24, f30, dyn # perform operation
fsub.h f26, f24, f30, rdn # perform operation
fsub.h f26, f24, f30, rmm # perform operation
fsub.h f26, f24, f30, rne # perform operation
fsub.h f26, f24, f30, rtz # perform operation
fsub.h f26, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fsub.h f8, f21, f16, dyn # perform operation
fsub.h f8, f21, f16, rdn # perform operation
fsub.h f8, f21, f16, rmm # perform operation
fsub.h f8, f21, f16, rne # perform operation
fsub.h f8, f21, f16, rtz # perform operation
fsub.h f8, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fsub.h f26, f18, f11, dyn # perform operation
fsub.h f26, f18, f11, rdn # perform operation
fsub.h f26, f18, f11, rmm # perform operation
fsub.h f26, f18, f11, rne # perform operation
fsub.h f26, f18, f11, rtz # perform operation
fsub.h f26, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fsub.h f5, f14, f18, dyn # perform operation
fsub.h f5, f14, f18, rdn # perform operation
fsub.h f5, f14, f18, rmm # perform operation
fsub.h f5, f14, f18, rne # perform operation
fsub.h f5, f14, f18, rtz # perform operation
fsub.h f5, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fsub.h f11, f14, f5, dyn # perform operation
fsub.h f11, f14, f5, rdn # perform operation
fsub.h f11, f14, f5, rmm # perform operation
fsub.h f11, f14, f5, rne # perform operation
fsub.h f11, f14, f5, rtz # perform operation
fsub.h f11, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fsub.h f26, f14, f11, dyn # perform operation
fsub.h f26, f14, f11, rdn # perform operation
fsub.h f26, f14, f11, rmm # perform operation
fsub.h f26, f14, f11, rne # perform operation
fsub.h f26, f14, f11, rtz # perform operation
fsub.h f26, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fsub.h f3, f28, f26, dyn # perform operation
fsub.h f3, f28, f26, rdn # perform operation
fsub.h f3, f28, f26, rmm # perform operation
fsub.h f3, f28, f26, rne # perform operation
fsub.h f3, f28, f26, rtz # perform operation
fsub.h f3, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fsub.h f23, f14, f6, dyn # perform operation
fsub.h f23, f14, f6, rdn # perform operation
fsub.h f23, f14, f6, rmm # perform operation
fsub.h f23, f14, f6, rne # perform operation
fsub.h f23, f14, f6, rtz # perform operation
fsub.h f23, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fsub.h f15, f5, f12, dyn # perform operation
fsub.h f15, f5, f12, rdn # perform operation
fsub.h f15, f5, f12, rmm # perform operation
fsub.h f15, f5, f12, rne # perform operation
fsub.h f15, f5, f12, rtz # perform operation
fsub.h f15, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fsub.h f7, f9, f20, dyn # perform operation
fsub.h f7, f9, f20, rdn # perform operation
fsub.h f7, f9, f20, rmm # perform operation
fsub.h f7, f9, f20, rne # perform operation
fsub.h f7, f9, f20, rtz # perform operation
fsub.h f7, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fsub.h f8, f15, f10, dyn # perform operation
fsub.h f8, f15, f10, rdn # perform operation
fsub.h f8, f15, f10, rmm # perform operation
fsub.h f8, f15, f10, rne # perform operation
fsub.h f8, f15, f10, rtz # perform operation
fsub.h f8, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fsub.h f17, f2, f29, dyn # perform operation
fsub.h f17, f2, f29, rdn # perform operation
fsub.h f17, f2, f29, rmm # perform operation
fsub.h f17, f2, f29, rne # perform operation
fsub.h f17, f2, f29, rtz # perform operation
fsub.h f17, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fsub.h f25, f17, f11, dyn # perform operation
fsub.h f25, f17, f11, rdn # perform operation
fsub.h f25, f17, f11, rmm # perform operation
fsub.h f25, f17, f11, rne # perform operation
fsub.h f25, f17, f11, rtz # perform operation
fsub.h f25, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fsub.h f7, f14, f17, dyn # perform operation
fsub.h f7, f14, f17, rdn # perform operation
fsub.h f7, f14, f17, rmm # perform operation
fsub.h f7, f14, f17, rne # perform operation
fsub.h f7, f14, f17, rtz # perform operation
fsub.h f7, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f6, f20, f24, dyn # perform operation
fsub.h f6, f20, f24, rdn # perform operation
fsub.h f6, f20, f24, rmm # perform operation
fsub.h f6, f20, f24, rne # perform operation
fsub.h f6, f20, f24, rtz # perform operation
fsub.h f6, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fsub.h f7, f30, f24, dyn # perform operation
fsub.h f7, f30, f24, rdn # perform operation
fsub.h f7, f30, f24, rmm # perform operation
fsub.h f7, f30, f24, rne # perform operation
fsub.h f7, f30, f24, rtz # perform operation
fsub.h f7, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsub.h f18, f7, f1, dyn # perform operation
fsub.h f18, f7, f1, rdn # perform operation
fsub.h f18, f7, f1, rmm # perform operation
fsub.h f18, f7, f1, rne # perform operation
fsub.h f18, f7, f1, rtz # perform operation
fsub.h f18, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fsub.h f2, f30, f16, dyn # perform operation
fsub.h f2, f30, f16, rdn # perform operation
fsub.h f2, f30, f16, rmm # perform operation
fsub.h f2, f30, f16, rne # perform operation
fsub.h f2, f30, f16, rtz # perform operation
fsub.h f2, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fsub.h f25, f1, f30, dyn # perform operation
fsub.h f25, f1, f30, rdn # perform operation
fsub.h f25, f1, f30, rmm # perform operation
fsub.h f25, f1, f30, rne # perform operation
fsub.h f25, f1, f30, rtz # perform operation
fsub.h f25, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fsub.h f26, f13, f29, dyn # perform operation
fsub.h f26, f13, f29, rdn # perform operation
fsub.h f26, f13, f29, rmm # perform operation
fsub.h f26, f13, f29, rne # perform operation
fsub.h f26, f13, f29, rtz # perform operation
fsub.h f26, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fsub.h f20, f7, f18, dyn # perform operation
fsub.h f20, f7, f18, rdn # perform operation
fsub.h f20, f7, f18, rmm # perform operation
fsub.h f20, f7, f18, rne # perform operation
fsub.h f20, f7, f18, rtz # perform operation
fsub.h f20, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fsub.h f27, f3, f16, dyn # perform operation
fsub.h f27, f3, f16, rdn # perform operation
fsub.h f27, f3, f16, rmm # perform operation
fsub.h f27, f3, f16, rne # perform operation
fsub.h f27, f3, f16, rtz # perform operation
fsub.h f27, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fsub.h f29, f17, f20, dyn # perform operation
fsub.h f29, f17, f20, rdn # perform operation
fsub.h f29, f17, f20, rmm # perform operation
fsub.h f29, f17, f20, rne # perform operation
fsub.h f29, f17, f20, rtz # perform operation
fsub.h f29, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f11, f13, f22, dyn # perform operation
fsub.h f11, f13, f22, rdn # perform operation
fsub.h f11, f13, f22, rmm # perform operation
fsub.h f11, f13, f22, rne # perform operation
fsub.h f11, f13, f22, rtz # perform operation
fsub.h f11, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fsub.h f6, f16, f12, dyn # perform operation
fsub.h f6, f16, f12, rdn # perform operation
fsub.h f6, f16, f12, rmm # perform operation
fsub.h f6, f16, f12, rne # perform operation
fsub.h f6, f16, f12, rtz # perform operation
fsub.h f6, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fsub.h f11, f14, f12, dyn # perform operation
fsub.h f11, f14, f12, rdn # perform operation
fsub.h f11, f14, f12, rmm # perform operation
fsub.h f11, f14, f12, rne # perform operation
fsub.h f11, f14, f12, rtz # perform operation
fsub.h f11, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fsub.h f20, f10, f1, dyn # perform operation
fsub.h f20, f10, f1, rdn # perform operation
fsub.h f20, f10, f1, rmm # perform operation
fsub.h f20, f10, f1, rne # perform operation
fsub.h f20, f10, f1, rtz # perform operation
fsub.h f20, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fsub.h f8, f6, f1, dyn # perform operation
fsub.h f8, f6, f1, rdn # perform operation
fsub.h f8, f6, f1, rmm # perform operation
fsub.h f8, f6, f1, rne # perform operation
fsub.h f8, f6, f1, rtz # perform operation
fsub.h f8, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fsub.h f30, f29, f3, dyn # perform operation
fsub.h f30, f29, f3, rdn # perform operation
fsub.h f30, f29, f3, rmm # perform operation
fsub.h f30, f29, f3, rne # perform operation
fsub.h f30, f29, f3, rtz # perform operation
fsub.h f30, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsub.h f10, f12, f3, dyn # perform operation
fsub.h f10, f12, f3, rdn # perform operation
fsub.h f10, f12, f3, rmm # perform operation
fsub.h f10, f12, f3, rne # perform operation
fsub.h f10, f12, f3, rtz # perform operation
fsub.h f10, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f15, f16, f7, dyn # perform operation
fsub.h f15, f16, f7, rdn # perform operation
fsub.h f15, f16, f7, rmm # perform operation
fsub.h f15, f16, f7, rne # perform operation
fsub.h f15, f16, f7, rtz # perform operation
fsub.h f15, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
fsub.h f13, f25, f11, dyn # perform operation
fsub.h f13, f25, f11, rdn # perform operation
fsub.h f13, f25, f11, rmm # perform operation
fsub.h f13, f25, f11, rne # perform operation
fsub.h f13, f25, f11, rtz # perform operation
fsub.h f13, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsub.h f12, f21, f13, dyn # perform operation
fsub.h f12, f21, f13, rdn # perform operation
fsub.h f12, f21, f13, rmm # perform operation
fsub.h f12, f21, f13, rne # perform operation
fsub.h f12, f21, f13, rtz # perform operation
fsub.h f12, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f6, f19, f21, dyn # perform operation
fsub.h f6, f19, f21, rdn # perform operation
fsub.h f6, f19, f21, rmm # perform operation
fsub.h f6, f19, f21, rne # perform operation
fsub.h f6, f19, f21, rtz # perform operation
fsub.h f6, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fsub.h f5, f10, f18, dyn # perform operation
fsub.h f5, f10, f18, rdn # perform operation
fsub.h f5, f10, f18, rmm # perform operation
fsub.h f5, f10, f18, rne # perform operation
fsub.h f5, f10, f18, rtz # perform operation
fsub.h f5, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f17, f9, f10, dyn # perform operation
fsub.h f17, f9, f10, rdn # perform operation
fsub.h f17, f9, f10, rmm # perform operation
fsub.h f17, f9, f10, rne # perform operation
fsub.h f17, f9, f10, rtz # perform operation
fsub.h f17, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f13, f2, f19, dyn # perform operation
fsub.h f13, f2, f19, rdn # perform operation
fsub.h f13, f2, f19, rmm # perform operation
fsub.h f13, f2, f19, rne # perform operation
fsub.h f13, f2, f19, rtz # perform operation
fsub.h f13, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fsub.h f14, f1, f11, dyn # perform operation
fsub.h f14, f1, f11, rdn # perform operation
fsub.h f14, f1, f11, rmm # perform operation
fsub.h f14, f1, f11, rne # perform operation
fsub.h f14, f1, f11, rtz # perform operation
fsub.h f14, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f24, f12, f5, dyn # perform operation
fsub.h f24, f12, f5, rdn # perform operation
fsub.h f24, f12, f5, rmm # perform operation
fsub.h f24, f12, f5, rne # perform operation
fsub.h f24, f12, f5, rtz # perform operation
fsub.h f24, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f23, f6, f31, dyn # perform operation
fsub.h f23, f6, f31, rdn # perform operation
fsub.h f23, f6, f31, rmm # perform operation
fsub.h f23, f6, f31, rne # perform operation
fsub.h f23, f6, f31, rtz # perform operation
fsub.h f23, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fsub.h f18, f7, f11, dyn # perform operation
fsub.h f18, f7, f11, rdn # perform operation
fsub.h f18, f7, f11, rmm # perform operation
fsub.h f18, f7, f11, rne # perform operation
fsub.h f18, f7, f11, rtz # perform operation
fsub.h f18, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fsub.h f7, f12, f1, dyn # perform operation
fsub.h f7, f12, f1, rdn # perform operation
fsub.h f7, f12, f1, rmm # perform operation
fsub.h f7, f12, f1, rne # perform operation
fsub.h f7, f12, f1, rtz # perform operation
fsub.h f7, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fsub.h f23, f6, f17, dyn # perform operation
fsub.h f23, f6, f17, rdn # perform operation
fsub.h f23, f6, f17, rmm # perform operation
fsub.h f23, f6, f17, rne # perform operation
fsub.h f23, f6, f17, rtz # perform operation
fsub.h f23, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fsub.h f26, f18, f12, dyn # perform operation
fsub.h f26, f18, f12, rdn # perform operation
fsub.h f26, f18, f12, rmm # perform operation
fsub.h f26, f18, f12, rne # perform operation
fsub.h f26, f18, f12, rtz # perform operation
fsub.h f26, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fsub.h f22, f17, f11, dyn # perform operation
fsub.h f22, f17, f11, rdn # perform operation
fsub.h f22, f17, f11, rmm # perform operation
fsub.h f22, f17, f11, rne # perform operation
fsub.h f22, f17, f11, rtz # perform operation
fsub.h f22, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fsub.h f9, f28, f20, dyn # perform operation
fsub.h f9, f28, f20, rdn # perform operation
fsub.h f9, f28, f20, rmm # perform operation
fsub.h f9, f28, f20, rne # perform operation
fsub.h f9, f28, f20, rtz # perform operation
fsub.h f9, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fsub.h f13, f20, f25, dyn # perform operation
fsub.h f13, f20, f25, rdn # perform operation
fsub.h f13, f20, f25, rmm # perform operation
fsub.h f13, f20, f25, rne # perform operation
fsub.h f13, f20, f25, rtz # perform operation
fsub.h f13, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fsub.h f24, f15, f20, dyn # perform operation
fsub.h f24, f15, f20, rdn # perform operation
fsub.h f24, f15, f20, rmm # perform operation
fsub.h f24, f15, f20, rne # perform operation
fsub.h f24, f15, f20, rtz # perform operation
fsub.h f24, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fsub.h f2, f23, f12, dyn # perform operation
fsub.h f2, f23, f12, rdn # perform operation
fsub.h f2, f23, f12, rmm # perform operation
fsub.h f2, f23, f12, rne # perform operation
fsub.h f2, f23, f12, rtz # perform operation
fsub.h f2, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fsub.h f6, f3, f22, dyn # perform operation
fsub.h f6, f3, f22, rdn # perform operation
fsub.h f6, f3, f22, rmm # perform operation
fsub.h f6, f3, f22, rne # perform operation
fsub.h f6, f3, f22, rtz # perform operation
fsub.h f6, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fsub.h f11, f6, f30, dyn # perform operation
fsub.h f11, f6, f30, rdn # perform operation
fsub.h f11, f6, f30, rmm # perform operation
fsub.h f11, f6, f30, rne # perform operation
fsub.h f11, f6, f30, rtz # perform operation
fsub.h f11, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fsub.h f2, f27, f30, dyn # perform operation
fsub.h f2, f27, f30, rdn # perform operation
fsub.h f2, f27, f30, rmm # perform operation
fsub.h f2, f27, f30, rne # perform operation
fsub.h f2, f27, f30, rtz # perform operation
fsub.h f2, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fsub.h f29, f9, f12, dyn # perform operation
fsub.h f29, f9, f12, rdn # perform operation
fsub.h f29, f9, f12, rmm # perform operation
fsub.h f29, f9, f12, rne # perform operation
fsub.h f29, f9, f12, rtz # perform operation
fsub.h f29, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fsub.h f6, f23, f10, dyn # perform operation
fsub.h f6, f23, f10, rdn # perform operation
fsub.h f6, f23, f10, rmm # perform operation
fsub.h f6, f23, f10, rne # perform operation
fsub.h f6, f23, f10, rtz # perform operation
fsub.h f6, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fsub.h f17, f3, f11, dyn # perform operation
fsub.h f17, f3, f11, rdn # perform operation
fsub.h f17, f3, f11, rmm # perform operation
fsub.h f17, f3, f11, rne # perform operation
fsub.h f17, f3, f11, rtz # perform operation
fsub.h f17, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fsub.h f16, f17, f18, dyn # perform operation
fsub.h f16, f17, f18, rdn # perform operation
fsub.h f16, f17, f18, rmm # perform operation
fsub.h f16, f17, f18, rne # perform operation
fsub.h f16, f17, f18, rtz # perform operation
fsub.h f16, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fsub.h f6, f7, f5, dyn # perform operation
fsub.h f6, f7, f5, rdn # perform operation
fsub.h f6, f7, f5, rmm # perform operation
fsub.h f6, f7, f5, rne # perform operation
fsub.h f6, f7, f5, rtz # perform operation
fsub.h f6, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fsub.h f5, f22, f27, dyn # perform operation
fsub.h f5, f22, f27, rdn # perform operation
fsub.h f5, f22, f27, rmm # perform operation
fsub.h f5, f22, f27, rne # perform operation
fsub.h f5, f22, f27, rtz # perform operation
fsub.h f5, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f9, f14, f31, dyn # perform operation
fsub.h f9, f14, f31, rdn # perform operation
fsub.h f9, f14, f31, rmm # perform operation
fsub.h f9, f14, f31, rne # perform operation
fsub.h f9, f14, f31, rtz # perform operation
fsub.h f9, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fsub.h f3, f29, f24, dyn # perform operation
fsub.h f3, f29, f24, rdn # perform operation
fsub.h f3, f29, f24, rmm # perform operation
fsub.h f3, f29, f24, rne # perform operation
fsub.h f3, f29, f24, rtz # perform operation
fsub.h f3, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f20, f27, f10, dyn # perform operation
fsub.h f20, f27, f10, rdn # perform operation
fsub.h f20, f27, f10, rmm # perform operation
fsub.h f20, f27, f10, rne # perform operation
fsub.h f20, f27, f10, rtz # perform operation
fsub.h f20, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fsub.h f7, f11, f25, dyn # perform operation
fsub.h f7, f11, f25, rdn # perform operation
fsub.h f7, f11, f25, rmm # perform operation
fsub.h f7, f11, f25, rne # perform operation
fsub.h f7, f11, f25, rtz # perform operation
fsub.h f7, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f10, f23, f25, dyn # perform operation
fsub.h f10, f23, f25, rdn # perform operation
fsub.h f10, f23, f25, rmm # perform operation
fsub.h f10, f23, f25, rne # perform operation
fsub.h f10, f23, f25, rtz # perform operation
fsub.h f10, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fsub.h f7, f5, f13, dyn # perform operation
fsub.h f7, f5, f13, rdn # perform operation
fsub.h f7, f5, f13, rmm # perform operation
fsub.h f7, f5, f13, rne # perform operation
fsub.h f7, f5, f13, rtz # perform operation
fsub.h f7, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fsub.h f19, f20, f18, dyn # perform operation
fsub.h f19, f20, f18, rdn # perform operation
fsub.h f19, f20, f18, rmm # perform operation
fsub.h f19, f20, f18, rne # perform operation
fsub.h f19, f20, f18, rtz # perform operation
fsub.h f19, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fsub.h f29, f20, f7, dyn # perform operation
fsub.h f29, f20, f7, rdn # perform operation
fsub.h f29, f20, f7, rmm # perform operation
fsub.h f29, f20, f7, rne # perform operation
fsub.h f29, f20, f7, rtz # perform operation
fsub.h f29, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fsub.h f9, f24, f15, dyn # perform operation
fsub.h f9, f24, f15, rdn # perform operation
fsub.h f9, f24, f15, rmm # perform operation
fsub.h f9, f24, f15, rne # perform operation
fsub.h f9, f24, f15, rtz # perform operation
fsub.h f9, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fsub.h f6, f21, f13, dyn # perform operation
fsub.h f6, f21, f13, rdn # perform operation
fsub.h f6, f21, f13, rmm # perform operation
fsub.h f6, f21, f13, rne # perform operation
fsub.h f6, f21, f13, rtz # perform operation
fsub.h f6, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fsub.h f7, f1, f25, dyn # perform operation
fsub.h f7, f1, f25, rdn # perform operation
fsub.h f7, f1, f25, rmm # perform operation
fsub.h f7, f1, f25, rne # perform operation
fsub.h f7, f1, f25, rtz # perform operation
fsub.h f7, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fsub.h f20, f9, f8, dyn # perform operation
fsub.h f20, f9, f8, rdn # perform operation
fsub.h f20, f9, f8, rmm # perform operation
fsub.h f20, f9, f8, rne # perform operation
fsub.h f20, f9, f8, rtz # perform operation
fsub.h f20, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fsub.h f28, f30, f18, dyn # perform operation
fsub.h f28, f30, f18, rdn # perform operation
fsub.h f28, f30, f18, rmm # perform operation
fsub.h f28, f30, f18, rne # perform operation
fsub.h f28, f30, f18, rtz # perform operation
fsub.h f28, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fsub.h f10, f25, f11, dyn # perform operation
fsub.h f10, f25, f11, rdn # perform operation
fsub.h f10, f25, f11, rmm # perform operation
fsub.h f10, f25, f11, rne # perform operation
fsub.h f10, f25, f11, rtz # perform operation
fsub.h f10, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fsub.h f22, f27, f7, dyn # perform operation
fsub.h f22, f27, f7, rdn # perform operation
fsub.h f22, f27, f7, rmm # perform operation
fsub.h f22, f27, f7, rne # perform operation
fsub.h f22, f27, f7, rtz # perform operation
fsub.h f22, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fsub.h f8, f31, f1, dyn # perform operation
fsub.h f8, f31, f1, rdn # perform operation
fsub.h f8, f31, f1, rmm # perform operation
fsub.h f8, f31, f1, rne # perform operation
fsub.h f8, f31, f1, rtz # perform operation
fsub.h f8, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f16, f23, f19, dyn # perform operation
fsub.h f16, f23, f19, rdn # perform operation
fsub.h f16, f23, f19, rmm # perform operation
fsub.h f16, f23, f19, rne # perform operation
fsub.h f16, f23, f19, rtz # perform operation
fsub.h f16, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fsub.h f12, f14, f23, dyn # perform operation
fsub.h f12, f14, f23, rdn # perform operation
fsub.h f12, f14, f23, rmm # perform operation
fsub.h f12, f14, f23, rne # perform operation
fsub.h f12, f14, f23, rtz # perform operation
fsub.h f12, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fsub.h f17, f2, f22, dyn # perform operation
fsub.h f17, f2, f22, rdn # perform operation
fsub.h f17, f2, f22, rmm # perform operation
fsub.h f17, f2, f22, rne # perform operation
fsub.h f17, f2, f22, rtz # perform operation
fsub.h f17, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fsub.h f11, f3, f26, dyn # perform operation
fsub.h f11, f3, f26, rdn # perform operation
fsub.h f11, f3, f26, rmm # perform operation
fsub.h f11, f3, f26, rne # perform operation
fsub.h f11, f3, f26, rtz # perform operation
fsub.h f11, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fsub.h f27, f3, f31, dyn # perform operation
fsub.h f27, f3, f31, rdn # perform operation
fsub.h f27, f3, f31, rmm # perform operation
fsub.h f27, f3, f31, rne # perform operation
fsub.h f27, f3, f31, rtz # perform operation
fsub.h f27, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fsub.h f29, f6, f9, dyn # perform operation
fsub.h f29, f6, f9, rdn # perform operation
fsub.h f29, f6, f9, rmm # perform operation
fsub.h f29, f6, f9, rne # perform operation
fsub.h f29, f6, f9, rtz # perform operation
fsub.h f29, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fsub.h f26, f8, f7, dyn # perform operation
fsub.h f26, f8, f7, rdn # perform operation
fsub.h f26, f8, f7, rmm # perform operation
fsub.h f26, f8, f7, rne # perform operation
fsub.h f26, f8, f7, rtz # perform operation
fsub.h f26, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fsub.h f14, f8, f13, dyn # perform operation
fsub.h f14, f8, f13, rdn # perform operation
fsub.h f14, f8, f13, rmm # perform operation
fsub.h f14, f8, f13, rne # perform operation
fsub.h f14, f8, f13, rtz # perform operation
fsub.h f14, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f8, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fsub.h f27, f21, f31, dyn # perform operation
fsub.h f27, f21, f31, rdn # perform operation
fsub.h f27, f21, f31, rmm # perform operation
fsub.h f27, f21, f31, rne # perform operation
fsub.h f27, f21, f31, rtz # perform operation
fsub.h f27, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fsub.h f19, f29, f9, dyn # perform operation
fsub.h f19, f29, f9, rdn # perform operation
fsub.h f19, f29, f9, rmm # perform operation
fsub.h f19, f29, f9, rne # perform operation
fsub.h f19, f29, f9, rtz # perform operation
fsub.h f19, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fsub.h f16, f6, f10, dyn # perform operation
fsub.h f16, f6, f10, rdn # perform operation
fsub.h f16, f6, f10, rmm # perform operation
fsub.h f16, f6, f10, rne # perform operation
fsub.h f16, f6, f10, rtz # perform operation
fsub.h f16, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fsub.h f2, f20, f28, dyn # perform operation
fsub.h f2, f20, f28, rdn # perform operation
fsub.h f2, f20, f28, rmm # perform operation
fsub.h f2, f20, f28, rne # perform operation
fsub.h f2, f20, f28, rtz # perform operation
fsub.h f2, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fsub.h f31, f26, f2, dyn # perform operation
fsub.h f31, f26, f2, rdn # perform operation
fsub.h f31, f26, f2, rmm # perform operation
fsub.h f31, f26, f2, rne # perform operation
fsub.h f31, f26, f2, rtz # perform operation
fsub.h f31, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fsub.h f13, f6, f31, dyn # perform operation
fsub.h f13, f6, f31, rdn # perform operation
fsub.h f13, f6, f31, rmm # perform operation
fsub.h f13, f6, f31, rne # perform operation
fsub.h f13, f6, f31, rtz # perform operation
fsub.h f13, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fsub.h f13, f28, f15, dyn # perform operation
fsub.h f13, f28, f15, rdn # perform operation
fsub.h f13, f28, f15, rmm # perform operation
fsub.h f13, f28, f15, rne # perform operation
fsub.h f13, f28, f15, rtz # perform operation
fsub.h f13, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fsub.h f25, f3, f6, dyn # perform operation
fsub.h f25, f3, f6, rdn # perform operation
fsub.h f25, f3, f6, rmm # perform operation
fsub.h f25, f3, f6, rne # perform operation
fsub.h f25, f3, f6, rtz # perform operation
fsub.h f25, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f11, f26, f23, dyn # perform operation
fsub.h f11, f26, f23, rdn # perform operation
fsub.h f11, f26, f23, rmm # perform operation
fsub.h f11, f26, f23, rne # perform operation
fsub.h f11, f26, f23, rtz # perform operation
fsub.h f11, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fsub.h f13, f17, f19, dyn # perform operation
fsub.h f13, f17, f19, rdn # perform operation
fsub.h f13, f17, f19, rmm # perform operation
fsub.h f13, f17, f19, rne # perform operation
fsub.h f13, f17, f19, rtz # perform operation
fsub.h f13, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f30, f20, f11, dyn # perform operation
fsub.h f30, f20, f11, rdn # perform operation
fsub.h f30, f20, f11, rmm # perform operation
fsub.h f30, f20, f11, rne # perform operation
fsub.h f30, f20, f11, rtz # perform operation
fsub.h f30, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fsub.h f21, f16, f1, dyn # perform operation
fsub.h f21, f16, f1, rdn # perform operation
fsub.h f21, f16, f1, rmm # perform operation
fsub.h f21, f16, f1, rne # perform operation
fsub.h f21, f16, f1, rtz # perform operation
fsub.h f21, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fsub.h f19, f3, f14, dyn # perform operation
fsub.h f19, f3, f14, rdn # perform operation
fsub.h f19, f3, f14, rmm # perform operation
fsub.h f19, f3, f14, rne # perform operation
fsub.h f19, f3, f14, rtz # perform operation
fsub.h f19, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fsub.h f28, f26, f7, dyn # perform operation
fsub.h f28, f26, f7, rdn # perform operation
fsub.h f28, f26, f7, rmm # perform operation
fsub.h f28, f26, f7, rne # perform operation
fsub.h f28, f26, f7, rtz # perform operation
fsub.h f28, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fsub.h f25, f10, f2, dyn # perform operation
fsub.h f25, f10, f2, rdn # perform operation
fsub.h f25, f10, f2, rmm # perform operation
fsub.h f25, f10, f2, rne # perform operation
fsub.h f25, f10, f2, rtz # perform operation
fsub.h f25, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fsub.h f16, f14, f30, dyn # perform operation
fsub.h f16, f14, f30, rdn # perform operation
fsub.h f16, f14, f30, rmm # perform operation
fsub.h f16, f14, f30, rne # perform operation
fsub.h f16, f14, f30, rtz # perform operation
fsub.h f16, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fsub.h f14, f27, f18, dyn # perform operation
fsub.h f14, f27, f18, rdn # perform operation
fsub.h f14, f27, f18, rmm # perform operation
fsub.h f14, f27, f18, rne # perform operation
fsub.h f14, f27, f18, rtz # perform operation
fsub.h f14, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fsub.h f27, f25, f17, dyn # perform operation
fsub.h f27, f25, f17, rdn # perform operation
fsub.h f27, f25, f17, rmm # perform operation
fsub.h f27, f25, f17, rne # perform operation
fsub.h f27, f25, f17, rtz # perform operation
fsub.h f27, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fsub.h f24, f1, f17, dyn # perform operation
fsub.h f24, f1, f17, rdn # perform operation
fsub.h f24, f1, f17, rmm # perform operation
fsub.h f24, f1, f17, rne # perform operation
fsub.h f24, f1, f17, rtz # perform operation
fsub.h f24, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fsub.h f30, f22, f7, dyn # perform operation
fsub.h f30, f22, f7, rdn # perform operation
fsub.h f30, f22, f7, rmm # perform operation
fsub.h f30, f22, f7, rne # perform operation
fsub.h f30, f22, f7, rtz # perform operation
fsub.h f30, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fsub.h f19, f30, f17, dyn # perform operation
fsub.h f19, f30, f17, rdn # perform operation
fsub.h f19, f30, f17, rmm # perform operation
fsub.h f19, f30, f17, rne # perform operation
fsub.h f19, f30, f17, rtz # perform operation
fsub.h f19, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fsub.h f9, f13, f19, dyn # perform operation
fsub.h f9, f13, f19, rdn # perform operation
fsub.h f9, f13, f19, rmm # perform operation
fsub.h f9, f13, f19, rne # perform operation
fsub.h f9, f13, f19, rtz # perform operation
fsub.h f9, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsub.h f6, f31, f14, dyn # perform operation
fsub.h f6, f31, f14, rdn # perform operation
fsub.h f6, f31, f14, rmm # perform operation
fsub.h f6, f31, f14, rne # perform operation
fsub.h f6, f31, f14, rtz # perform operation
fsub.h f6, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fsub.h f7, f23, f19, dyn # perform operation
fsub.h f7, f23, f19, rdn # perform operation
fsub.h f7, f23, f19, rmm # perform operation
fsub.h f7, f23, f19, rne # perform operation
fsub.h f7, f23, f19, rtz # perform operation
fsub.h f7, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsub.h f10, f24, f22, dyn # perform operation
fsub.h f10, f24, f22, rdn # perform operation
fsub.h f10, f24, f22, rmm # perform operation
fsub.h f10, f24, f22, rne # perform operation
fsub.h f10, f24, f22, rtz # perform operation
fsub.h f10, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fsub.h f24, f8, f15, dyn # perform operation
fsub.h f24, f8, f15, rdn # perform operation
fsub.h f24, f8, f15, rmm # perform operation
fsub.h f24, f8, f15, rne # perform operation
fsub.h f24, f8, f15, rtz # perform operation
fsub.h f24, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fsub.h f17, f21, f19, dyn # perform operation
fsub.h f17, f21, f19, rdn # perform operation
fsub.h f17, f21, f19, rmm # perform operation
fsub.h f17, f21, f19, rne # perform operation
fsub.h f17, f21, f19, rtz # perform operation
fsub.h f17, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fsub.h f5, f31, f3, dyn # perform operation
fsub.h f5, f31, f3, rdn # perform operation
fsub.h f5, f31, f3, rmm # perform operation
fsub.h f5, f31, f3, rne # perform operation
fsub.h f5, f31, f3, rtz # perform operation
fsub.h f5, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fsub.h f15, f31, f14, dyn # perform operation
fsub.h f15, f31, f14, rdn # perform operation
fsub.h f15, f31, f14, rmm # perform operation
fsub.h f15, f31, f14, rne # perform operation
fsub.h f15, f31, f14, rtz # perform operation
fsub.h f15, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fsub.h f3, f13, f11, dyn # perform operation
fsub.h f3, f13, f11, rdn # perform operation
fsub.h f3, f13, f11, rmm # perform operation
fsub.h f3, f13, f11, rne # perform operation
fsub.h f3, f13, f11, rtz # perform operation
fsub.h f3, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fsub.h f18, f16, f6, dyn # perform operation
fsub.h f18, f16, f6, rdn # perform operation
fsub.h f18, f16, f6, rmm # perform operation
fsub.h f18, f16, f6, rne # perform operation
fsub.h f18, f16, f6, rtz # perform operation
fsub.h f18, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fsub.h f18, f27, f12, dyn # perform operation
fsub.h f18, f27, f12, rdn # perform operation
fsub.h f18, f27, f12, rmm # perform operation
fsub.h f18, f27, f12, rne # perform operation
fsub.h f18, f27, f12, rtz # perform operation
fsub.h f18, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fsub.h f11, f2, f1, dyn # perform operation
fsub.h f11, f2, f1, rdn # perform operation
fsub.h f11, f2, f1, rmm # perform operation
fsub.h f11, f2, f1, rne # perform operation
fsub.h f11, f2, f1, rtz # perform operation
fsub.h f11, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fsub.h f23, f21, f16, dyn # perform operation
fsub.h f23, f21, f16, rdn # perform operation
fsub.h f23, f21, f16, rmm # perform operation
fsub.h f23, f21, f16, rne # perform operation
fsub.h f23, f21, f16, rtz # perform operation
fsub.h f23, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fsub.h f10, f18, f5, dyn # perform operation
fsub.h f10, f18, f5, rdn # perform operation
fsub.h f10, f18, f5, rmm # perform operation
fsub.h f10, f18, f5, rne # perform operation
fsub.h f10, f18, f5, rtz # perform operation
fsub.h f10, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fsub.h f6, f18, f23, dyn # perform operation
fsub.h f6, f18, f23, rdn # perform operation
fsub.h f6, f18, f23, rmm # perform operation
fsub.h f6, f18, f23, rne # perform operation
fsub.h f6, f18, f23, rtz # perform operation
fsub.h f6, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fsub.h f25, f22, f10, dyn # perform operation
fsub.h f25, f22, f10, rdn # perform operation
fsub.h f25, f22, f10, rmm # perform operation
fsub.h f25, f22, f10, rne # perform operation
fsub.h f25, f22, f10, rtz # perform operation
fsub.h f25, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fsub.h f23, f26, f3, dyn # perform operation
fsub.h f23, f26, f3, rdn # perform operation
fsub.h f23, f26, f3, rmm # perform operation
fsub.h f23, f26, f3, rne # perform operation
fsub.h f23, f26, f3, rtz # perform operation
fsub.h f23, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fsub.h f15, f18, f28, dyn # perform operation
fsub.h f15, f18, f28, rdn # perform operation
fsub.h f15, f18, f28, rmm # perform operation
fsub.h f15, f18, f28, rne # perform operation
fsub.h f15, f18, f28, rtz # perform operation
fsub.h f15, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fsub.h f30, f27, f24, dyn # perform operation
fsub.h f30, f27, f24, rdn # perform operation
fsub.h f30, f27, f24, rmm # perform operation
fsub.h f30, f27, f24, rne # perform operation
fsub.h f30, f27, f24, rtz # perform operation
fsub.h f30, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fsub.h f16, f18, f24, dyn # perform operation
fsub.h f16, f18, f24, rdn # perform operation
fsub.h f16, f18, f24, rmm # perform operation
fsub.h f16, f18, f24, rne # perform operation
fsub.h f16, f18, f24, rtz # perform operation
fsub.h f16, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fsub.h f9, f30, f11, dyn # perform operation
fsub.h f9, f30, f11, rdn # perform operation
fsub.h f9, f30, f11, rmm # perform operation
fsub.h f9, f30, f11, rne # perform operation
fsub.h f9, f30, f11, rtz # perform operation
fsub.h f9, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fsub.h f25, f12, f26, dyn # perform operation
fsub.h f25, f12, f26, rdn # perform operation
fsub.h f25, f12, f26, rmm # perform operation
fsub.h f25, f12, f26, rne # perform operation
fsub.h f25, f12, f26, rtz # perform operation
fsub.h f25, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fsub.h f16, f23, f9, dyn # perform operation
fsub.h f16, f23, f9, rdn # perform operation
fsub.h f16, f23, f9, rmm # perform operation
fsub.h f16, f23, f9, rne # perform operation
fsub.h f16, f23, f9, rtz # perform operation
fsub.h f16, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fsub.h f26, f16, f17, dyn # perform operation
fsub.h f26, f16, f17, rdn # perform operation
fsub.h f26, f16, f17, rmm # perform operation
fsub.h f26, f16, f17, rne # perform operation
fsub.h f26, f16, f17, rtz # perform operation
fsub.h f26, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fsub.h f14, f9, f8, dyn # perform operation
fsub.h f14, f9, f8, rdn # perform operation
fsub.h f14, f9, f8, rmm # perform operation
fsub.h f14, f9, f8, rne # perform operation
fsub.h f14, f9, f8, rtz # perform operation
fsub.h f14, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fsub.h f26, f18, f22, dyn # perform operation
fsub.h f26, f18, f22, rdn # perform operation
fsub.h f26, f18, f22, rmm # perform operation
fsub.h f26, f18, f22, rne # perform operation
fsub.h f26, f18, f22, rtz # perform operation
fsub.h f26, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fsub.h f19, f10, f27, dyn # perform operation
fsub.h f19, f10, f27, rdn # perform operation
fsub.h f19, f10, f27, rmm # perform operation
fsub.h f19, f10, f27, rne # perform operation
fsub.h f19, f10, f27, rtz # perform operation
fsub.h f19, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fsub.h f12, f26, f6, dyn # perform operation
fsub.h f12, f26, f6, rdn # perform operation
fsub.h f12, f26, f6, rmm # perform operation
fsub.h f12, f26, f6, rne # perform operation
fsub.h f12, f26, f6, rtz # perform operation
fsub.h f12, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f8, f13, f10, dyn # perform operation
fsub.h f8, f13, f10, rdn # perform operation
fsub.h f8, f13, f10, rmm # perform operation
fsub.h f8, f13, f10, rne # perform operation
fsub.h f8, f13, f10, rtz # perform operation
fsub.h f8, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fsub.h f1, f5, f16, dyn # perform operation
fsub.h f1, f5, f16, rdn # perform operation
fsub.h f1, f5, f16, rmm # perform operation
fsub.h f1, f5, f16, rne # perform operation
fsub.h f1, f5, f16, rtz # perform operation
fsub.h f1, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fsub.h f20, f12, f13, dyn # perform operation
fsub.h f20, f12, f13, rdn # perform operation
fsub.h f20, f12, f13, rmm # perform operation
fsub.h f20, f12, f13, rne # perform operation
fsub.h f20, f12, f13, rtz # perform operation
fsub.h f20, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f5, f2, f8, dyn # perform operation
fsub.h f5, f2, f8, rdn # perform operation
fsub.h f5, f2, f8, rmm # perform operation
fsub.h f5, f2, f8, rne # perform operation
fsub.h f5, f2, f8, rtz # perform operation
fsub.h f5, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fsub.h f13, f6, f17, dyn # perform operation
fsub.h f13, f6, f17, rdn # perform operation
fsub.h f13, f6, f17, rmm # perform operation
fsub.h f13, f6, f17, rne # perform operation
fsub.h f13, f6, f17, rtz # perform operation
fsub.h f13, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fsub.h f11, f3, f21, dyn # perform operation
fsub.h f11, f3, f21, rdn # perform operation
fsub.h f11, f3, f21, rmm # perform operation
fsub.h f11, f3, f21, rne # perform operation
fsub.h f11, f3, f21, rtz # perform operation
fsub.h f11, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsub.h f24, f12, f27, dyn # perform operation
fsub.h f24, f12, f27, rdn # perform operation
fsub.h f24, f12, f27, rmm # perform operation
fsub.h f24, f12, f27, rne # perform operation
fsub.h f24, f12, f27, rtz # perform operation
fsub.h f24, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fsub.h f22, f10, f29, dyn # perform operation
fsub.h f22, f10, f29, rdn # perform operation
fsub.h f22, f10, f29, rmm # perform operation
fsub.h f22, f10, f29, rne # perform operation
fsub.h f22, f10, f29, rtz # perform operation
fsub.h f22, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f26, f12, f30, dyn # perform operation
fsub.h f26, f12, f30, rdn # perform operation
fsub.h f26, f12, f30, rmm # perform operation
fsub.h f26, f12, f30, rne # perform operation
fsub.h f26, f12, f30, rtz # perform operation
fsub.h f26, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fsub.h f19, f26, f3, dyn # perform operation
fsub.h f19, f26, f3, rdn # perform operation
fsub.h f19, f26, f3, rmm # perform operation
fsub.h f19, f26, f3, rne # perform operation
fsub.h f19, f26, f3, rtz # perform operation
fsub.h f19, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fsub.h f1, f18, f10, dyn # perform operation
fsub.h f1, f18, f10, rdn # perform operation
fsub.h f1, f18, f10, rmm # perform operation
fsub.h f1, f18, f10, rne # perform operation
fsub.h f1, f18, f10, rtz # perform operation
fsub.h f1, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f8, f5, f14, dyn # perform operation
fsub.h f8, f5, f14, rdn # perform operation
fsub.h f8, f5, f14, rmm # perform operation
fsub.h f8, f5, f14, rne # perform operation
fsub.h f8, f5, f14, rtz # perform operation
fsub.h f8, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fsub.h f30, f22, f23, dyn # perform operation
fsub.h f30, f22, f23, rdn # perform operation
fsub.h f30, f22, f23, rmm # perform operation
fsub.h f30, f22, f23, rne # perform operation
fsub.h f30, f22, f23, rtz # perform operation
fsub.h f30, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fsub.h f19, f24, f29, dyn # perform operation
fsub.h f19, f24, f29, rdn # perform operation
fsub.h f19, f24, f29, rmm # perform operation
fsub.h f19, f24, f29, rne # perform operation
fsub.h f19, f24, f29, rtz # perform operation
fsub.h f19, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fsub.h f20, f26, f14, dyn # perform operation
fsub.h f20, f26, f14, rdn # perform operation
fsub.h f20, f26, f14, rmm # perform operation
fsub.h f20, f26, f14, rne # perform operation
fsub.h f20, f26, f14, rtz # perform operation
fsub.h f20, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f26, f14 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x8e2de43dd04e79f0 # load x3 with value 0x8e2de43dd04e79f0
sw x3, 0(x2) # store 0x8e2de43dd04e79f0 in memory
flh f15, 0(x2) # load 0x8e2de43dd04e79f0 from memory into f15
la x2, scratch
li x3, 0x4427b804b16f0d24 # load x3 with value 0x4427b804b16f0d24
sw x3, 0(x2) # store 0x4427b804b16f0d24 in memory
flh f19, 0(x2) # load 0x4427b804b16f0d24 from memory into f19
fsub.h f11, f15, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0xde792c86b43e54ea # load x3 with value 0xde792c86b43e54ea
sw x3, 0(x2) # store 0xde792c86b43e54ea in memory
flw f24, 0(x2) # load 0xde792c86b43e54ea from memory into f24
fsub.h f2, f29, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f13, 0(x2) # load 0xfffe8000 from memory into f13
la x2, scratch
li x3, 0x86771de073bf0fb3 # load x3 with value 0x86771de073bf0fb3
sw x3, 0(x2) # store 0x86771de073bf0fb3 in memory
flw f18, 0(x2) # load 0x86771de073bf0fb3 from memory into f18
fsub.h f19, f13, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f2, 0(x2) # load 0x7fff3c00 from memory into f2
la x2, scratch
li x3, 0x75a34582442c4ab7 # load x3 with value 0x75a34582442c4ab7
sw x3, 0(x2) # store 0x75a34582442c4ab7 in memory
flw f9, 0(x2) # load 0x75a34582442c4ab7 from memory into f9
fsub.h f28, f2, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f13, 0(x2) # load 0xbeefbc00 from memory into f13
la x2, scratch
li x3, 0x346141729a15cc92 # load x3 with value 0x346141729a15cc92
sw x3, 0(x2) # store 0x346141729a15cc92 in memory
flw f20, 0(x2) # load 0x346141729a15cc92 from memory into f20
fsub.h f9, f13, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f8, 0(x2) # load 0xfeff0400 from memory into f8
la x2, scratch
li x3, 0xa513f4b07353f9b5 # load x3 with value 0xa513f4b07353f9b5
sw x3, 0(x2) # store 0xa513f4b07353f9b5 in memory
flw f11, 0(x2) # load 0xa513f4b07353f9b5 from memory into f11
fsub.h f30, f8, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f5, 0(x2) # load 0x0fff8400 from memory into f5
la x2, scratch
li x3, 0x1e7f94ef43aa6810 # load x3 with value 0x1e7f94ef43aa6810
sw x3, 0(x2) # store 0x1e7f94ef43aa6810 in memory
flw f24, 0(x2) # load 0x1e7f94ef43aa6810 from memory into f24
fsub.h f11, f5, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f8, 0(x2) # load 0xefff7bff from memory into f8
la x2, scratch
li x3, 0xb120fc085d203ba2 # load x3 with value 0xb120fc085d203ba2
sw x3, 0(x2) # store 0xb120fc085d203ba2 in memory
flw f20, 0(x2) # load 0xb120fc085d203ba2 from memory into f20
fsub.h f16, f8, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f18, 0(x2) # load 0xc0defbff from memory into f18
la x2, scratch
li x3, 0xeaef8a10cfbeae62 # load x3 with value 0xeaef8a10cfbeae62
sw x3, 0(x2) # store 0xeaef8a10cfbeae62 in memory
flw f13, 0(x2) # load 0xeaef8a10cfbeae62 from memory into f13
fsub.h f7, f18, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f27, 0(x2) # load 0x4f1a7c00 from memory into f27
la x2, scratch
li x3, 0x56eb988032b81836 # load x3 with value 0x56eb988032b81836
sw x3, 0(x2) # store 0x56eb988032b81836 in memory
flw f22, 0(x2) # load 0x56eb988032b81836 from memory into f22
fsub.h f18, f27, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f27, 0(x2) # load 0x0ffffc00 from memory into f27
la x2, scratch
li x3, 0xae04f3972cba32d2 # load x3 with value 0xae04f3972cba32d2
sw x3, 0(x2) # store 0xae04f3972cba32d2 in memory
flw f10, 0(x2) # load 0xae04f3972cba32d2 from memory into f10
fsub.h f28, f27, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f2, 0(x2) # load 0xffef7e00 from memory into f2
la x2, scratch
li x3, 0xfb45835eb52a0c2a # load x3 with value 0xfb45835eb52a0c2a
sw x3, 0(x2) # store 0xfb45835eb52a0c2a in memory
flw f7, 0(x2) # load 0xfb45835eb52a0c2a from memory into f7
fsub.h f17, f2, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f3, 0(x2) # load 0xfeef7fff from memory into f3
la x2, scratch
li x3, 0x5dfe3040ce18a682 # load x3 with value 0x5dfe3040ce18a682
sw x3, 0(x2) # store 0x5dfe3040ce18a682 in memory
flw f24, 0(x2) # load 0x5dfe3040ce18a682 from memory into f24
fsub.h f28, f3, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f25, 0(x2) # load 0xa1b27c01 from memory into f25
la x2, scratch
li x3, 0x242b071525c90425 # load x3 with value 0x242b071525c90425
sw x3, 0(x2) # store 0x242b071525c90425 in memory
flw f30, 0(x2) # load 0x242b071525c90425 from memory into f30
fsub.h f23, f25, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f28, 0(x2) # load 0x4fd77dff from memory into f28
la x2, scratch
li x3, 0x6e53aebf07addeb8 # load x3 with value 0x6e53aebf07addeb8
sw x3, 0(x2) # store 0x6e53aebf07addeb8 in memory
flw f30, 0(x2) # load 0x6e53aebf07addeb8 from memory into f30
fsub.h f26, f28, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x24129470e26ee4b6 # load x3 with value 0x24129470e26ee4b6
sw x3, 0(x2) # store 0x24129470e26ee4b6 in memory
flw f5, 0(x2) # load 0x24129470e26ee4b6 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f30, f5, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xff880bc95c3d1514 # load x3 with value 0xff880bc95c3d1514
sw x3, 0(x2) # store 0xff880bc95c3d1514 in memory
flw f8, 0(x2) # load 0xff880bc95c3d1514 from memory into f8
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f31, 0(x2) # load 0xfffe8000 from memory into f31
fsub.h f26, f8, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0xbb6ef3fe79bd64cb # load x3 with value 0xbb6ef3fe79bd64cb
sw x3, 0(x2) # store 0xbb6ef3fe79bd64cb in memory
flw f29, 0(x2) # load 0xbb6ef3fe79bd64cb from memory into f29
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f19, 0(x2) # load 0x7fff3c00 from memory into f19
fsub.h f23, f29, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0x4e2de03bd2390b2a # load x3 with value 0x4e2de03bd2390b2a
sw x3, 0(x2) # store 0x4e2de03bd2390b2a in memory
flw f20, 0(x2) # load 0x4e2de03bd2390b2a from memory into f20
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f1, 0(x2) # load 0xbeefbc00 from memory into f1
fsub.h f17, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0xe756363e862bf396 # load x3 with value 0xe756363e862bf396
sw x3, 0(x2) # store 0xe756363e862bf396 in memory
flw f15, 0(x2) # load 0xe756363e862bf396 from memory into f15
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f5, 0(x2) # load 0xfeff0400 from memory into f5
fsub.h f9, f15, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x4fbfe2e0e0103bf1 # load x3 with value 0x4fbfe2e0e0103bf1
sw x3, 0(x2) # store 0x4fbfe2e0e0103bf1 in memory
flw f1, 0(x2) # load 0x4fbfe2e0e0103bf1 from memory into f1
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f20, 0(x2) # load 0x0fff8400 from memory into f20
fsub.h f27, f1, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xebb2f10cf449e124 # load x3 with value 0xebb2f10cf449e124
sw x3, 0(x2) # store 0xebb2f10cf449e124 in memory
flw f19, 0(x2) # load 0xebb2f10cf449e124 from memory into f19
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f6, 0(x2) # load 0xefff7bff from memory into f6
fsub.h f12, f19, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xa786ca83bac6ce9e # load x3 with value 0xa786ca83bac6ce9e
sw x3, 0(x2) # store 0xa786ca83bac6ce9e in memory
flw f16, 0(x2) # load 0xa786ca83bac6ce9e from memory into f16
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f15, 0(x2) # load 0xc0defbff from memory into f15
fsub.h f29, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x3d6a624940c026a3 # load x3 with value 0x3d6a624940c026a3
sw x3, 0(x2) # store 0x3d6a624940c026a3 in memory
flw f21, 0(x2) # load 0x3d6a624940c026a3 from memory into f21
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f1, 0(x2) # load 0x4f1a7c00 from memory into f1
fsub.h f19, f21, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x397f4a644c8ad30f # load x3 with value 0x397f4a644c8ad30f
sw x3, 0(x2) # store 0x397f4a644c8ad30f in memory
flw f7, 0(x2) # load 0x397f4a644c8ad30f from memory into f7
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f28, 0(x2) # load 0x0ffffc00 from memory into f28
fsub.h f3, f7, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0xa82d6d76484333c9 # load x3 with value 0xa82d6d76484333c9
sw x3, 0(x2) # store 0xa82d6d76484333c9 in memory
flw f24, 0(x2) # load 0xa82d6d76484333c9 from memory into f24
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f22, 0(x2) # load 0xffef7e00 from memory into f22
fsub.h f30, f24, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xa24ab96d8bc74271 # load x3 with value 0xa24ab96d8bc74271
sw x3, 0(x2) # store 0xa24ab96d8bc74271 in memory
flw f7, 0(x2) # load 0xa24ab96d8bc74271 from memory into f7
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f2, 0(x2) # load 0xfeef7fff from memory into f2
fsub.h f26, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xede2312d678cd50 # load x3 with value 0xede2312d678cd50
sw x3, 0(x2) # store 0xede2312d678cd50 in memory
flw f10, 0(x2) # load 0xede2312d678cd50 from memory into f10
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f16, 0(x2) # load 0xa1b27c01 from memory into f16
fsub.h f27, f10, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0xce484e764ddb9431 # load x3 with value 0xce484e764ddb9431
sw x3, 0(x2) # store 0xce484e764ddb9431 in memory
flw f31, 0(x2) # load 0xce484e764ddb9431 from memory into f31
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f29, 0(x2) # load 0x4fd77dff from memory into f29
fsub.h f18, f31, f29 # perform operation

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
