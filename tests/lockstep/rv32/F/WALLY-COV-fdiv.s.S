///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fdiv.s.S
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
add x23, x10, x6 # perform first operation
fdiv.s f28, f8, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x31, x13 # perform first operation
fdiv.s f16, f2, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x20, x12 # perform first operation
fdiv.s f17, f23, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f8, f18, f20 # perform first operation
fdiv.s f18, f8, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f23, f16, f26 # perform first operation
fdiv.s f16, f3, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x14, x31 # perform first operation
fdiv.s f31, f14, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f18, f29 # perform first operation
fdiv.s f22, f27, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f13, f14, f5 # perform first operation
fdiv.s f13, f20, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f25, f11 # perform first operation
fdiv.s f27, f18, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f2, f12, f6 # perform first operation
fdiv.s f12, f13, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f2, f29 # perform first operation
fdiv.s f29, f25, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f30, f26 # perform first operation
fdiv.s f14, f12, f17 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xc723a3ce # load x3 with value 0xc723a3ce
sw x3, 0(x2) # store 0xc723a3ce in memory
flw f0, 0(x2) # load 0xc723a3ce from memory into f0
la x2, scratch
li x3, 0xec5b669f # load x3 with value 0xec5b669f
sw x3, 0(x2) # store 0xec5b669f in memory
flw f15, 0(x2) # load 0xec5b669f from memory into f15
fdiv.s f20, f0, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x6c9e0177 # load x3 with value 0x6c9e0177
sw x3, 0(x2) # store 0x6c9e0177 in memory
flw f1, 0(x2) # load 0x6c9e0177 from memory into f1
la x2, scratch
li x3, 0x41ea90fa # load x3 with value 0x41ea90fa
sw x3, 0(x2) # store 0x41ea90fa in memory
flw f3, 0(x2) # load 0x41ea90fa from memory into f3
fdiv.s f21, f1, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x905bedd7 # load x3 with value 0x905bedd7
sw x3, 0(x2) # store 0x905bedd7 in memory
flw f2, 0(x2) # load 0x905bedd7 from memory into f2
la x2, scratch
li x3, 0x681de745 # load x3 with value 0x681de745
sw x3, 0(x2) # store 0x681de745 in memory
flw f21, 0(x2) # load 0x681de745 from memory into f21
fdiv.s f18, f2, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x0aafff49 # load x3 with value 0x0aafff49
sw x3, 0(x2) # store 0x0aafff49 in memory
flw f3, 0(x2) # load 0x0aafff49 from memory into f3
la x2, scratch
li x3, 0x573ed011 # load x3 with value 0x573ed011
sw x3, 0(x2) # store 0x573ed011 in memory
flw f9, 0(x2) # load 0x573ed011 from memory into f9
fdiv.s f10, f3, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd0e54b24 # load x3 with value 0xd0e54b24
sw x3, 0(x2) # store 0xd0e54b24 in memory
flw f4, 0(x2) # load 0xd0e54b24 from memory into f4
la x2, scratch
li x3, 0xa2119d20 # load x3 with value 0xa2119d20
sw x3, 0(x2) # store 0xa2119d20 in memory
flw f28, 0(x2) # load 0xa2119d20 from memory into f28
fdiv.s f16, f4, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x03827363 # load x3 with value 0x03827363
sw x3, 0(x2) # store 0x03827363 in memory
flw f5, 0(x2) # load 0x03827363 from memory into f5
la x2, scratch
li x3, 0xa81339ad # load x3 with value 0xa81339ad
sw x3, 0(x2) # store 0xa81339ad in memory
flw f27, 0(x2) # load 0xa81339ad from memory into f27
fdiv.s f12, f5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1175a6a2 # load x3 with value 0x1175a6a2
sw x3, 0(x2) # store 0x1175a6a2 in memory
flw f6, 0(x2) # load 0x1175a6a2 from memory into f6
la x2, scratch
li x3, 0x9d282f37 # load x3 with value 0x9d282f37
sw x3, 0(x2) # store 0x9d282f37 in memory
flw f27, 0(x2) # load 0x9d282f37 from memory into f27
fdiv.s f5, f6, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x65441d34 # load x3 with value 0x65441d34
sw x3, 0(x2) # store 0x65441d34 in memory
flw f7, 0(x2) # load 0x65441d34 from memory into f7
la x2, scratch
li x3, 0xe56fab1f # load x3 with value 0xe56fab1f
sw x3, 0(x2) # store 0xe56fab1f in memory
flw f28, 0(x2) # load 0xe56fab1f from memory into f28
fdiv.s f13, f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x8823c768 # load x3 with value 0x8823c768
sw x3, 0(x2) # store 0x8823c768 in memory
flw f8, 0(x2) # load 0x8823c768 from memory into f8
la x2, scratch
li x3, 0x43fa0d4d # load x3 with value 0x43fa0d4d
sw x3, 0(x2) # store 0x43fa0d4d in memory
flw f30, 0(x2) # load 0x43fa0d4d from memory into f30
fdiv.s f12, f8, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xf0b0e9bb # load x3 with value 0xf0b0e9bb
sw x3, 0(x2) # store 0xf0b0e9bb in memory
flw f9, 0(x2) # load 0xf0b0e9bb from memory into f9
la x2, scratch
li x3, 0x3aec251c # load x3 with value 0x3aec251c
sw x3, 0(x2) # store 0x3aec251c in memory
flw f21, 0(x2) # load 0x3aec251c from memory into f21
fdiv.s f13, f9, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xf6c8dc13 # load x3 with value 0xf6c8dc13
sw x3, 0(x2) # store 0xf6c8dc13 in memory
flw f10, 0(x2) # load 0xf6c8dc13 from memory into f10
la x2, scratch
li x3, 0x08136e38 # load x3 with value 0x08136e38
sw x3, 0(x2) # store 0x08136e38 in memory
flw f12, 0(x2) # load 0x08136e38 from memory into f12
fdiv.s f16, f10, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xed955e58 # load x3 with value 0xed955e58
sw x3, 0(x2) # store 0xed955e58 in memory
flw f11, 0(x2) # load 0xed955e58 from memory into f11
la x2, scratch
li x3, 0x6fbdf0bb # load x3 with value 0x6fbdf0bb
sw x3, 0(x2) # store 0x6fbdf0bb in memory
flw f10, 0(x2) # load 0x6fbdf0bb from memory into f10
fdiv.s f19, f11, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xb619c594 # load x3 with value 0xb619c594
sw x3, 0(x2) # store 0xb619c594 in memory
flw f12, 0(x2) # load 0xb619c594 from memory into f12
la x2, scratch
li x3, 0x97b24d52 # load x3 with value 0x97b24d52
sw x3, 0(x2) # store 0x97b24d52 in memory
flw f1, 0(x2) # load 0x97b24d52 from memory into f1
fdiv.s f8, f12, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xda7d294c # load x3 with value 0xda7d294c
sw x3, 0(x2) # store 0xda7d294c in memory
flw f13, 0(x2) # load 0xda7d294c from memory into f13
la x2, scratch
li x3, 0x5c30fc42 # load x3 with value 0x5c30fc42
sw x3, 0(x2) # store 0x5c30fc42 in memory
flw f24, 0(x2) # load 0x5c30fc42 from memory into f24
fdiv.s f25, f13, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x1a0dc3c9 # load x3 with value 0x1a0dc3c9
sw x3, 0(x2) # store 0x1a0dc3c9 in memory
flw f14, 0(x2) # load 0x1a0dc3c9 from memory into f14
la x2, scratch
li x3, 0xb53af5bb # load x3 with value 0xb53af5bb
sw x3, 0(x2) # store 0xb53af5bb in memory
flw f5, 0(x2) # load 0xb53af5bb from memory into f5
fdiv.s f31, f14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xebc7bcc8 # load x3 with value 0xebc7bcc8
sw x3, 0(x2) # store 0xebc7bcc8 in memory
flw f15, 0(x2) # load 0xebc7bcc8 from memory into f15
la x2, scratch
li x3, 0x32a61661 # load x3 with value 0x32a61661
sw x3, 0(x2) # store 0x32a61661 in memory
flw f14, 0(x2) # load 0x32a61661 from memory into f14
fdiv.s f25, f15, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x4714c4cf # load x3 with value 0x4714c4cf
sw x3, 0(x2) # store 0x4714c4cf in memory
flw f16, 0(x2) # load 0x4714c4cf from memory into f16
la x2, scratch
li x3, 0x5bf6bba2 # load x3 with value 0x5bf6bba2
sw x3, 0(x2) # store 0x5bf6bba2 in memory
flw f20, 0(x2) # load 0x5bf6bba2 from memory into f20
fdiv.s f28, f16, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x05d9832b # load x3 with value 0x05d9832b
sw x3, 0(x2) # store 0x05d9832b in memory
flw f17, 0(x2) # load 0x05d9832b from memory into f17
la x2, scratch
li x3, 0x67a87915 # load x3 with value 0x67a87915
sw x3, 0(x2) # store 0x67a87915 in memory
flw f14, 0(x2) # load 0x67a87915 from memory into f14
fdiv.s f24, f17, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x4816e620 # load x3 with value 0x4816e620
sw x3, 0(x2) # store 0x4816e620 in memory
flw f18, 0(x2) # load 0x4816e620 from memory into f18
la x2, scratch
li x3, 0xee4e3089 # load x3 with value 0xee4e3089
sw x3, 0(x2) # store 0xee4e3089 in memory
flw f11, 0(x2) # load 0xee4e3089 from memory into f11
fdiv.s f14, f18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xc81e5ddf # load x3 with value 0xc81e5ddf
sw x3, 0(x2) # store 0xc81e5ddf in memory
flw f19, 0(x2) # load 0xc81e5ddf from memory into f19
la x2, scratch
li x3, 0xae4d7b5c # load x3 with value 0xae4d7b5c
sw x3, 0(x2) # store 0xae4d7b5c in memory
flw f30, 0(x2) # load 0xae4d7b5c from memory into f30
fdiv.s f2, f19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xfc5739fa # load x3 with value 0xfc5739fa
sw x3, 0(x2) # store 0xfc5739fa in memory
flw f20, 0(x2) # load 0xfc5739fa from memory into f20
la x2, scratch
li x3, 0x84a0bea3 # load x3 with value 0x84a0bea3
sw x3, 0(x2) # store 0x84a0bea3 in memory
flw f23, 0(x2) # load 0x84a0bea3 from memory into f23
fdiv.s f6, f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x99819075 # load x3 with value 0x99819075
sw x3, 0(x2) # store 0x99819075 in memory
flw f21, 0(x2) # load 0x99819075 from memory into f21
la x2, scratch
li x3, 0x0777eab3 # load x3 with value 0x0777eab3
sw x3, 0(x2) # store 0x0777eab3 in memory
flw f9, 0(x2) # load 0x0777eab3 from memory into f9
fdiv.s f27, f21, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xdeb09123 # load x3 with value 0xdeb09123
sw x3, 0(x2) # store 0xdeb09123 in memory
flw f22, 0(x2) # load 0xdeb09123 from memory into f22
la x2, scratch
li x3, 0x29f0da6c # load x3 with value 0x29f0da6c
sw x3, 0(x2) # store 0x29f0da6c in memory
flw f10, 0(x2) # load 0x29f0da6c from memory into f10
fdiv.s f1, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xb0103e6b # load x3 with value 0xb0103e6b
sw x3, 0(x2) # store 0xb0103e6b in memory
flw f23, 0(x2) # load 0xb0103e6b from memory into f23
la x2, scratch
li x3, 0x1232e749 # load x3 with value 0x1232e749
sw x3, 0(x2) # store 0x1232e749 in memory
flw f10, 0(x2) # load 0x1232e749 from memory into f10
fdiv.s f7, f23, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x1befe4b8 # load x3 with value 0x1befe4b8
sw x3, 0(x2) # store 0x1befe4b8 in memory
flw f24, 0(x2) # load 0x1befe4b8 from memory into f24
la x2, scratch
li x3, 0x56c2498d # load x3 with value 0x56c2498d
sw x3, 0(x2) # store 0x56c2498d in memory
flw f5, 0(x2) # load 0x56c2498d from memory into f5
fdiv.s f20, f24, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xb70ff4af # load x3 with value 0xb70ff4af
sw x3, 0(x2) # store 0xb70ff4af in memory
flw f25, 0(x2) # load 0xb70ff4af from memory into f25
la x2, scratch
li x3, 0x7d595b04 # load x3 with value 0x7d595b04
sw x3, 0(x2) # store 0x7d595b04 in memory
flw f21, 0(x2) # load 0x7d595b04 from memory into f21
fdiv.s f19, f25, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x8777c725 # load x3 with value 0x8777c725
sw x3, 0(x2) # store 0x8777c725 in memory
flw f26, 0(x2) # load 0x8777c725 from memory into f26
la x2, scratch
li x3, 0x3f187b5e # load x3 with value 0x3f187b5e
sw x3, 0(x2) # store 0x3f187b5e in memory
flw f24, 0(x2) # load 0x3f187b5e from memory into f24
fdiv.s f11, f26, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x3de9ff24 # load x3 with value 0x3de9ff24
sw x3, 0(x2) # store 0x3de9ff24 in memory
flw f27, 0(x2) # load 0x3de9ff24 from memory into f27
la x2, scratch
li x3, 0x5a348fb7 # load x3 with value 0x5a348fb7
sw x3, 0(x2) # store 0x5a348fb7 in memory
flw f23, 0(x2) # load 0x5a348fb7 from memory into f23
fdiv.s f18, f27, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x8ecf6d2a # load x3 with value 0x8ecf6d2a
sw x3, 0(x2) # store 0x8ecf6d2a in memory
flw f28, 0(x2) # load 0x8ecf6d2a from memory into f28
la x2, scratch
li x3, 0xf0045e71 # load x3 with value 0xf0045e71
sw x3, 0(x2) # store 0xf0045e71 in memory
flw f25, 0(x2) # load 0xf0045e71 from memory into f25
fdiv.s f3, f28, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x7e8fd9e2 # load x3 with value 0x7e8fd9e2
sw x3, 0(x2) # store 0x7e8fd9e2 in memory
flw f29, 0(x2) # load 0x7e8fd9e2 from memory into f29
la x2, scratch
li x3, 0xcbdebed6 # load x3 with value 0xcbdebed6
sw x3, 0(x2) # store 0xcbdebed6 in memory
flw f18, 0(x2) # load 0xcbdebed6 from memory into f18
fdiv.s f15, f29, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xe6690f34 # load x3 with value 0xe6690f34
sw x3, 0(x2) # store 0xe6690f34 in memory
flw f30, 0(x2) # load 0xe6690f34 from memory into f30
la x2, scratch
li x3, 0x49c386e4 # load x3 with value 0x49c386e4
sw x3, 0(x2) # store 0x49c386e4 in memory
flw f29, 0(x2) # load 0x49c386e4 from memory into f29
fdiv.s f27, f30, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xbcfe7214 # load x3 with value 0xbcfe7214
sw x3, 0(x2) # store 0xbcfe7214 in memory
flw f31, 0(x2) # load 0xbcfe7214 from memory into f31
la x2, scratch
li x3, 0x5a33f502 # load x3 with value 0x5a33f502
sw x3, 0(x2) # store 0x5a33f502 in memory
flw f27, 0(x2) # load 0x5a33f502 from memory into f27
fdiv.s f2, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xd1dbd8a7 # load x3 with value 0xd1dbd8a7
sw x3, 0(x2) # store 0xd1dbd8a7 in memory
flw f9, 0(x2) # load 0xd1dbd8a7 from memory into f9
la x2, scratch
li x3, 0x7cad45f3 # load x3 with value 0x7cad45f3
sw x3, 0(x2) # store 0x7cad45f3 in memory
flw f0, 0(x2) # load 0x7cad45f3 from memory into f0
fdiv.s f8, f9, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xa2803e66 # load x3 with value 0xa2803e66
sw x3, 0(x2) # store 0xa2803e66 in memory
flw f13, 0(x2) # load 0xa2803e66 from memory into f13
la x2, scratch
li x3, 0xad922991 # load x3 with value 0xad922991
sw x3, 0(x2) # store 0xad922991 in memory
flw f1, 0(x2) # load 0xad922991 from memory into f1
fdiv.s f24, f13, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0xe99c7d24 # load x3 with value 0xe99c7d24
sw x3, 0(x2) # store 0xe99c7d24 in memory
flw f21, 0(x2) # load 0xe99c7d24 from memory into f21
la x2, scratch
li x3, 0x8b9a117b # load x3 with value 0x8b9a117b
sw x3, 0(x2) # store 0x8b9a117b in memory
flw f2, 0(x2) # load 0x8b9a117b from memory into f2
fdiv.s f1, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x56c9a1a6 # load x3 with value 0x56c9a1a6
sw x3, 0(x2) # store 0x56c9a1a6 in memory
flw f12, 0(x2) # load 0x56c9a1a6 from memory into f12
la x2, scratch
li x3, 0x3aa21a84 # load x3 with value 0x3aa21a84
sw x3, 0(x2) # store 0x3aa21a84 in memory
flw f3, 0(x2) # load 0x3aa21a84 from memory into f3
fdiv.s f10, f12, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfe767b9f # load x3 with value 0xfe767b9f
sw x3, 0(x2) # store 0xfe767b9f in memory
flw f21, 0(x2) # load 0xfe767b9f from memory into f21
la x2, scratch
li x3, 0x2614e311 # load x3 with value 0x2614e311
sw x3, 0(x2) # store 0x2614e311 in memory
flw f4, 0(x2) # load 0x2614e311 from memory into f4
fdiv.s f20, f21, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5b8679f7 # load x3 with value 0x5b8679f7
sw x3, 0(x2) # store 0x5b8679f7 in memory
flw f6, 0(x2) # load 0x5b8679f7 from memory into f6
la x2, scratch
li x3, 0xb9fa35f1 # load x3 with value 0xb9fa35f1
sw x3, 0(x2) # store 0xb9fa35f1 in memory
flw f5, 0(x2) # load 0xb9fa35f1 from memory into f5
fdiv.s f1, f6, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
la x2, scratch
li x3, 0xcfe92cc6 # load x3 with value 0xcfe92cc6
sw x3, 0(x2) # store 0xcfe92cc6 in memory
flw f23, 0(x2) # load 0xcfe92cc6 from memory into f23
la x2, scratch
li x3, 0xd216a015 # load x3 with value 0xd216a015
sw x3, 0(x2) # store 0xd216a015 in memory
flw f6, 0(x2) # load 0xd216a015 from memory into f6
fdiv.s f1, f23, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcd302279 # load x3 with value 0xcd302279
sw x3, 0(x2) # store 0xcd302279 in memory
flw f27, 0(x2) # load 0xcd302279 from memory into f27
la x2, scratch
li x3, 0x71ad4542 # load x3 with value 0x71ad4542
sw x3, 0(x2) # store 0x71ad4542 in memory
flw f7, 0(x2) # load 0x71ad4542 from memory into f7
fdiv.s f30, f27, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xf91662fb # load x3 with value 0xf91662fb
sw x3, 0(x2) # store 0xf91662fb in memory
flw f30, 0(x2) # load 0xf91662fb from memory into f30
la x2, scratch
li x3, 0x0e8cb3ec # load x3 with value 0x0e8cb3ec
sw x3, 0(x2) # store 0x0e8cb3ec in memory
flw f8, 0(x2) # load 0x0e8cb3ec from memory into f8
fdiv.s f23, f30, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x1dad57d7 # load x3 with value 0x1dad57d7
sw x3, 0(x2) # store 0x1dad57d7 in memory
flw f23, 0(x2) # load 0x1dad57d7 from memory into f23
la x2, scratch
li x3, 0x089dfe45 # load x3 with value 0x089dfe45
sw x3, 0(x2) # store 0x089dfe45 in memory
flw f9, 0(x2) # load 0x089dfe45 from memory into f9
fdiv.s f31, f23, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x4a58e8d8 # load x3 with value 0x4a58e8d8
sw x3, 0(x2) # store 0x4a58e8d8 in memory
flw f15, 0(x2) # load 0x4a58e8d8 from memory into f15
la x2, scratch
li x3, 0x58d90b74 # load x3 with value 0x58d90b74
sw x3, 0(x2) # store 0x58d90b74 in memory
flw f10, 0(x2) # load 0x58d90b74 from memory into f10
fdiv.s f3, f15, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x1e2d956b # load x3 with value 0x1e2d956b
sw x3, 0(x2) # store 0x1e2d956b in memory
flw f24, 0(x2) # load 0x1e2d956b from memory into f24
la x2, scratch
li x3, 0x307312e4 # load x3 with value 0x307312e4
sw x3, 0(x2) # store 0x307312e4 in memory
flw f11, 0(x2) # load 0x307312e4 from memory into f11
fdiv.s f20, f24, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x7e9a3116 # load x3 with value 0x7e9a3116
sw x3, 0(x2) # store 0x7e9a3116 in memory
flw f14, 0(x2) # load 0x7e9a3116 from memory into f14
la x2, scratch
li x3, 0x1fc07fd2 # load x3 with value 0x1fc07fd2
sw x3, 0(x2) # store 0x1fc07fd2 in memory
flw f12, 0(x2) # load 0x1fc07fd2 from memory into f12
fdiv.s f27, f14, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xb2192cd8 # load x3 with value 0xb2192cd8
sw x3, 0(x2) # store 0xb2192cd8 in memory
flw f16, 0(x2) # load 0xb2192cd8 from memory into f16
la x2, scratch
li x3, 0x24688a5b # load x3 with value 0x24688a5b
sw x3, 0(x2) # store 0x24688a5b in memory
flw f13, 0(x2) # load 0x24688a5b from memory into f13
fdiv.s f3, f16, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x35ddf871 # load x3 with value 0x35ddf871
sw x3, 0(x2) # store 0x35ddf871 in memory
flw f13, 0(x2) # load 0x35ddf871 from memory into f13
la x2, scratch
li x3, 0x88965af4 # load x3 with value 0x88965af4
sw x3, 0(x2) # store 0x88965af4 in memory
flw f14, 0(x2) # load 0x88965af4 from memory into f14
fdiv.s f17, f13, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x20095b49 # load x3 with value 0x20095b49
sw x3, 0(x2) # store 0x20095b49 in memory
flw f18, 0(x2) # load 0x20095b49 from memory into f18
la x2, scratch
li x3, 0x58b94d17 # load x3 with value 0x58b94d17
sw x3, 0(x2) # store 0x58b94d17 in memory
flw f15, 0(x2) # load 0x58b94d17 from memory into f15
fdiv.s f14, f18, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x5477f91b # load x3 with value 0x5477f91b
sw x3, 0(x2) # store 0x5477f91b in memory
flw f27, 0(x2) # load 0x5477f91b from memory into f27
la x2, scratch
li x3, 0x68e0c489 # load x3 with value 0x68e0c489
sw x3, 0(x2) # store 0x68e0c489 in memory
flw f16, 0(x2) # load 0x68e0c489 from memory into f16
fdiv.s f29, f27, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x66b4808e # load x3 with value 0x66b4808e
sw x3, 0(x2) # store 0x66b4808e in memory
flw f16, 0(x2) # load 0x66b4808e from memory into f16
la x2, scratch
li x3, 0x7685351b # load x3 with value 0x7685351b
sw x3, 0(x2) # store 0x7685351b in memory
flw f17, 0(x2) # load 0x7685351b from memory into f17
fdiv.s f1, f16, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xf25e1011 # load x3 with value 0xf25e1011
sw x3, 0(x2) # store 0xf25e1011 in memory
flw f14, 0(x2) # load 0xf25e1011 from memory into f14
la x2, scratch
li x3, 0xeb086dba # load x3 with value 0xeb086dba
sw x3, 0(x2) # store 0xeb086dba in memory
flw f18, 0(x2) # load 0xeb086dba from memory into f18
fdiv.s f6, f14, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x545450bf # load x3 with value 0x545450bf
sw x3, 0(x2) # store 0x545450bf in memory
flw f30, 0(x2) # load 0x545450bf from memory into f30
la x2, scratch
li x3, 0x591e281a # load x3 with value 0x591e281a
sw x3, 0(x2) # store 0x591e281a in memory
flw f19, 0(x2) # load 0x591e281a from memory into f19
fdiv.s f29, f30, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x2721cfdc # load x3 with value 0x2721cfdc
sw x3, 0(x2) # store 0x2721cfdc in memory
flw f5, 0(x2) # load 0x2721cfdc from memory into f5
la x2, scratch
li x3, 0xe3e2c860 # load x3 with value 0xe3e2c860
sw x3, 0(x2) # store 0xe3e2c860 in memory
flw f20, 0(x2) # load 0xe3e2c860 from memory into f20
fdiv.s f14, f5, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x5369cefb # load x3 with value 0x5369cefb
sw x3, 0(x2) # store 0x5369cefb in memory
flw f27, 0(x2) # load 0x5369cefb from memory into f27
la x2, scratch
li x3, 0x1f8b3bae # load x3 with value 0x1f8b3bae
sw x3, 0(x2) # store 0x1f8b3bae in memory
flw f21, 0(x2) # load 0x1f8b3bae from memory into f21
fdiv.s f15, f27, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xc524c06b # load x3 with value 0xc524c06b
sw x3, 0(x2) # store 0xc524c06b in memory
flw f28, 0(x2) # load 0xc524c06b from memory into f28
la x2, scratch
li x3, 0x99ddc1a7 # load x3 with value 0x99ddc1a7
sw x3, 0(x2) # store 0x99ddc1a7 in memory
flw f22, 0(x2) # load 0x99ddc1a7 from memory into f22
fdiv.s f1, f28, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x0de5928a # load x3 with value 0x0de5928a
sw x3, 0(x2) # store 0x0de5928a in memory
flw f25, 0(x2) # load 0x0de5928a from memory into f25
la x2, scratch
li x3, 0xe41c71a8 # load x3 with value 0xe41c71a8
sw x3, 0(x2) # store 0xe41c71a8 in memory
flw f23, 0(x2) # load 0xe41c71a8 from memory into f23
fdiv.s f1, f25, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x19051c13 # load x3 with value 0x19051c13
sw x3, 0(x2) # store 0x19051c13 in memory
flw f9, 0(x2) # load 0x19051c13 from memory into f9
la x2, scratch
li x3, 0x07888e72 # load x3 with value 0x07888e72
sw x3, 0(x2) # store 0x07888e72 in memory
flw f24, 0(x2) # load 0x07888e72 from memory into f24
fdiv.s f14, f9, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xd662567a # load x3 with value 0xd662567a
sw x3, 0(x2) # store 0xd662567a in memory
flw f1, 0(x2) # load 0xd662567a from memory into f1
la x2, scratch
li x3, 0x35014c2f # load x3 with value 0x35014c2f
sw x3, 0(x2) # store 0x35014c2f in memory
flw f25, 0(x2) # load 0x35014c2f from memory into f25
fdiv.s f8, f1, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x93af9eb1 # load x3 with value 0x93af9eb1
sw x3, 0(x2) # store 0x93af9eb1 in memory
flw f13, 0(x2) # load 0x93af9eb1 from memory into f13
la x2, scratch
li x3, 0x409dcd50 # load x3 with value 0x409dcd50
sw x3, 0(x2) # store 0x409dcd50 in memory
flw f26, 0(x2) # load 0x409dcd50 from memory into f26
fdiv.s f18, f13, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xed52b89c # load x3 with value 0xed52b89c
sw x3, 0(x2) # store 0xed52b89c in memory
flw f22, 0(x2) # load 0xed52b89c from memory into f22
la x2, scratch
li x3, 0xaf44b0f2 # load x3 with value 0xaf44b0f2
sw x3, 0(x2) # store 0xaf44b0f2 in memory
flw f27, 0(x2) # load 0xaf44b0f2 from memory into f27
fdiv.s f7, f22, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xedabfa2b # load x3 with value 0xedabfa2b
sw x3, 0(x2) # store 0xedabfa2b in memory
flw f10, 0(x2) # load 0xedabfa2b from memory into f10
la x2, scratch
li x3, 0x591a57e8 # load x3 with value 0x591a57e8
sw x3, 0(x2) # store 0x591a57e8 in memory
flw f28, 0(x2) # load 0x591a57e8 from memory into f28
fdiv.s f30, f10, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x3ccb33af # load x3 with value 0x3ccb33af
sw x3, 0(x2) # store 0x3ccb33af in memory
flw f3, 0(x2) # load 0x3ccb33af from memory into f3
la x2, scratch
li x3, 0xf28b413d # load x3 with value 0xf28b413d
sw x3, 0(x2) # store 0xf28b413d in memory
flw f29, 0(x2) # load 0xf28b413d from memory into f29
fdiv.s f17, f3, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x2341f01c # load x3 with value 0x2341f01c
sw x3, 0(x2) # store 0x2341f01c in memory
flw f8, 0(x2) # load 0x2341f01c from memory into f8
la x2, scratch
li x3, 0xa0c750b0 # load x3 with value 0xa0c750b0
sw x3, 0(x2) # store 0xa0c750b0 in memory
flw f30, 0(x2) # load 0xa0c750b0 from memory into f30
fdiv.s f16, f8, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x09b09738 # load x3 with value 0x09b09738
sw x3, 0(x2) # store 0x09b09738 in memory
flw f28, 0(x2) # load 0x09b09738 from memory into f28
la x2, scratch
li x3, 0x5164cfb9 # load x3 with value 0x5164cfb9
sw x3, 0(x2) # store 0x5164cfb9 in memory
flw f31, 0(x2) # load 0x5164cfb9 from memory into f31
fdiv.s f27, f28, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xb766cac6 # load x3 with value 0xb766cac6
sw x3, 0(x2) # store 0xb766cac6 in memory
flw f20, 0(x2) # load 0xb766cac6 from memory into f20
la x2, scratch
li x3, 0xaa32ddfe # load x3 with value 0xaa32ddfe
sw x3, 0(x2) # store 0xaa32ddfe in memory
flw f11, 0(x2) # load 0xaa32ddfe from memory into f11
fdiv.s f0, f20, f11 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x2633eff9 # load x3 with value 0x2633eff9
sw x3, 0(x2) # store 0x2633eff9 in memory
flw f25, 0(x2) # load 0x2633eff9 from memory into f25
la x2, scratch
li x3, 0xd31e42ec # load x3 with value 0xd31e42ec
sw x3, 0(x2) # store 0xd31e42ec in memory
flw f5, 0(x2) # load 0xd31e42ec from memory into f5
fdiv.s f1, f25, f5 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xde240c4b # load x3 with value 0xde240c4b
sw x3, 0(x2) # store 0xde240c4b in memory
flw f17, 0(x2) # load 0xde240c4b from memory into f17
la x2, scratch
li x3, 0x54a3b7e3 # load x3 with value 0x54a3b7e3
sw x3, 0(x2) # store 0x54a3b7e3 in memory
flw f20, 0(x2) # load 0x54a3b7e3 from memory into f20
fdiv.s f2, f17, f20 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x514cc57f # load x3 with value 0x514cc57f
sw x3, 0(x2) # store 0x514cc57f in memory
flw f28, 0(x2) # load 0x514cc57f from memory into f28
la x2, scratch
li x3, 0xffcaaefd # load x3 with value 0xffcaaefd
sw x3, 0(x2) # store 0xffcaaefd in memory
flw f25, 0(x2) # load 0xffcaaefd from memory into f25
fdiv.s f3, f28, f25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9a553a82 # load x3 with value 0x9a553a82
sw x3, 0(x2) # store 0x9a553a82 in memory
flw f27, 0(x2) # load 0x9a553a82 from memory into f27
la x2, scratch
li x3, 0x7711f8dd # load x3 with value 0x7711f8dd
sw x3, 0(x2) # store 0x7711f8dd in memory
flw f21, 0(x2) # load 0x7711f8dd from memory into f21
fdiv.s f4, f27, f21 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x053d2989 # load x3 with value 0x053d2989
sw x3, 0(x2) # store 0x053d2989 in memory
flw f4, 0(x2) # load 0x053d2989 from memory into f4
la x2, scratch
li x3, 0xf2381420 # load x3 with value 0xf2381420
sw x3, 0(x2) # store 0xf2381420 in memory
flw f30, 0(x2) # load 0xf2381420 from memory into f30
fdiv.s f5, f4, f30 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x043ab1b2 # load x3 with value 0x043ab1b2
sw x3, 0(x2) # store 0x043ab1b2 in memory
flw f17, 0(x2) # load 0x043ab1b2 from memory into f17
la x2, scratch
li x3, 0x41f23628 # load x3 with value 0x41f23628
sw x3, 0(x2) # store 0x41f23628 in memory
flw f7, 0(x2) # load 0x41f23628 from memory into f7
fdiv.s f6, f17, f7 # perform operation

# Testcase cp_fd (Test destination fd = x7)
la x2, scratch
li x3, 0x7b1c7088 # load x3 with value 0x7b1c7088
sw x3, 0(x2) # store 0x7b1c7088 in memory
flw f27, 0(x2) # load 0x7b1c7088 from memory into f27
la x2, scratch
li x3, 0x65f224a9 # load x3 with value 0x65f224a9
sw x3, 0(x2) # store 0x65f224a9 in memory
flw f14, 0(x2) # load 0x65f224a9 from memory into f14
fdiv.s f7, f27, f14 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x3d291e3c # load x3 with value 0x3d291e3c
sw x3, 0(x2) # store 0x3d291e3c in memory
flw f11, 0(x2) # load 0x3d291e3c from memory into f11
la x2, scratch
li x3, 0x9c7c8771 # load x3 with value 0x9c7c8771
sw x3, 0(x2) # store 0x9c7c8771 in memory
flw f9, 0(x2) # load 0x9c7c8771 from memory into f9
fdiv.s f8, f11, f9 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x84d49059 # load x3 with value 0x84d49059
sw x3, 0(x2) # store 0x84d49059 in memory
flw f9, 0(x2) # load 0x84d49059 from memory into f9
la x2, scratch
li x3, 0x9f6a239c # load x3 with value 0x9f6a239c
sw x3, 0(x2) # store 0x9f6a239c in memory
flw f12, 0(x2) # load 0x9f6a239c from memory into f12
fdiv.s f9, f9, f12 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x28034c90 # load x3 with value 0x28034c90
sw x3, 0(x2) # store 0x28034c90 in memory
flw f7, 0(x2) # load 0x28034c90 from memory into f7
la x2, scratch
li x3, 0x44ce23cc # load x3 with value 0x44ce23cc
sw x3, 0(x2) # store 0x44ce23cc in memory
flw f22, 0(x2) # load 0x44ce23cc from memory into f22
fdiv.s f10, f7, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x96af9c09 # load x3 with value 0x96af9c09
sw x3, 0(x2) # store 0x96af9c09 in memory
flw f29, 0(x2) # load 0x96af9c09 from memory into f29
la x2, scratch
li x3, 0x20f65a81 # load x3 with value 0x20f65a81
sw x3, 0(x2) # store 0x20f65a81 in memory
flw f23, 0(x2) # load 0x20f65a81 from memory into f23
fdiv.s f11, f29, f23 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0x0f688827 # load x3 with value 0x0f688827
sw x3, 0(x2) # store 0x0f688827 in memory
flw f18, 0(x2) # load 0x0f688827 from memory into f18
la x2, scratch
li x3, 0x0eb6cdba # load x3 with value 0x0eb6cdba
sw x3, 0(x2) # store 0x0eb6cdba in memory
flw f28, 0(x2) # load 0x0eb6cdba from memory into f28
fdiv.s f12, f18, f28 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x32c83718 # load x3 with value 0x32c83718
sw x3, 0(x2) # store 0x32c83718 in memory
flw f27, 0(x2) # load 0x32c83718 from memory into f27
la x2, scratch
li x3, 0xe9da667f # load x3 with value 0xe9da667f
sw x3, 0(x2) # store 0xe9da667f in memory
flw f2, 0(x2) # load 0xe9da667f from memory into f2
fdiv.s f13, f27, f2 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x138f9867 # load x3 with value 0x138f9867
sw x3, 0(x2) # store 0x138f9867 in memory
flw f21, 0(x2) # load 0x138f9867 from memory into f21
la x2, scratch
li x3, 0xee0eeab2 # load x3 with value 0xee0eeab2
sw x3, 0(x2) # store 0xee0eeab2 in memory
flw f27, 0(x2) # load 0xee0eeab2 from memory into f27
fdiv.s f14, f21, f27 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x9b11e0fd # load x3 with value 0x9b11e0fd
sw x3, 0(x2) # store 0x9b11e0fd in memory
flw f15, 0(x2) # load 0x9b11e0fd from memory into f15
la x2, scratch
li x3, 0x892bd82b # load x3 with value 0x892bd82b
sw x3, 0(x2) # store 0x892bd82b in memory
flw f28, 0(x2) # load 0x892bd82b from memory into f28
fdiv.s f15, f15, f28 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x2a605926 # load x3 with value 0x2a605926
sw x3, 0(x2) # store 0x2a605926 in memory
flw f1, 0(x2) # load 0x2a605926 from memory into f1
la x2, scratch
li x3, 0x7cc980fd # load x3 with value 0x7cc980fd
sw x3, 0(x2) # store 0x7cc980fd in memory
flw f29, 0(x2) # load 0x7cc980fd from memory into f29
fdiv.s f16, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x24e2d0e4 # load x3 with value 0x24e2d0e4
sw x3, 0(x2) # store 0x24e2d0e4 in memory
flw f26, 0(x2) # load 0x24e2d0e4 from memory into f26
la x2, scratch
li x3, 0x57a00890 # load x3 with value 0x57a00890
sw x3, 0(x2) # store 0x57a00890 in memory
flw f3, 0(x2) # load 0x57a00890 from memory into f3
fdiv.s f17, f26, f3 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x71d4052e # load x3 with value 0x71d4052e
sw x3, 0(x2) # store 0x71d4052e in memory
flw f26, 0(x2) # load 0x71d4052e from memory into f26
la x2, scratch
li x3, 0x16a932e5 # load x3 with value 0x16a932e5
sw x3, 0(x2) # store 0x16a932e5 in memory
flw f18, 0(x2) # load 0x16a932e5 from memory into f18
fdiv.s f18, f26, f18 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0xb4a3cc02 # load x3 with value 0xb4a3cc02
sw x3, 0(x2) # store 0xb4a3cc02 in memory
flw f2, 0(x2) # load 0xb4a3cc02 from memory into f2
la x2, scratch
li x3, 0x8c342378 # load x3 with value 0x8c342378
sw x3, 0(x2) # store 0x8c342378 in memory
flw f28, 0(x2) # load 0x8c342378 from memory into f28
fdiv.s f19, f2, f28 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x3e638681 # load x3 with value 0x3e638681
sw x3, 0(x2) # store 0x3e638681 in memory
flw f11, 0(x2) # load 0x3e638681 from memory into f11
la x2, scratch
li x3, 0x1a80e736 # load x3 with value 0x1a80e736
sw x3, 0(x2) # store 0x1a80e736 in memory
flw f10, 0(x2) # load 0x1a80e736 from memory into f10
fdiv.s f20, f11, f10 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xd2eb17d4 # load x3 with value 0xd2eb17d4
sw x3, 0(x2) # store 0xd2eb17d4 in memory
flw f6, 0(x2) # load 0xd2eb17d4 from memory into f6
la x2, scratch
li x3, 0x33485b1d # load x3 with value 0x33485b1d
sw x3, 0(x2) # store 0x33485b1d in memory
flw f2, 0(x2) # load 0x33485b1d from memory into f2
fdiv.s f21, f6, f2 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xbcae9494 # load x3 with value 0xbcae9494
sw x3, 0(x2) # store 0xbcae9494 in memory
flw f22, 0(x2) # load 0xbcae9494 from memory into f22
la x2, scratch
li x3, 0x5f9c03cc # load x3 with value 0x5f9c03cc
sw x3, 0(x2) # store 0x5f9c03cc in memory
flw f2, 0(x2) # load 0x5f9c03cc from memory into f2
fdiv.s f22, f22, f2 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0xe0df3346 # load x3 with value 0xe0df3346
sw x3, 0(x2) # store 0xe0df3346 in memory
flw f2, 0(x2) # load 0xe0df3346 from memory into f2
la x2, scratch
li x3, 0xf5112b06 # load x3 with value 0xf5112b06
sw x3, 0(x2) # store 0xf5112b06 in memory
flw f11, 0(x2) # load 0xf5112b06 from memory into f11
fdiv.s f23, f2, f11 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x6da064f9 # load x3 with value 0x6da064f9
sw x3, 0(x2) # store 0x6da064f9 in memory
flw f9, 0(x2) # load 0x6da064f9 from memory into f9
la x2, scratch
li x3, 0x704aba93 # load x3 with value 0x704aba93
sw x3, 0(x2) # store 0x704aba93 in memory
flw f19, 0(x2) # load 0x704aba93 from memory into f19
fdiv.s f24, f9, f19 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xe3dbb175 # load x3 with value 0xe3dbb175
sw x3, 0(x2) # store 0xe3dbb175 in memory
flw f15, 0(x2) # load 0xe3dbb175 from memory into f15
la x2, scratch
li x3, 0x7fe8b131 # load x3 with value 0x7fe8b131
sw x3, 0(x2) # store 0x7fe8b131 in memory
flw f21, 0(x2) # load 0x7fe8b131 from memory into f21
fdiv.s f25, f15, f21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xaff5bb4d # load x3 with value 0xaff5bb4d
sw x3, 0(x2) # store 0xaff5bb4d in memory
flw f5, 0(x2) # load 0xaff5bb4d from memory into f5
la x2, scratch
li x3, 0x4635d82d # load x3 with value 0x4635d82d
sw x3, 0(x2) # store 0x4635d82d in memory
flw f9, 0(x2) # load 0x4635d82d from memory into f9
fdiv.s f26, f5, f9 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x7034dcf7 # load x3 with value 0x7034dcf7
sw x3, 0(x2) # store 0x7034dcf7 in memory
flw f29, 0(x2) # load 0x7034dcf7 from memory into f29
la x2, scratch
li x3, 0xaaf738c2 # load x3 with value 0xaaf738c2
sw x3, 0(x2) # store 0xaaf738c2 in memory
flw f5, 0(x2) # load 0xaaf738c2 from memory into f5
fdiv.s f27, f29, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x142115f9 # load x3 with value 0x142115f9
sw x3, 0(x2) # store 0x142115f9 in memory
flw f21, 0(x2) # load 0x142115f9 from memory into f21
la x2, scratch
li x3, 0x924392e5 # load x3 with value 0x924392e5
sw x3, 0(x2) # store 0x924392e5 in memory
flw f19, 0(x2) # load 0x924392e5 from memory into f19
fdiv.s f28, f21, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x2e8c0315 # load x3 with value 0x2e8c0315
sw x3, 0(x2) # store 0x2e8c0315 in memory
flw f17, 0(x2) # load 0x2e8c0315 from memory into f17
la x2, scratch
li x3, 0x609dae76 # load x3 with value 0x609dae76
sw x3, 0(x2) # store 0x609dae76 in memory
flw f21, 0(x2) # load 0x609dae76 from memory into f21
fdiv.s f29, f17, f21 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x5cad3bd0 # load x3 with value 0x5cad3bd0
sw x3, 0(x2) # store 0x5cad3bd0 in memory
flw f10, 0(x2) # load 0x5cad3bd0 from memory into f10
la x2, scratch
li x3, 0x2e3ac519 # load x3 with value 0x2e3ac519
sw x3, 0(x2) # store 0x2e3ac519 in memory
flw f2, 0(x2) # load 0x2e3ac519 from memory into f2
fdiv.s f30, f10, f2 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0xa1ee0461 # load x3 with value 0xa1ee0461
sw x3, 0(x2) # store 0xa1ee0461 in memory
flw f26, 0(x2) # load 0xa1ee0461 from memory into f26
la x2, scratch
li x3, 0x9fab7866 # load x3 with value 0x9fab7866
sw x3, 0(x2) # store 0x9fab7866 in memory
flw f24, 0(x2) # load 0x9fab7866 from memory into f24
fdiv.s f31, f26, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xf2961b88 # load x3 with value 0xf2961b88
sw x3, 0(x2) # store 0xf2961b88 in memory
flw f12, 0(x2) # load 0xf2961b88 from memory into f12
fdiv.s f23, f31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x019d622d # load x3 with value 0x019d622d
sw x3, 0(x2) # store 0x019d622d in memory
flw f3, 0(x2) # load 0x019d622d from memory into f3
fdiv.s f20, f6, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0xa0ade6fa # load x3 with value 0xa0ade6fa
sw x3, 0(x2) # store 0xa0ade6fa in memory
flw f17, 0(x2) # load 0xa0ade6fa from memory into f17
fdiv.s f31, f7, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
la x2, scratch
li x3, 0x1d382ea6 # load x3 with value 0x1d382ea6
sw x3, 0(x2) # store 0x1d382ea6 in memory
flw f1, 0(x2) # load 0x1d382ea6 from memory into f1
fdiv.s f29, f3, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x451b5b44 # load x3 with value 0x451b5b44
sw x3, 0(x2) # store 0x451b5b44 in memory
flw f11, 0(x2) # load 0x451b5b44 from memory into f11
fdiv.s f17, f9, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0xcad56767 # load x3 with value 0xcad56767
sw x3, 0(x2) # store 0xcad56767 in memory
flw f29, 0(x2) # load 0xcad56767 from memory into f29
fdiv.s f19, f1, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x14481e48 # load x3 with value 0x14481e48
sw x3, 0(x2) # store 0x14481e48 in memory
flw f20, 0(x2) # load 0x14481e48 from memory into f20
fdiv.s f22, f29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
la x2, scratch
li x3, 0x7f1be348 # load x3 with value 0x7f1be348
sw x3, 0(x2) # store 0x7f1be348 in memory
flw f11, 0(x2) # load 0x7f1be348 from memory into f11
fdiv.s f18, f24, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0xca26e287 # load x3 with value 0xca26e287
sw x3, 0(x2) # store 0xca26e287 in memory
flw f29, 0(x2) # load 0xca26e287 from memory into f29
fdiv.s f1, f12, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x262fcf5c # load x3 with value 0x262fcf5c
sw x3, 0(x2) # store 0x262fcf5c in memory
flw f22, 0(x2) # load 0x262fcf5c from memory into f22
fdiv.s f13, f31, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x84a7fc8f # load x3 with value 0x84a7fc8f
sw x3, 0(x2) # store 0x84a7fc8f in memory
flw f10, 0(x2) # load 0x84a7fc8f from memory into f10
fdiv.s f3, f15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0x3c21fe5b # load x3 with value 0x3c21fe5b
sw x3, 0(x2) # store 0x3c21fe5b in memory
flw f12, 0(x2) # load 0x3c21fe5b from memory into f12
fdiv.s f26, f2, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0xec0e2e03 # load x3 with value 0xec0e2e03
sw x3, 0(x2) # store 0xec0e2e03 in memory
flw f25, 0(x2) # load 0xec0e2e03 from memory into f25
fdiv.s f29, f6, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x5b48c2ae # load x3 with value 0x5b48c2ae
sw x3, 0(x2) # store 0x5b48c2ae in memory
flw f28, 0(x2) # load 0x5b48c2ae from memory into f28
fdiv.s f7, f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
la x2, scratch
li x3, 0x774073b3 # load x3 with value 0x774073b3
sw x3, 0(x2) # store 0x774073b3 in memory
flw f14, 0(x2) # load 0x774073b3 from memory into f14
fdiv.s f18, f21, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0xadc02076 # load x3 with value 0xadc02076
sw x3, 0(x2) # store 0xadc02076 in memory
flw f13, 0(x2) # load 0xadc02076 from memory into f13
fdiv.s f19, f26, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x36fc1f94 # load x3 with value 0x36fc1f94
sw x3, 0(x2) # store 0x36fc1f94 in memory
flw f16, 0(x2) # load 0x36fc1f94 from memory into f16
fdiv.s f5, f7, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0xcb82c8c6 # load x3 with value 0xcb82c8c6
sw x3, 0(x2) # store 0xcb82c8c6 in memory
flw f9, 0(x2) # load 0xcb82c8c6 from memory into f9
fdiv.s f13, f17, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x8468c27a # load x3 with value 0x8468c27a
sw x3, 0(x2) # store 0x8468c27a in memory
flw f7, 0(x2) # load 0x8468c27a from memory into f7
fdiv.s f10, f17, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0xfd0d5a9e # load x3 with value 0xfd0d5a9e
sw x3, 0(x2) # store 0xfd0d5a9e in memory
flw f9, 0(x2) # load 0xfd0d5a9e from memory into f9
fdiv.s f3, f6, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0xee7c92dc # load x3 with value 0xee7c92dc
sw x3, 0(x2) # store 0xee7c92dc in memory
flw f9, 0(x2) # load 0xee7c92dc from memory into f9
fdiv.s f22, f27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
la x2, scratch
li x3, 0x6b8ef2b6 # load x3 with value 0x6b8ef2b6
sw x3, 0(x2) # store 0x6b8ef2b6 in memory
flw f24, 0(x2) # load 0x6b8ef2b6 from memory into f24
fdiv.s f19, f15, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
la x2, scratch
li x3, 0x67cdca3c # load x3 with value 0x67cdca3c
sw x3, 0(x2) # store 0x67cdca3c in memory
flw f21, 0(x2) # load 0x67cdca3c from memory into f21
fdiv.s f11, f12, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0xc2bb2df9 # load x3 with value 0xc2bb2df9
sw x3, 0(x2) # store 0xc2bb2df9 in memory
flw f3, 0(x2) # load 0xc2bb2df9 from memory into f3
fdiv.s f26, f18, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
la x2, scratch
li x3, 0xd045b896 # load x3 with value 0xd045b896
sw x3, 0(x2) # store 0xd045b896 in memory
flw f24, 0(x2) # load 0xd045b896 from memory into f24
fdiv.s f19, f20, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0x14ee59cb # load x3 with value 0x14ee59cb
sw x3, 0(x2) # store 0x14ee59cb in memory
flw f15, 0(x2) # load 0x14ee59cb from memory into f15
fdiv.s f1, f23, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0x4d6568be # load x3 with value 0x4d6568be
sw x3, 0(x2) # store 0x4d6568be in memory
flw f12, 0(x2) # load 0x4d6568be from memory into f12
fdiv.s f7, f6, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x9bbbb32d # load x3 with value 0x9bbbb32d
sw x3, 0(x2) # store 0x9bbbb32d in memory
flw f2, 0(x2) # load 0x9bbbb32d from memory into f2
fdiv.s f14, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xb5ace480 # load x3 with value 0xb5ace480
sw x3, 0(x2) # store 0xb5ace480 in memory
flw f12, 0(x2) # load 0xb5ace480 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f14, f12, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x33885d39 # load x3 with value 0x33885d39
sw x3, 0(x2) # store 0x33885d39 in memory
flw f23, 0(x2) # load 0x33885d39 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fdiv.s f29, f23, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xf48dcfe1 # load x3 with value 0xf48dcfe1
sw x3, 0(x2) # store 0xf48dcfe1 in memory
flw f12, 0(x2) # load 0xf48dcfe1 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fdiv.s f7, f12, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x9e57bf85 # load x3 with value 0x9e57bf85
sw x3, 0(x2) # store 0x9e57bf85 in memory
flw f26, 0(x2) # load 0x9e57bf85 from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fdiv.s f17, f26, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0xbebece5e # load x3 with value 0xbebece5e
sw x3, 0(x2) # store 0xbebece5e in memory
flw f7, 0(x2) # load 0xbebece5e from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fdiv.s f12, f7, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xf870e1f4 # load x3 with value 0xf870e1f4
sw x3, 0(x2) # store 0xf870e1f4 in memory
flw f21, 0(x2) # load 0xf870e1f4 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fdiv.s f25, f21, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x6f572fb0 # load x3 with value 0x6f572fb0
sw x3, 0(x2) # store 0x6f572fb0 in memory
flw f21, 0(x2) # load 0x6f572fb0 from memory into f21
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fdiv.s f13, f21, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x9269cb31 # load x3 with value 0x9269cb31
sw x3, 0(x2) # store 0x9269cb31 in memory
flw f26, 0(x2) # load 0x9269cb31 from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f16, f26, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0xd83c9e0f # load x3 with value 0xd83c9e0f
sw x3, 0(x2) # store 0xd83c9e0f in memory
flw f30, 0(x2) # load 0xd83c9e0f from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fdiv.s f24, f30, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0xf0d71863 # load x3 with value 0xf0d71863
sw x3, 0(x2) # store 0xf0d71863 in memory
flw f15, 0(x2) # load 0xf0d71863 from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fdiv.s f11, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x7872bd98 # load x3 with value 0x7872bd98
sw x3, 0(x2) # store 0x7872bd98 in memory
flw f27, 0(x2) # load 0x7872bd98 from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f22, f27, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0x97e6e9db # load x3 with value 0x97e6e9db
sw x3, 0(x2) # store 0x97e6e9db in memory
flw f2, 0(x2) # load 0x97e6e9db from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fdiv.s f10, f2, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x443cf55b # load x3 with value 0x443cf55b
sw x3, 0(x2) # store 0x443cf55b in memory
flw f13, 0(x2) # load 0x443cf55b from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fdiv.s f2, f13, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0xf049b468 # load x3 with value 0xf049b468
sw x3, 0(x2) # store 0xf049b468 in memory
flw f31, 0(x2) # load 0xf049b468 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fdiv.s f11, f31, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x34f41cb0 # load x3 with value 0x34f41cb0
sw x3, 0(x2) # store 0x34f41cb0 in memory
flw f20, 0(x2) # load 0x34f41cb0 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fdiv.s f6, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x226807c0 # load x3 with value 0x226807c0
sw x3, 0(x2) # store 0x226807c0 in memory
flw f18, 0(x2) # load 0x226807c0 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fdiv.s f10, f18, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x5615c922 # load x3 with value 0x5615c922
sw x3, 0(x2) # store 0x5615c922 in memory
flw f22, 0(x2) # load 0x5615c922 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.s f27, f22, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0xa64c93d9 # load x3 with value 0xa64c93d9
sw x3, 0(x2) # store 0xa64c93d9 in memory
flw f30, 0(x2) # load 0xa64c93d9 from memory into f30
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fdiv.s f20, f30, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x106464d5 # load x3 with value 0x106464d5
sw x3, 0(x2) # store 0x106464d5 in memory
flw f15, 0(x2) # load 0x106464d5 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fdiv.s f9, f15, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0x861ca06f # load x3 with value 0x861ca06f
sw x3, 0(x2) # store 0x861ca06f in memory
flw f26, 0(x2) # load 0x861ca06f from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fdiv.s f3, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x9d8fb381 # load x3 with value 0x9d8fb381
sw x3, 0(x2) # store 0x9d8fb381 in memory
flw f2, 0(x2) # load 0x9d8fb381 from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f6, f2, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x8178b2b0 # load x3 with value 0x8178b2b0
sw x3, 0(x2) # store 0x8178b2b0 in memory
flw f5, 0(x2) # load 0x8178b2b0 from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fdiv.s f30, f5, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0x35866e6d # load x3 with value 0x35866e6d
sw x3, 0(x2) # store 0x35866e6d in memory
flw f15, 0(x2) # load 0x35866e6d from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fdiv.s f13, f15, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x3f088428 # load x3 with value 0x3f088428
sw x3, 0(x2) # store 0x3f088428 in memory
flw f21, 0(x2) # load 0x3f088428 from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fdiv.s f11, f21, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x4dd99a72 # load x3 with value 0x4dd99a72
sw x3, 0(x2) # store 0x4dd99a72 in memory
flw f3, 0(x2) # load 0x4dd99a72 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fdiv.s f21, f3, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xc1920775 # load x3 with value 0xc1920775
sw x3, 0(x2) # store 0xc1920775 in memory
flw f12, 0(x2) # load 0xc1920775 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fdiv.s f27, f12, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x09959479 # load x3 with value 0x09959479
sw x3, 0(x2) # store 0x09959479 in memory
flw f19, 0(x2) # load 0x09959479 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fdiv.s f18, f19, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x1ed70646 # load x3 with value 0x1ed70646
sw x3, 0(x2) # store 0x1ed70646 in memory
flw f12, 0(x2) # load 0x1ed70646 from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fdiv.s f21, f12, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x2a814f0a # load x3 with value 0x2a814f0a
sw x3, 0(x2) # store 0x2a814f0a in memory
flw f0, 0(x2) # load 0x2a814f0a from memory into f0
la x2, scratch
li x3, 0xaed3a41e # load x3 with value 0xaed3a41e
sw x3, 0(x2) # store 0xaed3a41e in memory
flw f15, 0(x2) # load 0xaed3a41e from memory into f15
fdiv.s f0, f0, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xd69d06e1 # load x3 with value 0xd69d06e1
sw x3, 0(x2) # store 0xd69d06e1 in memory
flw f1, 0(x2) # load 0xd69d06e1 from memory into f1
la x2, scratch
li x3, 0x7360f13d # load x3 with value 0x7360f13d
sw x3, 0(x2) # store 0x7360f13d in memory
flw f22, 0(x2) # load 0x7360f13d from memory into f22
fdiv.s f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xd6b5a63b # load x3 with value 0xd6b5a63b
sw x3, 0(x2) # store 0xd6b5a63b in memory
flw f2, 0(x2) # load 0xd6b5a63b from memory into f2
la x2, scratch
li x3, 0xc6983687 # load x3 with value 0xc6983687
sw x3, 0(x2) # store 0xc6983687 in memory
flw f12, 0(x2) # load 0xc6983687 from memory into f12
fdiv.s f2, f2, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0xb53f20cf # load x3 with value 0xb53f20cf
sw x3, 0(x2) # store 0xb53f20cf in memory
flw f3, 0(x2) # load 0xb53f20cf from memory into f3
la x2, scratch
li x3, 0x1bca1157 # load x3 with value 0x1bca1157
sw x3, 0(x2) # store 0x1bca1157 in memory
flw f25, 0(x2) # load 0x1bca1157 from memory into f25
fdiv.s f3, f3, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0227488a # load x3 with value 0x0227488a
sw x3, 0(x2) # store 0x0227488a in memory
flw f4, 0(x2) # load 0x0227488a from memory into f4
la x2, scratch
li x3, 0xb7a7ca9a # load x3 with value 0xb7a7ca9a
sw x3, 0(x2) # store 0xb7a7ca9a in memory
flw f2, 0(x2) # load 0xb7a7ca9a from memory into f2
fdiv.s f4, f4, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6411ba61 # load x3 with value 0x6411ba61
sw x3, 0(x2) # store 0x6411ba61 in memory
flw f5, 0(x2) # load 0x6411ba61 from memory into f5
la x2, scratch
li x3, 0xb7a4c293 # load x3 with value 0xb7a4c293
sw x3, 0(x2) # store 0xb7a4c293 in memory
flw f19, 0(x2) # load 0xb7a4c293 from memory into f19
fdiv.s f5, f5, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa6c57b61 # load x3 with value 0xa6c57b61
sw x3, 0(x2) # store 0xa6c57b61 in memory
flw f6, 0(x2) # load 0xa6c57b61 from memory into f6
la x2, scratch
li x3, 0x495a70e7 # load x3 with value 0x495a70e7
sw x3, 0(x2) # store 0x495a70e7 in memory
flw f22, 0(x2) # load 0x495a70e7 from memory into f22
fdiv.s f6, f6, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc0fe870a # load x3 with value 0xc0fe870a
sw x3, 0(x2) # store 0xc0fe870a in memory
flw f7, 0(x2) # load 0xc0fe870a from memory into f7
la x2, scratch
li x3, 0xb236c59b # load x3 with value 0xb236c59b
sw x3, 0(x2) # store 0xb236c59b in memory
flw f26, 0(x2) # load 0xb236c59b from memory into f26
fdiv.s f7, f7, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xfb72b766 # load x3 with value 0xfb72b766
sw x3, 0(x2) # store 0xfb72b766 in memory
flw f8, 0(x2) # load 0xfb72b766 from memory into f8
la x2, scratch
li x3, 0x620d84f9 # load x3 with value 0x620d84f9
sw x3, 0(x2) # store 0x620d84f9 in memory
flw f13, 0(x2) # load 0x620d84f9 from memory into f13
fdiv.s f8, f8, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xbc2bef91 # load x3 with value 0xbc2bef91
sw x3, 0(x2) # store 0xbc2bef91 in memory
flw f9, 0(x2) # load 0xbc2bef91 from memory into f9
la x2, scratch
li x3, 0xbb96da7f # load x3 with value 0xbb96da7f
sw x3, 0(x2) # store 0xbb96da7f in memory
flw f17, 0(x2) # load 0xbb96da7f from memory into f17
fdiv.s f9, f9, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x41ee03cd # load x3 with value 0x41ee03cd
sw x3, 0(x2) # store 0x41ee03cd in memory
flw f10, 0(x2) # load 0x41ee03cd from memory into f10
la x2, scratch
li x3, 0x588e495a # load x3 with value 0x588e495a
sw x3, 0(x2) # store 0x588e495a in memory
flw f16, 0(x2) # load 0x588e495a from memory into f16
fdiv.s f10, f10, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xd6eaa79b # load x3 with value 0xd6eaa79b
sw x3, 0(x2) # store 0xd6eaa79b in memory
flw f11, 0(x2) # load 0xd6eaa79b from memory into f11
la x2, scratch
li x3, 0x3c3b86e6 # load x3 with value 0x3c3b86e6
sw x3, 0(x2) # store 0x3c3b86e6 in memory
flw f5, 0(x2) # load 0x3c3b86e6 from memory into f5
fdiv.s f11, f11, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xe29bdb3c # load x3 with value 0xe29bdb3c
sw x3, 0(x2) # store 0xe29bdb3c in memory
flw f12, 0(x2) # load 0xe29bdb3c from memory into f12
la x2, scratch
li x3, 0x349eba5e # load x3 with value 0x349eba5e
sw x3, 0(x2) # store 0x349eba5e in memory
flw f14, 0(x2) # load 0x349eba5e from memory into f14
fdiv.s f12, f12, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xefd822db # load x3 with value 0xefd822db
sw x3, 0(x2) # store 0xefd822db in memory
flw f13, 0(x2) # load 0xefd822db from memory into f13
la x2, scratch
li x3, 0x7d46be22 # load x3 with value 0x7d46be22
sw x3, 0(x2) # store 0x7d46be22 in memory
flw f13, 0(x2) # load 0x7d46be22 from memory into f13
fdiv.s f13, f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xfce5a80e # load x3 with value 0xfce5a80e
sw x3, 0(x2) # store 0xfce5a80e in memory
flw f14, 0(x2) # load 0xfce5a80e from memory into f14
la x2, scratch
li x3, 0x32f00186 # load x3 with value 0x32f00186
sw x3, 0(x2) # store 0x32f00186 in memory
flw f24, 0(x2) # load 0x32f00186 from memory into f24
fdiv.s f14, f14, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x422a141c # load x3 with value 0x422a141c
sw x3, 0(x2) # store 0x422a141c in memory
flw f15, 0(x2) # load 0x422a141c from memory into f15
la x2, scratch
li x3, 0x36cfecb8 # load x3 with value 0x36cfecb8
sw x3, 0(x2) # store 0x36cfecb8 in memory
flw f8, 0(x2) # load 0x36cfecb8 from memory into f8
fdiv.s f15, f15, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xfb9b6a3a # load x3 with value 0xfb9b6a3a
sw x3, 0(x2) # store 0xfb9b6a3a in memory
flw f16, 0(x2) # load 0xfb9b6a3a from memory into f16
la x2, scratch
li x3, 0x973eecab # load x3 with value 0x973eecab
sw x3, 0(x2) # store 0x973eecab in memory
flw f3, 0(x2) # load 0x973eecab from memory into f3
fdiv.s f16, f16, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x13599ec1 # load x3 with value 0x13599ec1
sw x3, 0(x2) # store 0x13599ec1 in memory
flw f17, 0(x2) # load 0x13599ec1 from memory into f17
la x2, scratch
li x3, 0x4a1e075b # load x3 with value 0x4a1e075b
sw x3, 0(x2) # store 0x4a1e075b in memory
flw f28, 0(x2) # load 0x4a1e075b from memory into f28
fdiv.s f17, f17, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x0ce335ef # load x3 with value 0x0ce335ef
sw x3, 0(x2) # store 0x0ce335ef in memory
flw f18, 0(x2) # load 0x0ce335ef from memory into f18
la x2, scratch
li x3, 0x019f48eb # load x3 with value 0x019f48eb
sw x3, 0(x2) # store 0x019f48eb in memory
flw f1, 0(x2) # load 0x019f48eb from memory into f1
fdiv.s f18, f18, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x632e3a1b # load x3 with value 0x632e3a1b
sw x3, 0(x2) # store 0x632e3a1b in memory
flw f19, 0(x2) # load 0x632e3a1b from memory into f19
la x2, scratch
li x3, 0xa2cde140 # load x3 with value 0xa2cde140
sw x3, 0(x2) # store 0xa2cde140 in memory
flw f16, 0(x2) # load 0xa2cde140 from memory into f16
fdiv.s f19, f19, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0xe89ef544 # load x3 with value 0xe89ef544
sw x3, 0(x2) # store 0xe89ef544 in memory
flw f20, 0(x2) # load 0xe89ef544 from memory into f20
la x2, scratch
li x3, 0x7299d6cf # load x3 with value 0x7299d6cf
sw x3, 0(x2) # store 0x7299d6cf in memory
flw f10, 0(x2) # load 0x7299d6cf from memory into f10
fdiv.s f20, f20, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x4d8b9c7e # load x3 with value 0x4d8b9c7e
sw x3, 0(x2) # store 0x4d8b9c7e in memory
flw f21, 0(x2) # load 0x4d8b9c7e from memory into f21
la x2, scratch
li x3, 0xf3c97766 # load x3 with value 0xf3c97766
sw x3, 0(x2) # store 0xf3c97766 in memory
flw f15, 0(x2) # load 0xf3c97766 from memory into f15
fdiv.s f21, f21, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0xe5871e45 # load x3 with value 0xe5871e45
sw x3, 0(x2) # store 0xe5871e45 in memory
flw f22, 0(x2) # load 0xe5871e45 from memory into f22
la x2, scratch
li x3, 0xdd2e247f # load x3 with value 0xdd2e247f
sw x3, 0(x2) # store 0xdd2e247f in memory
flw f15, 0(x2) # load 0xdd2e247f from memory into f15
fdiv.s f22, f22, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x94aa02dd # load x3 with value 0x94aa02dd
sw x3, 0(x2) # store 0x94aa02dd in memory
flw f23, 0(x2) # load 0x94aa02dd from memory into f23
la x2, scratch
li x3, 0xa05e0ac2 # load x3 with value 0xa05e0ac2
sw x3, 0(x2) # store 0xa05e0ac2 in memory
flw f24, 0(x2) # load 0xa05e0ac2 from memory into f24
fdiv.s f23, f23, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x6c14f0bb # load x3 with value 0x6c14f0bb
sw x3, 0(x2) # store 0x6c14f0bb in memory
flw f24, 0(x2) # load 0x6c14f0bb from memory into f24
la x2, scratch
li x3, 0x53079981 # load x3 with value 0x53079981
sw x3, 0(x2) # store 0x53079981 in memory
flw f28, 0(x2) # load 0x53079981 from memory into f28
fdiv.s f24, f24, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x00c4bcd0 # load x3 with value 0x00c4bcd0
sw x3, 0(x2) # store 0x00c4bcd0 in memory
flw f25, 0(x2) # load 0x00c4bcd0 from memory into f25
la x2, scratch
li x3, 0x22b201ff # load x3 with value 0x22b201ff
sw x3, 0(x2) # store 0x22b201ff in memory
flw f10, 0(x2) # load 0x22b201ff from memory into f10
fdiv.s f25, f25, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x5e346ad7 # load x3 with value 0x5e346ad7
sw x3, 0(x2) # store 0x5e346ad7 in memory
flw f26, 0(x2) # load 0x5e346ad7 from memory into f26
la x2, scratch
li x3, 0xec9ca96d # load x3 with value 0xec9ca96d
sw x3, 0(x2) # store 0xec9ca96d in memory
flw f31, 0(x2) # load 0xec9ca96d from memory into f31
fdiv.s f26, f26, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0xb6e1bca4 # load x3 with value 0xb6e1bca4
sw x3, 0(x2) # store 0xb6e1bca4 in memory
flw f27, 0(x2) # load 0xb6e1bca4 from memory into f27
la x2, scratch
li x3, 0x1357202a # load x3 with value 0x1357202a
sw x3, 0(x2) # store 0x1357202a in memory
flw f13, 0(x2) # load 0x1357202a from memory into f13
fdiv.s f27, f27, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x72e51bd6 # load x3 with value 0x72e51bd6
sw x3, 0(x2) # store 0x72e51bd6 in memory
flw f28, 0(x2) # load 0x72e51bd6 from memory into f28
la x2, scratch
li x3, 0xd63bdc7c # load x3 with value 0xd63bdc7c
sw x3, 0(x2) # store 0xd63bdc7c in memory
flw f20, 0(x2) # load 0xd63bdc7c from memory into f20
fdiv.s f28, f28, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xf928cf6e # load x3 with value 0xf928cf6e
sw x3, 0(x2) # store 0xf928cf6e in memory
flw f29, 0(x2) # load 0xf928cf6e from memory into f29
la x2, scratch
li x3, 0x96e33802 # load x3 with value 0x96e33802
sw x3, 0(x2) # store 0x96e33802 in memory
flw f21, 0(x2) # load 0x96e33802 from memory into f21
fdiv.s f29, f29, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xdd9145c2 # load x3 with value 0xdd9145c2
sw x3, 0(x2) # store 0xdd9145c2 in memory
flw f30, 0(x2) # load 0xdd9145c2 from memory into f30
la x2, scratch
li x3, 0x1b120f96 # load x3 with value 0x1b120f96
sw x3, 0(x2) # store 0x1b120f96 in memory
flw f27, 0(x2) # load 0x1b120f96 from memory into f27
fdiv.s f30, f30, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x2c982f2b # load x3 with value 0x2c982f2b
sw x3, 0(x2) # store 0x2c982f2b in memory
flw f31, 0(x2) # load 0x2c982f2b from memory into f31
la x2, scratch
li x3, 0x7897b842 # load x3 with value 0x7897b842
sw x3, 0(x2) # store 0x7897b842 in memory
flw f30, 0(x2) # load 0x7897b842 from memory into f30
fdiv.s f31, f31, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x22dcc02e # load x3 with value 0x22dcc02e
sw x3, 0(x2) # store 0x22dcc02e in memory
flw f10, 0(x2) # load 0x22dcc02e from memory into f10
la x2, scratch
li x3, 0xb81b9f17 # load x3 with value 0xb81b9f17
sw x3, 0(x2) # store 0xb81b9f17 in memory
flw f0, 0(x2) # load 0xb81b9f17 from memory into f0
fdiv.s f0, f10, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x986378fc # load x3 with value 0x986378fc
sw x3, 0(x2) # store 0x986378fc in memory
flw f24, 0(x2) # load 0x986378fc from memory into f24
la x2, scratch
li x3, 0x53248f9c # load x3 with value 0x53248f9c
sw x3, 0(x2) # store 0x53248f9c in memory
flw f1, 0(x2) # load 0x53248f9c from memory into f1
fdiv.s f1, f24, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xce4d8099 # load x3 with value 0xce4d8099
sw x3, 0(x2) # store 0xce4d8099 in memory
flw f11, 0(x2) # load 0xce4d8099 from memory into f11
la x2, scratch
li x3, 0x7c698f35 # load x3 with value 0x7c698f35
sw x3, 0(x2) # store 0x7c698f35 in memory
flw f2, 0(x2) # load 0x7c698f35 from memory into f2
fdiv.s f2, f11, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x0494462e # load x3 with value 0x0494462e
sw x3, 0(x2) # store 0x0494462e in memory
flw f31, 0(x2) # load 0x0494462e from memory into f31
la x2, scratch
li x3, 0x1331c6ee # load x3 with value 0x1331c6ee
sw x3, 0(x2) # store 0x1331c6ee in memory
flw f3, 0(x2) # load 0x1331c6ee from memory into f3
fdiv.s f3, f31, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe8419770 # load x3 with value 0xe8419770
sw x3, 0(x2) # store 0xe8419770 in memory
flw f10, 0(x2) # load 0xe8419770 from memory into f10
la x2, scratch
li x3, 0xbdce998f # load x3 with value 0xbdce998f
sw x3, 0(x2) # store 0xbdce998f in memory
flw f4, 0(x2) # load 0xbdce998f from memory into f4
fdiv.s f4, f10, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcfd6acbc # load x3 with value 0xcfd6acbc
sw x3, 0(x2) # store 0xcfd6acbc in memory
flw f6, 0(x2) # load 0xcfd6acbc from memory into f6
la x2, scratch
li x3, 0x7cc104fb # load x3 with value 0x7cc104fb
sw x3, 0(x2) # store 0x7cc104fb in memory
flw f5, 0(x2) # load 0x7cc104fb from memory into f5
fdiv.s f5, f6, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
la x2, scratch
li x3, 0x44387d5f # load x3 with value 0x44387d5f
sw x3, 0(x2) # store 0x44387d5f in memory
flw f13, 0(x2) # load 0x44387d5f from memory into f13
la x2, scratch
li x3, 0xd2736385 # load x3 with value 0xd2736385
sw x3, 0(x2) # store 0xd2736385 in memory
flw f6, 0(x2) # load 0xd2736385 from memory into f6
fdiv.s f6, f13, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb8c8a2ac # load x3 with value 0xb8c8a2ac
sw x3, 0(x2) # store 0xb8c8a2ac in memory
flw f9, 0(x2) # load 0xb8c8a2ac from memory into f9
la x2, scratch
li x3, 0x300d2495 # load x3 with value 0x300d2495
sw x3, 0(x2) # store 0x300d2495 in memory
flw f7, 0(x2) # load 0x300d2495 from memory into f7
fdiv.s f7, f9, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x9a18dce4 # load x3 with value 0x9a18dce4
sw x3, 0(x2) # store 0x9a18dce4 in memory
flw f6, 0(x2) # load 0x9a18dce4 from memory into f6
la x2, scratch
li x3, 0x85ea20fe # load x3 with value 0x85ea20fe
sw x3, 0(x2) # store 0x85ea20fe in memory
flw f8, 0(x2) # load 0x85ea20fe from memory into f8
fdiv.s f8, f6, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x0c2d0df6 # load x3 with value 0x0c2d0df6
sw x3, 0(x2) # store 0x0c2d0df6 in memory
flw f7, 0(x2) # load 0x0c2d0df6 from memory into f7
la x2, scratch
li x3, 0xa88059a6 # load x3 with value 0xa88059a6
sw x3, 0(x2) # store 0xa88059a6 in memory
flw f9, 0(x2) # load 0xa88059a6 from memory into f9
fdiv.s f9, f7, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xe3fe3658 # load x3 with value 0xe3fe3658
sw x3, 0(x2) # store 0xe3fe3658 in memory
flw f14, 0(x2) # load 0xe3fe3658 from memory into f14
la x2, scratch
li x3, 0x2a531531 # load x3 with value 0x2a531531
sw x3, 0(x2) # store 0x2a531531 in memory
flw f10, 0(x2) # load 0x2a531531 from memory into f10
fdiv.s f10, f14, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x41068921 # load x3 with value 0x41068921
sw x3, 0(x2) # store 0x41068921 in memory
flw f17, 0(x2) # load 0x41068921 from memory into f17
la x2, scratch
li x3, 0x7bd010bf # load x3 with value 0x7bd010bf
sw x3, 0(x2) # store 0x7bd010bf in memory
flw f11, 0(x2) # load 0x7bd010bf from memory into f11
fdiv.s f11, f17, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xacebfe39 # load x3 with value 0xacebfe39
sw x3, 0(x2) # store 0xacebfe39 in memory
flw f3, 0(x2) # load 0xacebfe39 from memory into f3
la x2, scratch
li x3, 0xc870370d # load x3 with value 0xc870370d
sw x3, 0(x2) # store 0xc870370d in memory
flw f12, 0(x2) # load 0xc870370d from memory into f12
fdiv.s f12, f3, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x77c68f54 # load x3 with value 0x77c68f54
sw x3, 0(x2) # store 0x77c68f54 in memory
flw f29, 0(x2) # load 0x77c68f54 from memory into f29
la x2, scratch
li x3, 0x52426a3e # load x3 with value 0x52426a3e
sw x3, 0(x2) # store 0x52426a3e in memory
flw f13, 0(x2) # load 0x52426a3e from memory into f13
fdiv.s f13, f29, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x931750dc # load x3 with value 0x931750dc
sw x3, 0(x2) # store 0x931750dc in memory
flw f31, 0(x2) # load 0x931750dc from memory into f31
la x2, scratch
li x3, 0xad0b0e8f # load x3 with value 0xad0b0e8f
sw x3, 0(x2) # store 0xad0b0e8f in memory
flw f14, 0(x2) # load 0xad0b0e8f from memory into f14
fdiv.s f14, f31, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x062b15a1 # load x3 with value 0x062b15a1
sw x3, 0(x2) # store 0x062b15a1 in memory
flw f8, 0(x2) # load 0x062b15a1 from memory into f8
la x2, scratch
li x3, 0xfa861412 # load x3 with value 0xfa861412
sw x3, 0(x2) # store 0xfa861412 in memory
flw f15, 0(x2) # load 0xfa861412 from memory into f15
fdiv.s f15, f8, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xb823824c # load x3 with value 0xb823824c
sw x3, 0(x2) # store 0xb823824c in memory
flw f30, 0(x2) # load 0xb823824c from memory into f30
la x2, scratch
li x3, 0x66a1160c # load x3 with value 0x66a1160c
sw x3, 0(x2) # store 0x66a1160c in memory
flw f16, 0(x2) # load 0x66a1160c from memory into f16
fdiv.s f16, f30, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x5a445f96 # load x3 with value 0x5a445f96
sw x3, 0(x2) # store 0x5a445f96 in memory
flw f13, 0(x2) # load 0x5a445f96 from memory into f13
la x2, scratch
li x3, 0xd8234ef0 # load x3 with value 0xd8234ef0
sw x3, 0(x2) # store 0xd8234ef0 in memory
flw f17, 0(x2) # load 0xd8234ef0 from memory into f17
fdiv.s f17, f13, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x4c7e5642 # load x3 with value 0x4c7e5642
sw x3, 0(x2) # store 0x4c7e5642 in memory
flw f6, 0(x2) # load 0x4c7e5642 from memory into f6
la x2, scratch
li x3, 0x41b25ed9 # load x3 with value 0x41b25ed9
sw x3, 0(x2) # store 0x41b25ed9 in memory
flw f18, 0(x2) # load 0x41b25ed9 from memory into f18
fdiv.s f18, f6, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xf33a5140 # load x3 with value 0xf33a5140
sw x3, 0(x2) # store 0xf33a5140 in memory
flw f13, 0(x2) # load 0xf33a5140 from memory into f13
la x2, scratch
li x3, 0x83c62e82 # load x3 with value 0x83c62e82
sw x3, 0(x2) # store 0x83c62e82 in memory
flw f19, 0(x2) # load 0x83c62e82 from memory into f19
fdiv.s f19, f13, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x595a2d4a # load x3 with value 0x595a2d4a
sw x3, 0(x2) # store 0x595a2d4a in memory
flw f3, 0(x2) # load 0x595a2d4a from memory into f3
la x2, scratch
li x3, 0x2dc0f728 # load x3 with value 0x2dc0f728
sw x3, 0(x2) # store 0x2dc0f728 in memory
flw f20, 0(x2) # load 0x2dc0f728 from memory into f20
fdiv.s f20, f3, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x890e7e0d # load x3 with value 0x890e7e0d
sw x3, 0(x2) # store 0x890e7e0d in memory
flw f22, 0(x2) # load 0x890e7e0d from memory into f22
la x2, scratch
li x3, 0xb69128a5 # load x3 with value 0xb69128a5
sw x3, 0(x2) # store 0xb69128a5 in memory
flw f21, 0(x2) # load 0xb69128a5 from memory into f21
fdiv.s f21, f22, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0xdc01ccc2 # load x3 with value 0xdc01ccc2
sw x3, 0(x2) # store 0xdc01ccc2 in memory
flw f8, 0(x2) # load 0xdc01ccc2 from memory into f8
la x2, scratch
li x3, 0x356a025f # load x3 with value 0x356a025f
sw x3, 0(x2) # store 0x356a025f in memory
flw f22, 0(x2) # load 0x356a025f from memory into f22
fdiv.s f22, f8, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xd8036f4a # load x3 with value 0xd8036f4a
sw x3, 0(x2) # store 0xd8036f4a in memory
flw f27, 0(x2) # load 0xd8036f4a from memory into f27
la x2, scratch
li x3, 0x1fa50cf7 # load x3 with value 0x1fa50cf7
sw x3, 0(x2) # store 0x1fa50cf7 in memory
flw f23, 0(x2) # load 0x1fa50cf7 from memory into f23
fdiv.s f23, f27, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x54d47adf # load x3 with value 0x54d47adf
sw x3, 0(x2) # store 0x54d47adf in memory
flw f6, 0(x2) # load 0x54d47adf from memory into f6
la x2, scratch
li x3, 0xf34f3803 # load x3 with value 0xf34f3803
sw x3, 0(x2) # store 0xf34f3803 in memory
flw f24, 0(x2) # load 0xf34f3803 from memory into f24
fdiv.s f24, f6, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x60e27313 # load x3 with value 0x60e27313
sw x3, 0(x2) # store 0x60e27313 in memory
flw f27, 0(x2) # load 0x60e27313 from memory into f27
la x2, scratch
li x3, 0x39b4cc4e # load x3 with value 0x39b4cc4e
sw x3, 0(x2) # store 0x39b4cc4e in memory
flw f25, 0(x2) # load 0x39b4cc4e from memory into f25
fdiv.s f25, f27, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0xcf0ee6e6 # load x3 with value 0xcf0ee6e6
sw x3, 0(x2) # store 0xcf0ee6e6 in memory
flw f18, 0(x2) # load 0xcf0ee6e6 from memory into f18
la x2, scratch
li x3, 0x2d7e71a3 # load x3 with value 0x2d7e71a3
sw x3, 0(x2) # store 0x2d7e71a3 in memory
flw f26, 0(x2) # load 0x2d7e71a3 from memory into f26
fdiv.s f26, f18, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x3a06f75c # load x3 with value 0x3a06f75c
sw x3, 0(x2) # store 0x3a06f75c in memory
flw f20, 0(x2) # load 0x3a06f75c from memory into f20
la x2, scratch
li x3, 0x27b321d5 # load x3 with value 0x27b321d5
sw x3, 0(x2) # store 0x27b321d5 in memory
flw f27, 0(x2) # load 0x27b321d5 from memory into f27
fdiv.s f27, f20, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x2d267632 # load x3 with value 0x2d267632
sw x3, 0(x2) # store 0x2d267632 in memory
flw f27, 0(x2) # load 0x2d267632 from memory into f27
la x2, scratch
li x3, 0xa17b8802 # load x3 with value 0xa17b8802
sw x3, 0(x2) # store 0xa17b8802 in memory
flw f28, 0(x2) # load 0xa17b8802 from memory into f28
fdiv.s f28, f27, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0xf585bc80 # load x3 with value 0xf585bc80
sw x3, 0(x2) # store 0xf585bc80 in memory
flw f13, 0(x2) # load 0xf585bc80 from memory into f13
la x2, scratch
li x3, 0xb662396b # load x3 with value 0xb662396b
sw x3, 0(x2) # store 0xb662396b in memory
flw f29, 0(x2) # load 0xb662396b from memory into f29
fdiv.s f29, f13, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x06d820b5 # load x3 with value 0x06d820b5
sw x3, 0(x2) # store 0x06d820b5 in memory
flw f27, 0(x2) # load 0x06d820b5 from memory into f27
la x2, scratch
li x3, 0x18b33b19 # load x3 with value 0x18b33b19
sw x3, 0(x2) # store 0x18b33b19 in memory
flw f30, 0(x2) # load 0x18b33b19 from memory into f30
fdiv.s f30, f27, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x7b639153 # load x3 with value 0x7b639153
sw x3, 0(x2) # store 0x7b639153 in memory
flw f17, 0(x2) # load 0x7b639153 from memory into f17
la x2, scratch
li x3, 0xf5b6dd9b # load x3 with value 0xf5b6dd9b
sw x3, 0(x2) # store 0xf5b6dd9b in memory
flw f31, 0(x2) # load 0xf5b6dd9b from memory into f31
fdiv.s f31, f17, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xae6bd35c # load x3 with value 0xae6bd35c
sw x3, 0(x2) # store 0xae6bd35c in memory
flw f14, 0(x2) # load 0xae6bd35c from memory into f14
la x2, scratch
li x3, 0xd59ce3fa # load x3 with value 0xd59ce3fa
sw x3, 0(x2) # store 0xd59ce3fa in memory
flw f13, 0(x2) # load 0xd59ce3fa from memory into f13
fdiv.s f10, f14, f13, dyn # perform operation
fdiv.s f10, f14, f13, rdn # perform operation
fdiv.s f10, f14, f13, rmm # perform operation
fdiv.s f10, f14, f13, rne # perform operation
fdiv.s f10, f14, f13, rtz # perform operation
fdiv.s f10, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.s f18, f10, f8, dyn # perform operation
fdiv.s f18, f10, f8, rdn # perform operation
fdiv.s f18, f10, f8, rmm # perform operation
fdiv.s f18, f10, f8, rne # perform operation
fdiv.s f18, f10, f8, rtz # perform operation
fdiv.s f18, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fdiv.s f29, f13, f1, dyn # perform operation
fdiv.s f29, f13, f1, rdn # perform operation
fdiv.s f29, f13, f1, rmm # perform operation
fdiv.s f29, f13, f1, rne # perform operation
fdiv.s f29, f13, f1, rtz # perform operation
fdiv.s f29, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fdiv.s f19, f22, f12, dyn # perform operation
fdiv.s f19, f22, f12, rdn # perform operation
fdiv.s f19, f22, f12, rmm # perform operation
fdiv.s f19, f22, f12, rne # perform operation
fdiv.s f19, f22, f12, rtz # perform operation
fdiv.s f19, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f22, f15, f2, dyn # perform operation
fdiv.s f22, f15, f2, rdn # perform operation
fdiv.s f22, f15, f2, rmm # perform operation
fdiv.s f22, f15, f2, rne # perform operation
fdiv.s f22, f15, f2, rtz # perform operation
fdiv.s f22, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fdiv.s f10, f2, f22, dyn # perform operation
fdiv.s f10, f2, f22, rdn # perform operation
fdiv.s f10, f2, f22, rmm # perform operation
fdiv.s f10, f2, f22, rne # perform operation
fdiv.s f10, f2, f22, rtz # perform operation
fdiv.s f10, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fdiv.s f8, f13, f1, dyn # perform operation
fdiv.s f8, f13, f1, rdn # perform operation
fdiv.s f8, f13, f1, rmm # perform operation
fdiv.s f8, f13, f1, rne # perform operation
fdiv.s f8, f13, f1, rtz # perform operation
fdiv.s f8, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fdiv.s f13, f17, f3, dyn # perform operation
fdiv.s f13, f17, f3, rdn # perform operation
fdiv.s f13, f17, f3, rmm # perform operation
fdiv.s f13, f17, f3, rne # perform operation
fdiv.s f13, f17, f3, rtz # perform operation
fdiv.s f13, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fdiv.s f15, f22, f20, dyn # perform operation
fdiv.s f15, f22, f20, rdn # perform operation
fdiv.s f15, f22, f20, rmm # perform operation
fdiv.s f15, f22, f20, rne # perform operation
fdiv.s f15, f22, f20, rtz # perform operation
fdiv.s f15, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fdiv.s f23, f16, f21, dyn # perform operation
fdiv.s f23, f16, f21, rdn # perform operation
fdiv.s f23, f16, f21, rmm # perform operation
fdiv.s f23, f16, f21, rne # perform operation
fdiv.s f23, f16, f21, rtz # perform operation
fdiv.s f23, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fdiv.s f1, f14, f26, dyn # perform operation
fdiv.s f1, f14, f26, rdn # perform operation
fdiv.s f1, f14, f26, rmm # perform operation
fdiv.s f1, f14, f26, rne # perform operation
fdiv.s f1, f14, f26, rtz # perform operation
fdiv.s f1, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f28, f1, f15, dyn # perform operation
fdiv.s f28, f1, f15, rdn # perform operation
fdiv.s f28, f1, f15, rmm # perform operation
fdiv.s f28, f1, f15, rne # perform operation
fdiv.s f28, f1, f15, rtz # perform operation
fdiv.s f28, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fdiv.s f13, f24, f5, dyn # perform operation
fdiv.s f13, f24, f5, rdn # perform operation
fdiv.s f13, f24, f5, rmm # perform operation
fdiv.s f13, f24, f5, rne # perform operation
fdiv.s f13, f24, f5, rtz # perform operation
fdiv.s f13, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f20, f17, f30, dyn # perform operation
fdiv.s f20, f17, f30, rdn # perform operation
fdiv.s f20, f17, f30, rmm # perform operation
fdiv.s f20, f17, f30, rne # perform operation
fdiv.s f20, f17, f30, rtz # perform operation
fdiv.s f20, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fdiv.s f5, f12, f25, dyn # perform operation
fdiv.s f5, f12, f25, rdn # perform operation
fdiv.s f5, f12, f25, rmm # perform operation
fdiv.s f5, f12, f25, rne # perform operation
fdiv.s f5, f12, f25, rtz # perform operation
fdiv.s f5, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fdiv.s f18, f13, f25, dyn # perform operation
fdiv.s f18, f13, f25, rdn # perform operation
fdiv.s f18, f13, f25, rmm # perform operation
fdiv.s f18, f13, f25, rne # perform operation
fdiv.s f18, f13, f25, rtz # perform operation
fdiv.s f18, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fdiv.s f24, f11, f31, dyn # perform operation
fdiv.s f24, f11, f31, rdn # perform operation
fdiv.s f24, f11, f31, rmm # perform operation
fdiv.s f24, f11, f31, rne # perform operation
fdiv.s f24, f11, f31, rtz # perform operation
fdiv.s f24, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.s f1, f8, f3, dyn # perform operation
fdiv.s f1, f8, f3, rdn # perform operation
fdiv.s f1, f8, f3, rmm # perform operation
fdiv.s f1, f8, f3, rne # perform operation
fdiv.s f1, f8, f3, rtz # perform operation
fdiv.s f1, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f31, f19, f18, dyn # perform operation
fdiv.s f31, f19, f18, rdn # perform operation
fdiv.s f31, f19, f18, rmm # perform operation
fdiv.s f31, f19, f18, rne # perform operation
fdiv.s f31, f19, f18, rtz # perform operation
fdiv.s f31, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fdiv.s f12, f30, f5, dyn # perform operation
fdiv.s f12, f30, f5, rdn # perform operation
fdiv.s f12, f30, f5, rmm # perform operation
fdiv.s f12, f30, f5, rne # perform operation
fdiv.s f12, f30, f5, rtz # perform operation
fdiv.s f12, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fdiv.s f29, f8, f20, dyn # perform operation
fdiv.s f29, f8, f20, rdn # perform operation
fdiv.s f29, f8, f20, rmm # perform operation
fdiv.s f29, f8, f20, rne # perform operation
fdiv.s f29, f8, f20, rtz # perform operation
fdiv.s f29, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fdiv.s f6, f15, f27, dyn # perform operation
fdiv.s f6, f15, f27, rdn # perform operation
fdiv.s f6, f15, f27, rmm # perform operation
fdiv.s f6, f15, f27, rne # perform operation
fdiv.s f6, f15, f27, rtz # perform operation
fdiv.s f6, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fdiv.s f12, f7, f20, dyn # perform operation
fdiv.s f12, f7, f20, rdn # perform operation
fdiv.s f12, f7, f20, rmm # perform operation
fdiv.s f12, f7, f20, rne # perform operation
fdiv.s f12, f7, f20, rtz # perform operation
fdiv.s f12, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fdiv.s f1, f3, f5, dyn # perform operation
fdiv.s f1, f3, f5, rdn # perform operation
fdiv.s f1, f3, f5, rmm # perform operation
fdiv.s f1, f3, f5, rne # perform operation
fdiv.s f1, f3, f5, rtz # perform operation
fdiv.s f1, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fdiv.s f31, f5, f10, dyn # perform operation
fdiv.s f31, f5, f10, rdn # perform operation
fdiv.s f31, f5, f10, rmm # perform operation
fdiv.s f31, f5, f10, rne # perform operation
fdiv.s f31, f5, f10, rtz # perform operation
fdiv.s f31, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fdiv.s f19, f6, f21, dyn # perform operation
fdiv.s f19, f6, f21, rdn # perform operation
fdiv.s f19, f6, f21, rmm # perform operation
fdiv.s f19, f6, f21, rne # perform operation
fdiv.s f19, f6, f21, rtz # perform operation
fdiv.s f19, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fdiv.s f21, f13, f24, dyn # perform operation
fdiv.s f21, f13, f24, rdn # perform operation
fdiv.s f21, f13, f24, rmm # perform operation
fdiv.s f21, f13, f24, rne # perform operation
fdiv.s f21, f13, f24, rtz # perform operation
fdiv.s f21, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fdiv.s f9, f11, f6, dyn # perform operation
fdiv.s f9, f11, f6, rdn # perform operation
fdiv.s f9, f11, f6, rmm # perform operation
fdiv.s f9, f11, f6, rne # perform operation
fdiv.s f9, f11, f6, rtz # perform operation
fdiv.s f9, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fdiv.s f9, f11, f20, dyn # perform operation
fdiv.s f9, f11, f20, rdn # perform operation
fdiv.s f9, f11, f20, rmm # perform operation
fdiv.s f9, f11, f20, rne # perform operation
fdiv.s f9, f11, f20, rtz # perform operation
fdiv.s f9, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f1, f29, f20, dyn # perform operation
fdiv.s f1, f29, f20, rdn # perform operation
fdiv.s f1, f29, f20, rmm # perform operation
fdiv.s f1, f29, f20, rne # perform operation
fdiv.s f1, f29, f20, rtz # perform operation
fdiv.s f1, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fdiv.s f10, f26, f3, dyn # perform operation
fdiv.s f10, f26, f3, rdn # perform operation
fdiv.s f10, f26, f3, rmm # perform operation
fdiv.s f10, f26, f3, rne # perform operation
fdiv.s f10, f26, f3, rtz # perform operation
fdiv.s f10, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fdiv.s f22, f17, f10, dyn # perform operation
fdiv.s f22, f17, f10, rdn # perform operation
fdiv.s f22, f17, f10, rmm # perform operation
fdiv.s f22, f17, f10, rne # perform operation
fdiv.s f22, f17, f10, rtz # perform operation
fdiv.s f22, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fdiv.s f19, f11, f18, dyn # perform operation
fdiv.s f19, f11, f18, rdn # perform operation
fdiv.s f19, f11, f18, rmm # perform operation
fdiv.s f19, f11, f18, rne # perform operation
fdiv.s f19, f11, f18, rtz # perform operation
fdiv.s f19, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fdiv.s f10, f12, f9, dyn # perform operation
fdiv.s f10, f12, f9, rdn # perform operation
fdiv.s f10, f12, f9, rmm # perform operation
fdiv.s f10, f12, f9, rne # perform operation
fdiv.s f10, f12, f9, rtz # perform operation
fdiv.s f10, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fdiv.s f24, f7, f5, dyn # perform operation
fdiv.s f24, f7, f5, rdn # perform operation
fdiv.s f24, f7, f5, rmm # perform operation
fdiv.s f24, f7, f5, rne # perform operation
fdiv.s f24, f7, f5, rtz # perform operation
fdiv.s f24, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fdiv.s f9, f5, f30, dyn # perform operation
fdiv.s f9, f5, f30, rdn # perform operation
fdiv.s f9, f5, f30, rmm # perform operation
fdiv.s f9, f5, f30, rne # perform operation
fdiv.s f9, f5, f30, rtz # perform operation
fdiv.s f9, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fdiv.s f30, f8, f25, dyn # perform operation
fdiv.s f30, f8, f25, rdn # perform operation
fdiv.s f30, f8, f25, rmm # perform operation
fdiv.s f30, f8, f25, rne # perform operation
fdiv.s f30, f8, f25, rtz # perform operation
fdiv.s f30, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fdiv.s f29, f3, f26, dyn # perform operation
fdiv.s f29, f3, f26, rdn # perform operation
fdiv.s f29, f3, f26, rmm # perform operation
fdiv.s f29, f3, f26, rne # perform operation
fdiv.s f29, f3, f26, rtz # perform operation
fdiv.s f29, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fdiv.s f9, f10, f5, dyn # perform operation
fdiv.s f9, f10, f5, rdn # perform operation
fdiv.s f9, f10, f5, rmm # perform operation
fdiv.s f9, f10, f5, rne # perform operation
fdiv.s f9, f10, f5, rtz # perform operation
fdiv.s f9, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fdiv.s f24, f21, f3, dyn # perform operation
fdiv.s f24, f21, f3, rdn # perform operation
fdiv.s f24, f21, f3, rmm # perform operation
fdiv.s f24, f21, f3, rne # perform operation
fdiv.s f24, f21, f3, rtz # perform operation
fdiv.s f24, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fdiv.s f18, f28, f14, dyn # perform operation
fdiv.s f18, f28, f14, rdn # perform operation
fdiv.s f18, f28, f14, rmm # perform operation
fdiv.s f18, f28, f14, rne # perform operation
fdiv.s f18, f28, f14, rtz # perform operation
fdiv.s f18, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fdiv.s f22, f15, f16, dyn # perform operation
fdiv.s f22, f15, f16, rdn # perform operation
fdiv.s f22, f15, f16, rmm # perform operation
fdiv.s f22, f15, f16, rne # perform operation
fdiv.s f22, f15, f16, rtz # perform operation
fdiv.s f22, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fdiv.s f21, f5, f8, dyn # perform operation
fdiv.s f21, f5, f8, rdn # perform operation
fdiv.s f21, f5, f8, rmm # perform operation
fdiv.s f21, f5, f8, rne # perform operation
fdiv.s f21, f5, f8, rtz # perform operation
fdiv.s f21, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fdiv.s f10, f17, f31, dyn # perform operation
fdiv.s f10, f17, f31, rdn # perform operation
fdiv.s f10, f17, f31, rmm # perform operation
fdiv.s f10, f17, f31, rne # perform operation
fdiv.s f10, f17, f31, rtz # perform operation
fdiv.s f10, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fdiv.s f12, f17, f13, dyn # perform operation
fdiv.s f12, f17, f13, rdn # perform operation
fdiv.s f12, f17, f13, rmm # perform operation
fdiv.s f12, f17, f13, rne # perform operation
fdiv.s f12, f17, f13, rtz # perform operation
fdiv.s f12, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fdiv.s f26, f14, f5, dyn # perform operation
fdiv.s f26, f14, f5, rdn # perform operation
fdiv.s f26, f14, f5, rmm # perform operation
fdiv.s f26, f14, f5, rne # perform operation
fdiv.s f26, f14, f5, rtz # perform operation
fdiv.s f26, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fdiv.s f23, f14, f6, dyn # perform operation
fdiv.s f23, f14, f6, rdn # perform operation
fdiv.s f23, f14, f6, rmm # perform operation
fdiv.s f23, f14, f6, rne # perform operation
fdiv.s f23, f14, f6, rtz # perform operation
fdiv.s f23, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fdiv.s f5, f2, f24, dyn # perform operation
fdiv.s f5, f2, f24, rdn # perform operation
fdiv.s f5, f2, f24, rmm # perform operation
fdiv.s f5, f2, f24, rne # perform operation
fdiv.s f5, f2, f24, rtz # perform operation
fdiv.s f5, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fdiv.s f25, f15, f6, dyn # perform operation
fdiv.s f25, f15, f6, rdn # perform operation
fdiv.s f25, f15, f6, rmm # perform operation
fdiv.s f25, f15, f6, rne # perform operation
fdiv.s f25, f15, f6, rtz # perform operation
fdiv.s f25, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fdiv.s f17, f8, f21, dyn # perform operation
fdiv.s f17, f8, f21, rdn # perform operation
fdiv.s f17, f8, f21, rmm # perform operation
fdiv.s f17, f8, f21, rne # perform operation
fdiv.s f17, f8, f21, rtz # perform operation
fdiv.s f17, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fdiv.s f20, f18, f8, dyn # perform operation
fdiv.s f20, f18, f8, rdn # perform operation
fdiv.s f20, f18, f8, rmm # perform operation
fdiv.s f20, f18, f8, rne # perform operation
fdiv.s f20, f18, f8, rtz # perform operation
fdiv.s f20, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fdiv.s f17, f5, f22, dyn # perform operation
fdiv.s f17, f5, f22, rdn # perform operation
fdiv.s f17, f5, f22, rmm # perform operation
fdiv.s f17, f5, f22, rne # perform operation
fdiv.s f17, f5, f22, rtz # perform operation
fdiv.s f17, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fdiv.s f13, f27, f23, dyn # perform operation
fdiv.s f13, f27, f23, rdn # perform operation
fdiv.s f13, f27, f23, rmm # perform operation
fdiv.s f13, f27, f23, rne # perform operation
fdiv.s f13, f27, f23, rtz # perform operation
fdiv.s f13, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fdiv.s f8, f2, f13, dyn # perform operation
fdiv.s f8, f2, f13, rdn # perform operation
fdiv.s f8, f2, f13, rmm # perform operation
fdiv.s f8, f2, f13, rne # perform operation
fdiv.s f8, f2, f13, rtz # perform operation
fdiv.s f8, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fdiv.s f24, f23, f10, dyn # perform operation
fdiv.s f24, f23, f10, rdn # perform operation
fdiv.s f24, f23, f10, rmm # perform operation
fdiv.s f24, f23, f10, rne # perform operation
fdiv.s f24, f23, f10, rtz # perform operation
fdiv.s f24, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fdiv.s f6, f26, f7, dyn # perform operation
fdiv.s f6, f26, f7, rdn # perform operation
fdiv.s f6, f26, f7, rmm # perform operation
fdiv.s f6, f26, f7, rne # perform operation
fdiv.s f6, f26, f7, rtz # perform operation
fdiv.s f6, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f17, f31, f23, dyn # perform operation
fdiv.s f17, f31, f23, rdn # perform operation
fdiv.s f17, f31, f23, rmm # perform operation
fdiv.s f17, f31, f23, rne # perform operation
fdiv.s f17, f31, f23, rtz # perform operation
fdiv.s f17, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.s f19, f30, f14, dyn # perform operation
fdiv.s f19, f30, f14, rdn # perform operation
fdiv.s f19, f30, f14, rmm # perform operation
fdiv.s f19, f30, f14, rne # perform operation
fdiv.s f19, f30, f14, rtz # perform operation
fdiv.s f19, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fdiv.s f9, f3, f17, dyn # perform operation
fdiv.s f9, f3, f17, rdn # perform operation
fdiv.s f9, f3, f17, rmm # perform operation
fdiv.s f9, f3, f17, rne # perform operation
fdiv.s f9, f3, f17, rtz # perform operation
fdiv.s f9, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fdiv.s f9, f21, f6, dyn # perform operation
fdiv.s f9, f21, f6, rdn # perform operation
fdiv.s f9, f21, f6, rmm # perform operation
fdiv.s f9, f21, f6, rne # perform operation
fdiv.s f9, f21, f6, rtz # perform operation
fdiv.s f9, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fdiv.s f2, f8, f21, dyn # perform operation
fdiv.s f2, f8, f21, rdn # perform operation
fdiv.s f2, f8, f21, rmm # perform operation
fdiv.s f2, f8, f21, rne # perform operation
fdiv.s f2, f8, f21, rtz # perform operation
fdiv.s f2, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fdiv.s f17, f11, f9, dyn # perform operation
fdiv.s f17, f11, f9, rdn # perform operation
fdiv.s f17, f11, f9, rmm # perform operation
fdiv.s f17, f11, f9, rne # perform operation
fdiv.s f17, f11, f9, rtz # perform operation
fdiv.s f17, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fdiv.s f27, f31, f10, dyn # perform operation
fdiv.s f27, f31, f10, rdn # perform operation
fdiv.s f27, f31, f10, rmm # perform operation
fdiv.s f27, f31, f10, rne # perform operation
fdiv.s f27, f31, f10, rtz # perform operation
fdiv.s f27, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fdiv.s f5, f18, f29, dyn # perform operation
fdiv.s f5, f18, f29, rdn # perform operation
fdiv.s f5, f18, f29, rmm # perform operation
fdiv.s f5, f18, f29, rne # perform operation
fdiv.s f5, f18, f29, rtz # perform operation
fdiv.s f5, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fdiv.s f10, f7, f16, dyn # perform operation
fdiv.s f10, f7, f16, rdn # perform operation
fdiv.s f10, f7, f16, rmm # perform operation
fdiv.s f10, f7, f16, rne # perform operation
fdiv.s f10, f7, f16, rtz # perform operation
fdiv.s f10, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fdiv.s f9, f15, f8, dyn # perform operation
fdiv.s f9, f15, f8, rdn # perform operation
fdiv.s f9, f15, f8, rmm # perform operation
fdiv.s f9, f15, f8, rne # perform operation
fdiv.s f9, f15, f8, rtz # perform operation
fdiv.s f9, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fdiv.s f12, f24, f13, dyn # perform operation
fdiv.s f12, f24, f13, rdn # perform operation
fdiv.s f12, f24, f13, rmm # perform operation
fdiv.s f12, f24, f13, rne # perform operation
fdiv.s f12, f24, f13, rtz # perform operation
fdiv.s f12, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fdiv.s f26, f14, f7, dyn # perform operation
fdiv.s f26, f14, f7, rdn # perform operation
fdiv.s f26, f14, f7, rmm # perform operation
fdiv.s f26, f14, f7, rne # perform operation
fdiv.s f26, f14, f7, rtz # perform operation
fdiv.s f26, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fdiv.s f23, f30, f10, dyn # perform operation
fdiv.s f23, f30, f10, rdn # perform operation
fdiv.s f23, f30, f10, rmm # perform operation
fdiv.s f23, f30, f10, rne # perform operation
fdiv.s f23, f30, f10, rtz # perform operation
fdiv.s f23, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fdiv.s f30, f19, f10, dyn # perform operation
fdiv.s f30, f19, f10, rdn # perform operation
fdiv.s f30, f19, f10, rmm # perform operation
fdiv.s f30, f19, f10, rne # perform operation
fdiv.s f30, f19, f10, rtz # perform operation
fdiv.s f30, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fdiv.s f20, f15, f8, dyn # perform operation
fdiv.s f20, f15, f8, rdn # perform operation
fdiv.s f20, f15, f8, rmm # perform operation
fdiv.s f20, f15, f8, rne # perform operation
fdiv.s f20, f15, f8, rtz # perform operation
fdiv.s f20, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fdiv.s f24, f1, f15, dyn # perform operation
fdiv.s f24, f1, f15, rdn # perform operation
fdiv.s f24, f1, f15, rmm # perform operation
fdiv.s f24, f1, f15, rne # perform operation
fdiv.s f24, f1, f15, rtz # perform operation
fdiv.s f24, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fdiv.s f31, f9, f12, dyn # perform operation
fdiv.s f31, f9, f12, rdn # perform operation
fdiv.s f31, f9, f12, rmm # perform operation
fdiv.s f31, f9, f12, rne # perform operation
fdiv.s f31, f9, f12, rtz # perform operation
fdiv.s f31, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.s f25, f11, f8, dyn # perform operation
fdiv.s f25, f11, f8, rdn # perform operation
fdiv.s f25, f11, f8, rmm # perform operation
fdiv.s f25, f11, f8, rne # perform operation
fdiv.s f25, f11, f8, rtz # perform operation
fdiv.s f25, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f24, f15, f13, dyn # perform operation
fdiv.s f24, f15, f13, rdn # perform operation
fdiv.s f24, f15, f13, rmm # perform operation
fdiv.s f24, f15, f13, rne # perform operation
fdiv.s f24, f15, f13, rtz # perform operation
fdiv.s f24, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fdiv.s f26, f20, f19, dyn # perform operation
fdiv.s f26, f20, f19, rdn # perform operation
fdiv.s f26, f20, f19, rmm # perform operation
fdiv.s f26, f20, f19, rne # perform operation
fdiv.s f26, f20, f19, rtz # perform operation
fdiv.s f26, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fdiv.s f18, f11, f15, dyn # perform operation
fdiv.s f18, f11, f15, rdn # perform operation
fdiv.s f18, f11, f15, rmm # perform operation
fdiv.s f18, f11, f15, rne # perform operation
fdiv.s f18, f11, f15, rtz # perform operation
fdiv.s f18, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fdiv.s f31, f5, f27, dyn # perform operation
fdiv.s f31, f5, f27, rdn # perform operation
fdiv.s f31, f5, f27, rmm # perform operation
fdiv.s f31, f5, f27, rne # perform operation
fdiv.s f31, f5, f27, rtz # perform operation
fdiv.s f31, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fdiv.s f28, f26, f1, dyn # perform operation
fdiv.s f28, f26, f1, rdn # perform operation
fdiv.s f28, f26, f1, rmm # perform operation
fdiv.s f28, f26, f1, rne # perform operation
fdiv.s f28, f26, f1, rtz # perform operation
fdiv.s f28, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f26, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fdiv.s f19, f24, f27, dyn # perform operation
fdiv.s f19, f24, f27, rdn # perform operation
fdiv.s f19, f24, f27, rmm # perform operation
fdiv.s f19, f24, f27, rne # perform operation
fdiv.s f19, f24, f27, rtz # perform operation
fdiv.s f19, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fdiv.s f25, f22, f1, dyn # perform operation
fdiv.s f25, f22, f1, rdn # perform operation
fdiv.s f25, f22, f1, rmm # perform operation
fdiv.s f25, f22, f1, rne # perform operation
fdiv.s f25, f22, f1, rtz # perform operation
fdiv.s f25, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fdiv.s f13, f24, f19, dyn # perform operation
fdiv.s f13, f24, f19, rdn # perform operation
fdiv.s f13, f24, f19, rmm # perform operation
fdiv.s f13, f24, f19, rne # perform operation
fdiv.s f13, f24, f19, rtz # perform operation
fdiv.s f13, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fdiv.s f13, f24, f27, dyn # perform operation
fdiv.s f13, f24, f27, rdn # perform operation
fdiv.s f13, f24, f27, rmm # perform operation
fdiv.s f13, f24, f27, rne # perform operation
fdiv.s f13, f24, f27, rtz # perform operation
fdiv.s f13, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fdiv.s f7, f25, f23, dyn # perform operation
fdiv.s f7, f25, f23, rdn # perform operation
fdiv.s f7, f25, f23, rmm # perform operation
fdiv.s f7, f25, f23, rne # perform operation
fdiv.s f7, f25, f23, rtz # perform operation
fdiv.s f7, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f29, f10, f11, dyn # perform operation
fdiv.s f29, f10, f11, rdn # perform operation
fdiv.s f29, f10, f11, rmm # perform operation
fdiv.s f29, f10, f11, rne # perform operation
fdiv.s f29, f10, f11, rtz # perform operation
fdiv.s f29, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.s f10, f24, f12, dyn # perform operation
fdiv.s f10, f24, f12, rdn # perform operation
fdiv.s f10, f24, f12, rmm # perform operation
fdiv.s f10, f24, f12, rne # perform operation
fdiv.s f10, f24, f12, rtz # perform operation
fdiv.s f10, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fdiv.s f12, f16, f28, dyn # perform operation
fdiv.s f12, f16, f28, rdn # perform operation
fdiv.s f12, f16, f28, rmm # perform operation
fdiv.s f12, f16, f28, rne # perform operation
fdiv.s f12, f16, f28, rtz # perform operation
fdiv.s f12, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fdiv.s f20, f14, f23, dyn # perform operation
fdiv.s f20, f14, f23, rdn # perform operation
fdiv.s f20, f14, f23, rmm # perform operation
fdiv.s f20, f14, f23, rne # perform operation
fdiv.s f20, f14, f23, rtz # perform operation
fdiv.s f20, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fdiv.s f2, f27, f13, dyn # perform operation
fdiv.s f2, f27, f13, rdn # perform operation
fdiv.s f2, f27, f13, rmm # perform operation
fdiv.s f2, f27, f13, rne # perform operation
fdiv.s f2, f27, f13, rtz # perform operation
fdiv.s f2, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fdiv.s f31, f23, f10, dyn # perform operation
fdiv.s f31, f23, f10, rdn # perform operation
fdiv.s f31, f23, f10, rmm # perform operation
fdiv.s f31, f23, f10, rne # perform operation
fdiv.s f31, f23, f10, rtz # perform operation
fdiv.s f31, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fdiv.s f26, f14, f20, dyn # perform operation
fdiv.s f26, f14, f20, rdn # perform operation
fdiv.s f26, f14, f20, rmm # perform operation
fdiv.s f26, f14, f20, rne # perform operation
fdiv.s f26, f14, f20, rtz # perform operation
fdiv.s f26, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fdiv.s f23, f26, f7, dyn # perform operation
fdiv.s f23, f26, f7, rdn # perform operation
fdiv.s f23, f26, f7, rmm # perform operation
fdiv.s f23, f26, f7, rne # perform operation
fdiv.s f23, f26, f7, rtz # perform operation
fdiv.s f23, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fdiv.s f8, f7, f27, dyn # perform operation
fdiv.s f8, f7, f27, rdn # perform operation
fdiv.s f8, f7, f27, rmm # perform operation
fdiv.s f8, f7, f27, rne # perform operation
fdiv.s f8, f7, f27, rtz # perform operation
fdiv.s f8, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fdiv.s f31, f6, f3, dyn # perform operation
fdiv.s f31, f6, f3, rdn # perform operation
fdiv.s f31, f6, f3, rmm # perform operation
fdiv.s f31, f6, f3, rne # perform operation
fdiv.s f31, f6, f3, rtz # perform operation
fdiv.s f31, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f13, f21, f19, dyn # perform operation
fdiv.s f13, f21, f19, rdn # perform operation
fdiv.s f13, f21, f19, rmm # perform operation
fdiv.s f13, f21, f19, rne # perform operation
fdiv.s f13, f21, f19, rtz # perform operation
fdiv.s f13, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fdiv.s f20, f31, f21, dyn # perform operation
fdiv.s f20, f31, f21, rdn # perform operation
fdiv.s f20, f31, f21, rmm # perform operation
fdiv.s f20, f31, f21, rne # perform operation
fdiv.s f20, f31, f21, rtz # perform operation
fdiv.s f20, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fdiv.s f1, f7, f26, dyn # perform operation
fdiv.s f1, f7, f26, rdn # perform operation
fdiv.s f1, f7, f26, rmm # perform operation
fdiv.s f1, f7, f26, rne # perform operation
fdiv.s f1, f7, f26, rtz # perform operation
fdiv.s f1, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fdiv.s f13, f5, f15, dyn # perform operation
fdiv.s f13, f5, f15, rdn # perform operation
fdiv.s f13, f5, f15, rmm # perform operation
fdiv.s f13, f5, f15, rne # perform operation
fdiv.s f13, f5, f15, rtz # perform operation
fdiv.s f13, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f17, f11, f30, dyn # perform operation
fdiv.s f17, f11, f30, rdn # perform operation
fdiv.s f17, f11, f30, rmm # perform operation
fdiv.s f17, f11, f30, rne # perform operation
fdiv.s f17, f11, f30, rtz # perform operation
fdiv.s f17, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fdiv.s f16, f19, f29, dyn # perform operation
fdiv.s f16, f19, f29, rdn # perform operation
fdiv.s f16, f19, f29, rmm # perform operation
fdiv.s f16, f19, f29, rne # perform operation
fdiv.s f16, f19, f29, rtz # perform operation
fdiv.s f16, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fdiv.s f25, f22, f15, dyn # perform operation
fdiv.s f25, f22, f15, rdn # perform operation
fdiv.s f25, f22, f15, rmm # perform operation
fdiv.s f25, f22, f15, rne # perform operation
fdiv.s f25, f22, f15, rtz # perform operation
fdiv.s f25, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fdiv.s f28, f18, f5, dyn # perform operation
fdiv.s f28, f18, f5, rdn # perform operation
fdiv.s f28, f18, f5, rmm # perform operation
fdiv.s f28, f18, f5, rne # perform operation
fdiv.s f28, f18, f5, rtz # perform operation
fdiv.s f28, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fdiv.s f3, f7, f14, dyn # perform operation
fdiv.s f3, f7, f14, rdn # perform operation
fdiv.s f3, f7, f14, rmm # perform operation
fdiv.s f3, f7, f14, rne # perform operation
fdiv.s f3, f7, f14, rtz # perform operation
fdiv.s f3, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fdiv.s f25, f20, f14, dyn # perform operation
fdiv.s f25, f20, f14, rdn # perform operation
fdiv.s f25, f20, f14, rmm # perform operation
fdiv.s f25, f20, f14, rne # perform operation
fdiv.s f25, f20, f14, rtz # perform operation
fdiv.s f25, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fdiv.s f30, f26, f16, dyn # perform operation
fdiv.s f30, f26, f16, rdn # perform operation
fdiv.s f30, f26, f16, rmm # perform operation
fdiv.s f30, f26, f16, rne # perform operation
fdiv.s f30, f26, f16, rtz # perform operation
fdiv.s f30, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fdiv.s f25, f13, f19, dyn # perform operation
fdiv.s f25, f13, f19, rdn # perform operation
fdiv.s f25, f13, f19, rmm # perform operation
fdiv.s f25, f13, f19, rne # perform operation
fdiv.s f25, f13, f19, rtz # perform operation
fdiv.s f25, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fdiv.s f2, f11, f21, dyn # perform operation
fdiv.s f2, f11, f21, rdn # perform operation
fdiv.s f2, f11, f21, rmm # perform operation
fdiv.s f2, f11, f21, rne # perform operation
fdiv.s f2, f11, f21, rtz # perform operation
fdiv.s f2, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
fdiv.s f22, f16, f23, dyn # perform operation
fdiv.s f22, f16, f23, rdn # perform operation
fdiv.s f22, f16, f23, rmm # perform operation
fdiv.s f22, f16, f23, rne # perform operation
fdiv.s f22, f16, f23, rtz # perform operation
fdiv.s f22, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fdiv.s f28, f29, f23, dyn # perform operation
fdiv.s f28, f29, f23, rdn # perform operation
fdiv.s f28, f29, f23, rmm # perform operation
fdiv.s f28, f29, f23, rne # perform operation
fdiv.s f28, f29, f23, rtz # perform operation
fdiv.s f28, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fdiv.s f28, f19, f6, dyn # perform operation
fdiv.s f28, f19, f6, rdn # perform operation
fdiv.s f28, f19, f6, rmm # perform operation
fdiv.s f28, f19, f6, rne # perform operation
fdiv.s f28, f19, f6, rtz # perform operation
fdiv.s f28, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fdiv.s f6, f27, f2, dyn # perform operation
fdiv.s f6, f27, f2, rdn # perform operation
fdiv.s f6, f27, f2, rmm # perform operation
fdiv.s f6, f27, f2, rne # perform operation
fdiv.s f6, f27, f2, rtz # perform operation
fdiv.s f6, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fdiv.s f2, f6, f9, dyn # perform operation
fdiv.s f2, f6, f9, rdn # perform operation
fdiv.s f2, f6, f9, rmm # perform operation
fdiv.s f2, f6, f9, rne # perform operation
fdiv.s f2, f6, f9, rtz # perform operation
fdiv.s f2, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fdiv.s f19, f10, f12, dyn # perform operation
fdiv.s f19, f10, f12, rdn # perform operation
fdiv.s f19, f10, f12, rmm # perform operation
fdiv.s f19, f10, f12, rne # perform operation
fdiv.s f19, f10, f12, rtz # perform operation
fdiv.s f19, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f11, f15, f20, dyn # perform operation
fdiv.s f11, f15, f20, rdn # perform operation
fdiv.s f11, f15, f20, rmm # perform operation
fdiv.s f11, f15, f20, rne # perform operation
fdiv.s f11, f15, f20, rtz # perform operation
fdiv.s f11, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fdiv.s f8, f27, f16, dyn # perform operation
fdiv.s f8, f27, f16, rdn # perform operation
fdiv.s f8, f27, f16, rmm # perform operation
fdiv.s f8, f27, f16, rne # perform operation
fdiv.s f8, f27, f16, rtz # perform operation
fdiv.s f8, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fdiv.s f22, f19, f6, dyn # perform operation
fdiv.s f22, f19, f6, rdn # perform operation
fdiv.s f22, f19, f6, rmm # perform operation
fdiv.s f22, f19, f6, rne # perform operation
fdiv.s f22, f19, f6, rtz # perform operation
fdiv.s f22, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fdiv.s f14, f18, f20, dyn # perform operation
fdiv.s f14, f18, f20, rdn # perform operation
fdiv.s f14, f18, f20, rmm # perform operation
fdiv.s f14, f18, f20, rne # perform operation
fdiv.s f14, f18, f20, rtz # perform operation
fdiv.s f14, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fdiv.s f20, f17, f18, dyn # perform operation
fdiv.s f20, f17, f18, rdn # perform operation
fdiv.s f20, f17, f18, rmm # perform operation
fdiv.s f20, f17, f18, rne # perform operation
fdiv.s f20, f17, f18, rtz # perform operation
fdiv.s f20, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fdiv.s f30, f6, f12, dyn # perform operation
fdiv.s f30, f6, f12, rdn # perform operation
fdiv.s f30, f6, f12, rmm # perform operation
fdiv.s f30, f6, f12, rne # perform operation
fdiv.s f30, f6, f12, rtz # perform operation
fdiv.s f30, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f3, f8, f27, dyn # perform operation
fdiv.s f3, f8, f27, rdn # perform operation
fdiv.s f3, f8, f27, rmm # perform operation
fdiv.s f3, f8, f27, rne # perform operation
fdiv.s f3, f8, f27, rtz # perform operation
fdiv.s f3, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fdiv.s f11, f20, f25, dyn # perform operation
fdiv.s f11, f20, f25, rdn # perform operation
fdiv.s f11, f20, f25, rmm # perform operation
fdiv.s f11, f20, f25, rne # perform operation
fdiv.s f11, f20, f25, rtz # perform operation
fdiv.s f11, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f25, f31, f22, dyn # perform operation
fdiv.s f25, f31, f22, rdn # perform operation
fdiv.s f25, f31, f22, rmm # perform operation
fdiv.s f25, f31, f22, rne # perform operation
fdiv.s f25, f31, f22, rtz # perform operation
fdiv.s f25, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fdiv.s f2, f20, f14, dyn # perform operation
fdiv.s f2, f20, f14, rdn # perform operation
fdiv.s f2, f20, f14, rmm # perform operation
fdiv.s f2, f20, f14, rne # perform operation
fdiv.s f2, f20, f14, rtz # perform operation
fdiv.s f2, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fdiv.s f2, f9, f14, dyn # perform operation
fdiv.s f2, f9, f14, rdn # perform operation
fdiv.s f2, f9, f14, rmm # perform operation
fdiv.s f2, f9, f14, rne # perform operation
fdiv.s f2, f9, f14, rtz # perform operation
fdiv.s f2, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fdiv.s f14, f19, f5, dyn # perform operation
fdiv.s f14, f19, f5, rdn # perform operation
fdiv.s f14, f19, f5, rmm # perform operation
fdiv.s f14, f19, f5, rne # perform operation
fdiv.s f14, f19, f5, rtz # perform operation
fdiv.s f14, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fdiv.s f10, f30, f31, dyn # perform operation
fdiv.s f10, f30, f31, rdn # perform operation
fdiv.s f10, f30, f31, rmm # perform operation
fdiv.s f10, f30, f31, rne # perform operation
fdiv.s f10, f30, f31, rtz # perform operation
fdiv.s f10, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fdiv.s f29, f31, f12, dyn # perform operation
fdiv.s f29, f31, f12, rdn # perform operation
fdiv.s f29, f31, f12, rmm # perform operation
fdiv.s f29, f31, f12, rne # perform operation
fdiv.s f29, f31, f12, rtz # perform operation
fdiv.s f29, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fdiv.s f7, f27, f13, dyn # perform operation
fdiv.s f7, f27, f13, rdn # perform operation
fdiv.s f7, f27, f13, rmm # perform operation
fdiv.s f7, f27, f13, rne # perform operation
fdiv.s f7, f27, f13, rtz # perform operation
fdiv.s f7, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fdiv.s f1, f10, f2, dyn # perform operation
fdiv.s f1, f10, f2, rdn # perform operation
fdiv.s f1, f10, f2, rmm # perform operation
fdiv.s f1, f10, f2, rne # perform operation
fdiv.s f1, f10, f2, rtz # perform operation
fdiv.s f1, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.s f18, f21, f30, dyn # perform operation
fdiv.s f18, f21, f30, rdn # perform operation
fdiv.s f18, f21, f30, rmm # perform operation
fdiv.s f18, f21, f30, rne # perform operation
fdiv.s f18, f21, f30, rtz # perform operation
fdiv.s f18, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fdiv.s f28, f21, f8, dyn # perform operation
fdiv.s f28, f21, f8, rdn # perform operation
fdiv.s f28, f21, f8, rmm # perform operation
fdiv.s f28, f21, f8, rne # perform operation
fdiv.s f28, f21, f8, rtz # perform operation
fdiv.s f28, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fdiv.s f17, f10, f8, dyn # perform operation
fdiv.s f17, f10, f8, rdn # perform operation
fdiv.s f17, f10, f8, rmm # perform operation
fdiv.s f17, f10, f8, rne # perform operation
fdiv.s f17, f10, f8, rtz # perform operation
fdiv.s f17, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fdiv.s f13, f21, f27, dyn # perform operation
fdiv.s f13, f21, f27, rdn # perform operation
fdiv.s f13, f21, f27, rmm # perform operation
fdiv.s f13, f21, f27, rne # perform operation
fdiv.s f13, f21, f27, rtz # perform operation
fdiv.s f13, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fdiv.s f3, f7, f23, dyn # perform operation
fdiv.s f3, f7, f23, rdn # perform operation
fdiv.s f3, f7, f23, rmm # perform operation
fdiv.s f3, f7, f23, rne # perform operation
fdiv.s f3, f7, f23, rtz # perform operation
fdiv.s f3, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fdiv.s f30, f20, f2, dyn # perform operation
fdiv.s f30, f20, f2, rdn # perform operation
fdiv.s f30, f20, f2, rmm # perform operation
fdiv.s f30, f20, f2, rne # perform operation
fdiv.s f30, f20, f2, rtz # perform operation
fdiv.s f30, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fdiv.s f9, f27, f19, dyn # perform operation
fdiv.s f9, f27, f19, rdn # perform operation
fdiv.s f9, f27, f19, rmm # perform operation
fdiv.s f9, f27, f19, rne # perform operation
fdiv.s f9, f27, f19, rtz # perform operation
fdiv.s f9, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f31, f15, f11, dyn # perform operation
fdiv.s f31, f15, f11, rdn # perform operation
fdiv.s f31, f15, f11, rmm # perform operation
fdiv.s f31, f15, f11, rne # perform operation
fdiv.s f31, f15, f11, rtz # perform operation
fdiv.s f31, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fdiv.s f15, f10, f27, dyn # perform operation
fdiv.s f15, f10, f27, rdn # perform operation
fdiv.s f15, f10, f27, rmm # perform operation
fdiv.s f15, f10, f27, rne # perform operation
fdiv.s f15, f10, f27, rtz # perform operation
fdiv.s f15, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fdiv.s f5, f30, f25, dyn # perform operation
fdiv.s f5, f30, f25, rdn # perform operation
fdiv.s f5, f30, f25, rmm # perform operation
fdiv.s f5, f30, f25, rne # perform operation
fdiv.s f5, f30, f25, rtz # perform operation
fdiv.s f5, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fdiv.s f6, f15, f21, dyn # perform operation
fdiv.s f6, f15, f21, rdn # perform operation
fdiv.s f6, f15, f21, rmm # perform operation
fdiv.s f6, f15, f21, rne # perform operation
fdiv.s f6, f15, f21, rtz # perform operation
fdiv.s f6, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fdiv.s f24, f20, f2, dyn # perform operation
fdiv.s f24, f20, f2, rdn # perform operation
fdiv.s f24, f20, f2, rmm # perform operation
fdiv.s f24, f20, f2, rne # perform operation
fdiv.s f24, f20, f2, rtz # perform operation
fdiv.s f24, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fdiv.s f14, f16, f18, dyn # perform operation
fdiv.s f14, f16, f18, rdn # perform operation
fdiv.s f14, f16, f18, rmm # perform operation
fdiv.s f14, f16, f18, rne # perform operation
fdiv.s f14, f16, f18, rtz # perform operation
fdiv.s f14, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fdiv.s f25, f1, f19, dyn # perform operation
fdiv.s f25, f1, f19, rdn # perform operation
fdiv.s f25, f1, f19, rmm # perform operation
fdiv.s f25, f1, f19, rne # perform operation
fdiv.s f25, f1, f19, rtz # perform operation
fdiv.s f25, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fdiv.s f21, f12, f27, dyn # perform operation
fdiv.s f21, f12, f27, rdn # perform operation
fdiv.s f21, f12, f27, rmm # perform operation
fdiv.s f21, f12, f27, rne # perform operation
fdiv.s f21, f12, f27, rtz # perform operation
fdiv.s f21, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fdiv.s f22, f18, f29, dyn # perform operation
fdiv.s f22, f18, f29, rdn # perform operation
fdiv.s f22, f18, f29, rmm # perform operation
fdiv.s f22, f18, f29, rne # perform operation
fdiv.s f22, f18, f29, rtz # perform operation
fdiv.s f22, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fdiv.s f21, f19, f27, dyn # perform operation
fdiv.s f21, f19, f27, rdn # perform operation
fdiv.s f21, f19, f27, rmm # perform operation
fdiv.s f21, f19, f27, rne # perform operation
fdiv.s f21, f19, f27, rtz # perform operation
fdiv.s f21, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f19, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fdiv.s f18, f17, f19, dyn # perform operation
fdiv.s f18, f17, f19, rdn # perform operation
fdiv.s f18, f17, f19, rmm # perform operation
fdiv.s f18, f17, f19, rne # perform operation
fdiv.s f18, f17, f19, rtz # perform operation
fdiv.s f18, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fdiv.s f23, f31, f30, dyn # perform operation
fdiv.s f23, f31, f30, rdn # perform operation
fdiv.s f23, f31, f30, rmm # perform operation
fdiv.s f23, f31, f30, rne # perform operation
fdiv.s f23, f31, f30, rtz # perform operation
fdiv.s f23, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fdiv.s f21, f25, f6, dyn # perform operation
fdiv.s f21, f25, f6, rdn # perform operation
fdiv.s f21, f25, f6, rmm # perform operation
fdiv.s f21, f25, f6, rne # perform operation
fdiv.s f21, f25, f6, rtz # perform operation
fdiv.s f21, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fdiv.s f15, f3, f14, dyn # perform operation
fdiv.s f15, f3, f14, rdn # perform operation
fdiv.s f15, f3, f14, rmm # perform operation
fdiv.s f15, f3, f14, rne # perform operation
fdiv.s f15, f3, f14, rtz # perform operation
fdiv.s f15, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fdiv.s f15, f22, f12, dyn # perform operation
fdiv.s f15, f22, f12, rdn # perform operation
fdiv.s f15, f22, f12, rmm # perform operation
fdiv.s f15, f22, f12, rne # perform operation
fdiv.s f15, f22, f12, rtz # perform operation
fdiv.s f15, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f23, f14, f16, dyn # perform operation
fdiv.s f23, f14, f16, rdn # perform operation
fdiv.s f23, f14, f16, rmm # perform operation
fdiv.s f23, f14, f16, rne # perform operation
fdiv.s f23, f14, f16, rtz # perform operation
fdiv.s f23, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fdiv.s f30, f31, f17, dyn # perform operation
fdiv.s f30, f31, f17, rdn # perform operation
fdiv.s f30, f31, f17, rmm # perform operation
fdiv.s f30, f31, f17, rne # perform operation
fdiv.s f30, f31, f17, rtz # perform operation
fdiv.s f30, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fdiv.s f16, f9, f19, dyn # perform operation
fdiv.s f16, f9, f19, rdn # perform operation
fdiv.s f16, f9, f19, rmm # perform operation
fdiv.s f16, f9, f19, rne # perform operation
fdiv.s f16, f9, f19, rtz # perform operation
fdiv.s f16, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fdiv.s f10, f25, f6, dyn # perform operation
fdiv.s f10, f25, f6, rdn # perform operation
fdiv.s f10, f25, f6, rmm # perform operation
fdiv.s f10, f25, f6, rne # perform operation
fdiv.s f10, f25, f6, rtz # perform operation
fdiv.s f10, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fdiv.s f28, f31, f19, dyn # perform operation
fdiv.s f28, f31, f19, rdn # perform operation
fdiv.s f28, f31, f19, rmm # perform operation
fdiv.s f28, f31, f19, rne # perform operation
fdiv.s f28, f31, f19, rtz # perform operation
fdiv.s f28, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fdiv.s f26, f1, f7, dyn # perform operation
fdiv.s f26, f1, f7, rdn # perform operation
fdiv.s f26, f1, f7, rmm # perform operation
fdiv.s f26, f1, f7, rne # perform operation
fdiv.s f26, f1, f7, rtz # perform operation
fdiv.s f26, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f29, f21, f6, dyn # perform operation
fdiv.s f29, f21, f6, rdn # perform operation
fdiv.s f29, f21, f6, rmm # perform operation
fdiv.s f29, f21, f6, rne # perform operation
fdiv.s f29, f21, f6, rtz # perform operation
fdiv.s f29, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fdiv.s f28, f18, f3, dyn # perform operation
fdiv.s f28, f18, f3, rdn # perform operation
fdiv.s f28, f18, f3, rmm # perform operation
fdiv.s f28, f18, f3, rne # perform operation
fdiv.s f28, f18, f3, rtz # perform operation
fdiv.s f28, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fdiv.s f17, f14, f6, dyn # perform operation
fdiv.s f17, f14, f6, rdn # perform operation
fdiv.s f17, f14, f6, rmm # perform operation
fdiv.s f17, f14, f6, rne # perform operation
fdiv.s f17, f14, f6, rtz # perform operation
fdiv.s f17, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fdiv.s f15, f12, f17, dyn # perform operation
fdiv.s f15, f12, f17, rdn # perform operation
fdiv.s f15, f12, f17, rmm # perform operation
fdiv.s f15, f12, f17, rne # perform operation
fdiv.s f15, f12, f17, rtz # perform operation
fdiv.s f15, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fdiv.s f10, f26, f21, dyn # perform operation
fdiv.s f10, f26, f21, rdn # perform operation
fdiv.s f10, f26, f21, rmm # perform operation
fdiv.s f10, f26, f21, rne # perform operation
fdiv.s f10, f26, f21, rtz # perform operation
fdiv.s f10, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fdiv.s f22, f13, f25, dyn # perform operation
fdiv.s f22, f13, f25, rdn # perform operation
fdiv.s f22, f13, f25, rmm # perform operation
fdiv.s f22, f13, f25, rne # perform operation
fdiv.s f22, f13, f25, rtz # perform operation
fdiv.s f22, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fdiv.s f25, f2, f12, dyn # perform operation
fdiv.s f25, f2, f12, rdn # perform operation
fdiv.s f25, f2, f12, rmm # perform operation
fdiv.s f25, f2, f12, rne # perform operation
fdiv.s f25, f2, f12, rtz # perform operation
fdiv.s f25, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fdiv.s f1, f13, f17, dyn # perform operation
fdiv.s f1, f13, f17, rdn # perform operation
fdiv.s f1, f13, f17, rmm # perform operation
fdiv.s f1, f13, f17, rne # perform operation
fdiv.s f1, f13, f17, rtz # perform operation
fdiv.s f1, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f6, f25, f14, dyn # perform operation
fdiv.s f6, f25, f14, rdn # perform operation
fdiv.s f6, f25, f14, rmm # perform operation
fdiv.s f6, f25, f14, rne # perform operation
fdiv.s f6, f25, f14, rtz # perform operation
fdiv.s f6, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fdiv.s f7, f29, f31, dyn # perform operation
fdiv.s f7, f29, f31, rdn # perform operation
fdiv.s f7, f29, f31, rmm # perform operation
fdiv.s f7, f29, f31, rne # perform operation
fdiv.s f7, f29, f31, rtz # perform operation
fdiv.s f7, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fdiv.s f5, f25, f29, dyn # perform operation
fdiv.s f5, f25, f29, rdn # perform operation
fdiv.s f5, f25, f29, rmm # perform operation
fdiv.s f5, f25, f29, rne # perform operation
fdiv.s f5, f25, f29, rtz # perform operation
fdiv.s f5, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fdiv.s f23, f16, f9, dyn # perform operation
fdiv.s f23, f16, f9, rdn # perform operation
fdiv.s f23, f16, f9, rmm # perform operation
fdiv.s f23, f16, f9, rne # perform operation
fdiv.s f23, f16, f9, rtz # perform operation
fdiv.s f23, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.s f9, f3, f19, dyn # perform operation
fdiv.s f9, f3, f19, rdn # perform operation
fdiv.s f9, f3, f19, rmm # perform operation
fdiv.s f9, f3, f19, rne # perform operation
fdiv.s f9, f3, f19, rtz # perform operation
fdiv.s f9, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f27, f26, f31, dyn # perform operation
fdiv.s f27, f26, f31, rdn # perform operation
fdiv.s f27, f26, f31, rmm # perform operation
fdiv.s f27, f26, f31, rne # perform operation
fdiv.s f27, f26, f31, rtz # perform operation
fdiv.s f27, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f28, f16, f22, dyn # perform operation
fdiv.s f28, f16, f22, rdn # perform operation
fdiv.s f28, f16, f22, rmm # perform operation
fdiv.s f28, f16, f22, rne # perform operation
fdiv.s f28, f16, f22, rtz # perform operation
fdiv.s f28, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fdiv.s f29, f10, f22, dyn # perform operation
fdiv.s f29, f10, f22, rdn # perform operation
fdiv.s f29, f10, f22, rmm # perform operation
fdiv.s f29, f10, f22, rne # perform operation
fdiv.s f29, f10, f22, rtz # perform operation
fdiv.s f29, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fdiv.s f8, f16, f1, dyn # perform operation
fdiv.s f8, f16, f1, rdn # perform operation
fdiv.s f8, f16, f1, rmm # perform operation
fdiv.s f8, f16, f1, rne # perform operation
fdiv.s f8, f16, f1, rtz # perform operation
fdiv.s f8, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fdiv.s f31, f25, f1, dyn # perform operation
fdiv.s f31, f25, f1, rdn # perform operation
fdiv.s f31, f25, f1, rmm # perform operation
fdiv.s f31, f25, f1, rne # perform operation
fdiv.s f31, f25, f1, rtz # perform operation
fdiv.s f31, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fdiv.s f30, f12, f2, dyn # perform operation
fdiv.s f30, f12, f2, rdn # perform operation
fdiv.s f30, f12, f2, rmm # perform operation
fdiv.s f30, f12, f2, rne # perform operation
fdiv.s f30, f12, f2, rtz # perform operation
fdiv.s f30, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fdiv.s f22, f23, f8, dyn # perform operation
fdiv.s f22, f23, f8, rdn # perform operation
fdiv.s f22, f23, f8, rmm # perform operation
fdiv.s f22, f23, f8, rne # perform operation
fdiv.s f22, f23, f8, rtz # perform operation
fdiv.s f22, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fdiv.s f12, f19, f14, dyn # perform operation
fdiv.s f12, f19, f14, rdn # perform operation
fdiv.s f12, f19, f14, rmm # perform operation
fdiv.s f12, f19, f14, rne # perform operation
fdiv.s f12, f19, f14, rtz # perform operation
fdiv.s f12, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fdiv.s f21, f12, f5, dyn # perform operation
fdiv.s f21, f12, f5, rdn # perform operation
fdiv.s f21, f12, f5, rmm # perform operation
fdiv.s f21, f12, f5, rne # perform operation
fdiv.s f21, f12, f5, rtz # perform operation
fdiv.s f21, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f15, f9, f1, dyn # perform operation
fdiv.s f15, f9, f1, rdn # perform operation
fdiv.s f15, f9, f1, rmm # perform operation
fdiv.s f15, f9, f1, rne # perform operation
fdiv.s f15, f9, f1, rtz # perform operation
fdiv.s f15, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fdiv.s f8, f20, f12, dyn # perform operation
fdiv.s f8, f20, f12, rdn # perform operation
fdiv.s f8, f20, f12, rmm # perform operation
fdiv.s f8, f20, f12, rne # perform operation
fdiv.s f8, f20, f12, rtz # perform operation
fdiv.s f8, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f15, f12, f26, dyn # perform operation
fdiv.s f15, f12, f26, rdn # perform operation
fdiv.s f15, f12, f26, rmm # perform operation
fdiv.s f15, f12, f26, rne # perform operation
fdiv.s f15, f12, f26, rtz # perform operation
fdiv.s f15, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f3, f13, f30, dyn # perform operation
fdiv.s f3, f13, f30, rdn # perform operation
fdiv.s f3, f13, f30, rmm # perform operation
fdiv.s f3, f13, f30, rne # perform operation
fdiv.s f3, f13, f30, rtz # perform operation
fdiv.s f3, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f24, f3, f23, dyn # perform operation
fdiv.s f24, f3, f23, rdn # perform operation
fdiv.s f24, f3, f23, rmm # perform operation
fdiv.s f24, f3, f23, rne # perform operation
fdiv.s f24, f3, f23, rtz # perform operation
fdiv.s f24, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fdiv.s f8, f23, f13, dyn # perform operation
fdiv.s f8, f23, f13, rdn # perform operation
fdiv.s f8, f23, f13, rmm # perform operation
fdiv.s f8, f23, f13, rne # perform operation
fdiv.s f8, f23, f13, rtz # perform operation
fdiv.s f8, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.s f20, f19, f16, dyn # perform operation
fdiv.s f20, f19, f16, rdn # perform operation
fdiv.s f20, f19, f16, rmm # perform operation
fdiv.s f20, f19, f16, rne # perform operation
fdiv.s f20, f19, f16, rtz # perform operation
fdiv.s f20, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fdiv.s f15, f14, f25, dyn # perform operation
fdiv.s f15, f14, f25, rdn # perform operation
fdiv.s f15, f14, f25, rmm # perform operation
fdiv.s f15, f14, f25, rne # perform operation
fdiv.s f15, f14, f25, rtz # perform operation
fdiv.s f15, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fdiv.s f9, f16, f20, dyn # perform operation
fdiv.s f9, f16, f20, rdn # perform operation
fdiv.s f9, f16, f20, rmm # perform operation
fdiv.s f9, f16, f20, rne # perform operation
fdiv.s f9, f16, f20, rtz # perform operation
fdiv.s f9, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fdiv.s f15, f29, f13, dyn # perform operation
fdiv.s f15, f29, f13, rdn # perform operation
fdiv.s f15, f29, f13, rmm # perform operation
fdiv.s f15, f29, f13, rne # perform operation
fdiv.s f15, f29, f13, rtz # perform operation
fdiv.s f15, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f24, f13, f18, dyn # perform operation
fdiv.s f24, f13, f18, rdn # perform operation
fdiv.s f24, f13, f18, rmm # perform operation
fdiv.s f24, f13, f18, rne # perform operation
fdiv.s f24, f13, f18, rtz # perform operation
fdiv.s f24, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fdiv.s f6, f25, f17, dyn # perform operation
fdiv.s f6, f25, f17, rdn # perform operation
fdiv.s f6, f25, f17, rmm # perform operation
fdiv.s f6, f25, f17, rne # perform operation
fdiv.s f6, f25, f17, rtz # perform operation
fdiv.s f6, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fdiv.s f20, f28, f3, dyn # perform operation
fdiv.s f20, f28, f3, rdn # perform operation
fdiv.s f20, f28, f3, rmm # perform operation
fdiv.s f20, f28, f3, rne # perform operation
fdiv.s f20, f28, f3, rtz # perform operation
fdiv.s f20, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fdiv.s f30, f29, f9, dyn # perform operation
fdiv.s f30, f29, f9, rdn # perform operation
fdiv.s f30, f29, f9, rmm # perform operation
fdiv.s f30, f29, f9, rne # perform operation
fdiv.s f30, f29, f9, rtz # perform operation
fdiv.s f30, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fdiv.s f28, f12, f22, dyn # perform operation
fdiv.s f28, f12, f22, rdn # perform operation
fdiv.s f28, f12, f22, rmm # perform operation
fdiv.s f28, f12, f22, rne # perform operation
fdiv.s f28, f12, f22, rtz # perform operation
fdiv.s f28, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fdiv.s f23, f11, f10, dyn # perform operation
fdiv.s f23, f11, f10, rdn # perform operation
fdiv.s f23, f11, f10, rmm # perform operation
fdiv.s f23, f11, f10, rne # perform operation
fdiv.s f23, f11, f10, rtz # perform operation
fdiv.s f23, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fdiv.s f29, f27, f11, dyn # perform operation
fdiv.s f29, f27, f11, rdn # perform operation
fdiv.s f29, f27, f11, rmm # perform operation
fdiv.s f29, f27, f11, rne # perform operation
fdiv.s f29, f27, f11, rtz # perform operation
fdiv.s f29, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fdiv.s f15, f12, f18, dyn # perform operation
fdiv.s f15, f12, f18, rdn # perform operation
fdiv.s f15, f12, f18, rmm # perform operation
fdiv.s f15, f12, f18, rne # perform operation
fdiv.s f15, f12, f18, rtz # perform operation
fdiv.s f15, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fdiv.s f1, f6, f22, dyn # perform operation
fdiv.s f1, f6, f22, rdn # perform operation
fdiv.s f1, f6, f22, rmm # perform operation
fdiv.s f1, f6, f22, rne # perform operation
fdiv.s f1, f6, f22, rtz # perform operation
fdiv.s f1, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fdiv.s f10, f21, f20, dyn # perform operation
fdiv.s f10, f21, f20, rdn # perform operation
fdiv.s f10, f21, f20, rmm # perform operation
fdiv.s f10, f21, f20, rne # perform operation
fdiv.s f10, f21, f20, rtz # perform operation
fdiv.s f10, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fdiv.s f23, f15, f1, dyn # perform operation
fdiv.s f23, f15, f1, rdn # perform operation
fdiv.s f23, f15, f1, rmm # perform operation
fdiv.s f23, f15, f1, rne # perform operation
fdiv.s f23, f15, f1, rtz # perform operation
fdiv.s f23, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fdiv.s f29, f25, f5, dyn # perform operation
fdiv.s f29, f25, f5, rdn # perform operation
fdiv.s f29, f25, f5, rmm # perform operation
fdiv.s f29, f25, f5, rne # perform operation
fdiv.s f29, f25, f5, rtz # perform operation
fdiv.s f29, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fdiv.s f2, f25, f31, dyn # perform operation
fdiv.s f2, f25, f31, rdn # perform operation
fdiv.s f2, f25, f31, rmm # perform operation
fdiv.s f2, f25, f31, rne # perform operation
fdiv.s f2, f25, f31, rtz # perform operation
fdiv.s f2, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f27, f8, f6, dyn # perform operation
fdiv.s f27, f8, f6, rdn # perform operation
fdiv.s f27, f8, f6, rmm # perform operation
fdiv.s f27, f8, f6, rne # perform operation
fdiv.s f27, f8, f6, rtz # perform operation
fdiv.s f27, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fdiv.s f21, f24, f5, dyn # perform operation
fdiv.s f21, f24, f5, rdn # perform operation
fdiv.s f21, f24, f5, rmm # perform operation
fdiv.s f21, f24, f5, rne # perform operation
fdiv.s f21, f24, f5, rtz # perform operation
fdiv.s f21, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fdiv.s f27, f2, f14, dyn # perform operation
fdiv.s f27, f2, f14, rdn # perform operation
fdiv.s f27, f2, f14, rmm # perform operation
fdiv.s f27, f2, f14, rne # perform operation
fdiv.s f27, f2, f14, rtz # perform operation
fdiv.s f27, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fdiv.s f8, f7, f30, dyn # perform operation
fdiv.s f8, f7, f30, rdn # perform operation
fdiv.s f8, f7, f30, rmm # perform operation
fdiv.s f8, f7, f30, rne # perform operation
fdiv.s f8, f7, f30, rtz # perform operation
fdiv.s f8, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fdiv.s f21, f23, f28, dyn # perform operation
fdiv.s f21, f23, f28, rdn # perform operation
fdiv.s f21, f23, f28, rmm # perform operation
fdiv.s f21, f23, f28, rne # perform operation
fdiv.s f21, f23, f28, rtz # perform operation
fdiv.s f21, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fdiv.s f28, f15, f25, dyn # perform operation
fdiv.s f28, f15, f25, rdn # perform operation
fdiv.s f28, f15, f25, rmm # perform operation
fdiv.s f28, f15, f25, rne # perform operation
fdiv.s f28, f15, f25, rtz # perform operation
fdiv.s f28, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fdiv.s f23, f1, f2, dyn # perform operation
fdiv.s f23, f1, f2, rdn # perform operation
fdiv.s f23, f1, f2, rmm # perform operation
fdiv.s f23, f1, f2, rne # perform operation
fdiv.s f23, f1, f2, rtz # perform operation
fdiv.s f23, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fdiv.s f17, f23, f12, dyn # perform operation
fdiv.s f17, f23, f12, rdn # perform operation
fdiv.s f17, f23, f12, rmm # perform operation
fdiv.s f17, f23, f12, rne # perform operation
fdiv.s f17, f23, f12, rtz # perform operation
fdiv.s f17, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fdiv.s f19, f12, f27, dyn # perform operation
fdiv.s f19, f12, f27, rdn # perform operation
fdiv.s f19, f12, f27, rmm # perform operation
fdiv.s f19, f12, f27, rne # perform operation
fdiv.s f19, f12, f27, rtz # perform operation
fdiv.s f19, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fdiv.s f3, f12, f25, dyn # perform operation
fdiv.s f3, f12, f25, rdn # perform operation
fdiv.s f3, f12, f25, rmm # perform operation
fdiv.s f3, f12, f25, rne # perform operation
fdiv.s f3, f12, f25, rtz # perform operation
fdiv.s f3, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fdiv.s f24, f28, f10, dyn # perform operation
fdiv.s f24, f28, f10, rdn # perform operation
fdiv.s f24, f28, f10, rmm # perform operation
fdiv.s f24, f28, f10, rne # perform operation
fdiv.s f24, f28, f10, rtz # perform operation
fdiv.s f24, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.s f16, f3, f30, dyn # perform operation
fdiv.s f16, f3, f30, rdn # perform operation
fdiv.s f16, f3, f30, rmm # perform operation
fdiv.s f16, f3, f30, rne # perform operation
fdiv.s f16, f3, f30, rtz # perform operation
fdiv.s f16, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fdiv.s f24, f13, f14, dyn # perform operation
fdiv.s f24, f13, f14, rdn # perform operation
fdiv.s f24, f13, f14, rmm # perform operation
fdiv.s f24, f13, f14, rne # perform operation
fdiv.s f24, f13, f14, rtz # perform operation
fdiv.s f24, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fdiv.s f1, f15, f10, dyn # perform operation
fdiv.s f1, f15, f10, rdn # perform operation
fdiv.s f1, f15, f10, rmm # perform operation
fdiv.s f1, f15, f10, rne # perform operation
fdiv.s f1, f15, f10, rtz # perform operation
fdiv.s f1, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fdiv.s f21, f19, f6, dyn # perform operation
fdiv.s f21, f19, f6, rdn # perform operation
fdiv.s f21, f19, f6, rmm # perform operation
fdiv.s f21, f19, f6, rne # perform operation
fdiv.s f21, f19, f6, rtz # perform operation
fdiv.s f21, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fdiv.s f25, f16, f13, dyn # perform operation
fdiv.s f25, f16, f13, rdn # perform operation
fdiv.s f25, f16, f13, rmm # perform operation
fdiv.s f25, f16, f13, rne # perform operation
fdiv.s f25, f16, f13, rtz # perform operation
fdiv.s f25, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f16, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fdiv.s f5, f20, f29, dyn # perform operation
fdiv.s f5, f20, f29, rdn # perform operation
fdiv.s f5, f20, f29, rmm # perform operation
fdiv.s f5, f20, f29, rne # perform operation
fdiv.s f5, f20, f29, rtz # perform operation
fdiv.s f5, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fdiv.s f10, f17, f7, dyn # perform operation
fdiv.s f10, f17, f7, rdn # perform operation
fdiv.s f10, f17, f7, rmm # perform operation
fdiv.s f10, f17, f7, rne # perform operation
fdiv.s f10, f17, f7, rtz # perform operation
fdiv.s f10, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fdiv.s f20, f18, f24, dyn # perform operation
fdiv.s f20, f18, f24, rdn # perform operation
fdiv.s f20, f18, f24, rmm # perform operation
fdiv.s f20, f18, f24, rne # perform operation
fdiv.s f20, f18, f24, rtz # perform operation
fdiv.s f20, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fdiv.s f5, f9, f3, dyn # perform operation
fdiv.s f5, f9, f3, rdn # perform operation
fdiv.s f5, f9, f3, rmm # perform operation
fdiv.s f5, f9, f3, rne # perform operation
fdiv.s f5, f9, f3, rtz # perform operation
fdiv.s f5, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fdiv.s f29, f26, f25, dyn # perform operation
fdiv.s f29, f26, f25, rdn # perform operation
fdiv.s f29, f26, f25, rmm # perform operation
fdiv.s f29, f26, f25, rne # perform operation
fdiv.s f29, f26, f25, rtz # perform operation
fdiv.s f29, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fdiv.s f2, f16, f14, dyn # perform operation
fdiv.s f2, f16, f14, rdn # perform operation
fdiv.s f2, f16, f14, rmm # perform operation
fdiv.s f2, f16, f14, rne # perform operation
fdiv.s f2, f16, f14, rtz # perform operation
fdiv.s f2, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f2, f10, f23, dyn # perform operation
fdiv.s f2, f10, f23, rdn # perform operation
fdiv.s f2, f10, f23, rmm # perform operation
fdiv.s f2, f10, f23, rne # perform operation
fdiv.s f2, f10, f23, rtz # perform operation
fdiv.s f2, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.s f31, f28, f15, dyn # perform operation
fdiv.s f31, f28, f15, rdn # perform operation
fdiv.s f31, f28, f15, rmm # perform operation
fdiv.s f31, f28, f15, rne # perform operation
fdiv.s f31, f28, f15, rtz # perform operation
fdiv.s f31, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f6, f25, f8, dyn # perform operation
fdiv.s f6, f25, f8, rdn # perform operation
fdiv.s f6, f25, f8, rmm # perform operation
fdiv.s f6, f25, f8, rne # perform operation
fdiv.s f6, f25, f8, rtz # perform operation
fdiv.s f6, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fdiv.s f18, f1, f2, dyn # perform operation
fdiv.s f18, f1, f2, rdn # perform operation
fdiv.s f18, f1, f2, rmm # perform operation
fdiv.s f18, f1, f2, rne # perform operation
fdiv.s f18, f1, f2, rtz # perform operation
fdiv.s f18, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fdiv.s f16, f28, f30, dyn # perform operation
fdiv.s f16, f28, f30, rdn # perform operation
fdiv.s f16, f28, f30, rmm # perform operation
fdiv.s f16, f28, f30, rne # perform operation
fdiv.s f16, f28, f30, rtz # perform operation
fdiv.s f16, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f18, f7, f16, dyn # perform operation
fdiv.s f18, f7, f16, rdn # perform operation
fdiv.s f18, f7, f16, rmm # perform operation
fdiv.s f18, f7, f16, rne # perform operation
fdiv.s f18, f7, f16, rtz # perform operation
fdiv.s f18, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fdiv.s f20, f29, f22, dyn # perform operation
fdiv.s f20, f29, f22, rdn # perform operation
fdiv.s f20, f29, f22, rmm # perform operation
fdiv.s f20, f29, f22, rne # perform operation
fdiv.s f20, f29, f22, rtz # perform operation
fdiv.s f20, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fdiv.s f20, f5, f30, dyn # perform operation
fdiv.s f20, f5, f30, rdn # perform operation
fdiv.s f20, f5, f30, rmm # perform operation
fdiv.s f20, f5, f30, rne # perform operation
fdiv.s f20, f5, f30, rtz # perform operation
fdiv.s f20, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fdiv.s f24, f22, f13, dyn # perform operation
fdiv.s f24, f22, f13, rdn # perform operation
fdiv.s f24, f22, f13, rmm # perform operation
fdiv.s f24, f22, f13, rne # perform operation
fdiv.s f24, f22, f13, rtz # perform operation
fdiv.s f24, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fdiv.s f23, f16, f30, dyn # perform operation
fdiv.s f23, f16, f30, rdn # perform operation
fdiv.s f23, f16, f30, rmm # perform operation
fdiv.s f23, f16, f30, rne # perform operation
fdiv.s f23, f16, f30, rtz # perform operation
fdiv.s f23, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fdiv.s f2, f23, f21, dyn # perform operation
fdiv.s f2, f23, f21, rdn # perform operation
fdiv.s f2, f23, f21, rmm # perform operation
fdiv.s f2, f23, f21, rne # perform operation
fdiv.s f2, f23, f21, rtz # perform operation
fdiv.s f2, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f23, f8, f15, dyn # perform operation
fdiv.s f23, f8, f15, rdn # perform operation
fdiv.s f23, f8, f15, rmm # perform operation
fdiv.s f23, f8, f15, rne # perform operation
fdiv.s f23, f8, f15, rtz # perform operation
fdiv.s f23, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fdiv.s f31, f8, f22, dyn # perform operation
fdiv.s f31, f8, f22, rdn # perform operation
fdiv.s f31, f8, f22, rmm # perform operation
fdiv.s f31, f8, f22, rne # perform operation
fdiv.s f31, f8, f22, rtz # perform operation
fdiv.s f31, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fdiv.s f16, f23, f2, dyn # perform operation
fdiv.s f16, f23, f2, rdn # perform operation
fdiv.s f16, f23, f2, rmm # perform operation
fdiv.s f16, f23, f2, rne # perform operation
fdiv.s f16, f23, f2, rtz # perform operation
fdiv.s f16, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f23, f13, f30, dyn # perform operation
fdiv.s f23, f13, f30, rdn # perform operation
fdiv.s f23, f13, f30, rmm # perform operation
fdiv.s f23, f13, f30, rne # perform operation
fdiv.s f23, f13, f30, rtz # perform operation
fdiv.s f23, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fdiv.s f13, f6, f27, dyn # perform operation
fdiv.s f13, f6, f27, rdn # perform operation
fdiv.s f13, f6, f27, rmm # perform operation
fdiv.s f13, f6, f27, rne # perform operation
fdiv.s f13, f6, f27, rtz # perform operation
fdiv.s f13, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fdiv.s f1, f14, f29, dyn # perform operation
fdiv.s f1, f14, f29, rdn # perform operation
fdiv.s f1, f14, f29, rmm # perform operation
fdiv.s f1, f14, f29, rne # perform operation
fdiv.s f1, f14, f29, rtz # perform operation
fdiv.s f1, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.s f17, f14, f13, dyn # perform operation
fdiv.s f17, f14, f13, rdn # perform operation
fdiv.s f17, f14, f13, rmm # perform operation
fdiv.s f17, f14, f13, rne # perform operation
fdiv.s f17, f14, f13, rtz # perform operation
fdiv.s f17, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fdiv.s f1, f22, f24, dyn # perform operation
fdiv.s f1, f22, f24, rdn # perform operation
fdiv.s f1, f22, f24, rmm # perform operation
fdiv.s f1, f22, f24, rne # perform operation
fdiv.s f1, f22, f24, rtz # perform operation
fdiv.s f1, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f19, f27, f11, dyn # perform operation
fdiv.s f19, f27, f11, rdn # perform operation
fdiv.s f19, f27, f11, rmm # perform operation
fdiv.s f19, f27, f11, rne # perform operation
fdiv.s f19, f27, f11, rtz # perform operation
fdiv.s f19, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fdiv.s f1, f7, f19, dyn # perform operation
fdiv.s f1, f7, f19, rdn # perform operation
fdiv.s f1, f7, f19, rmm # perform operation
fdiv.s f1, f7, f19, rne # perform operation
fdiv.s f1, f7, f19, rtz # perform operation
fdiv.s f1, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fdiv.s f16, f11, f26, dyn # perform operation
fdiv.s f16, f11, f26, rdn # perform operation
fdiv.s f16, f11, f26, rmm # perform operation
fdiv.s f16, f11, f26, rne # perform operation
fdiv.s f16, f11, f26, rtz # perform operation
fdiv.s f16, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fdiv.s f3, f15, f2, dyn # perform operation
fdiv.s f3, f15, f2, rdn # perform operation
fdiv.s f3, f15, f2, rmm # perform operation
fdiv.s f3, f15, f2, rne # perform operation
fdiv.s f3, f15, f2, rtz # perform operation
fdiv.s f3, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fdiv.s f15, f23, f2, dyn # perform operation
fdiv.s f15, f23, f2, rdn # perform operation
fdiv.s f15, f23, f2, rmm # perform operation
fdiv.s f15, f23, f2, rne # perform operation
fdiv.s f15, f23, f2, rtz # perform operation
fdiv.s f15, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fdiv.s f3, f31, f15, dyn # perform operation
fdiv.s f3, f31, f15, rdn # perform operation
fdiv.s f3, f31, f15, rmm # perform operation
fdiv.s f3, f31, f15, rne # perform operation
fdiv.s f3, f31, f15, rtz # perform operation
fdiv.s f3, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fdiv.s f5, f7, f12, dyn # perform operation
fdiv.s f5, f7, f12, rdn # perform operation
fdiv.s f5, f7, f12, rmm # perform operation
fdiv.s f5, f7, f12, rne # perform operation
fdiv.s f5, f7, f12, rtz # perform operation
fdiv.s f5, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fdiv.s f17, f5, f2, dyn # perform operation
fdiv.s f17, f5, f2, rdn # perform operation
fdiv.s f17, f5, f2, rmm # perform operation
fdiv.s f17, f5, f2, rne # perform operation
fdiv.s f17, f5, f2, rtz # perform operation
fdiv.s f17, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fdiv.s f28, f12, f27, dyn # perform operation
fdiv.s f28, f12, f27, rdn # perform operation
fdiv.s f28, f12, f27, rmm # perform operation
fdiv.s f28, f12, f27, rne # perform operation
fdiv.s f28, f12, f27, rtz # perform operation
fdiv.s f28, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fdiv.s f31, f15, f13, dyn # perform operation
fdiv.s f31, f15, f13, rdn # perform operation
fdiv.s f31, f15, f13, rmm # perform operation
fdiv.s f31, f15, f13, rne # perform operation
fdiv.s f31, f15, f13, rtz # perform operation
fdiv.s f31, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.s f13, f9, f5, dyn # perform operation
fdiv.s f13, f9, f5, rdn # perform operation
fdiv.s f13, f9, f5, rmm # perform operation
fdiv.s f13, f9, f5, rne # perform operation
fdiv.s f13, f9, f5, rtz # perform operation
fdiv.s f13, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fdiv.s f14, f12, f1, dyn # perform operation
fdiv.s f14, f12, f1, rdn # perform operation
fdiv.s f14, f12, f1, rmm # perform operation
fdiv.s f14, f12, f1, rne # perform operation
fdiv.s f14, f12, f1, rtz # perform operation
fdiv.s f14, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fdiv.s f29, f25, f9, dyn # perform operation
fdiv.s f29, f25, f9, rdn # perform operation
fdiv.s f29, f25, f9, rmm # perform operation
fdiv.s f29, f25, f9, rne # perform operation
fdiv.s f29, f25, f9, rtz # perform operation
fdiv.s f29, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fdiv.s f12, f17, f31, dyn # perform operation
fdiv.s f12, f17, f31, rdn # perform operation
fdiv.s f12, f17, f31, rmm # perform operation
fdiv.s f12, f17, f31, rne # perform operation
fdiv.s f12, f17, f31, rtz # perform operation
fdiv.s f12, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fdiv.s f16, f26, f15, dyn # perform operation
fdiv.s f16, f26, f15, rdn # perform operation
fdiv.s f16, f26, f15, rmm # perform operation
fdiv.s f16, f26, f15, rne # perform operation
fdiv.s f16, f26, f15, rtz # perform operation
fdiv.s f16, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fdiv.s f12, f26, f16, dyn # perform operation
fdiv.s f12, f26, f16, rdn # perform operation
fdiv.s f12, f26, f16, rmm # perform operation
fdiv.s f12, f26, f16, rne # perform operation
fdiv.s f12, f26, f16, rtz # perform operation
fdiv.s f12, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fdiv.s f23, f28, f18, dyn # perform operation
fdiv.s f23, f28, f18, rdn # perform operation
fdiv.s f23, f28, f18, rmm # perform operation
fdiv.s f23, f28, f18, rne # perform operation
fdiv.s f23, f28, f18, rtz # perform operation
fdiv.s f23, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fdiv.s f23, f14, f1, dyn # perform operation
fdiv.s f23, f14, f1, rdn # perform operation
fdiv.s f23, f14, f1, rmm # perform operation
fdiv.s f23, f14, f1, rne # perform operation
fdiv.s f23, f14, f1, rtz # perform operation
fdiv.s f23, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fdiv.s f24, f12, f5, dyn # perform operation
fdiv.s f24, f12, f5, rdn # perform operation
fdiv.s f24, f12, f5, rmm # perform operation
fdiv.s f24, f12, f5, rne # perform operation
fdiv.s f24, f12, f5, rtz # perform operation
fdiv.s f24, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fdiv.s f2, f5, f21, dyn # perform operation
fdiv.s f2, f5, f21, rdn # perform operation
fdiv.s f2, f5, f21, rmm # perform operation
fdiv.s f2, f5, f21, rne # perform operation
fdiv.s f2, f5, f21, rtz # perform operation
fdiv.s f2, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fdiv.s f15, f28, f3, dyn # perform operation
fdiv.s f15, f28, f3, rdn # perform operation
fdiv.s f15, f28, f3, rmm # perform operation
fdiv.s f15, f28, f3, rne # perform operation
fdiv.s f15, f28, f3, rtz # perform operation
fdiv.s f15, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fdiv.s f17, f30, f14, dyn # perform operation
fdiv.s f17, f30, f14, rdn # perform operation
fdiv.s f17, f30, f14, rmm # perform operation
fdiv.s f17, f30, f14, rne # perform operation
fdiv.s f17, f30, f14, rtz # perform operation
fdiv.s f17, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fdiv.s f26, f22, f10, dyn # perform operation
fdiv.s f26, f22, f10, rdn # perform operation
fdiv.s f26, f22, f10, rmm # perform operation
fdiv.s f26, f22, f10, rne # perform operation
fdiv.s f26, f22, f10, rtz # perform operation
fdiv.s f26, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fdiv.s f2, f22, f1, dyn # perform operation
fdiv.s f2, f22, f1, rdn # perform operation
fdiv.s f2, f22, f1, rmm # perform operation
fdiv.s f2, f22, f1, rne # perform operation
fdiv.s f2, f22, f1, rtz # perform operation
fdiv.s f2, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f29, f25, f16, dyn # perform operation
fdiv.s f29, f25, f16, rdn # perform operation
fdiv.s f29, f25, f16, rmm # perform operation
fdiv.s f29, f25, f16, rne # perform operation
fdiv.s f29, f25, f16, rtz # perform operation
fdiv.s f29, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fdiv.s f10, f3, f20, dyn # perform operation
fdiv.s f10, f3, f20, rdn # perform operation
fdiv.s f10, f3, f20, rmm # perform operation
fdiv.s f10, f3, f20, rne # perform operation
fdiv.s f10, f3, f20, rtz # perform operation
fdiv.s f10, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.s f14, f6, f9, dyn # perform operation
fdiv.s f14, f6, f9, rdn # perform operation
fdiv.s f14, f6, f9, rmm # perform operation
fdiv.s f14, f6, f9, rne # perform operation
fdiv.s f14, f6, f9, rtz # perform operation
fdiv.s f14, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fdiv.s f25, f24, f23, dyn # perform operation
fdiv.s f25, f24, f23, rdn # perform operation
fdiv.s f25, f24, f23, rmm # perform operation
fdiv.s f25, f24, f23, rne # perform operation
fdiv.s f25, f24, f23, rtz # perform operation
fdiv.s f25, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fdiv.s f24, f26, f17, dyn # perform operation
fdiv.s f24, f26, f17, rdn # perform operation
fdiv.s f24, f26, f17, rmm # perform operation
fdiv.s f24, f26, f17, rne # perform operation
fdiv.s f24, f26, f17, rtz # perform operation
fdiv.s f24, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fdiv.s f30, f24, f7, dyn # perform operation
fdiv.s f30, f24, f7, rdn # perform operation
fdiv.s f30, f24, f7, rmm # perform operation
fdiv.s f30, f24, f7, rne # perform operation
fdiv.s f30, f24, f7, rtz # perform operation
fdiv.s f30, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fdiv.s f26, f16, f23, dyn # perform operation
fdiv.s f26, f16, f23, rdn # perform operation
fdiv.s f26, f16, f23, rmm # perform operation
fdiv.s f26, f16, f23, rne # perform operation
fdiv.s f26, f16, f23, rtz # perform operation
fdiv.s f26, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fdiv.s f16, f15, f23, dyn # perform operation
fdiv.s f16, f15, f23, rdn # perform operation
fdiv.s f16, f15, f23, rmm # perform operation
fdiv.s f16, f15, f23, rne # perform operation
fdiv.s f16, f15, f23, rtz # perform operation
fdiv.s f16, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
fdiv.s f21, f14, f11, dyn # perform operation
fdiv.s f21, f14, f11, rdn # perform operation
fdiv.s f21, f14, f11, rmm # perform operation
fdiv.s f21, f14, f11, rne # perform operation
fdiv.s f21, f14, f11, rtz # perform operation
fdiv.s f21, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f28, f13, f27, dyn # perform operation
fdiv.s f28, f13, f27, rdn # perform operation
fdiv.s f28, f13, f27, rmm # perform operation
fdiv.s f28, f13, f27, rne # perform operation
fdiv.s f28, f13, f27, rtz # perform operation
fdiv.s f28, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fdiv.s f3, f24, f8, dyn # perform operation
fdiv.s f3, f24, f8, rdn # perform operation
fdiv.s f3, f24, f8, rmm # perform operation
fdiv.s f3, f24, f8, rne # perform operation
fdiv.s f3, f24, f8, rtz # perform operation
fdiv.s f3, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fdiv.s f2, f31, f23, dyn # perform operation
fdiv.s f2, f31, f23, rdn # perform operation
fdiv.s f2, f31, f23, rmm # perform operation
fdiv.s f2, f31, f23, rne # perform operation
fdiv.s f2, f31, f23, rtz # perform operation
fdiv.s f2, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fdiv.s f7, f21, f11, dyn # perform operation
fdiv.s f7, f21, f11, rdn # perform operation
fdiv.s f7, f21, f11, rmm # perform operation
fdiv.s f7, f21, f11, rne # perform operation
fdiv.s f7, f21, f11, rtz # perform operation
fdiv.s f7, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f24, f2, f23, dyn # perform operation
fdiv.s f24, f2, f23, rdn # perform operation
fdiv.s f24, f2, f23, rmm # perform operation
fdiv.s f24, f2, f23, rne # perform operation
fdiv.s f24, f2, f23, rtz # perform operation
fdiv.s f24, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fdiv.s f21, f10, f22, dyn # perform operation
fdiv.s f21, f10, f22, rdn # perform operation
fdiv.s f21, f10, f22, rmm # perform operation
fdiv.s f21, f10, f22, rne # perform operation
fdiv.s f21, f10, f22, rtz # perform operation
fdiv.s f21, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fdiv.s f8, f9, f29, dyn # perform operation
fdiv.s f8, f9, f29, rdn # perform operation
fdiv.s f8, f9, f29, rmm # perform operation
fdiv.s f8, f9, f29, rne # perform operation
fdiv.s f8, f9, f29, rtz # perform operation
fdiv.s f8, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fdiv.s f18, f29, f9, dyn # perform operation
fdiv.s f18, f29, f9, rdn # perform operation
fdiv.s f18, f29, f9, rmm # perform operation
fdiv.s f18, f29, f9, rne # perform operation
fdiv.s f18, f29, f9, rtz # perform operation
fdiv.s f18, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fdiv.s f28, f1, f31, dyn # perform operation
fdiv.s f28, f1, f31, rdn # perform operation
fdiv.s f28, f1, f31, rmm # perform operation
fdiv.s f28, f1, f31, rne # perform operation
fdiv.s f28, f1, f31, rtz # perform operation
fdiv.s f28, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fdiv.s f6, f1, f15, dyn # perform operation
fdiv.s f6, f1, f15, rdn # perform operation
fdiv.s f6, f1, f15, rmm # perform operation
fdiv.s f6, f1, f15, rne # perform operation
fdiv.s f6, f1, f15, rtz # perform operation
fdiv.s f6, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f20, f21, f6, dyn # perform operation
fdiv.s f20, f21, f6, rdn # perform operation
fdiv.s f20, f21, f6, rmm # perform operation
fdiv.s f20, f21, f6, rne # perform operation
fdiv.s f20, f21, f6, rtz # perform operation
fdiv.s f20, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fdiv.s f1, f31, f19, dyn # perform operation
fdiv.s f1, f31, f19, rdn # perform operation
fdiv.s f1, f31, f19, rmm # perform operation
fdiv.s f1, f31, f19, rne # perform operation
fdiv.s f1, f31, f19, rtz # perform operation
fdiv.s f1, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fdiv.s f21, f31, f17, dyn # perform operation
fdiv.s f21, f31, f17, rdn # perform operation
fdiv.s f21, f31, f17, rmm # perform operation
fdiv.s f21, f31, f17, rne # perform operation
fdiv.s f21, f31, f17, rtz # perform operation
fdiv.s f21, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fdiv.s f12, f5, f29, dyn # perform operation
fdiv.s f12, f5, f29, rdn # perform operation
fdiv.s f12, f5, f29, rmm # perform operation
fdiv.s f12, f5, f29, rne # perform operation
fdiv.s f12, f5, f29, rtz # perform operation
fdiv.s f12, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fdiv.s f21, f16, f9, dyn # perform operation
fdiv.s f21, f16, f9, rdn # perform operation
fdiv.s f21, f16, f9, rmm # perform operation
fdiv.s f21, f16, f9, rne # perform operation
fdiv.s f21, f16, f9, rtz # perform operation
fdiv.s f21, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f23, f25, f20, dyn # perform operation
fdiv.s f23, f25, f20, rdn # perform operation
fdiv.s f23, f25, f20, rmm # perform operation
fdiv.s f23, f25, f20, rne # perform operation
fdiv.s f23, f25, f20, rtz # perform operation
fdiv.s f23, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fdiv.s f19, f29, f28, dyn # perform operation
fdiv.s f19, f29, f28, rdn # perform operation
fdiv.s f19, f29, f28, rmm # perform operation
fdiv.s f19, f29, f28, rne # perform operation
fdiv.s f19, f29, f28, rtz # perform operation
fdiv.s f19, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fdiv.s f21, f16, f8, dyn # perform operation
fdiv.s f21, f16, f8, rdn # perform operation
fdiv.s f21, f16, f8, rmm # perform operation
fdiv.s f21, f16, f8, rne # perform operation
fdiv.s f21, f16, f8, rtz # perform operation
fdiv.s f21, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fdiv.s f10, f28, f6, dyn # perform operation
fdiv.s f10, f28, f6, rdn # perform operation
fdiv.s f10, f28, f6, rmm # perform operation
fdiv.s f10, f28, f6, rne # perform operation
fdiv.s f10, f28, f6, rtz # perform operation
fdiv.s f10, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f17, f15, f12, dyn # perform operation
fdiv.s f17, f15, f12, rdn # perform operation
fdiv.s f17, f15, f12, rmm # perform operation
fdiv.s f17, f15, f12, rne # perform operation
fdiv.s f17, f15, f12, rtz # perform operation
fdiv.s f17, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fdiv.s f22, f28, f21, dyn # perform operation
fdiv.s f22, f28, f21, rdn # perform operation
fdiv.s f22, f28, f21, rmm # perform operation
fdiv.s f22, f28, f21, rne # perform operation
fdiv.s f22, f28, f21, rtz # perform operation
fdiv.s f22, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.s f10, f18, f12, dyn # perform operation
fdiv.s f10, f18, f12, rdn # perform operation
fdiv.s f10, f18, f12, rmm # perform operation
fdiv.s f10, f18, f12, rne # perform operation
fdiv.s f10, f18, f12, rtz # perform operation
fdiv.s f10, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fdiv.s f17, f6, f27, dyn # perform operation
fdiv.s f17, f6, f27, rdn # perform operation
fdiv.s f17, f6, f27, rmm # perform operation
fdiv.s f17, f6, f27, rne # perform operation
fdiv.s f17, f6, f27, rtz # perform operation
fdiv.s f17, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fdiv.s f2, f20, f21, dyn # perform operation
fdiv.s f2, f20, f21, rdn # perform operation
fdiv.s f2, f20, f21, rmm # perform operation
fdiv.s f2, f20, f21, rne # perform operation
fdiv.s f2, f20, f21, rtz # perform operation
fdiv.s f2, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fdiv.s f28, f24, f22, dyn # perform operation
fdiv.s f28, f24, f22, rdn # perform operation
fdiv.s f28, f24, f22, rmm # perform operation
fdiv.s f28, f24, f22, rne # perform operation
fdiv.s f28, f24, f22, rtz # perform operation
fdiv.s f28, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fdiv.s f28, f1, f25, dyn # perform operation
fdiv.s f28, f1, f25, rdn # perform operation
fdiv.s f28, f1, f25, rmm # perform operation
fdiv.s f28, f1, f25, rne # perform operation
fdiv.s f28, f1, f25, rtz # perform operation
fdiv.s f28, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fdiv.s f12, f29, f22, dyn # perform operation
fdiv.s f12, f29, f22, rdn # perform operation
fdiv.s f12, f29, f22, rmm # perform operation
fdiv.s f12, f29, f22, rne # perform operation
fdiv.s f12, f29, f22, rtz # perform operation
fdiv.s f12, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fdiv.s f7, f10, f2, dyn # perform operation
fdiv.s f7, f10, f2, rdn # perform operation
fdiv.s f7, f10, f2, rmm # perform operation
fdiv.s f7, f10, f2, rne # perform operation
fdiv.s f7, f10, f2, rtz # perform operation
fdiv.s f7, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fdiv.s f11, f15, f31, dyn # perform operation
fdiv.s f11, f15, f31, rdn # perform operation
fdiv.s f11, f15, f31, rmm # perform operation
fdiv.s f11, f15, f31, rne # perform operation
fdiv.s f11, f15, f31, rtz # perform operation
fdiv.s f11, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fdiv.s f7, f2, f20, dyn # perform operation
fdiv.s f7, f2, f20, rdn # perform operation
fdiv.s f7, f2, f20, rmm # perform operation
fdiv.s f7, f2, f20, rne # perform operation
fdiv.s f7, f2, f20, rtz # perform operation
fdiv.s f7, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fdiv.s f2, f3, f12, dyn # perform operation
fdiv.s f2, f3, f12, rdn # perform operation
fdiv.s f2, f3, f12, rmm # perform operation
fdiv.s f2, f3, f12, rne # perform operation
fdiv.s f2, f3, f12, rtz # perform operation
fdiv.s f2, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fdiv.s f6, f13, f28, dyn # perform operation
fdiv.s f6, f13, f28, rdn # perform operation
fdiv.s f6, f13, f28, rmm # perform operation
fdiv.s f6, f13, f28, rne # perform operation
fdiv.s f6, f13, f28, rtz # perform operation
fdiv.s f6, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fdiv.s f17, f12, f21, dyn # perform operation
fdiv.s f17, f12, f21, rdn # perform operation
fdiv.s f17, f12, f21, rmm # perform operation
fdiv.s f17, f12, f21, rne # perform operation
fdiv.s f17, f12, f21, rtz # perform operation
fdiv.s f17, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fdiv.s f20, f12, f23, dyn # perform operation
fdiv.s f20, f12, f23, rdn # perform operation
fdiv.s f20, f12, f23, rmm # perform operation
fdiv.s f20, f12, f23, rne # perform operation
fdiv.s f20, f12, f23, rtz # perform operation
fdiv.s f20, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fdiv.s f23, f31, f13, dyn # perform operation
fdiv.s f23, f31, f13, rdn # perform operation
fdiv.s f23, f31, f13, rmm # perform operation
fdiv.s f23, f31, f13, rne # perform operation
fdiv.s f23, f31, f13, rtz # perform operation
fdiv.s f23, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fdiv.s f16, f1, f30, dyn # perform operation
fdiv.s f16, f1, f30, rdn # perform operation
fdiv.s f16, f1, f30, rmm # perform operation
fdiv.s f16, f1, f30, rne # perform operation
fdiv.s f16, f1, f30, rtz # perform operation
fdiv.s f16, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fdiv.s f19, f31, f16, dyn # perform operation
fdiv.s f19, f31, f16, rdn # perform operation
fdiv.s f19, f31, f16, rmm # perform operation
fdiv.s f19, f31, f16, rne # perform operation
fdiv.s f19, f31, f16, rtz # perform operation
fdiv.s f19, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fdiv.s f22, f26, f15, dyn # perform operation
fdiv.s f22, f26, f15, rdn # perform operation
fdiv.s f22, f26, f15, rmm # perform operation
fdiv.s f22, f26, f15, rne # perform operation
fdiv.s f22, f26, f15, rtz # perform operation
fdiv.s f22, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fdiv.s f19, f23, f29, dyn # perform operation
fdiv.s f19, f23, f29, rdn # perform operation
fdiv.s f19, f23, f29, rmm # perform operation
fdiv.s f19, f23, f29, rne # perform operation
fdiv.s f19, f23, f29, rtz # perform operation
fdiv.s f19, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fdiv.s f20, f1, f24, dyn # perform operation
fdiv.s f20, f1, f24, rdn # perform operation
fdiv.s f20, f1, f24, rmm # perform operation
fdiv.s f20, f1, f24, rne # perform operation
fdiv.s f20, f1, f24, rtz # perform operation
fdiv.s f20, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f9, f26, f7, dyn # perform operation
fdiv.s f9, f26, f7, rdn # perform operation
fdiv.s f9, f26, f7, rmm # perform operation
fdiv.s f9, f26, f7, rne # perform operation
fdiv.s f9, f26, f7, rtz # perform operation
fdiv.s f9, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fdiv.s f2, f29, f8, dyn # perform operation
fdiv.s f2, f29, f8, rdn # perform operation
fdiv.s f2, f29, f8, rmm # perform operation
fdiv.s f2, f29, f8, rne # perform operation
fdiv.s f2, f29, f8, rtz # perform operation
fdiv.s f2, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fdiv.s f10, f14, f11, dyn # perform operation
fdiv.s f10, f14, f11, rdn # perform operation
fdiv.s f10, f14, f11, rmm # perform operation
fdiv.s f10, f14, f11, rne # perform operation
fdiv.s f10, f14, f11, rtz # perform operation
fdiv.s f10, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fdiv.s f30, f3, f2, dyn # perform operation
fdiv.s f30, f3, f2, rdn # perform operation
fdiv.s f30, f3, f2, rmm # perform operation
fdiv.s f30, f3, f2, rne # perform operation
fdiv.s f30, f3, f2, rtz # perform operation
fdiv.s f30, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fdiv.s f3, f2, f10, dyn # perform operation
fdiv.s f3, f2, f10, rdn # perform operation
fdiv.s f3, f2, f10, rmm # perform operation
fdiv.s f3, f2, f10, rne # perform operation
fdiv.s f3, f2, f10, rtz # perform operation
fdiv.s f3, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fdiv.s f19, f8, f16, dyn # perform operation
fdiv.s f19, f8, f16, rdn # perform operation
fdiv.s f19, f8, f16, rmm # perform operation
fdiv.s f19, f8, f16, rne # perform operation
fdiv.s f19, f8, f16, rtz # perform operation
fdiv.s f19, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fdiv.s f6, f30, f31, dyn # perform operation
fdiv.s f6, f30, f31, rdn # perform operation
fdiv.s f6, f30, f31, rmm # perform operation
fdiv.s f6, f30, f31, rne # perform operation
fdiv.s f6, f30, f31, rtz # perform operation
fdiv.s f6, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fdiv.s f11, f10, f27, dyn # perform operation
fdiv.s f11, f10, f27, rdn # perform operation
fdiv.s f11, f10, f27, rmm # perform operation
fdiv.s f11, f10, f27, rne # perform operation
fdiv.s f11, f10, f27, rtz # perform operation
fdiv.s f11, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fdiv.s f7, f29, f2, dyn # perform operation
fdiv.s f7, f29, f2, rdn # perform operation
fdiv.s f7, f29, f2, rmm # perform operation
fdiv.s f7, f29, f2, rne # perform operation
fdiv.s f7, f29, f2, rtz # perform operation
fdiv.s f7, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fdiv.s f17, f5, f28, dyn # perform operation
fdiv.s f17, f5, f28, rdn # perform operation
fdiv.s f17, f5, f28, rmm # perform operation
fdiv.s f17, f5, f28, rne # perform operation
fdiv.s f17, f5, f28, rtz # perform operation
fdiv.s f17, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fdiv.s f11, f16, f17, dyn # perform operation
fdiv.s f11, f16, f17, rdn # perform operation
fdiv.s f11, f16, f17, rmm # perform operation
fdiv.s f11, f16, f17, rne # perform operation
fdiv.s f11, f16, f17, rtz # perform operation
fdiv.s f11, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fdiv.s f17, f6, f24, dyn # perform operation
fdiv.s f17, f6, f24, rdn # perform operation
fdiv.s f17, f6, f24, rmm # perform operation
fdiv.s f17, f6, f24, rne # perform operation
fdiv.s f17, f6, f24, rtz # perform operation
fdiv.s f17, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f21, f19, f14, dyn # perform operation
fdiv.s f21, f19, f14, rdn # perform operation
fdiv.s f21, f19, f14, rmm # perform operation
fdiv.s f21, f19, f14, rne # perform operation
fdiv.s f21, f19, f14, rtz # perform operation
fdiv.s f21, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fdiv.s f28, f29, f6, dyn # perform operation
fdiv.s f28, f29, f6, rdn # perform operation
fdiv.s f28, f29, f6, rmm # perform operation
fdiv.s f28, f29, f6, rne # perform operation
fdiv.s f28, f29, f6, rtz # perform operation
fdiv.s f28, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f29, f6, f15, dyn # perform operation
fdiv.s f29, f6, f15, rdn # perform operation
fdiv.s f29, f6, f15, rmm # perform operation
fdiv.s f29, f6, f15, rne # perform operation
fdiv.s f29, f6, f15, rtz # perform operation
fdiv.s f29, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fdiv.s f20, f21, f28, dyn # perform operation
fdiv.s f20, f21, f28, rdn # perform operation
fdiv.s f20, f21, f28, rmm # perform operation
fdiv.s f20, f21, f28, rne # perform operation
fdiv.s f20, f21, f28, rtz # perform operation
fdiv.s f20, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fdiv.s f2, f23, f7, dyn # perform operation
fdiv.s f2, f23, f7, rdn # perform operation
fdiv.s f2, f23, f7, rmm # perform operation
fdiv.s f2, f23, f7, rne # perform operation
fdiv.s f2, f23, f7, rtz # perform operation
fdiv.s f2, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fdiv.s f21, f11, f6, dyn # perform operation
fdiv.s f21, f11, f6, rdn # perform operation
fdiv.s f21, f11, f6, rmm # perform operation
fdiv.s f21, f11, f6, rne # perform operation
fdiv.s f21, f11, f6, rtz # perform operation
fdiv.s f21, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fdiv.s f21, f6, f15, dyn # perform operation
fdiv.s f21, f6, f15, rdn # perform operation
fdiv.s f21, f6, f15, rmm # perform operation
fdiv.s f21, f6, f15, rne # perform operation
fdiv.s f21, f6, f15, rtz # perform operation
fdiv.s f21, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fdiv.s f17, f22, f21, dyn # perform operation
fdiv.s f17, f22, f21, rdn # perform operation
fdiv.s f17, f22, f21, rmm # perform operation
fdiv.s f17, f22, f21, rne # perform operation
fdiv.s f17, f22, f21, rtz # perform operation
fdiv.s f17, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fdiv.s f26, f19, f30, dyn # perform operation
fdiv.s f26, f19, f30, rdn # perform operation
fdiv.s f26, f19, f30, rmm # perform operation
fdiv.s f26, f19, f30, rne # perform operation
fdiv.s f26, f19, f30, rtz # perform operation
fdiv.s f26, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f18, f30, f2, dyn # perform operation
fdiv.s f18, f30, f2, rdn # perform operation
fdiv.s f18, f30, f2, rmm # perform operation
fdiv.s f18, f30, f2, rne # perform operation
fdiv.s f18, f30, f2, rtz # perform operation
fdiv.s f18, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fdiv.s f30, f6, f2, dyn # perform operation
fdiv.s f30, f6, f2, rdn # perform operation
fdiv.s f30, f6, f2, rmm # perform operation
fdiv.s f30, f6, f2, rne # perform operation
fdiv.s f30, f6, f2, rtz # perform operation
fdiv.s f30, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fdiv.s f28, f1, f10, dyn # perform operation
fdiv.s f28, f1, f10, rdn # perform operation
fdiv.s f28, f1, f10, rmm # perform operation
fdiv.s f28, f1, f10, rne # perform operation
fdiv.s f28, f1, f10, rtz # perform operation
fdiv.s f28, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fdiv.s f11, f3, f5, dyn # perform operation
fdiv.s f11, f3, f5, rdn # perform operation
fdiv.s f11, f3, f5, rmm # perform operation
fdiv.s f11, f3, f5, rne # perform operation
fdiv.s f11, f3, f5, rtz # perform operation
fdiv.s f11, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fdiv.s f11, f25, f30, dyn # perform operation
fdiv.s f11, f25, f30, rdn # perform operation
fdiv.s f11, f25, f30, rmm # perform operation
fdiv.s f11, f25, f30, rne # perform operation
fdiv.s f11, f25, f30, rtz # perform operation
fdiv.s f11, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fdiv.s f19, f28, f20, dyn # perform operation
fdiv.s f19, f28, f20, rdn # perform operation
fdiv.s f19, f28, f20, rmm # perform operation
fdiv.s f19, f28, f20, rne # perform operation
fdiv.s f19, f28, f20, rtz # perform operation
fdiv.s f19, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fdiv.s f5, f20, f13, dyn # perform operation
fdiv.s f5, f20, f13, rdn # perform operation
fdiv.s f5, f20, f13, rmm # perform operation
fdiv.s f5, f20, f13, rne # perform operation
fdiv.s f5, f20, f13, rtz # perform operation
fdiv.s f5, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fdiv.s f21, f14, f22, dyn # perform operation
fdiv.s f21, f14, f22, rdn # perform operation
fdiv.s f21, f14, f22, rmm # perform operation
fdiv.s f21, f14, f22, rne # perform operation
fdiv.s f21, f14, f22, rtz # perform operation
fdiv.s f21, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fdiv.s f10, f1, f21, dyn # perform operation
fdiv.s f10, f1, f21, rdn # perform operation
fdiv.s f10, f1, f21, rmm # perform operation
fdiv.s f10, f1, f21, rne # perform operation
fdiv.s f10, f1, f21, rtz # perform operation
fdiv.s f10, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fdiv.s f31, f18, f22, dyn # perform operation
fdiv.s f31, f18, f22, rdn # perform operation
fdiv.s f31, f18, f22, rmm # perform operation
fdiv.s f31, f18, f22, rne # perform operation
fdiv.s f31, f18, f22, rtz # perform operation
fdiv.s f31, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fdiv.s f26, f5, f25, dyn # perform operation
fdiv.s f26, f5, f25, rdn # perform operation
fdiv.s f26, f5, f25, rmm # perform operation
fdiv.s f26, f5, f25, rne # perform operation
fdiv.s f26, f5, f25, rtz # perform operation
fdiv.s f26, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fdiv.s f3, f16, f20, dyn # perform operation
fdiv.s f3, f16, f20, rdn # perform operation
fdiv.s f3, f16, f20, rmm # perform operation
fdiv.s f3, f16, f20, rne # perform operation
fdiv.s f3, f16, f20, rtz # perform operation
fdiv.s f3, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f2, f23, f26, dyn # perform operation
fdiv.s f2, f23, f26, rdn # perform operation
fdiv.s f2, f23, f26, rmm # perform operation
fdiv.s f2, f23, f26, rne # perform operation
fdiv.s f2, f23, f26, rtz # perform operation
fdiv.s f2, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fdiv.s f7, f30, f29, dyn # perform operation
fdiv.s f7, f30, f29, rdn # perform operation
fdiv.s f7, f30, f29, rmm # perform operation
fdiv.s f7, f30, f29, rne # perform operation
fdiv.s f7, f30, f29, rtz # perform operation
fdiv.s f7, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f12, f5, f23, dyn # perform operation
fdiv.s f12, f5, f23, rdn # perform operation
fdiv.s f12, f5, f23, rmm # perform operation
fdiv.s f12, f5, f23, rne # perform operation
fdiv.s f12, f5, f23, rtz # perform operation
fdiv.s f12, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fdiv.s f23, f10, f19, dyn # perform operation
fdiv.s f23, f10, f19, rdn # perform operation
fdiv.s f23, f10, f19, rmm # perform operation
fdiv.s f23, f10, f19, rne # perform operation
fdiv.s f23, f10, f19, rtz # perform operation
fdiv.s f23, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f2, f19, f22, dyn # perform operation
fdiv.s f2, f19, f22, rdn # perform operation
fdiv.s f2, f19, f22, rmm # perform operation
fdiv.s f2, f19, f22, rne # perform operation
fdiv.s f2, f19, f22, rtz # perform operation
fdiv.s f2, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fdiv.s f16, f21, f15, dyn # perform operation
fdiv.s f16, f21, f15, rdn # perform operation
fdiv.s f16, f21, f15, rmm # perform operation
fdiv.s f16, f21, f15, rne # perform operation
fdiv.s f16, f21, f15, rtz # perform operation
fdiv.s f16, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fdiv.s f30, f14, f22, dyn # perform operation
fdiv.s f30, f14, f22, rdn # perform operation
fdiv.s f30, f14, f22, rmm # perform operation
fdiv.s f30, f14, f22, rne # perform operation
fdiv.s f30, f14, f22, rtz # perform operation
fdiv.s f30, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f3, f19, f1, dyn # perform operation
fdiv.s f3, f19, f1, rdn # perform operation
fdiv.s f3, f19, f1, rmm # perform operation
fdiv.s f3, f19, f1, rne # perform operation
fdiv.s f3, f19, f1, rtz # perform operation
fdiv.s f3, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fdiv.s f24, f29, f1, dyn # perform operation
fdiv.s f24, f29, f1, rdn # perform operation
fdiv.s f24, f29, f1, rmm # perform operation
fdiv.s f24, f29, f1, rne # perform operation
fdiv.s f24, f29, f1, rtz # perform operation
fdiv.s f24, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fdiv.s f5, f28, f13, dyn # perform operation
fdiv.s f5, f28, f13, rdn # perform operation
fdiv.s f5, f28, f13, rmm # perform operation
fdiv.s f5, f28, f13, rne # perform operation
fdiv.s f5, f28, f13, rtz # perform operation
fdiv.s f5, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fdiv.s f17, f21, f5, dyn # perform operation
fdiv.s f17, f21, f5, rdn # perform operation
fdiv.s f17, f21, f5, rmm # perform operation
fdiv.s f17, f21, f5, rne # perform operation
fdiv.s f17, f21, f5, rtz # perform operation
fdiv.s f17, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f2, f6, f19, dyn # perform operation
fdiv.s f2, f6, f19, rdn # perform operation
fdiv.s f2, f6, f19, rmm # perform operation
fdiv.s f2, f6, f19, rne # perform operation
fdiv.s f2, f6, f19, rtz # perform operation
fdiv.s f2, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fdiv.s f19, f30, f10, dyn # perform operation
fdiv.s f19, f30, f10, rdn # perform operation
fdiv.s f19, f30, f10, rmm # perform operation
fdiv.s f19, f30, f10, rne # perform operation
fdiv.s f19, f30, f10, rtz # perform operation
fdiv.s f19, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fdiv.s f1, f11, f18, dyn # perform operation
fdiv.s f1, f11, f18, rdn # perform operation
fdiv.s f1, f11, f18, rmm # perform operation
fdiv.s f1, f11, f18, rne # perform operation
fdiv.s f1, f11, f18, rtz # perform operation
fdiv.s f1, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fdiv.s f18, f1, f14, dyn # perform operation
fdiv.s f18, f1, f14, rdn # perform operation
fdiv.s f18, f1, f14, rmm # perform operation
fdiv.s f18, f1, f14, rne # perform operation
fdiv.s f18, f1, f14, rtz # perform operation
fdiv.s f18, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f1, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f20, f13, f23, dyn # perform operation
fdiv.s f20, f13, f23, rdn # perform operation
fdiv.s f20, f13, f23, rmm # perform operation
fdiv.s f20, f13, f23, rne # perform operation
fdiv.s f20, f13, f23, rtz # perform operation
fdiv.s f20, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f23, f10, f29, dyn # perform operation
fdiv.s f23, f10, f29, rdn # perform operation
fdiv.s f23, f10, f29, rmm # perform operation
fdiv.s f23, f10, f29, rne # perform operation
fdiv.s f23, f10, f29, rtz # perform operation
fdiv.s f23, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fdiv.s f29, f20, f28, dyn # perform operation
fdiv.s f29, f20, f28, rdn # perform operation
fdiv.s f29, f20, f28, rmm # perform operation
fdiv.s f29, f20, f28, rne # perform operation
fdiv.s f29, f20, f28, rtz # perform operation
fdiv.s f29, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fdiv.s f10, f20, f15, dyn # perform operation
fdiv.s f10, f20, f15, rdn # perform operation
fdiv.s f10, f20, f15, rmm # perform operation
fdiv.s f10, f20, f15, rne # perform operation
fdiv.s f10, f20, f15, rtz # perform operation
fdiv.s f10, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fdiv.s f26, f11, f22, dyn # perform operation
fdiv.s f26, f11, f22, rdn # perform operation
fdiv.s f26, f11, f22, rmm # perform operation
fdiv.s f26, f11, f22, rne # perform operation
fdiv.s f26, f11, f22, rtz # perform operation
fdiv.s f26, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fdiv.s f26, f14, f25, dyn # perform operation
fdiv.s f26, f14, f25, rdn # perform operation
fdiv.s f26, f14, f25, rmm # perform operation
fdiv.s f26, f14, f25, rne # perform operation
fdiv.s f26, f14, f25, rtz # perform operation
fdiv.s f26, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fdiv.s f19, f12, f18, dyn # perform operation
fdiv.s f19, f12, f18, rdn # perform operation
fdiv.s f19, f12, f18, rmm # perform operation
fdiv.s f19, f12, f18, rne # perform operation
fdiv.s f19, f12, f18, rtz # perform operation
fdiv.s f19, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fdiv.s f17, f24, f31, dyn # perform operation
fdiv.s f17, f24, f31, rdn # perform operation
fdiv.s f17, f24, f31, rmm # perform operation
fdiv.s f17, f24, f31, rne # perform operation
fdiv.s f17, f24, f31, rtz # perform operation
fdiv.s f17, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fdiv.s f28, f23, f21, dyn # perform operation
fdiv.s f28, f23, f21, rdn # perform operation
fdiv.s f28, f23, f21, rmm # perform operation
fdiv.s f28, f23, f21, rne # perform operation
fdiv.s f28, f23, f21, rtz # perform operation
fdiv.s f28, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fdiv.s f17, f2, f16, dyn # perform operation
fdiv.s f17, f2, f16, rdn # perform operation
fdiv.s f17, f2, f16, rmm # perform operation
fdiv.s f17, f2, f16, rne # perform operation
fdiv.s f17, f2, f16, rtz # perform operation
fdiv.s f17, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fdiv.s f9, f18, f3, dyn # perform operation
fdiv.s f9, f18, f3, rdn # perform operation
fdiv.s f9, f18, f3, rmm # perform operation
fdiv.s f9, f18, f3, rne # perform operation
fdiv.s f9, f18, f3, rtz # perform operation
fdiv.s f9, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f10, f12, f15, dyn # perform operation
fdiv.s f10, f12, f15, rdn # perform operation
fdiv.s f10, f12, f15, rmm # perform operation
fdiv.s f10, f12, f15, rne # perform operation
fdiv.s f10, f12, f15, rtz # perform operation
fdiv.s f10, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fdiv.s f27, f21, f7, dyn # perform operation
fdiv.s f27, f21, f7, rdn # perform operation
fdiv.s f27, f21, f7, rmm # perform operation
fdiv.s f27, f21, f7, rne # perform operation
fdiv.s f27, f21, f7, rtz # perform operation
fdiv.s f27, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f3, f2, f30, dyn # perform operation
fdiv.s f3, f2, f30, rdn # perform operation
fdiv.s f3, f2, f30, rmm # perform operation
fdiv.s f3, f2, f30, rne # perform operation
fdiv.s f3, f2, f30, rtz # perform operation
fdiv.s f3, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f1, f10, f30, dyn # perform operation
fdiv.s f1, f10, f30, rdn # perform operation
fdiv.s f1, f10, f30, rmm # perform operation
fdiv.s f1, f10, f30, rne # perform operation
fdiv.s f1, f10, f30, rtz # perform operation
fdiv.s f1, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f1, f29, f5, dyn # perform operation
fdiv.s f1, f29, f5, rdn # perform operation
fdiv.s f1, f29, f5, rmm # perform operation
fdiv.s f1, f29, f5, rne # perform operation
fdiv.s f1, f29, f5, rtz # perform operation
fdiv.s f1, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fdiv.s f16, f7, f19, dyn # perform operation
fdiv.s f16, f7, f19, rdn # perform operation
fdiv.s f16, f7, f19, rmm # perform operation
fdiv.s f16, f7, f19, rne # perform operation
fdiv.s f16, f7, f19, rtz # perform operation
fdiv.s f16, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fdiv.s f26, f9, f5, dyn # perform operation
fdiv.s f26, f9, f5, rdn # perform operation
fdiv.s f26, f9, f5, rmm # perform operation
fdiv.s f26, f9, f5, rne # perform operation
fdiv.s f26, f9, f5, rtz # perform operation
fdiv.s f26, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f3, f25, f18, dyn # perform operation
fdiv.s f3, f25, f18, rdn # perform operation
fdiv.s f3, f25, f18, rmm # perform operation
fdiv.s f3, f25, f18, rne # perform operation
fdiv.s f3, f25, f18, rtz # perform operation
fdiv.s f3, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fdiv.s f21, f7, f25, dyn # perform operation
fdiv.s f21, f7, f25, rdn # perform operation
fdiv.s f21, f7, f25, rmm # perform operation
fdiv.s f21, f7, f25, rne # perform operation
fdiv.s f21, f7, f25, rtz # perform operation
fdiv.s f21, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f16, f21, f1, dyn # perform operation
fdiv.s f16, f21, f1, rdn # perform operation
fdiv.s f16, f21, f1, rmm # perform operation
fdiv.s f16, f21, f1, rne # perform operation
fdiv.s f16, f21, f1, rtz # perform operation
fdiv.s f16, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fdiv.s f19, f5, f26, dyn # perform operation
fdiv.s f19, f5, f26, rdn # perform operation
fdiv.s f19, f5, f26, rmm # perform operation
fdiv.s f19, f5, f26, rne # perform operation
fdiv.s f19, f5, f26, rtz # perform operation
fdiv.s f19, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fdiv.s f17, f15, f31, dyn # perform operation
fdiv.s f17, f15, f31, rdn # perform operation
fdiv.s f17, f15, f31, rmm # perform operation
fdiv.s f17, f15, f31, rne # perform operation
fdiv.s f17, f15, f31, rtz # perform operation
fdiv.s f17, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
fdiv.s f31, f7, f23, dyn # perform operation
fdiv.s f31, f7, f23, rdn # perform operation
fdiv.s f31, f7, f23, rmm # perform operation
fdiv.s f31, f7, f23, rne # perform operation
fdiv.s f31, f7, f23, rtz # perform operation
fdiv.s f31, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fdiv.s f30, f31, f17, dyn # perform operation
fdiv.s f30, f31, f17, rdn # perform operation
fdiv.s f30, f31, f17, rmm # perform operation
fdiv.s f30, f31, f17, rne # perform operation
fdiv.s f30, f31, f17, rtz # perform operation
fdiv.s f30, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fdiv.s f13, f6, f1, dyn # perform operation
fdiv.s f13, f6, f1, rdn # perform operation
fdiv.s f13, f6, f1, rmm # perform operation
fdiv.s f13, f6, f1, rne # perform operation
fdiv.s f13, f6, f1, rtz # perform operation
fdiv.s f13, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fdiv.s f19, f24, f25, dyn # perform operation
fdiv.s f19, f24, f25, rdn # perform operation
fdiv.s f19, f24, f25, rmm # perform operation
fdiv.s f19, f24, f25, rne # perform operation
fdiv.s f19, f24, f25, rtz # perform operation
fdiv.s f19, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fdiv.s f28, f8, f20, dyn # perform operation
fdiv.s f28, f8, f20, rdn # perform operation
fdiv.s f28, f8, f20, rmm # perform operation
fdiv.s f28, f8, f20, rne # perform operation
fdiv.s f28, f8, f20, rtz # perform operation
fdiv.s f28, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fdiv.s f31, f27, f19, dyn # perform operation
fdiv.s f31, f27, f19, rdn # perform operation
fdiv.s f31, f27, f19, rmm # perform operation
fdiv.s f31, f27, f19, rne # perform operation
fdiv.s f31, f27, f19, rtz # perform operation
fdiv.s f31, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.s f6, f5, f7, dyn # perform operation
fdiv.s f6, f5, f7, rdn # perform operation
fdiv.s f6, f5, f7, rmm # perform operation
fdiv.s f6, f5, f7, rne # perform operation
fdiv.s f6, f5, f7, rtz # perform operation
fdiv.s f6, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fdiv.s f16, f13, f26, dyn # perform operation
fdiv.s f16, f13, f26, rdn # perform operation
fdiv.s f16, f13, f26, rmm # perform operation
fdiv.s f16, f13, f26, rne # perform operation
fdiv.s f16, f13, f26, rtz # perform operation
fdiv.s f16, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fdiv.s f24, f27, f19, dyn # perform operation
fdiv.s f24, f27, f19, rdn # perform operation
fdiv.s f24, f27, f19, rmm # perform operation
fdiv.s f24, f27, f19, rne # perform operation
fdiv.s f24, f27, f19, rtz # perform operation
fdiv.s f24, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fdiv.s f13, f30, f23, dyn # perform operation
fdiv.s f13, f30, f23, rdn # perform operation
fdiv.s f13, f30, f23, rmm # perform operation
fdiv.s f13, f30, f23, rne # perform operation
fdiv.s f13, f30, f23, rtz # perform operation
fdiv.s f13, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fdiv.s f13, f17, f25, dyn # perform operation
fdiv.s f13, f17, f25, rdn # perform operation
fdiv.s f13, f17, f25, rmm # perform operation
fdiv.s f13, f17, f25, rne # perform operation
fdiv.s f13, f17, f25, rtz # perform operation
fdiv.s f13, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fdiv.s f23, f7, f28, dyn # perform operation
fdiv.s f23, f7, f28, rdn # perform operation
fdiv.s f23, f7, f28, rmm # perform operation
fdiv.s f23, f7, f28, rne # perform operation
fdiv.s f23, f7, f28, rtz # perform operation
fdiv.s f23, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fdiv.s f5, f8, f1, dyn # perform operation
fdiv.s f5, f8, f1, rdn # perform operation
fdiv.s f5, f8, f1, rmm # perform operation
fdiv.s f5, f8, f1, rne # perform operation
fdiv.s f5, f8, f1, rtz # perform operation
fdiv.s f5, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fdiv.s f20, f30, f19, dyn # perform operation
fdiv.s f20, f30, f19, rdn # perform operation
fdiv.s f20, f30, f19, rmm # perform operation
fdiv.s f20, f30, f19, rne # perform operation
fdiv.s f20, f30, f19, rtz # perform operation
fdiv.s f20, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fdiv.s f2, f8, f13, dyn # perform operation
fdiv.s f2, f8, f13, rdn # perform operation
fdiv.s f2, f8, f13, rmm # perform operation
fdiv.s f2, f8, f13, rne # perform operation
fdiv.s f2, f8, f13, rtz # perform operation
fdiv.s f2, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f8, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fdiv.s f31, f7, f6, dyn # perform operation
fdiv.s f31, f7, f6, rdn # perform operation
fdiv.s f31, f7, f6, rmm # perform operation
fdiv.s f31, f7, f6, rne # perform operation
fdiv.s f31, f7, f6, rtz # perform operation
fdiv.s f31, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fdiv.s f27, f10, f21, dyn # perform operation
fdiv.s f27, f10, f21, rdn # perform operation
fdiv.s f27, f10, f21, rmm # perform operation
fdiv.s f27, f10, f21, rne # perform operation
fdiv.s f27, f10, f21, rtz # perform operation
fdiv.s f27, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fdiv.s f24, f22, f16, dyn # perform operation
fdiv.s f24, f22, f16, rdn # perform operation
fdiv.s f24, f22, f16, rmm # perform operation
fdiv.s f24, f22, f16, rne # perform operation
fdiv.s f24, f22, f16, rtz # perform operation
fdiv.s f24, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fdiv.s f18, f12, f20, dyn # perform operation
fdiv.s f18, f12, f20, rdn # perform operation
fdiv.s f18, f12, f20, rmm # perform operation
fdiv.s f18, f12, f20, rne # perform operation
fdiv.s f18, f12, f20, rtz # perform operation
fdiv.s f18, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fdiv.s f21, f23, f26, dyn # perform operation
fdiv.s f21, f23, f26, rdn # perform operation
fdiv.s f21, f23, f26, rmm # perform operation
fdiv.s f21, f23, f26, rne # perform operation
fdiv.s f21, f23, f26, rtz # perform operation
fdiv.s f21, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fdiv.s f7, f10, f2, dyn # perform operation
fdiv.s f7, f10, f2, rdn # perform operation
fdiv.s f7, f10, f2, rmm # perform operation
fdiv.s f7, f10, f2, rne # perform operation
fdiv.s f7, f10, f2, rtz # perform operation
fdiv.s f7, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fdiv.s f29, f27, f30, dyn # perform operation
fdiv.s f29, f27, f30, rdn # perform operation
fdiv.s f29, f27, f30, rmm # perform operation
fdiv.s f29, f27, f30, rne # perform operation
fdiv.s f29, f27, f30, rtz # perform operation
fdiv.s f29, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fdiv.s f20, f7, f24, dyn # perform operation
fdiv.s f20, f7, f24, rdn # perform operation
fdiv.s f20, f7, f24, rmm # perform operation
fdiv.s f20, f7, f24, rne # perform operation
fdiv.s f20, f7, f24, rtz # perform operation
fdiv.s f20, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f31, f7, f13, dyn # perform operation
fdiv.s f31, f7, f13, rdn # perform operation
fdiv.s f31, f7, f13, rmm # perform operation
fdiv.s f31, f7, f13, rne # perform operation
fdiv.s f31, f7, f13, rtz # perform operation
fdiv.s f31, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f12, f14, f11, dyn # perform operation
fdiv.s f12, f14, f11, rdn # perform operation
fdiv.s f12, f14, f11, rmm # perform operation
fdiv.s f12, f14, f11, rne # perform operation
fdiv.s f12, f14, f11, rtz # perform operation
fdiv.s f12, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fdiv.s f25, f17, f18, dyn # perform operation
fdiv.s f25, f17, f18, rdn # perform operation
fdiv.s f25, f17, f18, rmm # perform operation
fdiv.s f25, f17, f18, rne # perform operation
fdiv.s f25, f17, f18, rtz # perform operation
fdiv.s f25, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fdiv.s f26, f15, f30, dyn # perform operation
fdiv.s f26, f15, f30, rdn # perform operation
fdiv.s f26, f15, f30, rmm # perform operation
fdiv.s f26, f15, f30, rne # perform operation
fdiv.s f26, f15, f30, rtz # perform operation
fdiv.s f26, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fdiv.s f10, f18, f8, dyn # perform operation
fdiv.s f10, f18, f8, rdn # perform operation
fdiv.s f10, f18, f8, rmm # perform operation
fdiv.s f10, f18, f8, rne # perform operation
fdiv.s f10, f18, f8, rtz # perform operation
fdiv.s f10, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fdiv.s f20, f6, f12, dyn # perform operation
fdiv.s f20, f6, f12, rdn # perform operation
fdiv.s f20, f6, f12, rmm # perform operation
fdiv.s f20, f6, f12, rne # perform operation
fdiv.s f20, f6, f12, rtz # perform operation
fdiv.s f20, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f21, f12, f2, dyn # perform operation
fdiv.s f21, f12, f2, rdn # perform operation
fdiv.s f21, f12, f2, rmm # perform operation
fdiv.s f21, f12, f2, rne # perform operation
fdiv.s f21, f12, f2, rtz # perform operation
fdiv.s f21, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fdiv.s f27, f15, f17, dyn # perform operation
fdiv.s f27, f15, f17, rdn # perform operation
fdiv.s f27, f15, f17, rmm # perform operation
fdiv.s f27, f15, f17, rne # perform operation
fdiv.s f27, f15, f17, rtz # perform operation
fdiv.s f27, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fdiv.s f21, f13, f3, dyn # perform operation
fdiv.s f21, f13, f3, rdn # perform operation
fdiv.s f21, f13, f3, rmm # perform operation
fdiv.s f21, f13, f3, rne # perform operation
fdiv.s f21, f13, f3, rtz # perform operation
fdiv.s f21, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fdiv.s f29, f25, f9, dyn # perform operation
fdiv.s f29, f25, f9, rdn # perform operation
fdiv.s f29, f25, f9, rmm # perform operation
fdiv.s f29, f25, f9, rne # perform operation
fdiv.s f29, f25, f9, rtz # perform operation
fdiv.s f29, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fdiv.s f27, f10, f19, dyn # perform operation
fdiv.s f27, f10, f19, rdn # perform operation
fdiv.s f27, f10, f19, rmm # perform operation
fdiv.s f27, f10, f19, rne # perform operation
fdiv.s f27, f10, f19, rtz # perform operation
fdiv.s f27, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fdiv.s f13, f8, f17, dyn # perform operation
fdiv.s f13, f8, f17, rdn # perform operation
fdiv.s f13, f8, f17, rmm # perform operation
fdiv.s f13, f8, f17, rne # perform operation
fdiv.s f13, f8, f17, rtz # perform operation
fdiv.s f13, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fdiv.s f11, f24, f3, dyn # perform operation
fdiv.s f11, f24, f3, rdn # perform operation
fdiv.s f11, f24, f3, rmm # perform operation
fdiv.s f11, f24, f3, rne # perform operation
fdiv.s f11, f24, f3, rtz # perform operation
fdiv.s f11, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fdiv.s f7, f26, f13, dyn # perform operation
fdiv.s f7, f26, f13, rdn # perform operation
fdiv.s f7, f26, f13, rmm # perform operation
fdiv.s f7, f26, f13, rne # perform operation
fdiv.s f7, f26, f13, rtz # perform operation
fdiv.s f7, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fdiv.s f5, f16, f9, dyn # perform operation
fdiv.s f5, f16, f9, rdn # perform operation
fdiv.s f5, f16, f9, rmm # perform operation
fdiv.s f5, f16, f9, rne # perform operation
fdiv.s f5, f16, f9, rtz # perform operation
fdiv.s f5, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fdiv.s f26, f2, f29, dyn # perform operation
fdiv.s f26, f2, f29, rdn # perform operation
fdiv.s f26, f2, f29, rmm # perform operation
fdiv.s f26, f2, f29, rne # perform operation
fdiv.s f26, f2, f29, rtz # perform operation
fdiv.s f26, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fdiv.s f5, f31, f26, dyn # perform operation
fdiv.s f5, f31, f26, rdn # perform operation
fdiv.s f5, f31, f26, rmm # perform operation
fdiv.s f5, f31, f26, rne # perform operation
fdiv.s f5, f31, f26, rtz # perform operation
fdiv.s f5, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fdiv.s f12, f8, f11, dyn # perform operation
fdiv.s f12, f8, f11, rdn # perform operation
fdiv.s f12, f8, f11, rmm # perform operation
fdiv.s f12, f8, f11, rne # perform operation
fdiv.s f12, f8, f11, rtz # perform operation
fdiv.s f12, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fdiv.s f31, f14, f21, dyn # perform operation
fdiv.s f31, f14, f21, rdn # perform operation
fdiv.s f31, f14, f21, rmm # perform operation
fdiv.s f31, f14, f21, rne # perform operation
fdiv.s f31, f14, f21, rtz # perform operation
fdiv.s f31, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fdiv.s f26, f24, f27, dyn # perform operation
fdiv.s f26, f24, f27, rdn # perform operation
fdiv.s f26, f24, f27, rmm # perform operation
fdiv.s f26, f24, f27, rne # perform operation
fdiv.s f26, f24, f27, rtz # perform operation
fdiv.s f26, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fdiv.s f25, f26, f28, dyn # perform operation
fdiv.s f25, f26, f28, rdn # perform operation
fdiv.s f25, f26, f28, rmm # perform operation
fdiv.s f25, f26, f28, rne # perform operation
fdiv.s f25, f26, f28, rtz # perform operation
fdiv.s f25, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f31, f16, f20, dyn # perform operation
fdiv.s f31, f16, f20, rdn # perform operation
fdiv.s f31, f16, f20, rmm # perform operation
fdiv.s f31, f16, f20, rne # perform operation
fdiv.s f31, f16, f20, rtz # perform operation
fdiv.s f31, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fdiv.s f19, f5, f24, dyn # perform operation
fdiv.s f19, f5, f24, rdn # perform operation
fdiv.s f19, f5, f24, rmm # perform operation
fdiv.s f19, f5, f24, rne # perform operation
fdiv.s f19, f5, f24, rtz # perform operation
fdiv.s f19, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fdiv.s f5, f9, f16, dyn # perform operation
fdiv.s f5, f9, f16, rdn # perform operation
fdiv.s f5, f9, f16, rmm # perform operation
fdiv.s f5, f9, f16, rne # perform operation
fdiv.s f5, f9, f16, rtz # perform operation
fdiv.s f5, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fdiv.s f9, f25, f27, dyn # perform operation
fdiv.s f9, f25, f27, rdn # perform operation
fdiv.s f9, f25, f27, rmm # perform operation
fdiv.s f9, f25, f27, rne # perform operation
fdiv.s f9, f25, f27, rtz # perform operation
fdiv.s f9, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f29, f11, f5, dyn # perform operation
fdiv.s f29, f11, f5, rdn # perform operation
fdiv.s f29, f11, f5, rmm # perform operation
fdiv.s f29, f11, f5, rne # perform operation
fdiv.s f29, f11, f5, rtz # perform operation
fdiv.s f29, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fdiv.s f27, f29, f21, dyn # perform operation
fdiv.s f27, f29, f21, rdn # perform operation
fdiv.s f27, f29, f21, rmm # perform operation
fdiv.s f27, f29, f21, rne # perform operation
fdiv.s f27, f29, f21, rtz # perform operation
fdiv.s f27, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.s f31, f16, f23, dyn # perform operation
fdiv.s f31, f16, f23, rdn # perform operation
fdiv.s f31, f16, f23, rmm # perform operation
fdiv.s f31, f16, f23, rne # perform operation
fdiv.s f31, f16, f23, rtz # perform operation
fdiv.s f31, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fdiv.s f15, f31, f21, dyn # perform operation
fdiv.s f15, f31, f21, rdn # perform operation
fdiv.s f15, f31, f21, rmm # perform operation
fdiv.s f15, f31, f21, rne # perform operation
fdiv.s f15, f31, f21, rtz # perform operation
fdiv.s f15, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fdiv.s f9, f10, f25, dyn # perform operation
fdiv.s f9, f10, f25, rdn # perform operation
fdiv.s f9, f10, f25, rmm # perform operation
fdiv.s f9, f10, f25, rne # perform operation
fdiv.s f9, f10, f25, rtz # perform operation
fdiv.s f9, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f5, f16, f14, dyn # perform operation
fdiv.s f5, f16, f14, rdn # perform operation
fdiv.s f5, f16, f14, rmm # perform operation
fdiv.s f5, f16, f14, rne # perform operation
fdiv.s f5, f16, f14, rtz # perform operation
fdiv.s f5, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f27, f9, f18, dyn # perform operation
fdiv.s f27, f9, f18, rdn # perform operation
fdiv.s f27, f9, f18, rmm # perform operation
fdiv.s f27, f9, f18, rne # perform operation
fdiv.s f27, f9, f18, rtz # perform operation
fdiv.s f27, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fdiv.s f25, f31, f26, dyn # perform operation
fdiv.s f25, f31, f26, rdn # perform operation
fdiv.s f25, f31, f26, rmm # perform operation
fdiv.s f25, f31, f26, rne # perform operation
fdiv.s f25, f31, f26, rtz # perform operation
fdiv.s f25, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
fdiv.s f9, f12, f29, dyn # perform operation
fdiv.s f9, f12, f29, rdn # perform operation
fdiv.s f9, f12, f29, rmm # perform operation
fdiv.s f9, f12, f29, rne # perform operation
fdiv.s f9, f12, f29, rtz # perform operation
fdiv.s f9, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f14, f26, f27, dyn # perform operation
fdiv.s f14, f26, f27, rdn # perform operation
fdiv.s f14, f26, f27, rmm # perform operation
fdiv.s f14, f26, f27, rne # perform operation
fdiv.s f14, f26, f27, rtz # perform operation
fdiv.s f14, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fdiv.s f9, f19, f6, dyn # perform operation
fdiv.s f9, f19, f6, rdn # perform operation
fdiv.s f9, f19, f6, rmm # perform operation
fdiv.s f9, f19, f6, rne # perform operation
fdiv.s f9, f19, f6, rtz # perform operation
fdiv.s f9, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fdiv.s f10, f3, f31, dyn # perform operation
fdiv.s f10, f3, f31, rdn # perform operation
fdiv.s f10, f3, f31, rmm # perform operation
fdiv.s f10, f3, f31, rne # perform operation
fdiv.s f10, f3, f31, rtz # perform operation
fdiv.s f10, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fdiv.s f6, f17, f26, dyn # perform operation
fdiv.s f6, f17, f26, rdn # perform operation
fdiv.s f6, f17, f26, rmm # perform operation
fdiv.s f6, f17, f26, rne # perform operation
fdiv.s f6, f17, f26, rtz # perform operation
fdiv.s f6, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fdiv.s f25, f29, f22, dyn # perform operation
fdiv.s f25, f29, f22, rdn # perform operation
fdiv.s f25, f29, f22, rmm # perform operation
fdiv.s f25, f29, f22, rne # perform operation
fdiv.s f25, f29, f22, rtz # perform operation
fdiv.s f25, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fdiv.s f11, f17, f26, dyn # perform operation
fdiv.s f11, f17, f26, rdn # perform operation
fdiv.s f11, f17, f26, rmm # perform operation
fdiv.s f11, f17, f26, rne # perform operation
fdiv.s f11, f17, f26, rtz # perform operation
fdiv.s f11, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fdiv.s f31, f9, f10, dyn # perform operation
fdiv.s f31, f9, f10, rdn # perform operation
fdiv.s f31, f9, f10, rmm # perform operation
fdiv.s f31, f9, f10, rne # perform operation
fdiv.s f31, f9, f10, rtz # perform operation
fdiv.s f31, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fdiv.s f13, f21, f17, dyn # perform operation
fdiv.s f13, f21, f17, rdn # perform operation
fdiv.s f13, f21, f17, rmm # perform operation
fdiv.s f13, f21, f17, rne # perform operation
fdiv.s f13, f21, f17, rtz # perform operation
fdiv.s f13, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fdiv.s f11, f22, f19, dyn # perform operation
fdiv.s f11, f22, f19, rdn # perform operation
fdiv.s f11, f22, f19, rmm # perform operation
fdiv.s f11, f22, f19, rne # perform operation
fdiv.s f11, f22, f19, rtz # perform operation
fdiv.s f11, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f25, f2, f11, dyn # perform operation
fdiv.s f25, f2, f11, rdn # perform operation
fdiv.s f25, f2, f11, rmm # perform operation
fdiv.s f25, f2, f11, rne # perform operation
fdiv.s f25, f2, f11, rtz # perform operation
fdiv.s f25, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fdiv.s f20, f31, f24, dyn # perform operation
fdiv.s f20, f31, f24, rdn # perform operation
fdiv.s f20, f31, f24, rmm # perform operation
fdiv.s f20, f31, f24, rne # perform operation
fdiv.s f20, f31, f24, rtz # perform operation
fdiv.s f20, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fdiv.s f5, f31, f11, dyn # perform operation
fdiv.s f5, f31, f11, rdn # perform operation
fdiv.s f5, f31, f11, rmm # perform operation
fdiv.s f5, f31, f11, rne # perform operation
fdiv.s f5, f31, f11, rtz # perform operation
fdiv.s f5, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fdiv.s f20, f23, f10, dyn # perform operation
fdiv.s f20, f23, f10, rdn # perform operation
fdiv.s f20, f23, f10, rmm # perform operation
fdiv.s f20, f23, f10, rne # perform operation
fdiv.s f20, f23, f10, rtz # perform operation
fdiv.s f20, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f1, f27, f22, dyn # perform operation
fdiv.s f1, f27, f22, rdn # perform operation
fdiv.s f1, f27, f22, rmm # perform operation
fdiv.s f1, f27, f22, rne # perform operation
fdiv.s f1, f27, f22, rtz # perform operation
fdiv.s f1, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fdiv.s f29, f11, f12, dyn # perform operation
fdiv.s f29, f11, f12, rdn # perform operation
fdiv.s f29, f11, f12, rmm # perform operation
fdiv.s f29, f11, f12, rne # perform operation
fdiv.s f29, f11, f12, rtz # perform operation
fdiv.s f29, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f28, f14, f20, dyn # perform operation
fdiv.s f28, f14, f20, rdn # perform operation
fdiv.s f28, f14, f20, rmm # perform operation
fdiv.s f28, f14, f20, rne # perform operation
fdiv.s f28, f14, f20, rtz # perform operation
fdiv.s f28, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fdiv.s f12, f7, f11, dyn # perform operation
fdiv.s f12, f7, f11, rdn # perform operation
fdiv.s f12, f7, f11, rmm # perform operation
fdiv.s f12, f7, f11, rne # perform operation
fdiv.s f12, f7, f11, rtz # perform operation
fdiv.s f12, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fdiv.s f17, f22, f14, dyn # perform operation
fdiv.s f17, f22, f14, rdn # perform operation
fdiv.s f17, f22, f14, rmm # perform operation
fdiv.s f17, f22, f14, rne # perform operation
fdiv.s f17, f22, f14, rtz # perform operation
fdiv.s f17, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fdiv.s f12, f27, f13, dyn # perform operation
fdiv.s f12, f27, f13, rdn # perform operation
fdiv.s f12, f27, f13, rmm # perform operation
fdiv.s f12, f27, f13, rne # perform operation
fdiv.s f12, f27, f13, rtz # perform operation
fdiv.s f12, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f18, f5, f23, dyn # perform operation
fdiv.s f18, f5, f23, rdn # perform operation
fdiv.s f18, f5, f23, rmm # perform operation
fdiv.s f18, f5, f23, rne # perform operation
fdiv.s f18, f5, f23, rtz # perform operation
fdiv.s f18, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fdiv.s f16, f30, f20, dyn # perform operation
fdiv.s f16, f30, f20, rdn # perform operation
fdiv.s f16, f30, f20, rmm # perform operation
fdiv.s f16, f30, f20, rne # perform operation
fdiv.s f16, f30, f20, rtz # perform operation
fdiv.s f16, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f8, f24, f6, dyn # perform operation
fdiv.s f8, f24, f6, rdn # perform operation
fdiv.s f8, f24, f6, rmm # perform operation
fdiv.s f8, f24, f6, rne # perform operation
fdiv.s f8, f24, f6, rtz # perform operation
fdiv.s f8, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f16, f29, f18, dyn # perform operation
fdiv.s f16, f29, f18, rdn # perform operation
fdiv.s f16, f29, f18, rmm # perform operation
fdiv.s f16, f29, f18, rne # perform operation
fdiv.s f16, f29, f18, rtz # perform operation
fdiv.s f16, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fdiv.s f27, f28, f13, dyn # perform operation
fdiv.s f27, f28, f13, rdn # perform operation
fdiv.s f27, f28, f13, rmm # perform operation
fdiv.s f27, f28, f13, rne # perform operation
fdiv.s f27, f28, f13, rtz # perform operation
fdiv.s f27, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fdiv.s f13, f25, f23, dyn # perform operation
fdiv.s f13, f25, f23, rdn # perform operation
fdiv.s f13, f25, f23, rmm # perform operation
fdiv.s f13, f25, f23, rne # perform operation
fdiv.s f13, f25, f23, rtz # perform operation
fdiv.s f13, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fdiv.s f16, f20, f2, dyn # perform operation
fdiv.s f16, f20, f2, rdn # perform operation
fdiv.s f16, f20, f2, rmm # perform operation
fdiv.s f16, f20, f2, rne # perform operation
fdiv.s f16, f20, f2, rtz # perform operation
fdiv.s f16, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fdiv.s f3, f30, f22, dyn # perform operation
fdiv.s f3, f30, f22, rdn # perform operation
fdiv.s f3, f30, f22, rmm # perform operation
fdiv.s f3, f30, f22, rne # perform operation
fdiv.s f3, f30, f22, rtz # perform operation
fdiv.s f3, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fdiv.s f14, f8, f31, dyn # perform operation
fdiv.s f14, f8, f31, rdn # perform operation
fdiv.s f14, f8, f31, rmm # perform operation
fdiv.s f14, f8, f31, rne # perform operation
fdiv.s f14, f8, f31, rtz # perform operation
fdiv.s f14, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fdiv.s f3, f9, f12, dyn # perform operation
fdiv.s f3, f9, f12, rdn # perform operation
fdiv.s f3, f9, f12, rmm # perform operation
fdiv.s f3, f9, f12, rne # perform operation
fdiv.s f3, f9, f12, rtz # perform operation
fdiv.s f3, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fdiv.s f1, f27, f31, dyn # perform operation
fdiv.s f1, f27, f31, rdn # perform operation
fdiv.s f1, f27, f31, rmm # perform operation
fdiv.s f1, f27, f31, rne # perform operation
fdiv.s f1, f27, f31, rtz # perform operation
fdiv.s f1, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fdiv.s f17, f11, f2, dyn # perform operation
fdiv.s f17, f11, f2, rdn # perform operation
fdiv.s f17, f11, f2, rmm # perform operation
fdiv.s f17, f11, f2, rne # perform operation
fdiv.s f17, f11, f2, rtz # perform operation
fdiv.s f17, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fdiv.s f5, f11, f30, dyn # perform operation
fdiv.s f5, f11, f30, rdn # perform operation
fdiv.s f5, f11, f30, rmm # perform operation
fdiv.s f5, f11, f30, rne # perform operation
fdiv.s f5, f11, f30, rtz # perform operation
fdiv.s f5, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fdiv.s f25, f21, f1, dyn # perform operation
fdiv.s f25, f21, f1, rdn # perform operation
fdiv.s f25, f21, f1, rmm # perform operation
fdiv.s f25, f21, f1, rne # perform operation
fdiv.s f25, f21, f1, rtz # perform operation
fdiv.s f25, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fdiv.s f22, f24, f13, dyn # perform operation
fdiv.s f22, f24, f13, rdn # perform operation
fdiv.s f22, f24, f13, rmm # perform operation
fdiv.s f22, f24, f13, rne # perform operation
fdiv.s f22, f24, f13, rtz # perform operation
fdiv.s f22, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fdiv.s f18, f6, f25, dyn # perform operation
fdiv.s f18, f6, f25, rdn # perform operation
fdiv.s f18, f6, f25, rmm # perform operation
fdiv.s f18, f6, f25, rne # perform operation
fdiv.s f18, f6, f25, rtz # perform operation
fdiv.s f18, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f10, f27, f22, dyn # perform operation
fdiv.s f10, f27, f22, rdn # perform operation
fdiv.s f10, f27, f22, rmm # perform operation
fdiv.s f10, f27, f22, rne # perform operation
fdiv.s f10, f27, f22, rtz # perform operation
fdiv.s f10, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fdiv.s f30, f19, f28, dyn # perform operation
fdiv.s f30, f19, f28, rdn # perform operation
fdiv.s f30, f19, f28, rmm # perform operation
fdiv.s f30, f19, f28, rne # perform operation
fdiv.s f30, f19, f28, rtz # perform operation
fdiv.s f30, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fdiv.s f3, f1, f19, dyn # perform operation
fdiv.s f3, f1, f19, rdn # perform operation
fdiv.s f3, f1, f19, rmm # perform operation
fdiv.s f3, f1, f19, rne # perform operation
fdiv.s f3, f1, f19, rtz # perform operation
fdiv.s f3, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fdiv.s f12, f30, f5, dyn # perform operation
fdiv.s f12, f30, f5, rdn # perform operation
fdiv.s f12, f30, f5, rmm # perform operation
fdiv.s f12, f30, f5, rne # perform operation
fdiv.s f12, f30, f5, rtz # perform operation
fdiv.s f12, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fdiv.s f14, f31, f15, dyn # perform operation
fdiv.s f14, f31, f15, rdn # perform operation
fdiv.s f14, f31, f15, rmm # perform operation
fdiv.s f14, f31, f15, rne # perform operation
fdiv.s f14, f31, f15, rtz # perform operation
fdiv.s f14, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f16, f26, f7, dyn # perform operation
fdiv.s f16, f26, f7, rdn # perform operation
fdiv.s f16, f26, f7, rmm # perform operation
fdiv.s f16, f26, f7, rne # perform operation
fdiv.s f16, f26, f7, rtz # perform operation
fdiv.s f16, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f1, f31, f6, dyn # perform operation
fdiv.s f1, f31, f6, rdn # perform operation
fdiv.s f1, f31, f6, rmm # perform operation
fdiv.s f1, f31, f6, rne # perform operation
fdiv.s f1, f31, f6, rtz # perform operation
fdiv.s f1, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fdiv.s f12, f17, f7, dyn # perform operation
fdiv.s f12, f17, f7, rdn # perform operation
fdiv.s f12, f17, f7, rmm # perform operation
fdiv.s f12, f17, f7, rne # perform operation
fdiv.s f12, f17, f7, rtz # perform operation
fdiv.s f12, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f14, f31, f16, dyn # perform operation
fdiv.s f14, f31, f16, rdn # perform operation
fdiv.s f14, f31, f16, rmm # perform operation
fdiv.s f14, f31, f16, rne # perform operation
fdiv.s f14, f31, f16, rtz # perform operation
fdiv.s f14, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fdiv.s f7, f9, f21, dyn # perform operation
fdiv.s f7, f9, f21, rdn # perform operation
fdiv.s f7, f9, f21, rmm # perform operation
fdiv.s f7, f9, f21, rne # perform operation
fdiv.s f7, f9, f21, rtz # perform operation
fdiv.s f7, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fdiv.s f17, f22, f1, dyn # perform operation
fdiv.s f17, f22, f1, rdn # perform operation
fdiv.s f17, f22, f1, rmm # perform operation
fdiv.s f17, f22, f1, rne # perform operation
fdiv.s f17, f22, f1, rtz # perform operation
fdiv.s f17, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f14, f26, f30, dyn # perform operation
fdiv.s f14, f26, f30, rdn # perform operation
fdiv.s f14, f26, f30, rmm # perform operation
fdiv.s f14, f26, f30, rne # perform operation
fdiv.s f14, f26, f30, rtz # perform operation
fdiv.s f14, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fdiv.s f15, f7, f17, dyn # perform operation
fdiv.s f15, f7, f17, rdn # perform operation
fdiv.s f15, f7, f17, rmm # perform operation
fdiv.s f15, f7, f17, rne # perform operation
fdiv.s f15, f7, f17, rtz # perform operation
fdiv.s f15, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fdiv.s f20, f11, f24, dyn # perform operation
fdiv.s f20, f11, f24, rdn # perform operation
fdiv.s f20, f11, f24, rmm # perform operation
fdiv.s f20, f11, f24, rne # perform operation
fdiv.s f20, f11, f24, rtz # perform operation
fdiv.s f20, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fdiv.s f29, f2, f20, dyn # perform operation
fdiv.s f29, f2, f20, rdn # perform operation
fdiv.s f29, f2, f20, rmm # perform operation
fdiv.s f29, f2, f20, rne # perform operation
fdiv.s f29, f2, f20, rtz # perform operation
fdiv.s f29, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fdiv.s f22, f30, f7, dyn # perform operation
fdiv.s f22, f30, f7, rdn # perform operation
fdiv.s f22, f30, f7, rmm # perform operation
fdiv.s f22, f30, f7, rne # perform operation
fdiv.s f22, f30, f7, rtz # perform operation
fdiv.s f22, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fdiv.s f12, f24, f6, dyn # perform operation
fdiv.s f12, f24, f6, rdn # perform operation
fdiv.s f12, f24, f6, rmm # perform operation
fdiv.s f12, f24, f6, rne # perform operation
fdiv.s f12, f24, f6, rtz # perform operation
fdiv.s f12, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fdiv.s f6, f11, f22, dyn # perform operation
fdiv.s f6, f11, f22, rdn # perform operation
fdiv.s f6, f11, f22, rmm # perform operation
fdiv.s f6, f11, f22, rne # perform operation
fdiv.s f6, f11, f22, rtz # perform operation
fdiv.s f6, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f20, f5, f18, dyn # perform operation
fdiv.s f20, f5, f18, rdn # perform operation
fdiv.s f20, f5, f18, rmm # perform operation
fdiv.s f20, f5, f18, rne # perform operation
fdiv.s f20, f5, f18, rtz # perform operation
fdiv.s f20, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fdiv.s f5, f24, f31, dyn # perform operation
fdiv.s f5, f24, f31, rdn # perform operation
fdiv.s f5, f24, f31, rmm # perform operation
fdiv.s f5, f24, f31, rne # perform operation
fdiv.s f5, f24, f31, rtz # perform operation
fdiv.s f5, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fdiv.s f6, f22, f7, dyn # perform operation
fdiv.s f6, f22, f7, rdn # perform operation
fdiv.s f6, f22, f7, rmm # perform operation
fdiv.s f6, f22, f7, rne # perform operation
fdiv.s f6, f22, f7, rtz # perform operation
fdiv.s f6, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f25, f26, f11, dyn # perform operation
fdiv.s f25, f26, f11, rdn # perform operation
fdiv.s f25, f26, f11, rmm # perform operation
fdiv.s f25, f26, f11, rne # perform operation
fdiv.s f25, f26, f11, rtz # perform operation
fdiv.s f25, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fdiv.s f25, f12, f5, dyn # perform operation
fdiv.s f25, f12, f5, rdn # perform operation
fdiv.s f25, f12, f5, rmm # perform operation
fdiv.s f25, f12, f5, rne # perform operation
fdiv.s f25, f12, f5, rtz # perform operation
fdiv.s f25, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fdiv.s f3, f26, f29, dyn # perform operation
fdiv.s f3, f26, f29, rdn # perform operation
fdiv.s f3, f26, f29, rmm # perform operation
fdiv.s f3, f26, f29, rne # perform operation
fdiv.s f3, f26, f29, rtz # perform operation
fdiv.s f3, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fdiv.s f6, f27, f21, dyn # perform operation
fdiv.s f6, f27, f21, rdn # perform operation
fdiv.s f6, f27, f21, rmm # perform operation
fdiv.s f6, f27, f21, rne # perform operation
fdiv.s f6, f27, f21, rtz # perform operation
fdiv.s f6, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fdiv.s f30, f11, f16, dyn # perform operation
fdiv.s f30, f11, f16, rdn # perform operation
fdiv.s f30, f11, f16, rmm # perform operation
fdiv.s f30, f11, f16, rne # perform operation
fdiv.s f30, f11, f16, rtz # perform operation
fdiv.s f30, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fdiv.s f13, f5, f10, dyn # perform operation
fdiv.s f13, f5, f10, rdn # perform operation
fdiv.s f13, f5, f10, rmm # perform operation
fdiv.s f13, f5, f10, rne # perform operation
fdiv.s f13, f5, f10, rtz # perform operation
fdiv.s f13, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f23, f16, f8, dyn # perform operation
fdiv.s f23, f16, f8, rdn # perform operation
fdiv.s f23, f16, f8, rmm # perform operation
fdiv.s f23, f16, f8, rne # perform operation
fdiv.s f23, f16, f8, rtz # perform operation
fdiv.s f23, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fdiv.s f14, f5, f23, dyn # perform operation
fdiv.s f14, f5, f23, rdn # perform operation
fdiv.s f14, f5, f23, rmm # perform operation
fdiv.s f14, f5, f23, rne # perform operation
fdiv.s f14, f5, f23, rtz # perform operation
fdiv.s f14, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fdiv.s f5, f26, f27, dyn # perform operation
fdiv.s f5, f26, f27, rdn # perform operation
fdiv.s f5, f26, f27, rmm # perform operation
fdiv.s f5, f26, f27, rne # perform operation
fdiv.s f5, f26, f27, rtz # perform operation
fdiv.s f5, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fdiv.s f13, f14, f29, dyn # perform operation
fdiv.s f13, f14, f29, rdn # perform operation
fdiv.s f13, f14, f29, rmm # perform operation
fdiv.s f13, f14, f29, rne # perform operation
fdiv.s f13, f14, f29, rtz # perform operation
fdiv.s f13, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f16, f9, f25, dyn # perform operation
fdiv.s f16, f9, f25, rdn # perform operation
fdiv.s f16, f9, f25, rmm # perform operation
fdiv.s f16, f9, f25, rne # perform operation
fdiv.s f16, f9, f25, rtz # perform operation
fdiv.s f16, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fdiv.s f25, f24, f23, dyn # perform operation
fdiv.s f25, f24, f23, rdn # perform operation
fdiv.s f25, f24, f23, rmm # perform operation
fdiv.s f25, f24, f23, rne # perform operation
fdiv.s f25, f24, f23, rtz # perform operation
fdiv.s f25, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fdiv.s f24, f8, f14, dyn # perform operation
fdiv.s f24, f8, f14, rdn # perform operation
fdiv.s f24, f8, f14, rmm # perform operation
fdiv.s f24, f8, f14, rne # perform operation
fdiv.s f24, f8, f14, rtz # perform operation
fdiv.s f24, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fdiv.s f21, f15, f23, dyn # perform operation
fdiv.s f21, f15, f23, rdn # perform operation
fdiv.s f21, f15, f23, rmm # perform operation
fdiv.s f21, f15, f23, rne # perform operation
fdiv.s f21, f15, f23, rtz # perform operation
fdiv.s f21, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fdiv.s f23, f17, f7, dyn # perform operation
fdiv.s f23, f17, f7, rdn # perform operation
fdiv.s f23, f17, f7, rmm # perform operation
fdiv.s f23, f17, f7, rne # perform operation
fdiv.s f23, f17, f7, rtz # perform operation
fdiv.s f23, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fdiv.s f27, f19, f3, dyn # perform operation
fdiv.s f27, f19, f3, rdn # perform operation
fdiv.s f27, f19, f3, rmm # perform operation
fdiv.s f27, f19, f3, rne # perform operation
fdiv.s f27, f19, f3, rtz # perform operation
fdiv.s f27, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fdiv.s f7, f27, f23, dyn # perform operation
fdiv.s f7, f27, f23, rdn # perform operation
fdiv.s f7, f27, f23, rmm # perform operation
fdiv.s f7, f27, f23, rne # perform operation
fdiv.s f7, f27, f23, rtz # perform operation
fdiv.s f7, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fdiv.s f27, f6, f20, dyn # perform operation
fdiv.s f27, f6, f20, rdn # perform operation
fdiv.s f27, f6, f20, rmm # perform operation
fdiv.s f27, f6, f20, rne # perform operation
fdiv.s f27, f6, f20, rtz # perform operation
fdiv.s f27, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fdiv.s f19, f15, f20, dyn # perform operation
fdiv.s f19, f15, f20, rdn # perform operation
fdiv.s f19, f15, f20, rmm # perform operation
fdiv.s f19, f15, f20, rne # perform operation
fdiv.s f19, f15, f20, rtz # perform operation
fdiv.s f19, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fdiv.s f19, f9, f11, dyn # perform operation
fdiv.s f19, f9, f11, rdn # perform operation
fdiv.s f19, f9, f11, rmm # perform operation
fdiv.s f19, f9, f11, rne # perform operation
fdiv.s f19, f9, f11, rtz # perform operation
fdiv.s f19, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fdiv.s f9, f20, f3, dyn # perform operation
fdiv.s f9, f20, f3, rdn # perform operation
fdiv.s f9, f20, f3, rmm # perform operation
fdiv.s f9, f20, f3, rne # perform operation
fdiv.s f9, f20, f3, rtz # perform operation
fdiv.s f9, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.s f5, f31, f27, dyn # perform operation
fdiv.s f5, f31, f27, rdn # perform operation
fdiv.s f5, f31, f27, rmm # perform operation
fdiv.s f5, f31, f27, rne # perform operation
fdiv.s f5, f31, f27, rtz # perform operation
fdiv.s f5, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fdiv.s f7, f3, f23, dyn # perform operation
fdiv.s f7, f3, f23, rdn # perform operation
fdiv.s f7, f3, f23, rmm # perform operation
fdiv.s f7, f3, f23, rne # perform operation
fdiv.s f7, f3, f23, rtz # perform operation
fdiv.s f7, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fdiv.s f10, f27, f23, dyn # perform operation
fdiv.s f10, f27, f23, rdn # perform operation
fdiv.s f10, f27, f23, rmm # perform operation
fdiv.s f10, f27, f23, rne # perform operation
fdiv.s f10, f27, f23, rtz # perform operation
fdiv.s f10, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f24, f27, f14, dyn # perform operation
fdiv.s f24, f27, f14, rdn # perform operation
fdiv.s f24, f27, f14, rmm # perform operation
fdiv.s f24, f27, f14, rne # perform operation
fdiv.s f24, f27, f14, rtz # perform operation
fdiv.s f24, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fdiv.s f9, f26, f17, dyn # perform operation
fdiv.s f9, f26, f17, rdn # perform operation
fdiv.s f9, f26, f17, rmm # perform operation
fdiv.s f9, f26, f17, rne # perform operation
fdiv.s f9, f26, f17, rtz # perform operation
fdiv.s f9, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fdiv.s f14, f12, f7, dyn # perform operation
fdiv.s f14, f12, f7, rdn # perform operation
fdiv.s f14, f12, f7, rmm # perform operation
fdiv.s f14, f12, f7, rne # perform operation
fdiv.s f14, f12, f7, rtz # perform operation
fdiv.s f14, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fdiv.s f30, f27, f2, dyn # perform operation
fdiv.s f30, f27, f2, rdn # perform operation
fdiv.s f30, f27, f2, rmm # perform operation
fdiv.s f30, f27, f2, rne # perform operation
fdiv.s f30, f27, f2, rtz # perform operation
fdiv.s f30, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fdiv.s f11, f14, f7, dyn # perform operation
fdiv.s f11, f14, f7, rdn # perform operation
fdiv.s f11, f14, f7, rmm # perform operation
fdiv.s f11, f14, f7, rne # perform operation
fdiv.s f11, f14, f7, rtz # perform operation
fdiv.s f11, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fdiv.s f18, f8, f25, dyn # perform operation
fdiv.s f18, f8, f25, rdn # perform operation
fdiv.s f18, f8, f25, rmm # perform operation
fdiv.s f18, f8, f25, rne # perform operation
fdiv.s f18, f8, f25, rtz # perform operation
fdiv.s f18, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fdiv.s f28, f21, f25, dyn # perform operation
fdiv.s f28, f21, f25, rdn # perform operation
fdiv.s f28, f21, f25, rmm # perform operation
fdiv.s f28, f21, f25, rne # perform operation
fdiv.s f28, f21, f25, rtz # perform operation
fdiv.s f28, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fdiv.s f14, f27, f15, dyn # perform operation
fdiv.s f14, f27, f15, rdn # perform operation
fdiv.s f14, f27, f15, rmm # perform operation
fdiv.s f14, f27, f15, rne # perform operation
fdiv.s f14, f27, f15, rtz # perform operation
fdiv.s f14, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fdiv.s f7, f17, f15, dyn # perform operation
fdiv.s f7, f17, f15, rdn # perform operation
fdiv.s f7, f17, f15, rmm # perform operation
fdiv.s f7, f17, f15, rne # perform operation
fdiv.s f7, f17, f15, rtz # perform operation
fdiv.s f7, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f16, f21, f2, dyn # perform operation
fdiv.s f16, f21, f2, rdn # perform operation
fdiv.s f16, f21, f2, rmm # perform operation
fdiv.s f16, f21, f2, rne # perform operation
fdiv.s f16, f21, f2, rtz # perform operation
fdiv.s f16, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fdiv.s f26, f12, f22, dyn # perform operation
fdiv.s f26, f12, f22, rdn # perform operation
fdiv.s f26, f12, f22, rmm # perform operation
fdiv.s f26, f12, f22, rne # perform operation
fdiv.s f26, f12, f22, rtz # perform operation
fdiv.s f26, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fdiv.s f5, f2, f9, dyn # perform operation
fdiv.s f5, f2, f9, rdn # perform operation
fdiv.s f5, f2, f9, rmm # perform operation
fdiv.s f5, f2, f9, rne # perform operation
fdiv.s f5, f2, f9, rtz # perform operation
fdiv.s f5, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fdiv.s f30, f23, f12, dyn # perform operation
fdiv.s f30, f23, f12, rdn # perform operation
fdiv.s f30, f23, f12, rmm # perform operation
fdiv.s f30, f23, f12, rne # perform operation
fdiv.s f30, f23, f12, rtz # perform operation
fdiv.s f30, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fdiv.s f7, f25, f21, dyn # perform operation
fdiv.s f7, f25, f21, rdn # perform operation
fdiv.s f7, f25, f21, rmm # perform operation
fdiv.s f7, f25, f21, rne # perform operation
fdiv.s f7, f25, f21, rtz # perform operation
fdiv.s f7, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fdiv.s f24, f25, f28, dyn # perform operation
fdiv.s f24, f25, f28, rdn # perform operation
fdiv.s f24, f25, f28, rmm # perform operation
fdiv.s f24, f25, f28, rne # perform operation
fdiv.s f24, f25, f28, rtz # perform operation
fdiv.s f24, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fdiv.s f1, f27, f5, dyn # perform operation
fdiv.s f1, f27, f5, rdn # perform operation
fdiv.s f1, f27, f5, rmm # perform operation
fdiv.s f1, f27, f5, rne # perform operation
fdiv.s f1, f27, f5, rtz # perform operation
fdiv.s f1, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fdiv.s f14, f21, f30, dyn # perform operation
fdiv.s f14, f21, f30, rdn # perform operation
fdiv.s f14, f21, f30, rmm # perform operation
fdiv.s f14, f21, f30, rne # perform operation
fdiv.s f14, f21, f30, rtz # perform operation
fdiv.s f14, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fdiv.s f12, f1, f30, dyn # perform operation
fdiv.s f12, f1, f30, rdn # perform operation
fdiv.s f12, f1, f30, rmm # perform operation
fdiv.s f12, f1, f30, rne # perform operation
fdiv.s f12, f1, f30, rtz # perform operation
fdiv.s f12, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fdiv.s f18, f20, f16, dyn # perform operation
fdiv.s f18, f20, f16, rdn # perform operation
fdiv.s f18, f20, f16, rmm # perform operation
fdiv.s f18, f20, f16, rne # perform operation
fdiv.s f18, f20, f16, rtz # perform operation
fdiv.s f18, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fdiv.s f23, f16, f7, dyn # perform operation
fdiv.s f23, f16, f7, rdn # perform operation
fdiv.s f23, f16, f7, rmm # perform operation
fdiv.s f23, f16, f7, rne # perform operation
fdiv.s f23, f16, f7, rtz # perform operation
fdiv.s f23, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fdiv.s f31, f5, f30, dyn # perform operation
fdiv.s f31, f5, f30, rdn # perform operation
fdiv.s f31, f5, f30, rmm # perform operation
fdiv.s f31, f5, f30, rne # perform operation
fdiv.s f31, f5, f30, rtz # perform operation
fdiv.s f31, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f11, f3, f30, dyn # perform operation
fdiv.s f11, f3, f30, rdn # perform operation
fdiv.s f11, f3, f30, rmm # perform operation
fdiv.s f11, f3, f30, rne # perform operation
fdiv.s f11, f3, f30, rtz # perform operation
fdiv.s f11, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fdiv.s f1, f5, f27, dyn # perform operation
fdiv.s f1, f5, f27, rdn # perform operation
fdiv.s f1, f5, f27, rmm # perform operation
fdiv.s f1, f5, f27, rne # perform operation
fdiv.s f1, f5, f27, rtz # perform operation
fdiv.s f1, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fdiv.s f7, f2, f17, dyn # perform operation
fdiv.s f7, f2, f17, rdn # perform operation
fdiv.s f7, f2, f17, rmm # perform operation
fdiv.s f7, f2, f17, rne # perform operation
fdiv.s f7, f2, f17, rtz # perform operation
fdiv.s f7, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fdiv.s f20, f9, f13, dyn # perform operation
fdiv.s f20, f9, f13, rdn # perform operation
fdiv.s f20, f9, f13, rmm # perform operation
fdiv.s f20, f9, f13, rne # perform operation
fdiv.s f20, f9, f13, rtz # perform operation
fdiv.s f20, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f20, f18, f15, dyn # perform operation
fdiv.s f20, f18, f15, rdn # perform operation
fdiv.s f20, f18, f15, rmm # perform operation
fdiv.s f20, f18, f15, rne # perform operation
fdiv.s f20, f18, f15, rtz # perform operation
fdiv.s f20, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fdiv.s f28, f13, f12, dyn # perform operation
fdiv.s f28, f13, f12, rdn # perform operation
fdiv.s f28, f13, f12, rmm # perform operation
fdiv.s f28, f13, f12, rne # perform operation
fdiv.s f28, f13, f12, rtz # perform operation
fdiv.s f28, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fdiv.s f30, f9, f1, dyn # perform operation
fdiv.s f30, f9, f1, rdn # perform operation
fdiv.s f30, f9, f1, rmm # perform operation
fdiv.s f30, f9, f1, rne # perform operation
fdiv.s f30, f9, f1, rtz # perform operation
fdiv.s f30, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fdiv.s f23, f18, f17, dyn # perform operation
fdiv.s f23, f18, f17, rdn # perform operation
fdiv.s f23, f18, f17, rmm # perform operation
fdiv.s f23, f18, f17, rne # perform operation
fdiv.s f23, f18, f17, rtz # perform operation
fdiv.s f23, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fdiv.s f15, f30, f7, dyn # perform operation
fdiv.s f15, f30, f7, rdn # perform operation
fdiv.s f15, f30, f7, rmm # perform operation
fdiv.s f15, f30, f7, rne # perform operation
fdiv.s f15, f30, f7, rtz # perform operation
fdiv.s f15, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fdiv.s f20, f17, f28, dyn # perform operation
fdiv.s f20, f17, f28, rdn # perform operation
fdiv.s f20, f17, f28, rmm # perform operation
fdiv.s f20, f17, f28, rne # perform operation
fdiv.s f20, f17, f28, rtz # perform operation
fdiv.s f20, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fdiv.s f19, f11, f22, dyn # perform operation
fdiv.s f19, f11, f22, rdn # perform operation
fdiv.s f19, f11, f22, rmm # perform operation
fdiv.s f19, f11, f22, rne # perform operation
fdiv.s f19, f11, f22, rtz # perform operation
fdiv.s f19, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fdiv.s f16, f26, f7, dyn # perform operation
fdiv.s f16, f26, f7, rdn # perform operation
fdiv.s f16, f26, f7, rmm # perform operation
fdiv.s f16, f26, f7, rne # perform operation
fdiv.s f16, f26, f7, rtz # perform operation
fdiv.s f16, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fdiv.s f6, f22, f10, dyn # perform operation
fdiv.s f6, f22, f10, rdn # perform operation
fdiv.s f6, f22, f10, rmm # perform operation
fdiv.s f6, f22, f10, rne # perform operation
fdiv.s f6, f22, f10, rtz # perform operation
fdiv.s f6, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fdiv.s f14, f9, f12, dyn # perform operation
fdiv.s f14, f9, f12, rdn # perform operation
fdiv.s f14, f9, f12, rmm # perform operation
fdiv.s f14, f9, f12, rne # perform operation
fdiv.s f14, f9, f12, rtz # perform operation
fdiv.s f14, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fdiv.s f13, f26, f8, dyn # perform operation
fdiv.s f13, f26, f8, rdn # perform operation
fdiv.s f13, f26, f8, rmm # perform operation
fdiv.s f13, f26, f8, rne # perform operation
fdiv.s f13, f26, f8, rtz # perform operation
fdiv.s f13, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fdiv.s f16, f1, f13, dyn # perform operation
fdiv.s f16, f1, f13, rdn # perform operation
fdiv.s f16, f1, f13, rmm # perform operation
fdiv.s f16, f1, f13, rne # perform operation
fdiv.s f16, f1, f13, rtz # perform operation
fdiv.s f16, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f30, f27, f29, dyn # perform operation
fdiv.s f30, f27, f29, rdn # perform operation
fdiv.s f30, f27, f29, rmm # perform operation
fdiv.s f30, f27, f29, rne # perform operation
fdiv.s f30, f27, f29, rtz # perform operation
fdiv.s f30, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fdiv.s f5, f23, f29, dyn # perform operation
fdiv.s f5, f23, f29, rdn # perform operation
fdiv.s f5, f23, f29, rmm # perform operation
fdiv.s f5, f23, f29, rne # perform operation
fdiv.s f5, f23, f29, rtz # perform operation
fdiv.s f5, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fdiv.s f24, f2, f19, dyn # perform operation
fdiv.s f24, f2, f19, rdn # perform operation
fdiv.s f24, f2, f19, rmm # perform operation
fdiv.s f24, f2, f19, rne # perform operation
fdiv.s f24, f2, f19, rtz # perform operation
fdiv.s f24, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fdiv.s f24, f29, f6, dyn # perform operation
fdiv.s f24, f29, f6, rdn # perform operation
fdiv.s f24, f29, f6, rmm # perform operation
fdiv.s f24, f29, f6, rne # perform operation
fdiv.s f24, f29, f6, rtz # perform operation
fdiv.s f24, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fdiv.s f1, f10, f20, dyn # perform operation
fdiv.s f1, f10, f20, rdn # perform operation
fdiv.s f1, f10, f20, rmm # perform operation
fdiv.s f1, f10, f20, rne # perform operation
fdiv.s f1, f10, f20, rtz # perform operation
fdiv.s f1, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fdiv.s f1, f10, f27, dyn # perform operation
fdiv.s f1, f10, f27, rdn # perform operation
fdiv.s f1, f10, f27, rmm # perform operation
fdiv.s f1, f10, f27, rne # perform operation
fdiv.s f1, f10, f27, rtz # perform operation
fdiv.s f1, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f10, f2, f16, dyn # perform operation
fdiv.s f10, f2, f16, rdn # perform operation
fdiv.s f10, f2, f16, rmm # perform operation
fdiv.s f10, f2, f16, rne # perform operation
fdiv.s f10, f2, f16, rtz # perform operation
fdiv.s f10, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fdiv.s f29, f24, f3, dyn # perform operation
fdiv.s f29, f24, f3, rdn # perform operation
fdiv.s f29, f24, f3, rmm # perform operation
fdiv.s f29, f24, f3, rne # perform operation
fdiv.s f29, f24, f3, rtz # perform operation
fdiv.s f29, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fdiv.s f9, f12, f27, dyn # perform operation
fdiv.s f9, f12, f27, rdn # perform operation
fdiv.s f9, f12, f27, rmm # perform operation
fdiv.s f9, f12, f27, rne # perform operation
fdiv.s f9, f12, f27, rtz # perform operation
fdiv.s f9, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fdiv.s f25, f5, f12, dyn # perform operation
fdiv.s f25, f5, f12, rdn # perform operation
fdiv.s f25, f5, f12, rmm # perform operation
fdiv.s f25, f5, f12, rne # perform operation
fdiv.s f25, f5, f12, rtz # perform operation
fdiv.s f25, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fdiv.s f30, f5, f23, dyn # perform operation
fdiv.s f30, f5, f23, rdn # perform operation
fdiv.s f30, f5, f23, rmm # perform operation
fdiv.s f30, f5, f23, rne # perform operation
fdiv.s f30, f5, f23, rtz # perform operation
fdiv.s f30, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fdiv.s f10, f22, f26, dyn # perform operation
fdiv.s f10, f22, f26, rdn # perform operation
fdiv.s f10, f22, f26, rmm # perform operation
fdiv.s f10, f22, f26, rne # perform operation
fdiv.s f10, f22, f26, rtz # perform operation
fdiv.s f10, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f24, f31, f26, dyn # perform operation
fdiv.s f24, f31, f26, rdn # perform operation
fdiv.s f24, f31, f26, rmm # perform operation
fdiv.s f24, f31, f26, rne # perform operation
fdiv.s f24, f31, f26, rtz # perform operation
fdiv.s f24, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fdiv.s f21, f1, f15, dyn # perform operation
fdiv.s f21, f1, f15, rdn # perform operation
fdiv.s f21, f1, f15, rmm # perform operation
fdiv.s f21, f1, f15, rne # perform operation
fdiv.s f21, f1, f15, rtz # perform operation
fdiv.s f21, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f7, f24, f16, dyn # perform operation
fdiv.s f7, f24, f16, rdn # perform operation
fdiv.s f7, f24, f16, rmm # perform operation
fdiv.s f7, f24, f16, rne # perform operation
fdiv.s f7, f24, f16, rtz # perform operation
fdiv.s f7, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fdiv.s f23, f26, f24, dyn # perform operation
fdiv.s f23, f26, f24, rdn # perform operation
fdiv.s f23, f26, f24, rmm # perform operation
fdiv.s f23, f26, f24, rne # perform operation
fdiv.s f23, f26, f24, rtz # perform operation
fdiv.s f23, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fdiv.s f18, f25, f5, dyn # perform operation
fdiv.s f18, f25, f5, rdn # perform operation
fdiv.s f18, f25, f5, rmm # perform operation
fdiv.s f18, f25, f5, rne # perform operation
fdiv.s f18, f25, f5, rtz # perform operation
fdiv.s f18, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f15, f1, f13, dyn # perform operation
fdiv.s f15, f1, f13, rdn # perform operation
fdiv.s f15, f1, f13, rmm # perform operation
fdiv.s f15, f1, f13, rne # perform operation
fdiv.s f15, f1, f13, rtz # perform operation
fdiv.s f15, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fdiv.s f5, f14, f12, dyn # perform operation
fdiv.s f5, f14, f12, rdn # perform operation
fdiv.s f5, f14, f12, rmm # perform operation
fdiv.s f5, f14, f12, rne # perform operation
fdiv.s f5, f14, f12, rtz # perform operation
fdiv.s f5, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fdiv.s f25, f8, f31, dyn # perform operation
fdiv.s f25, f8, f31, rdn # perform operation
fdiv.s f25, f8, f31, rmm # perform operation
fdiv.s f25, f8, f31, rne # perform operation
fdiv.s f25, f8, f31, rtz # perform operation
fdiv.s f25, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fdiv.s f14, f9, f23, dyn # perform operation
fdiv.s f14, f9, f23, rdn # perform operation
fdiv.s f14, f9, f23, rmm # perform operation
fdiv.s f14, f9, f23, rne # perform operation
fdiv.s f14, f9, f23, rtz # perform operation
fdiv.s f14, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fdiv.s f28, f7, f18, dyn # perform operation
fdiv.s f28, f7, f18, rdn # perform operation
fdiv.s f28, f7, f18, rmm # perform operation
fdiv.s f28, f7, f18, rne # perform operation
fdiv.s f28, f7, f18, rtz # perform operation
fdiv.s f28, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
fdiv.s f26, f7, f23, dyn # perform operation
fdiv.s f26, f7, f23, rdn # perform operation
fdiv.s f26, f7, f23, rmm # perform operation
fdiv.s f26, f7, f23, rne # perform operation
fdiv.s f26, f7, f23, rtz # perform operation
fdiv.s f26, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f28, f23, f19, dyn # perform operation
fdiv.s f28, f23, f19, rdn # perform operation
fdiv.s f28, f23, f19, rmm # perform operation
fdiv.s f28, f23, f19, rne # perform operation
fdiv.s f28, f23, f19, rtz # perform operation
fdiv.s f28, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fdiv.s f15, f18, f17, dyn # perform operation
fdiv.s f15, f18, f17, rdn # perform operation
fdiv.s f15, f18, f17, rmm # perform operation
fdiv.s f15, f18, f17, rne # perform operation
fdiv.s f15, f18, f17, rtz # perform operation
fdiv.s f15, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fdiv.s f30, f10, f15, dyn # perform operation
fdiv.s f30, f10, f15, rdn # perform operation
fdiv.s f30, f10, f15, rmm # perform operation
fdiv.s f30, f10, f15, rne # perform operation
fdiv.s f30, f10, f15, rtz # perform operation
fdiv.s f30, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fdiv.s f1, f14, f21, dyn # perform operation
fdiv.s f1, f14, f21, rdn # perform operation
fdiv.s f1, f14, f21, rmm # perform operation
fdiv.s f1, f14, f21, rne # perform operation
fdiv.s f1, f14, f21, rtz # perform operation
fdiv.s f1, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fdiv.s f18, f13, f1, dyn # perform operation
fdiv.s f18, f13, f1, rdn # perform operation
fdiv.s f18, f13, f1, rmm # perform operation
fdiv.s f18, f13, f1, rne # perform operation
fdiv.s f18, f13, f1, rtz # perform operation
fdiv.s f18, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.s f17, f14, f28, dyn # perform operation
fdiv.s f17, f14, f28, rdn # perform operation
fdiv.s f17, f14, f28, rmm # perform operation
fdiv.s f17, f14, f28, rne # perform operation
fdiv.s f17, f14, f28, rtz # perform operation
fdiv.s f17, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fdiv.s f8, f2, f19, dyn # perform operation
fdiv.s f8, f2, f19, rdn # perform operation
fdiv.s f8, f2, f19, rmm # perform operation
fdiv.s f8, f2, f19, rne # perform operation
fdiv.s f8, f2, f19, rtz # perform operation
fdiv.s f8, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fdiv.s f13, f2, f15, dyn # perform operation
fdiv.s f13, f2, f15, rdn # perform operation
fdiv.s f13, f2, f15, rmm # perform operation
fdiv.s f13, f2, f15, rne # perform operation
fdiv.s f13, f2, f15, rtz # perform operation
fdiv.s f13, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fdiv.s f8, f20, f14, dyn # perform operation
fdiv.s f8, f20, f14, rdn # perform operation
fdiv.s f8, f20, f14, rmm # perform operation
fdiv.s f8, f20, f14, rne # perform operation
fdiv.s f8, f20, f14, rtz # perform operation
fdiv.s f8, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fdiv.s f12, f2, f24, dyn # perform operation
fdiv.s f12, f2, f24, rdn # perform operation
fdiv.s f12, f2, f24, rmm # perform operation
fdiv.s f12, f2, f24, rne # perform operation
fdiv.s f12, f2, f24, rtz # perform operation
fdiv.s f12, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f26, f12, f25, dyn # perform operation
fdiv.s f26, f12, f25, rdn # perform operation
fdiv.s f26, f12, f25, rmm # perform operation
fdiv.s f26, f12, f25, rne # perform operation
fdiv.s f26, f12, f25, rtz # perform operation
fdiv.s f26, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fdiv.s f22, f9, f13, dyn # perform operation
fdiv.s f22, f9, f13, rdn # perform operation
fdiv.s f22, f9, f13, rmm # perform operation
fdiv.s f22, f9, f13, rne # perform operation
fdiv.s f22, f9, f13, rtz # perform operation
fdiv.s f22, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f30, f17, f9, dyn # perform operation
fdiv.s f30, f17, f9, rdn # perform operation
fdiv.s f30, f17, f9, rmm # perform operation
fdiv.s f30, f17, f9, rne # perform operation
fdiv.s f30, f17, f9, rtz # perform operation
fdiv.s f30, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fdiv.s f31, f24, f11, dyn # perform operation
fdiv.s f31, f24, f11, rdn # perform operation
fdiv.s f31, f24, f11, rmm # perform operation
fdiv.s f31, f24, f11, rne # perform operation
fdiv.s f31, f24, f11, rtz # perform operation
fdiv.s f31, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f2, f3, f19, dyn # perform operation
fdiv.s f2, f3, f19, rdn # perform operation
fdiv.s f2, f3, f19, rmm # perform operation
fdiv.s f2, f3, f19, rne # perform operation
fdiv.s f2, f3, f19, rtz # perform operation
fdiv.s f2, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f25, f15, f20, dyn # perform operation
fdiv.s f25, f15, f20, rdn # perform operation
fdiv.s f25, f15, f20, rmm # perform operation
fdiv.s f25, f15, f20, rne # perform operation
fdiv.s f25, f15, f20, rtz # perform operation
fdiv.s f25, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fdiv.s f26, f24, f29, dyn # perform operation
fdiv.s f26, f24, f29, rdn # perform operation
fdiv.s f26, f24, f29, rmm # perform operation
fdiv.s f26, f24, f29, rne # perform operation
fdiv.s f26, f24, f29, rtz # perform operation
fdiv.s f26, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fdiv.s f28, f25, f11, dyn # perform operation
fdiv.s f28, f25, f11, rdn # perform operation
fdiv.s f28, f25, f11, rmm # perform operation
fdiv.s f28, f25, f11, rne # perform operation
fdiv.s f28, f25, f11, rtz # perform operation
fdiv.s f28, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fdiv.s f5, f20, f17, dyn # perform operation
fdiv.s f5, f20, f17, rdn # perform operation
fdiv.s f5, f20, f17, rmm # perform operation
fdiv.s f5, f20, f17, rne # perform operation
fdiv.s f5, f20, f17, rtz # perform operation
fdiv.s f5, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fdiv.s f22, f3, f26, dyn # perform operation
fdiv.s f22, f3, f26, rdn # perform operation
fdiv.s f22, f3, f26, rmm # perform operation
fdiv.s f22, f3, f26, rne # perform operation
fdiv.s f22, f3, f26, rtz # perform operation
fdiv.s f22, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fdiv.s f29, f27, f28, dyn # perform operation
fdiv.s f29, f27, f28, rdn # perform operation
fdiv.s f29, f27, f28, rmm # perform operation
fdiv.s f29, f27, f28, rne # perform operation
fdiv.s f29, f27, f28, rtz # perform operation
fdiv.s f29, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.s f26, f2, f12, dyn # perform operation
fdiv.s f26, f2, f12, rdn # perform operation
fdiv.s f26, f2, f12, rmm # perform operation
fdiv.s f26, f2, f12, rne # perform operation
fdiv.s f26, f2, f12, rtz # perform operation
fdiv.s f26, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fdiv.s f23, f25, f7, dyn # perform operation
fdiv.s f23, f25, f7, rdn # perform operation
fdiv.s f23, f25, f7, rmm # perform operation
fdiv.s f23, f25, f7, rne # perform operation
fdiv.s f23, f25, f7, rtz # perform operation
fdiv.s f23, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fdiv.s f13, f31, f9, dyn # perform operation
fdiv.s f13, f31, f9, rdn # perform operation
fdiv.s f13, f31, f9, rmm # perform operation
fdiv.s f13, f31, f9, rne # perform operation
fdiv.s f13, f31, f9, rtz # perform operation
fdiv.s f13, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fdiv.s f8, f27, f20, dyn # perform operation
fdiv.s f8, f27, f20, rdn # perform operation
fdiv.s f8, f27, f20, rmm # perform operation
fdiv.s f8, f27, f20, rne # perform operation
fdiv.s f8, f27, f20, rtz # perform operation
fdiv.s f8, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fdiv.s f9, f27, f22, dyn # perform operation
fdiv.s f9, f27, f22, rdn # perform operation
fdiv.s f9, f27, f22, rmm # perform operation
fdiv.s f9, f27, f22, rne # perform operation
fdiv.s f9, f27, f22, rtz # perform operation
fdiv.s f9, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fdiv.s f18, f19, f1, dyn # perform operation
fdiv.s f18, f19, f1, rdn # perform operation
fdiv.s f18, f19, f1, rmm # perform operation
fdiv.s f18, f19, f1, rne # perform operation
fdiv.s f18, f19, f1, rtz # perform operation
fdiv.s f18, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
fdiv.s f10, f24, f21, dyn # perform operation
fdiv.s f10, f24, f21, rdn # perform operation
fdiv.s f10, f24, f21, rmm # perform operation
fdiv.s f10, f24, f21, rne # perform operation
fdiv.s f10, f24, f21, rtz # perform operation
fdiv.s f10, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f24, f21, f27, dyn # perform operation
fdiv.s f24, f21, f27, rdn # perform operation
fdiv.s f24, f21, f27, rmm # perform operation
fdiv.s f24, f21, f27, rne # perform operation
fdiv.s f24, f21, f27, rtz # perform operation
fdiv.s f24, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fdiv.s f25, f9, f15, dyn # perform operation
fdiv.s f25, f9, f15, rdn # perform operation
fdiv.s f25, f9, f15, rmm # perform operation
fdiv.s f25, f9, f15, rne # perform operation
fdiv.s f25, f9, f15, rtz # perform operation
fdiv.s f25, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fdiv.s f8, f7, f19, dyn # perform operation
fdiv.s f8, f7, f19, rdn # perform operation
fdiv.s f8, f7, f19, rmm # perform operation
fdiv.s f8, f7, f19, rne # perform operation
fdiv.s f8, f7, f19, rtz # perform operation
fdiv.s f8, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fdiv.s f16, f22, f21, dyn # perform operation
fdiv.s f16, f22, f21, rdn # perform operation
fdiv.s f16, f22, f21, rmm # perform operation
fdiv.s f16, f22, f21, rne # perform operation
fdiv.s f16, f22, f21, rtz # perform operation
fdiv.s f16, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fdiv.s f12, f21, f17, dyn # perform operation
fdiv.s f12, f21, f17, rdn # perform operation
fdiv.s f12, f21, f17, rmm # perform operation
fdiv.s f12, f21, f17, rne # perform operation
fdiv.s f12, f21, f17, rtz # perform operation
fdiv.s f12, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.s f29, f9, f5, dyn # perform operation
fdiv.s f29, f9, f5, rdn # perform operation
fdiv.s f29, f9, f5, rmm # perform operation
fdiv.s f29, f9, f5, rne # perform operation
fdiv.s f29, f9, f5, rtz # perform operation
fdiv.s f29, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fdiv.s f12, f23, f21, dyn # perform operation
fdiv.s f12, f23, f21, rdn # perform operation
fdiv.s f12, f23, f21, rmm # perform operation
fdiv.s f12, f23, f21, rne # perform operation
fdiv.s f12, f23, f21, rtz # perform operation
fdiv.s f12, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fdiv.s f3, f15, f27, dyn # perform operation
fdiv.s f3, f15, f27, rdn # perform operation
fdiv.s f3, f15, f27, rmm # perform operation
fdiv.s f3, f15, f27, rne # perform operation
fdiv.s f3, f15, f27, rtz # perform operation
fdiv.s f3, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fdiv.s f28, f11, f12, dyn # perform operation
fdiv.s f28, f11, f12, rdn # perform operation
fdiv.s f28, f11, f12, rmm # perform operation
fdiv.s f28, f11, f12, rne # perform operation
fdiv.s f28, f11, f12, rtz # perform operation
fdiv.s f28, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fdiv.s f6, f5, f23, dyn # perform operation
fdiv.s f6, f5, f23, rdn # perform operation
fdiv.s f6, f5, f23, rmm # perform operation
fdiv.s f6, f5, f23, rne # perform operation
fdiv.s f6, f5, f23, rtz # perform operation
fdiv.s f6, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f28, f21, f25, dyn # perform operation
fdiv.s f28, f21, f25, rdn # perform operation
fdiv.s f28, f21, f25, rmm # perform operation
fdiv.s f28, f21, f25, rne # perform operation
fdiv.s f28, f21, f25, rtz # perform operation
fdiv.s f28, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fdiv.s f10, f19, f8, dyn # perform operation
fdiv.s f10, f19, f8, rdn # perform operation
fdiv.s f10, f19, f8, rmm # perform operation
fdiv.s f10, f19, f8, rne # perform operation
fdiv.s f10, f19, f8, rtz # perform operation
fdiv.s f10, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fdiv.s f18, f9, f26, dyn # perform operation
fdiv.s f18, f9, f26, rdn # perform operation
fdiv.s f18, f9, f26, rmm # perform operation
fdiv.s f18, f9, f26, rne # perform operation
fdiv.s f18, f9, f26, rtz # perform operation
fdiv.s f18, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fdiv.s f8, f19, f12, dyn # perform operation
fdiv.s f8, f19, f12, rdn # perform operation
fdiv.s f8, f19, f12, rmm # perform operation
fdiv.s f8, f19, f12, rne # perform operation
fdiv.s f8, f19, f12, rtz # perform operation
fdiv.s f8, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f7, f17, f19, dyn # perform operation
fdiv.s f7, f17, f19, rdn # perform operation
fdiv.s f7, f17, f19, rmm # perform operation
fdiv.s f7, f17, f19, rne # perform operation
fdiv.s f7, f17, f19, rtz # perform operation
fdiv.s f7, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f8, 0(x2) # load 0xffffffff from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fdiv.s f30, f8, f7, dyn # perform operation
fdiv.s f30, f8, f7, rdn # perform operation
fdiv.s f30, f8, f7, rmm # perform operation
fdiv.s f30, f8, f7, rne # perform operation
fdiv.s f30, f8, f7, rtz # perform operation
fdiv.s f30, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fdiv.s f9, f26, f18, dyn # perform operation
fdiv.s f9, f26, f18, rdn # perform operation
fdiv.s f9, f26, f18, rmm # perform operation
fdiv.s f9, f26, f18, rne # perform operation
fdiv.s f9, f26, f18, rtz # perform operation
fdiv.s f9, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fdiv.s f12, f17, f23, dyn # perform operation
fdiv.s f12, f17, f23, rdn # perform operation
fdiv.s f12, f17, f23, rmm # perform operation
fdiv.s f12, f17, f23, rne # perform operation
fdiv.s f12, f17, f23, rtz # perform operation
fdiv.s f12, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fdiv.s f3, f16, f8, dyn # perform operation
fdiv.s f3, f16, f8, rdn # perform operation
fdiv.s f3, f16, f8, rmm # perform operation
fdiv.s f3, f16, f8, rne # perform operation
fdiv.s f3, f16, f8, rtz # perform operation
fdiv.s f3, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fdiv.s f12, f6, f24, dyn # perform operation
fdiv.s f12, f6, f24, rdn # perform operation
fdiv.s f12, f6, f24, rmm # perform operation
fdiv.s f12, f6, f24, rne # perform operation
fdiv.s f12, f6, f24, rtz # perform operation
fdiv.s f12, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fdiv.s f29, f14, f6, dyn # perform operation
fdiv.s f29, f14, f6, rdn # perform operation
fdiv.s f29, f14, f6, rmm # perform operation
fdiv.s f29, f14, f6, rne # perform operation
fdiv.s f29, f14, f6, rtz # perform operation
fdiv.s f29, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f18, f15, f6, dyn # perform operation
fdiv.s f18, f15, f6, rdn # perform operation
fdiv.s f18, f15, f6, rmm # perform operation
fdiv.s f18, f15, f6, rne # perform operation
fdiv.s f18, f15, f6, rtz # perform operation
fdiv.s f18, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fdiv.s f30, f19, f8, dyn # perform operation
fdiv.s f30, f19, f8, rdn # perform operation
fdiv.s f30, f19, f8, rmm # perform operation
fdiv.s f30, f19, f8, rne # perform operation
fdiv.s f30, f19, f8, rtz # perform operation
fdiv.s f30, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fdiv.s f3, f26, f13, dyn # perform operation
fdiv.s f3, f26, f13, rdn # perform operation
fdiv.s f3, f26, f13, rmm # perform operation
fdiv.s f3, f26, f13, rne # perform operation
fdiv.s f3, f26, f13, rtz # perform operation
fdiv.s f3, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fdiv.s f20, f14, f19, dyn # perform operation
fdiv.s f20, f14, f19, rdn # perform operation
fdiv.s f20, f14, f19, rmm # perform operation
fdiv.s f20, f14, f19, rne # perform operation
fdiv.s f20, f14, f19, rtz # perform operation
fdiv.s f20, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f8, 0(x2) # load 0xffffffff from memory into f8
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fdiv.s f14, f8, f20, dyn # perform operation
fdiv.s f14, f8, f20, rdn # perform operation
fdiv.s f14, f8, f20, rmm # perform operation
fdiv.s f14, f8, f20, rne # perform operation
fdiv.s f14, f8, f20, rtz # perform operation
fdiv.s f14, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fdiv.s f20, f17, f13, dyn # perform operation
fdiv.s f20, f17, f13, rdn # perform operation
fdiv.s f20, f17, f13, rmm # perform operation
fdiv.s f20, f17, f13, rne # perform operation
fdiv.s f20, f17, f13, rtz # perform operation
fdiv.s f20, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fdiv.s f23, f11, f27, dyn # perform operation
fdiv.s f23, f11, f27, rdn # perform operation
fdiv.s f23, f11, f27, rmm # perform operation
fdiv.s f23, f11, f27, rne # perform operation
fdiv.s f23, f11, f27, rtz # perform operation
fdiv.s f23, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fdiv.s f12, f24, f3, dyn # perform operation
fdiv.s f12, f24, f3, rdn # perform operation
fdiv.s f12, f24, f3, rmm # perform operation
fdiv.s f12, f24, f3, rne # perform operation
fdiv.s f12, f24, f3, rtz # perform operation
fdiv.s f12, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fdiv.s f24, f21, f23, dyn # perform operation
fdiv.s f24, f21, f23, rdn # perform operation
fdiv.s f24, f21, f23, rmm # perform operation
fdiv.s f24, f21, f23, rne # perform operation
fdiv.s f24, f21, f23, rtz # perform operation
fdiv.s f24, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fdiv.s f13, f6, f24, dyn # perform operation
fdiv.s f13, f6, f24, rdn # perform operation
fdiv.s f13, f6, f24, rmm # perform operation
fdiv.s f13, f6, f24, rne # perform operation
fdiv.s f13, f6, f24, rtz # perform operation
fdiv.s f13, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fdiv.s f3, f27, f5, dyn # perform operation
fdiv.s f3, f27, f5, rdn # perform operation
fdiv.s f3, f27, f5, rmm # perform operation
fdiv.s f3, f27, f5, rne # perform operation
fdiv.s f3, f27, f5, rtz # perform operation
fdiv.s f3, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fdiv.s f15, f26, f9, dyn # perform operation
fdiv.s f15, f26, f9, rdn # perform operation
fdiv.s f15, f26, f9, rmm # perform operation
fdiv.s f15, f26, f9, rne # perform operation
fdiv.s f15, f26, f9, rtz # perform operation
fdiv.s f15, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f12, f7, f29, dyn # perform operation
fdiv.s f12, f7, f29, rdn # perform operation
fdiv.s f12, f7, f29, rmm # perform operation
fdiv.s f12, f7, f29, rne # perform operation
fdiv.s f12, f7, f29, rtz # perform operation
fdiv.s f12, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fdiv.s f29, f2, f7, dyn # perform operation
fdiv.s f29, f2, f7, rdn # perform operation
fdiv.s f29, f2, f7, rmm # perform operation
fdiv.s f29, f2, f7, rne # perform operation
fdiv.s f29, f2, f7, rtz # perform operation
fdiv.s f29, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fdiv.s f2, f25, f28, dyn # perform operation
fdiv.s f2, f25, f28, rdn # perform operation
fdiv.s f2, f25, f28, rmm # perform operation
fdiv.s f2, f25, f28, rne # perform operation
fdiv.s f2, f25, f28, rtz # perform operation
fdiv.s f2, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fdiv.s f13, f19, f9, dyn # perform operation
fdiv.s f13, f19, f9, rdn # perform operation
fdiv.s f13, f19, f9, rmm # perform operation
fdiv.s f13, f19, f9, rne # perform operation
fdiv.s f13, f19, f9, rtz # perform operation
fdiv.s f13, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fdiv.s f25, f6, f12, dyn # perform operation
fdiv.s f25, f6, f12, rdn # perform operation
fdiv.s f25, f6, f12, rmm # perform operation
fdiv.s f25, f6, f12, rne # perform operation
fdiv.s f25, f6, f12, rtz # perform operation
fdiv.s f25, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fdiv.s f27, f30, f2, dyn # perform operation
fdiv.s f27, f30, f2, rdn # perform operation
fdiv.s f27, f30, f2, rmm # perform operation
fdiv.s f27, f30, f2, rne # perform operation
fdiv.s f27, f30, f2, rtz # perform operation
fdiv.s f27, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fdiv.s f12, f5, f9, dyn # perform operation
fdiv.s f12, f5, f9, rdn # perform operation
fdiv.s f12, f5, f9, rmm # perform operation
fdiv.s f12, f5, f9, rne # perform operation
fdiv.s f12, f5, f9, rtz # perform operation
fdiv.s f12, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fdiv.s f6, f27, f16, dyn # perform operation
fdiv.s f6, f27, f16, rdn # perform operation
fdiv.s f6, f27, f16, rmm # perform operation
fdiv.s f6, f27, f16, rne # perform operation
fdiv.s f6, f27, f16, rtz # perform operation
fdiv.s f6, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fdiv.s f20, f18, f17, dyn # perform operation
fdiv.s f20, f18, f17, rdn # perform operation
fdiv.s f20, f18, f17, rmm # perform operation
fdiv.s f20, f18, f17, rne # perform operation
fdiv.s f20, f18, f17, rtz # perform operation
fdiv.s f20, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fdiv.s f17, f23, f14, dyn # perform operation
fdiv.s f17, f23, f14, rdn # perform operation
fdiv.s f17, f23, f14, rmm # perform operation
fdiv.s f17, f23, f14, rne # perform operation
fdiv.s f17, f23, f14, rtz # perform operation
fdiv.s f17, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f1, f2, f18, dyn # perform operation
fdiv.s f1, f2, f18, rdn # perform operation
fdiv.s f1, f2, f18, rmm # perform operation
fdiv.s f1, f2, f18, rne # perform operation
fdiv.s f1, f2, f18, rtz # perform operation
fdiv.s f1, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fdiv.s f31, f22, f29, dyn # perform operation
fdiv.s f31, f22, f29, rdn # perform operation
fdiv.s f31, f22, f29, rmm # perform operation
fdiv.s f31, f22, f29, rne # perform operation
fdiv.s f31, f22, f29, rtz # perform operation
fdiv.s f31, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fdiv.s f7, f15, f20, dyn # perform operation
fdiv.s f7, f15, f20, rdn # perform operation
fdiv.s f7, f15, f20, rmm # perform operation
fdiv.s f7, f15, f20, rne # perform operation
fdiv.s f7, f15, f20, rtz # perform operation
fdiv.s f7, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f27, f2, f30, dyn # perform operation
fdiv.s f27, f2, f30, rdn # perform operation
fdiv.s f27, f2, f30, rmm # perform operation
fdiv.s f27, f2, f30, rne # perform operation
fdiv.s f27, f2, f30, rtz # perform operation
fdiv.s f27, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fdiv.s f29, f12, f19, dyn # perform operation
fdiv.s f29, f12, f19, rdn # perform operation
fdiv.s f29, f12, f19, rmm # perform operation
fdiv.s f29, f12, f19, rne # perform operation
fdiv.s f29, f12, f19, rtz # perform operation
fdiv.s f29, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fdiv.s f29, f21, f7, dyn # perform operation
fdiv.s f29, f21, f7, rdn # perform operation
fdiv.s f29, f21, f7, rmm # perform operation
fdiv.s f29, f21, f7, rne # perform operation
fdiv.s f29, f21, f7, rtz # perform operation
fdiv.s f29, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.s f7, f12, f3, dyn # perform operation
fdiv.s f7, f12, f3, rdn # perform operation
fdiv.s f7, f12, f3, rmm # perform operation
fdiv.s f7, f12, f3, rne # perform operation
fdiv.s f7, f12, f3, rtz # perform operation
fdiv.s f7, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fdiv.s f19, f7, f22, dyn # perform operation
fdiv.s f19, f7, f22, rdn # perform operation
fdiv.s f19, f7, f22, rmm # perform operation
fdiv.s f19, f7, f22, rne # perform operation
fdiv.s f19, f7, f22, rtz # perform operation
fdiv.s f19, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fdiv.s f6, f13, f8, dyn # perform operation
fdiv.s f6, f13, f8, rdn # perform operation
fdiv.s f6, f13, f8, rmm # perform operation
fdiv.s f6, f13, f8, rne # perform operation
fdiv.s f6, f13, f8, rtz # perform operation
fdiv.s f6, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f12, f7, f1, dyn # perform operation
fdiv.s f12, f7, f1, rdn # perform operation
fdiv.s f12, f7, f1, rmm # perform operation
fdiv.s f12, f7, f1, rne # perform operation
fdiv.s f12, f7, f1, rtz # perform operation
fdiv.s f12, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fdiv.s f17, f25, f28, dyn # perform operation
fdiv.s f17, f25, f28, rdn # perform operation
fdiv.s f17, f25, f28, rmm # perform operation
fdiv.s f17, f25, f28, rne # perform operation
fdiv.s f17, f25, f28, rtz # perform operation
fdiv.s f17, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fdiv.s f9, f30, f22, dyn # perform operation
fdiv.s f9, f30, f22, rdn # perform operation
fdiv.s f9, f30, f22, rmm # perform operation
fdiv.s f9, f30, f22, rne # perform operation
fdiv.s f9, f30, f22, rtz # perform operation
fdiv.s f9, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
fdiv.s f18, f25, f20, dyn # perform operation
fdiv.s f18, f25, f20, rdn # perform operation
fdiv.s f18, f25, f20, rmm # perform operation
fdiv.s f18, f25, f20, rne # perform operation
fdiv.s f18, f25, f20, rtz # perform operation
fdiv.s f18, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fdiv.s f5, f17, f14, dyn # perform operation
fdiv.s f5, f17, f14, rdn # perform operation
fdiv.s f5, f17, f14, rmm # perform operation
fdiv.s f5, f17, f14, rne # perform operation
fdiv.s f5, f17, f14, rtz # perform operation
fdiv.s f5, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fdiv.s f14, f28, f25, dyn # perform operation
fdiv.s f14, f28, f25, rdn # perform operation
fdiv.s f14, f28, f25, rmm # perform operation
fdiv.s f14, f28, f25, rne # perform operation
fdiv.s f14, f28, f25, rtz # perform operation
fdiv.s f14, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fdiv.s f29, f3, f8, dyn # perform operation
fdiv.s f29, f3, f8, rdn # perform operation
fdiv.s f29, f3, f8, rmm # perform operation
fdiv.s f29, f3, f8, rne # perform operation
fdiv.s f29, f3, f8, rtz # perform operation
fdiv.s f29, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fdiv.s f10, f14, f20, dyn # perform operation
fdiv.s f10, f14, f20, rdn # perform operation
fdiv.s f10, f14, f20, rmm # perform operation
fdiv.s f10, f14, f20, rne # perform operation
fdiv.s f10, f14, f20, rtz # perform operation
fdiv.s f10, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fdiv.s f18, f7, f22, dyn # perform operation
fdiv.s f18, f7, f22, rdn # perform operation
fdiv.s f18, f7, f22, rmm # perform operation
fdiv.s f18, f7, f22, rne # perform operation
fdiv.s f18, f7, f22, rtz # perform operation
fdiv.s f18, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f8, f28, f2, dyn # perform operation
fdiv.s f8, f28, f2, rdn # perform operation
fdiv.s f8, f28, f2, rmm # perform operation
fdiv.s f8, f28, f2, rne # perform operation
fdiv.s f8, f28, f2, rtz # perform operation
fdiv.s f8, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fdiv.s f20, f7, f27, dyn # perform operation
fdiv.s f20, f7, f27, rdn # perform operation
fdiv.s f20, f7, f27, rmm # perform operation
fdiv.s f20, f7, f27, rne # perform operation
fdiv.s f20, f7, f27, rtz # perform operation
fdiv.s f20, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fdiv.s f7, f12, f26, dyn # perform operation
fdiv.s f7, f12, f26, rdn # perform operation
fdiv.s f7, f12, f26, rmm # perform operation
fdiv.s f7, f12, f26, rne # perform operation
fdiv.s f7, f12, f26, rtz # perform operation
fdiv.s f7, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fdiv.s f13, f20, f16, dyn # perform operation
fdiv.s f13, f20, f16, rdn # perform operation
fdiv.s f13, f20, f16, rmm # perform operation
fdiv.s f13, f20, f16, rne # perform operation
fdiv.s f13, f20, f16, rtz # perform operation
fdiv.s f13, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fdiv.s f25, f7, f14, dyn # perform operation
fdiv.s f25, f7, f14, rdn # perform operation
fdiv.s f25, f7, f14, rmm # perform operation
fdiv.s f25, f7, f14, rne # perform operation
fdiv.s f25, f7, f14, rtz # perform operation
fdiv.s f25, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fdiv.s f1, f7, f12, dyn # perform operation
fdiv.s f1, f7, f12, rdn # perform operation
fdiv.s f1, f7, f12, rmm # perform operation
fdiv.s f1, f7, f12, rne # perform operation
fdiv.s f1, f7, f12, rtz # perform operation
fdiv.s f1, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fdiv.s f10, f3, f30, dyn # perform operation
fdiv.s f10, f3, f30, rdn # perform operation
fdiv.s f10, f3, f30, rmm # perform operation
fdiv.s f10, f3, f30, rne # perform operation
fdiv.s f10, f3, f30, rtz # perform operation
fdiv.s f10, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fdiv.s f5, f30, f23, dyn # perform operation
fdiv.s f5, f30, f23, rdn # perform operation
fdiv.s f5, f30, f23, rmm # perform operation
fdiv.s f5, f30, f23, rne # perform operation
fdiv.s f5, f30, f23, rtz # perform operation
fdiv.s f5, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fdiv.s f14, f31, f21, dyn # perform operation
fdiv.s f14, f31, f21, rdn # perform operation
fdiv.s f14, f31, f21, rmm # perform operation
fdiv.s f14, f31, f21, rne # perform operation
fdiv.s f14, f31, f21, rtz # perform operation
fdiv.s f14, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fdiv.s f29, f28, f30, dyn # perform operation
fdiv.s f29, f28, f30, rdn # perform operation
fdiv.s f29, f28, f30, rmm # perform operation
fdiv.s f29, f28, f30, rne # perform operation
fdiv.s f29, f28, f30, rtz # perform operation
fdiv.s f29, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fdiv.s f11, f2, f29, dyn # perform operation
fdiv.s f11, f2, f29, rdn # perform operation
fdiv.s f11, f2, f29, rmm # perform operation
fdiv.s f11, f2, f29, rne # perform operation
fdiv.s f11, f2, f29, rtz # perform operation
fdiv.s f11, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fdiv.s f30, f6, f23, dyn # perform operation
fdiv.s f30, f6, f23, rdn # perform operation
fdiv.s f30, f6, f23, rmm # perform operation
fdiv.s f30, f6, f23, rne # perform operation
fdiv.s f30, f6, f23, rtz # perform operation
fdiv.s f30, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fdiv.s f29, f24, f16, dyn # perform operation
fdiv.s f29, f24, f16, rdn # perform operation
fdiv.s f29, f24, f16, rmm # perform operation
fdiv.s f29, f24, f16, rne # perform operation
fdiv.s f29, f24, f16, rtz # perform operation
fdiv.s f29, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fdiv.s f2, f27, f14, dyn # perform operation
fdiv.s f2, f27, f14, rdn # perform operation
fdiv.s f2, f27, f14, rmm # perform operation
fdiv.s f2, f27, f14, rne # perform operation
fdiv.s f2, f27, f14, rtz # perform operation
fdiv.s f2, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f17, f8, f5, dyn # perform operation
fdiv.s f17, f8, f5, rdn # perform operation
fdiv.s f17, f8, f5, rmm # perform operation
fdiv.s f17, f8, f5, rne # perform operation
fdiv.s f17, f8, f5, rtz # perform operation
fdiv.s f17, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fdiv.s f15, f3, f23, dyn # perform operation
fdiv.s f15, f3, f23, rdn # perform operation
fdiv.s f15, f3, f23, rmm # perform operation
fdiv.s f15, f3, f23, rne # perform operation
fdiv.s f15, f3, f23, rtz # perform operation
fdiv.s f15, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.s f10, f25, f23, dyn # perform operation
fdiv.s f10, f25, f23, rdn # perform operation
fdiv.s f10, f25, f23, rmm # perform operation
fdiv.s f10, f25, f23, rne # perform operation
fdiv.s f10, f25, f23, rtz # perform operation
fdiv.s f10, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fdiv.s f2, f22, f29, dyn # perform operation
fdiv.s f2, f22, f29, rdn # perform operation
fdiv.s f2, f22, f29, rmm # perform operation
fdiv.s f2, f22, f29, rne # perform operation
fdiv.s f2, f22, f29, rtz # perform operation
fdiv.s f2, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fdiv.s f31, f10, f12, dyn # perform operation
fdiv.s f31, f10, f12, rdn # perform operation
fdiv.s f31, f10, f12, rmm # perform operation
fdiv.s f31, f10, f12, rne # perform operation
fdiv.s f31, f10, f12, rtz # perform operation
fdiv.s f31, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fdiv.s f17, f29, f23, dyn # perform operation
fdiv.s f17, f29, f23, rdn # perform operation
fdiv.s f17, f29, f23, rmm # perform operation
fdiv.s f17, f29, f23, rne # perform operation
fdiv.s f17, f29, f23, rtz # perform operation
fdiv.s f17, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fdiv.s f26, f29, f10, dyn # perform operation
fdiv.s f26, f29, f10, rdn # perform operation
fdiv.s f26, f29, f10, rmm # perform operation
fdiv.s f26, f29, f10, rne # perform operation
fdiv.s f26, f29, f10, rtz # perform operation
fdiv.s f26, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fdiv.s f31, f17, f1, dyn # perform operation
fdiv.s f31, f17, f1, rdn # perform operation
fdiv.s f31, f17, f1, rmm # perform operation
fdiv.s f31, f17, f1, rne # perform operation
fdiv.s f31, f17, f1, rtz # perform operation
fdiv.s f31, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fdiv.s f15, f1, f3, dyn # perform operation
fdiv.s f15, f1, f3, rdn # perform operation
fdiv.s f15, f1, f3, rmm # perform operation
fdiv.s f15, f1, f3, rne # perform operation
fdiv.s f15, f1, f3, rtz # perform operation
fdiv.s f15, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f23, f7, f11, dyn # perform operation
fdiv.s f23, f7, f11, rdn # perform operation
fdiv.s f23, f7, f11, rmm # perform operation
fdiv.s f23, f7, f11, rne # perform operation
fdiv.s f23, f7, f11, rtz # perform operation
fdiv.s f23, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fdiv.s f30, f11, f23, dyn # perform operation
fdiv.s f30, f11, f23, rdn # perform operation
fdiv.s f30, f11, f23, rmm # perform operation
fdiv.s f30, f11, f23, rne # perform operation
fdiv.s f30, f11, f23, rtz # perform operation
fdiv.s f30, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fdiv.s f14, f19, f30, dyn # perform operation
fdiv.s f14, f19, f30, rdn # perform operation
fdiv.s f14, f19, f30, rmm # perform operation
fdiv.s f14, f19, f30, rne # perform operation
fdiv.s f14, f19, f30, rtz # perform operation
fdiv.s f14, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fdiv.s f9, f21, f17, dyn # perform operation
fdiv.s f9, f21, f17, rdn # perform operation
fdiv.s f9, f21, f17, rmm # perform operation
fdiv.s f9, f21, f17, rne # perform operation
fdiv.s f9, f21, f17, rtz # perform operation
fdiv.s f9, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f30, f21, f11, dyn # perform operation
fdiv.s f30, f21, f11, rdn # perform operation
fdiv.s f30, f21, f11, rmm # perform operation
fdiv.s f30, f21, f11, rne # perform operation
fdiv.s f30, f21, f11, rtz # perform operation
fdiv.s f30, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.s f13, f18, f30, dyn # perform operation
fdiv.s f13, f18, f30, rdn # perform operation
fdiv.s f13, f18, f30, rmm # perform operation
fdiv.s f13, f18, f30, rne # perform operation
fdiv.s f13, f18, f30, rtz # perform operation
fdiv.s f13, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fdiv.s f11, f6, f12, dyn # perform operation
fdiv.s f11, f6, f12, rdn # perform operation
fdiv.s f11, f6, f12, rmm # perform operation
fdiv.s f11, f6, f12, rne # perform operation
fdiv.s f11, f6, f12, rtz # perform operation
fdiv.s f11, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fdiv.s f30, f10, f18, dyn # perform operation
fdiv.s f30, f10, f18, rdn # perform operation
fdiv.s f30, f10, f18, rmm # perform operation
fdiv.s f30, f10, f18, rne # perform operation
fdiv.s f30, f10, f18, rtz # perform operation
fdiv.s f30, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fdiv.s f20, f1, f21, dyn # perform operation
fdiv.s f20, f1, f21, rdn # perform operation
fdiv.s f20, f1, f21, rmm # perform operation
fdiv.s f20, f1, f21, rne # perform operation
fdiv.s f20, f1, f21, rtz # perform operation
fdiv.s f20, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fdiv.s f19, f13, f23, dyn # perform operation
fdiv.s f19, f13, f23, rdn # perform operation
fdiv.s f19, f13, f23, rmm # perform operation
fdiv.s f19, f13, f23, rne # perform operation
fdiv.s f19, f13, f23, rtz # perform operation
fdiv.s f19, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f8, f18, f6, dyn # perform operation
fdiv.s f8, f18, f6, rdn # perform operation
fdiv.s f8, f18, f6, rmm # perform operation
fdiv.s f8, f18, f6, rne # perform operation
fdiv.s f8, f18, f6, rtz # perform operation
fdiv.s f8, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fdiv.s f31, f17, f7, dyn # perform operation
fdiv.s f31, f17, f7, rdn # perform operation
fdiv.s f31, f17, f7, rmm # perform operation
fdiv.s f31, f17, f7, rne # perform operation
fdiv.s f31, f17, f7, rtz # perform operation
fdiv.s f31, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fdiv.s f12, f5, f3, dyn # perform operation
fdiv.s f12, f5, f3, rdn # perform operation
fdiv.s f12, f5, f3, rmm # perform operation
fdiv.s f12, f5, f3, rne # perform operation
fdiv.s f12, f5, f3, rtz # perform operation
fdiv.s f12, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fdiv.s f16, f17, f2, dyn # perform operation
fdiv.s f16, f17, f2, rdn # perform operation
fdiv.s f16, f17, f2, rmm # perform operation
fdiv.s f16, f17, f2, rne # perform operation
fdiv.s f16, f17, f2, rtz # perform operation
fdiv.s f16, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fdiv.s f21, f25, f24, dyn # perform operation
fdiv.s f21, f25, f24, rdn # perform operation
fdiv.s f21, f25, f24, rmm # perform operation
fdiv.s f21, f25, f24, rne # perform operation
fdiv.s f21, f25, f24, rtz # perform operation
fdiv.s f21, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f17, f27, f16, dyn # perform operation
fdiv.s f17, f27, f16, rdn # perform operation
fdiv.s f17, f27, f16, rmm # perform operation
fdiv.s f17, f27, f16, rne # perform operation
fdiv.s f17, f27, f16, rtz # perform operation
fdiv.s f17, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fdiv.s f27, f22, f17, dyn # perform operation
fdiv.s f27, f22, f17, rdn # perform operation
fdiv.s f27, f22, f17, rmm # perform operation
fdiv.s f27, f22, f17, rne # perform operation
fdiv.s f27, f22, f17, rtz # perform operation
fdiv.s f27, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fdiv.s f8, f18, f27, dyn # perform operation
fdiv.s f8, f18, f27, rdn # perform operation
fdiv.s f8, f18, f27, rmm # perform operation
fdiv.s f8, f18, f27, rne # perform operation
fdiv.s f8, f18, f27, rtz # perform operation
fdiv.s f8, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fdiv.s f10, f17, f8, dyn # perform operation
fdiv.s f10, f17, f8, rdn # perform operation
fdiv.s f10, f17, f8, rmm # perform operation
fdiv.s f10, f17, f8, rne # perform operation
fdiv.s f10, f17, f8, rtz # perform operation
fdiv.s f10, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f20, f9, f12, dyn # perform operation
fdiv.s f20, f9, f12, rdn # perform operation
fdiv.s f20, f9, f12, rmm # perform operation
fdiv.s f20, f9, f12, rne # perform operation
fdiv.s f20, f9, f12, rtz # perform operation
fdiv.s f20, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fdiv.s f5, f28, f21, dyn # perform operation
fdiv.s f5, f28, f21, rdn # perform operation
fdiv.s f5, f28, f21, rmm # perform operation
fdiv.s f5, f28, f21, rne # perform operation
fdiv.s f5, f28, f21, rtz # perform operation
fdiv.s f5, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.s f3, f17, f29, dyn # perform operation
fdiv.s f3, f17, f29, rdn # perform operation
fdiv.s f3, f17, f29, rmm # perform operation
fdiv.s f3, f17, f29, rne # perform operation
fdiv.s f3, f17, f29, rtz # perform operation
fdiv.s f3, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fdiv.s f23, f12, f16, dyn # perform operation
fdiv.s f23, f12, f16, rdn # perform operation
fdiv.s f23, f12, f16, rmm # perform operation
fdiv.s f23, f12, f16, rne # perform operation
fdiv.s f23, f12, f16, rtz # perform operation
fdiv.s f23, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fdiv.s f12, f18, f31, dyn # perform operation
fdiv.s f12, f18, f31, rdn # perform operation
fdiv.s f12, f18, f31, rmm # perform operation
fdiv.s f12, f18, f31, rne # perform operation
fdiv.s f12, f18, f31, rtz # perform operation
fdiv.s f12, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fdiv.s f8, f10, f23, dyn # perform operation
fdiv.s f8, f10, f23, rdn # perform operation
fdiv.s f8, f10, f23, rmm # perform operation
fdiv.s f8, f10, f23, rne # perform operation
fdiv.s f8, f10, f23, rtz # perform operation
fdiv.s f8, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fdiv.s f21, f29, f16, dyn # perform operation
fdiv.s f21, f29, f16, rdn # perform operation
fdiv.s f21, f29, f16, rmm # perform operation
fdiv.s f21, f29, f16, rne # perform operation
fdiv.s f21, f29, f16, rtz # perform operation
fdiv.s f21, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fdiv.s f17, f12, f29, dyn # perform operation
fdiv.s f17, f12, f29, rdn # perform operation
fdiv.s f17, f12, f29, rmm # perform operation
fdiv.s f17, f12, f29, rne # perform operation
fdiv.s f17, f12, f29, rtz # perform operation
fdiv.s f17, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fdiv.s f9, f20, f2, dyn # perform operation
fdiv.s f9, f20, f2, rdn # perform operation
fdiv.s f9, f20, f2, rmm # perform operation
fdiv.s f9, f20, f2, rne # perform operation
fdiv.s f9, f20, f2, rtz # perform operation
fdiv.s f9, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fdiv.s f5, f3, f10, dyn # perform operation
fdiv.s f5, f3, f10, rdn # perform operation
fdiv.s f5, f3, f10, rmm # perform operation
fdiv.s f5, f3, f10, rne # perform operation
fdiv.s f5, f3, f10, rtz # perform operation
fdiv.s f5, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fdiv.s f2, f31, f1, dyn # perform operation
fdiv.s f2, f31, f1, rdn # perform operation
fdiv.s f2, f31, f1, rmm # perform operation
fdiv.s f2, f31, f1, rne # perform operation
fdiv.s f2, f31, f1, rtz # perform operation
fdiv.s f2, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
fdiv.s f22, f24, f16, dyn # perform operation
fdiv.s f22, f24, f16, rdn # perform operation
fdiv.s f22, f24, f16, rmm # perform operation
fdiv.s f22, f24, f16, rne # perform operation
fdiv.s f22, f24, f16, rtz # perform operation
fdiv.s f22, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fdiv.s f18, f29, f26, dyn # perform operation
fdiv.s f18, f29, f26, rdn # perform operation
fdiv.s f18, f29, f26, rmm # perform operation
fdiv.s f18, f29, f26, rne # perform operation
fdiv.s f18, f29, f26, rtz # perform operation
fdiv.s f18, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fdiv.s f16, f2, f22, dyn # perform operation
fdiv.s f16, f2, f22, rdn # perform operation
fdiv.s f16, f2, f22, rmm # perform operation
fdiv.s f16, f2, f22, rne # perform operation
fdiv.s f16, f2, f22, rtz # perform operation
fdiv.s f16, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.s f9, f7, f15, dyn # perform operation
fdiv.s f9, f7, f15, rdn # perform operation
fdiv.s f9, f7, f15, rmm # perform operation
fdiv.s f9, f7, f15, rne # perform operation
fdiv.s f9, f7, f15, rtz # perform operation
fdiv.s f9, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fdiv.s f25, f6, f1, dyn # perform operation
fdiv.s f25, f6, f1, rdn # perform operation
fdiv.s f25, f6, f1, rmm # perform operation
fdiv.s f25, f6, f1, rne # perform operation
fdiv.s f25, f6, f1, rtz # perform operation
fdiv.s f25, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fdiv.s f10, f9, f26, dyn # perform operation
fdiv.s f10, f9, f26, rdn # perform operation
fdiv.s f10, f9, f26, rmm # perform operation
fdiv.s f10, f9, f26, rne # perform operation
fdiv.s f10, f9, f26, rtz # perform operation
fdiv.s f10, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fdiv.s f26, f10, f23, dyn # perform operation
fdiv.s f26, f10, f23, rdn # perform operation
fdiv.s f26, f10, f23, rmm # perform operation
fdiv.s f26, f10, f23, rne # perform operation
fdiv.s f26, f10, f23, rtz # perform operation
fdiv.s f26, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f11, f10, f6, dyn # perform operation
fdiv.s f11, f10, f6, rdn # perform operation
fdiv.s f11, f10, f6, rmm # perform operation
fdiv.s f11, f10, f6, rne # perform operation
fdiv.s f11, f10, f6, rtz # perform operation
fdiv.s f11, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fdiv.s f26, f23, f15, dyn # perform operation
fdiv.s f26, f23, f15, rdn # perform operation
fdiv.s f26, f23, f15, rmm # perform operation
fdiv.s f26, f23, f15, rne # perform operation
fdiv.s f26, f23, f15, rtz # perform operation
fdiv.s f26, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fdiv.s f25, f5, f11, dyn # perform operation
fdiv.s f25, f5, f11, rdn # perform operation
fdiv.s f25, f5, f11, rmm # perform operation
fdiv.s f25, f5, f11, rne # perform operation
fdiv.s f25, f5, f11, rtz # perform operation
fdiv.s f25, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fdiv.s f31, f24, f12, dyn # perform operation
fdiv.s f31, f24, f12, rdn # perform operation
fdiv.s f31, f24, f12, rmm # perform operation
fdiv.s f31, f24, f12, rne # perform operation
fdiv.s f31, f24, f12, rtz # perform operation
fdiv.s f31, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fdiv.s f24, f26, f14, dyn # perform operation
fdiv.s f24, f26, f14, rdn # perform operation
fdiv.s f24, f26, f14, rmm # perform operation
fdiv.s f24, f26, f14, rne # perform operation
fdiv.s f24, f26, f14, rtz # perform operation
fdiv.s f24, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fdiv.s f28, f5, f17, dyn # perform operation
fdiv.s f28, f5, f17, rdn # perform operation
fdiv.s f28, f5, f17, rmm # perform operation
fdiv.s f28, f5, f17, rne # perform operation
fdiv.s f28, f5, f17, rtz # perform operation
fdiv.s f28, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f21, f6, f1, dyn # perform operation
fdiv.s f21, f6, f1, rdn # perform operation
fdiv.s f21, f6, f1, rmm # perform operation
fdiv.s f21, f6, f1, rne # perform operation
fdiv.s f21, f6, f1, rtz # perform operation
fdiv.s f21, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fdiv.s f29, f21, f20, dyn # perform operation
fdiv.s f29, f21, f20, rdn # perform operation
fdiv.s f29, f21, f20, rmm # perform operation
fdiv.s f29, f21, f20, rne # perform operation
fdiv.s f29, f21, f20, rtz # perform operation
fdiv.s f29, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fdiv.s f25, f18, f21, dyn # perform operation
fdiv.s f25, f18, f21, rdn # perform operation
fdiv.s f25, f18, f21, rmm # perform operation
fdiv.s f25, f18, f21, rne # perform operation
fdiv.s f25, f18, f21, rtz # perform operation
fdiv.s f25, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fdiv.s f6, f24, f2, dyn # perform operation
fdiv.s f6, f24, f2, rdn # perform operation
fdiv.s f6, f24, f2, rmm # perform operation
fdiv.s f6, f24, f2, rne # perform operation
fdiv.s f6, f24, f2, rtz # perform operation
fdiv.s f6, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fdiv.s f23, f2, f1, dyn # perform operation
fdiv.s f23, f2, f1, rdn # perform operation
fdiv.s f23, f2, f1, rmm # perform operation
fdiv.s f23, f2, f1, rne # perform operation
fdiv.s f23, f2, f1, rtz # perform operation
fdiv.s f23, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fdiv.s f12, f17, f29, dyn # perform operation
fdiv.s f12, f17, f29, rdn # perform operation
fdiv.s f12, f17, f29, rmm # perform operation
fdiv.s f12, f17, f29, rne # perform operation
fdiv.s f12, f17, f29, rtz # perform operation
fdiv.s f12, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.s f11, f1, f19, dyn # perform operation
fdiv.s f11, f1, f19, rdn # perform operation
fdiv.s f11, f1, f19, rmm # perform operation
fdiv.s f11, f1, f19, rne # perform operation
fdiv.s f11, f1, f19, rtz # perform operation
fdiv.s f11, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f20, f11, f18, dyn # perform operation
fdiv.s f20, f11, f18, rdn # perform operation
fdiv.s f20, f11, f18, rmm # perform operation
fdiv.s f20, f11, f18, rne # perform operation
fdiv.s f20, f11, f18, rtz # perform operation
fdiv.s f20, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fdiv.s f16, f25, f27, dyn # perform operation
fdiv.s f16, f25, f27, rdn # perform operation
fdiv.s f16, f25, f27, rmm # perform operation
fdiv.s f16, f25, f27, rne # perform operation
fdiv.s f16, f25, f27, rtz # perform operation
fdiv.s f16, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fdiv.s f16, f2, f31, dyn # perform operation
fdiv.s f16, f2, f31, rdn # perform operation
fdiv.s f16, f2, f31, rmm # perform operation
fdiv.s f16, f2, f31, rne # perform operation
fdiv.s f16, f2, f31, rtz # perform operation
fdiv.s f16, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fdiv.s f2, f21, f6, dyn # perform operation
fdiv.s f2, f21, f6, rdn # perform operation
fdiv.s f2, f21, f6, rmm # perform operation
fdiv.s f2, f21, f6, rne # perform operation
fdiv.s f2, f21, f6, rtz # perform operation
fdiv.s f2, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fdiv.s f8, f13, f22, dyn # perform operation
fdiv.s f8, f13, f22, rdn # perform operation
fdiv.s f8, f13, f22, rmm # perform operation
fdiv.s f8, f13, f22, rne # perform operation
fdiv.s f8, f13, f22, rtz # perform operation
fdiv.s f8, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fdiv.s f30, f1, f2, dyn # perform operation
fdiv.s f30, f1, f2, rdn # perform operation
fdiv.s f30, f1, f2, rmm # perform operation
fdiv.s f30, f1, f2, rne # perform operation
fdiv.s f30, f1, f2, rtz # perform operation
fdiv.s f30, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fdiv.s f15, f28, f17, dyn # perform operation
fdiv.s f15, f28, f17, rdn # perform operation
fdiv.s f15, f28, f17, rmm # perform operation
fdiv.s f15, f28, f17, rne # perform operation
fdiv.s f15, f28, f17, rtz # perform operation
fdiv.s f15, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fdiv.s f31, f28, f23, dyn # perform operation
fdiv.s f31, f28, f23, rdn # perform operation
fdiv.s f31, f28, f23, rmm # perform operation
fdiv.s f31, f28, f23, rne # perform operation
fdiv.s f31, f28, f23, rtz # perform operation
fdiv.s f31, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fdiv.s f21, f20, f12, dyn # perform operation
fdiv.s f21, f20, f12, rdn # perform operation
fdiv.s f21, f20, f12, rmm # perform operation
fdiv.s f21, f20, f12, rne # perform operation
fdiv.s f21, f20, f12, rtz # perform operation
fdiv.s f21, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fdiv.s f5, f17, f13, dyn # perform operation
fdiv.s f5, f17, f13, rdn # perform operation
fdiv.s f5, f17, f13, rmm # perform operation
fdiv.s f5, f17, f13, rne # perform operation
fdiv.s f5, f17, f13, rtz # perform operation
fdiv.s f5, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fdiv.s f12, f5, f24, dyn # perform operation
fdiv.s f12, f5, f24, rdn # perform operation
fdiv.s f12, f5, f24, rmm # perform operation
fdiv.s f12, f5, f24, rne # perform operation
fdiv.s f12, f5, f24, rtz # perform operation
fdiv.s f12, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f21, f28, f29, dyn # perform operation
fdiv.s f21, f28, f29, rdn # perform operation
fdiv.s f21, f28, f29, rmm # perform operation
fdiv.s f21, f28, f29, rne # perform operation
fdiv.s f21, f28, f29, rtz # perform operation
fdiv.s f21, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fdiv.s f26, f30, f24, dyn # perform operation
fdiv.s f26, f30, f24, rdn # perform operation
fdiv.s f26, f30, f24, rmm # perform operation
fdiv.s f26, f30, f24, rne # perform operation
fdiv.s f26, f30, f24, rtz # perform operation
fdiv.s f26, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fdiv.s f17, f13, f16, dyn # perform operation
fdiv.s f17, f13, f16, rdn # perform operation
fdiv.s f17, f13, f16, rmm # perform operation
fdiv.s f17, f13, f16, rne # perform operation
fdiv.s f17, f13, f16, rtz # perform operation
fdiv.s f17, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fdiv.s f23, f28, f27, dyn # perform operation
fdiv.s f23, f28, f27, rdn # perform operation
fdiv.s f23, f28, f27, rmm # perform operation
fdiv.s f23, f28, f27, rne # perform operation
fdiv.s f23, f28, f27, rtz # perform operation
fdiv.s f23, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f24, f30, f6, dyn # perform operation
fdiv.s f24, f30, f6, rdn # perform operation
fdiv.s f24, f30, f6, rmm # perform operation
fdiv.s f24, f30, f6, rne # perform operation
fdiv.s f24, f30, f6, rtz # perform operation
fdiv.s f24, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fdiv.s f1, f9, f20, dyn # perform operation
fdiv.s f1, f9, f20, rdn # perform operation
fdiv.s f1, f9, f20, rmm # perform operation
fdiv.s f1, f9, f20, rne # perform operation
fdiv.s f1, f9, f20, rtz # perform operation
fdiv.s f1, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f30, f18, f27, dyn # perform operation
fdiv.s f30, f18, f27, rdn # perform operation
fdiv.s f30, f18, f27, rmm # perform operation
fdiv.s f30, f18, f27, rne # perform operation
fdiv.s f30, f18, f27, rtz # perform operation
fdiv.s f30, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fdiv.s f19, f26, f31, dyn # perform operation
fdiv.s f19, f26, f31, rdn # perform operation
fdiv.s f19, f26, f31, rmm # perform operation
fdiv.s f19, f26, f31, rne # perform operation
fdiv.s f19, f26, f31, rtz # perform operation
fdiv.s f19, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fdiv.s f24, f11, f12, dyn # perform operation
fdiv.s f24, f11, f12, rdn # perform operation
fdiv.s f24, f11, f12, rmm # perform operation
fdiv.s f24, f11, f12, rne # perform operation
fdiv.s f24, f11, f12, rtz # perform operation
fdiv.s f24, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fdiv.s f13, f26, f24, dyn # perform operation
fdiv.s f13, f26, f24, rdn # perform operation
fdiv.s f13, f26, f24, rmm # perform operation
fdiv.s f13, f26, f24, rne # perform operation
fdiv.s f13, f26, f24, rtz # perform operation
fdiv.s f13, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f19, f23, f1, dyn # perform operation
fdiv.s f19, f23, f1, rdn # perform operation
fdiv.s f19, f23, f1, rmm # perform operation
fdiv.s f19, f23, f1, rne # perform operation
fdiv.s f19, f23, f1, rtz # perform operation
fdiv.s f19, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fdiv.s f9, f17, f23, dyn # perform operation
fdiv.s f9, f17, f23, rdn # perform operation
fdiv.s f9, f17, f23, rmm # perform operation
fdiv.s f9, f17, f23, rne # perform operation
fdiv.s f9, f17, f23, rtz # perform operation
fdiv.s f9, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fdiv.s f6, f24, f18, dyn # perform operation
fdiv.s f6, f24, f18, rdn # perform operation
fdiv.s f6, f24, f18, rmm # perform operation
fdiv.s f6, f24, f18, rne # perform operation
fdiv.s f6, f24, f18, rtz # perform operation
fdiv.s f6, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fdiv.s f29, f6, f16, dyn # perform operation
fdiv.s f29, f6, f16, rdn # perform operation
fdiv.s f29, f6, f16, rmm # perform operation
fdiv.s f29, f6, f16, rne # perform operation
fdiv.s f29, f6, f16, rtz # perform operation
fdiv.s f29, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fdiv.s f22, f13, f11, dyn # perform operation
fdiv.s f22, f13, f11, rdn # perform operation
fdiv.s f22, f13, f11, rmm # perform operation
fdiv.s f22, f13, f11, rne # perform operation
fdiv.s f22, f13, f11, rtz # perform operation
fdiv.s f22, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fdiv.s f1, f23, f29, dyn # perform operation
fdiv.s f1, f23, f29, rdn # perform operation
fdiv.s f1, f23, f29, rmm # perform operation
fdiv.s f1, f23, f29, rne # perform operation
fdiv.s f1, f23, f29, rtz # perform operation
fdiv.s f1, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.s f9, f30, f16, dyn # perform operation
fdiv.s f9, f30, f16, rdn # perform operation
fdiv.s f9, f30, f16, rmm # perform operation
fdiv.s f9, f30, f16, rne # perform operation
fdiv.s f9, f30, f16, rtz # perform operation
fdiv.s f9, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fdiv.s f29, f11, f26, dyn # perform operation
fdiv.s f29, f11, f26, rdn # perform operation
fdiv.s f29, f11, f26, rmm # perform operation
fdiv.s f29, f11, f26, rne # perform operation
fdiv.s f29, f11, f26, rtz # perform operation
fdiv.s f29, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fdiv.s f17, f23, f31, dyn # perform operation
fdiv.s f17, f23, f31, rdn # perform operation
fdiv.s f17, f23, f31, rmm # perform operation
fdiv.s f17, f23, f31, rne # perform operation
fdiv.s f17, f23, f31, rtz # perform operation
fdiv.s f17, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fdiv.s f24, f15, f26, dyn # perform operation
fdiv.s f24, f15, f26, rdn # perform operation
fdiv.s f24, f15, f26, rmm # perform operation
fdiv.s f24, f15, f26, rne # perform operation
fdiv.s f24, f15, f26, rtz # perform operation
fdiv.s f24, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fdiv.s f6, f2, f11, dyn # perform operation
fdiv.s f6, f2, f11, rdn # perform operation
fdiv.s f6, f2, f11, rmm # perform operation
fdiv.s f6, f2, f11, rne # perform operation
fdiv.s f6, f2, f11, rtz # perform operation
fdiv.s f6, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fdiv.s f3, f22, f18, dyn # perform operation
fdiv.s f3, f22, f18, rdn # perform operation
fdiv.s f3, f22, f18, rmm # perform operation
fdiv.s f3, f22, f18, rne # perform operation
fdiv.s f3, f22, f18, rtz # perform operation
fdiv.s f3, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fdiv.s f14, f27, f22, dyn # perform operation
fdiv.s f14, f27, f22, rdn # perform operation
fdiv.s f14, f27, f22, rmm # perform operation
fdiv.s f14, f27, f22, rne # perform operation
fdiv.s f14, f27, f22, rtz # perform operation
fdiv.s f14, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fdiv.s f6, f5, f23, dyn # perform operation
fdiv.s f6, f5, f23, rdn # perform operation
fdiv.s f6, f5, f23, rmm # perform operation
fdiv.s f6, f5, f23, rne # perform operation
fdiv.s f6, f5, f23, rtz # perform operation
fdiv.s f6, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fdiv.s f17, f9, f24, dyn # perform operation
fdiv.s f17, f9, f24, rdn # perform operation
fdiv.s f17, f9, f24, rmm # perform operation
fdiv.s f17, f9, f24, rne # perform operation
fdiv.s f17, f9, f24, rtz # perform operation
fdiv.s f17, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
fdiv.s f13, f31, f20, dyn # perform operation
fdiv.s f13, f31, f20, rdn # perform operation
fdiv.s f13, f31, f20, rmm # perform operation
fdiv.s f13, f31, f20, rne # perform operation
fdiv.s f13, f31, f20, rtz # perform operation
fdiv.s f13, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fdiv.s f13, f19, f11, dyn # perform operation
fdiv.s f13, f19, f11, rdn # perform operation
fdiv.s f13, f19, f11, rmm # perform operation
fdiv.s f13, f19, f11, rne # perform operation
fdiv.s f13, f19, f11, rtz # perform operation
fdiv.s f13, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fdiv.s f26, f17, f13, dyn # perform operation
fdiv.s f26, f17, f13, rdn # perform operation
fdiv.s f26, f17, f13, rmm # perform operation
fdiv.s f26, f17, f13, rne # perform operation
fdiv.s f26, f17, f13, rtz # perform operation
fdiv.s f26, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f17, f13 # perform operation


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
