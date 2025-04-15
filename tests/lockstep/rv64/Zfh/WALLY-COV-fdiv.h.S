///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fdiv.h.S
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
add x30, x26, x7 # perform first operation
fdiv.h f8, f13, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x3, x7 # perform first operation
fdiv.h f8, f31, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x19, x16 # perform first operation
fdiv.h f1, f7, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f22, f23, f10 # perform first operation
fdiv.h f23, f30, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f30, f31, f25 # perform first operation
fdiv.h f25, f28, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x15, x3 # perform first operation
fdiv.h f15, f22, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f3, f31 # perform first operation
fdiv.h f22, f13, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f16, f28 # perform first operation
fdiv.h f15, f6, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f7, f27 # perform first operation
fdiv.h f22, f29, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f10, f31, f15 # perform first operation
fdiv.h f31, f23, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f20, f31 # perform first operation
fdiv.h f31, f28, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f24, f29, f28 # perform first operation
fdiv.h f15, f11, f2 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x38b1a5b334c2ecfa # load x3 with value 0x38b1a5b334c2ecfa
sw x3, 0(x2) # store 0x38b1a5b334c2ecfa in memory
flh f0, 0(x2) # load 0x38b1a5b334c2ecfa from memory into f0
la x2, scratch
li x3, 0x41ff8d78e4bca9da # load x3 with value 0x41ff8d78e4bca9da
sw x3, 0(x2) # store 0x41ff8d78e4bca9da in memory
flh f25, 0(x2) # load 0x41ff8d78e4bca9da from memory into f25
fdiv.h f2, f0, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xb2232887cf4a535b # load x3 with value 0xb2232887cf4a535b
sw x3, 0(x2) # store 0xb2232887cf4a535b in memory
flh f1, 0(x2) # load 0xb2232887cf4a535b from memory into f1
la x2, scratch
li x3, 0x12a5a68bae0e9cf8 # load x3 with value 0x12a5a68bae0e9cf8
sw x3, 0(x2) # store 0x12a5a68bae0e9cf8 in memory
flh f24, 0(x2) # load 0x12a5a68bae0e9cf8 from memory into f24
fdiv.h f28, f1, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x5a4cd6f3ce7f2e9c # load x3 with value 0x5a4cd6f3ce7f2e9c
sw x3, 0(x2) # store 0x5a4cd6f3ce7f2e9c in memory
flh f2, 0(x2) # load 0x5a4cd6f3ce7f2e9c from memory into f2
la x2, scratch
li x3, 0x2891caddb364de2f # load x3 with value 0x2891caddb364de2f
sw x3, 0(x2) # store 0x2891caddb364de2f in memory
flh f14, 0(x2) # load 0x2891caddb364de2f from memory into f14
fdiv.h f2, f2, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xe8e1848df38fe391 # load x3 with value 0xe8e1848df38fe391
sw x3, 0(x2) # store 0xe8e1848df38fe391 in memory
flh f3, 0(x2) # load 0xe8e1848df38fe391 from memory into f3
la x2, scratch
li x3, 0xee55c75e9b2ebce9 # load x3 with value 0xee55c75e9b2ebce9
sw x3, 0(x2) # store 0xee55c75e9b2ebce9 in memory
flh f15, 0(x2) # load 0xee55c75e9b2ebce9 from memory into f15
fdiv.h f12, f3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x79504ddabce5c6c8 # load x3 with value 0x79504ddabce5c6c8
sw x3, 0(x2) # store 0x79504ddabce5c6c8 in memory
flh f4, 0(x2) # load 0x79504ddabce5c6c8 from memory into f4
la x2, scratch
li x3, 0x737e32a71af6e7e1 # load x3 with value 0x737e32a71af6e7e1
sw x3, 0(x2) # store 0x737e32a71af6e7e1 in memory
flh f9, 0(x2) # load 0x737e32a71af6e7e1 from memory into f9
fdiv.h f7, f4, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa052661649d01af5 # load x3 with value 0xa052661649d01af5
sw x3, 0(x2) # store 0xa052661649d01af5 in memory
flh f5, 0(x2) # load 0xa052661649d01af5 from memory into f5
la x2, scratch
li x3, 0xc7c20c9a99e809b4 # load x3 with value 0xc7c20c9a99e809b4
sw x3, 0(x2) # store 0xc7c20c9a99e809b4 in memory
flh f21, 0(x2) # load 0xc7c20c9a99e809b4 from memory into f21
fdiv.h f13, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb0523bc3dc7091f5 # load x3 with value 0xb0523bc3dc7091f5
sw x3, 0(x2) # store 0xb0523bc3dc7091f5 in memory
flh f6, 0(x2) # load 0xb0523bc3dc7091f5 from memory into f6
la x2, scratch
li x3, 0xf5618b38026d23d8 # load x3 with value 0xf5618b38026d23d8
sw x3, 0(x2) # store 0xf5618b38026d23d8 in memory
flh f9, 0(x2) # load 0xf5618b38026d23d8 from memory into f9
fdiv.h f21, f6, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xef5b4789384d00f4 # load x3 with value 0xef5b4789384d00f4
sw x3, 0(x2) # store 0xef5b4789384d00f4 in memory
flh f7, 0(x2) # load 0xef5b4789384d00f4 from memory into f7
la x2, scratch
li x3, 0xff0d8bf8207d7f79 # load x3 with value 0xff0d8bf8207d7f79
sw x3, 0(x2) # store 0xff0d8bf8207d7f79 in memory
flh f5, 0(x2) # load 0xff0d8bf8207d7f79 from memory into f5
fdiv.h f18, f7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x1d9d9922008a0fae # load x3 with value 0x1d9d9922008a0fae
sw x3, 0(x2) # store 0x1d9d9922008a0fae in memory
flh f8, 0(x2) # load 0x1d9d9922008a0fae from memory into f8
la x2, scratch
li x3, 0x245940a065e2f2ee # load x3 with value 0x245940a065e2f2ee
sw x3, 0(x2) # store 0x245940a065e2f2ee in memory
flh f14, 0(x2) # load 0x245940a065e2f2ee from memory into f14
fdiv.h f15, f8, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x93f0160184643c2 # load x3 with value 0x93f0160184643c2
sw x3, 0(x2) # store 0x93f0160184643c2 in memory
flh f9, 0(x2) # load 0x93f0160184643c2 from memory into f9
la x2, scratch
li x3, 0x603df0ccbb41d469 # load x3 with value 0x603df0ccbb41d469
sw x3, 0(x2) # store 0x603df0ccbb41d469 in memory
flh f2, 0(x2) # load 0x603df0ccbb41d469 from memory into f2
fdiv.h f21, f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xfa1c8b8c1a6d95a4 # load x3 with value 0xfa1c8b8c1a6d95a4
sw x3, 0(x2) # store 0xfa1c8b8c1a6d95a4 in memory
flh f10, 0(x2) # load 0xfa1c8b8c1a6d95a4 from memory into f10
la x2, scratch
li x3, 0xf67772ac5ad518bd # load x3 with value 0xf67772ac5ad518bd
sw x3, 0(x2) # store 0xf67772ac5ad518bd in memory
flh f5, 0(x2) # load 0xf67772ac5ad518bd from memory into f5
fdiv.h f8, f10, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xad9e205007569ec5 # load x3 with value 0xad9e205007569ec5
sw x3, 0(x2) # store 0xad9e205007569ec5 in memory
flh f11, 0(x2) # load 0xad9e205007569ec5 from memory into f11
la x2, scratch
li x3, 0x23b5a61801919394 # load x3 with value 0x23b5a61801919394
sw x3, 0(x2) # store 0x23b5a61801919394 in memory
flh f17, 0(x2) # load 0x23b5a61801919394 from memory into f17
fdiv.h f7, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xaadf057159480da # load x3 with value 0xaadf057159480da
sw x3, 0(x2) # store 0xaadf057159480da in memory
flh f12, 0(x2) # load 0xaadf057159480da from memory into f12
la x2, scratch
li x3, 0xb418c0e40edc05fa # load x3 with value 0xb418c0e40edc05fa
sw x3, 0(x2) # store 0xb418c0e40edc05fa in memory
flh f16, 0(x2) # load 0xb418c0e40edc05fa from memory into f16
fdiv.h f15, f12, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x71db00411a2abfb3 # load x3 with value 0x71db00411a2abfb3
sw x3, 0(x2) # store 0x71db00411a2abfb3 in memory
flh f13, 0(x2) # load 0x71db00411a2abfb3 from memory into f13
la x2, scratch
li x3, 0xa36c041d2ea3506c # load x3 with value 0xa36c041d2ea3506c
sw x3, 0(x2) # store 0xa36c041d2ea3506c in memory
flh f9, 0(x2) # load 0xa36c041d2ea3506c from memory into f9
fdiv.h f11, f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x53a1c80553903998 # load x3 with value 0x53a1c80553903998
sw x3, 0(x2) # store 0x53a1c80553903998 in memory
flh f14, 0(x2) # load 0x53a1c80553903998 from memory into f14
la x2, scratch
li x3, 0x3ab0f561bdf8bcbd # load x3 with value 0x3ab0f561bdf8bcbd
sw x3, 0(x2) # store 0x3ab0f561bdf8bcbd in memory
flh f12, 0(x2) # load 0x3ab0f561bdf8bcbd from memory into f12
fdiv.h f24, f14, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xb5c771ec15ed8f2 # load x3 with value 0xb5c771ec15ed8f2
sw x3, 0(x2) # store 0xb5c771ec15ed8f2 in memory
flh f15, 0(x2) # load 0xb5c771ec15ed8f2 from memory into f15
la x2, scratch
li x3, 0x6ef2d8fced8750ca # load x3 with value 0x6ef2d8fced8750ca
sw x3, 0(x2) # store 0x6ef2d8fced8750ca in memory
flh f5, 0(x2) # load 0x6ef2d8fced8750ca from memory into f5
fdiv.h f3, f15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xaa7a562d0b5117c5 # load x3 with value 0xaa7a562d0b5117c5
sw x3, 0(x2) # store 0xaa7a562d0b5117c5 in memory
flh f16, 0(x2) # load 0xaa7a562d0b5117c5 from memory into f16
la x2, scratch
li x3, 0xb7d059a5c801830b # load x3 with value 0xb7d059a5c801830b
sw x3, 0(x2) # store 0xb7d059a5c801830b in memory
flh f18, 0(x2) # load 0xb7d059a5c801830b from memory into f18
fdiv.h f22, f16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x3fe592ff08365659 # load x3 with value 0x3fe592ff08365659
sw x3, 0(x2) # store 0x3fe592ff08365659 in memory
flh f17, 0(x2) # load 0x3fe592ff08365659 from memory into f17
la x2, scratch
li x3, 0x5bf4c7a94b160de9 # load x3 with value 0x5bf4c7a94b160de9
sw x3, 0(x2) # store 0x5bf4c7a94b160de9 in memory
flh f2, 0(x2) # load 0x5bf4c7a94b160de9 from memory into f2
fdiv.h f22, f17, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xfc58c35c262453ca # load x3 with value 0xfc58c35c262453ca
sw x3, 0(x2) # store 0xfc58c35c262453ca in memory
flh f18, 0(x2) # load 0xfc58c35c262453ca from memory into f18
la x2, scratch
li x3, 0x3aeb35a13bab5bbc # load x3 with value 0x3aeb35a13bab5bbc
sw x3, 0(x2) # store 0x3aeb35a13bab5bbc in memory
flh f5, 0(x2) # load 0x3aeb35a13bab5bbc from memory into f5
fdiv.h f9, f18, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xd1b0e2b2fe240338 # load x3 with value 0xd1b0e2b2fe240338
sw x3, 0(x2) # store 0xd1b0e2b2fe240338 in memory
flh f19, 0(x2) # load 0xd1b0e2b2fe240338 from memory into f19
la x2, scratch
li x3, 0xa6d75538c129a956 # load x3 with value 0xa6d75538c129a956
sw x3, 0(x2) # store 0xa6d75538c129a956 in memory
flh f5, 0(x2) # load 0xa6d75538c129a956 from memory into f5
fdiv.h f16, f19, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xfc1e9d53bc3635a3 # load x3 with value 0xfc1e9d53bc3635a3
sw x3, 0(x2) # store 0xfc1e9d53bc3635a3 in memory
flh f20, 0(x2) # load 0xfc1e9d53bc3635a3 from memory into f20
la x2, scratch
li x3, 0xef6e06b3a651243e # load x3 with value 0xef6e06b3a651243e
sw x3, 0(x2) # store 0xef6e06b3a651243e in memory
flh f21, 0(x2) # load 0xef6e06b3a651243e from memory into f21
fdiv.h f3, f20, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x7415c4deb70f7f9c # load x3 with value 0x7415c4deb70f7f9c
sw x3, 0(x2) # store 0x7415c4deb70f7f9c in memory
flh f21, 0(x2) # load 0x7415c4deb70f7f9c from memory into f21
la x2, scratch
li x3, 0x42ba83150b51d4f9 # load x3 with value 0x42ba83150b51d4f9
sw x3, 0(x2) # store 0x42ba83150b51d4f9 in memory
flh f8, 0(x2) # load 0x42ba83150b51d4f9 from memory into f8
fdiv.h f29, f21, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x1ffa837455085b28 # load x3 with value 0x1ffa837455085b28
sw x3, 0(x2) # store 0x1ffa837455085b28 in memory
flh f22, 0(x2) # load 0x1ffa837455085b28 from memory into f22
la x2, scratch
li x3, 0x3ff4e64fea5d999e # load x3 with value 0x3ff4e64fea5d999e
sw x3, 0(x2) # store 0x3ff4e64fea5d999e in memory
flh f25, 0(x2) # load 0x3ff4e64fea5d999e from memory into f25
fdiv.h f16, f22, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x1fa6332729581052 # load x3 with value 0x1fa6332729581052
sw x3, 0(x2) # store 0x1fa6332729581052 in memory
flh f23, 0(x2) # load 0x1fa6332729581052 from memory into f23
la x2, scratch
li x3, 0xf56ce30bfaf440db # load x3 with value 0xf56ce30bfaf440db
sw x3, 0(x2) # store 0xf56ce30bfaf440db in memory
flh f22, 0(x2) # load 0xf56ce30bfaf440db from memory into f22
fdiv.h f12, f23, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xe6e187d0459b08a2 # load x3 with value 0xe6e187d0459b08a2
sw x3, 0(x2) # store 0xe6e187d0459b08a2 in memory
flh f24, 0(x2) # load 0xe6e187d0459b08a2 from memory into f24
la x2, scratch
li x3, 0x20353a8e49e4cff0 # load x3 with value 0x20353a8e49e4cff0
sw x3, 0(x2) # store 0x20353a8e49e4cff0 in memory
flh f18, 0(x2) # load 0x20353a8e49e4cff0 from memory into f18
fdiv.h f23, f24, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x90e2ced8b5c6b9c5 # load x3 with value 0x90e2ced8b5c6b9c5
sw x3, 0(x2) # store 0x90e2ced8b5c6b9c5 in memory
flh f25, 0(x2) # load 0x90e2ced8b5c6b9c5 from memory into f25
la x2, scratch
li x3, 0xdaa26823cf7a0908 # load x3 with value 0xdaa26823cf7a0908
sw x3, 0(x2) # store 0xdaa26823cf7a0908 in memory
flh f7, 0(x2) # load 0xdaa26823cf7a0908 from memory into f7
fdiv.h f14, f25, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xa6687d474c65b658 # load x3 with value 0xa6687d474c65b658
sw x3, 0(x2) # store 0xa6687d474c65b658 in memory
flh f26, 0(x2) # load 0xa6687d474c65b658 from memory into f26
la x2, scratch
li x3, 0x42db1735b56d9df0 # load x3 with value 0x42db1735b56d9df0
sw x3, 0(x2) # store 0x42db1735b56d9df0 in memory
flh f13, 0(x2) # load 0x42db1735b56d9df0 from memory into f13
fdiv.h f17, f26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x49cda5f69edbcae6 # load x3 with value 0x49cda5f69edbcae6
sw x3, 0(x2) # store 0x49cda5f69edbcae6 in memory
flh f27, 0(x2) # load 0x49cda5f69edbcae6 from memory into f27
la x2, scratch
li x3, 0xfc16bca8e2483e32 # load x3 with value 0xfc16bca8e2483e32
sw x3, 0(x2) # store 0xfc16bca8e2483e32 in memory
flh f26, 0(x2) # load 0xfc16bca8e2483e32 from memory into f26
fdiv.h f7, f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xb5c0bb532d354aca # load x3 with value 0xb5c0bb532d354aca
sw x3, 0(x2) # store 0xb5c0bb532d354aca in memory
flh f28, 0(x2) # load 0xb5c0bb532d354aca from memory into f28
la x2, scratch
li x3, 0xb64d1186af16c747 # load x3 with value 0xb64d1186af16c747
sw x3, 0(x2) # store 0xb64d1186af16c747 in memory
flh f9, 0(x2) # load 0xb64d1186af16c747 from memory into f9
fdiv.h f25, f28, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xe4033c08a9d1d798 # load x3 with value 0xe4033c08a9d1d798
sw x3, 0(x2) # store 0xe4033c08a9d1d798 in memory
flh f29, 0(x2) # load 0xe4033c08a9d1d798 from memory into f29
la x2, scratch
li x3, 0xb1bab1a955f54b8f # load x3 with value 0xb1bab1a955f54b8f
sw x3, 0(x2) # store 0xb1bab1a955f54b8f in memory
flh f21, 0(x2) # load 0xb1bab1a955f54b8f from memory into f21
fdiv.h f10, f29, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x9c1e7822a77c514e # load x3 with value 0x9c1e7822a77c514e
sw x3, 0(x2) # store 0x9c1e7822a77c514e in memory
flh f30, 0(x2) # load 0x9c1e7822a77c514e from memory into f30
la x2, scratch
li x3, 0x6d638899772d270b # load x3 with value 0x6d638899772d270b
sw x3, 0(x2) # store 0x6d638899772d270b in memory
flh f26, 0(x2) # load 0x6d638899772d270b from memory into f26
fdiv.h f19, f30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x8801dca58b05d3ac # load x3 with value 0x8801dca58b05d3ac
sw x3, 0(x2) # store 0x8801dca58b05d3ac in memory
flh f31, 0(x2) # load 0x8801dca58b05d3ac from memory into f31
la x2, scratch
li x3, 0xd43f4a630fff1f35 # load x3 with value 0xd43f4a630fff1f35
sw x3, 0(x2) # store 0xd43f4a630fff1f35 in memory
flh f17, 0(x2) # load 0xd43f4a630fff1f35 from memory into f17
fdiv.h f24, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xf536899ed3574dc7 # load x3 with value 0xf536899ed3574dc7
sw x3, 0(x2) # store 0xf536899ed3574dc7 in memory
flh f19, 0(x2) # load 0xf536899ed3574dc7 from memory into f19
la x2, scratch
li x3, 0x9d596798b40c9f6b # load x3 with value 0x9d596798b40c9f6b
sw x3, 0(x2) # store 0x9d596798b40c9f6b in memory
flh f0, 0(x2) # load 0x9d596798b40c9f6b from memory into f0
fdiv.h f21, f19, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x5574ba655dfda5c5 # load x3 with value 0x5574ba655dfda5c5
sw x3, 0(x2) # store 0x5574ba655dfda5c5 in memory
flh f26, 0(x2) # load 0x5574ba655dfda5c5 from memory into f26
la x2, scratch
li x3, 0x8f2237bf382a370c # load x3 with value 0x8f2237bf382a370c
sw x3, 0(x2) # store 0x8f2237bf382a370c in memory
flh f1, 0(x2) # load 0x8f2237bf382a370c from memory into f1
fdiv.h f17, f26, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x8799c924c9c5cc9e # load x3 with value 0x8799c924c9c5cc9e
sw x3, 0(x2) # store 0x8799c924c9c5cc9e in memory
flh f25, 0(x2) # load 0x8799c924c9c5cc9e from memory into f25
la x2, scratch
li x3, 0xadce16403ba5b2b7 # load x3 with value 0xadce16403ba5b2b7
sw x3, 0(x2) # store 0xadce16403ba5b2b7 in memory
flh f2, 0(x2) # load 0xadce16403ba5b2b7 from memory into f2
fdiv.h f1, f25, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xb3520860c2398644 # load x3 with value 0xb3520860c2398644
sw x3, 0(x2) # store 0xb3520860c2398644 in memory
flh f16, 0(x2) # load 0xb3520860c2398644 from memory into f16
la x2, scratch
li x3, 0xb5b08b1426ee7ca7 # load x3 with value 0xb5b08b1426ee7ca7
sw x3, 0(x2) # store 0xb5b08b1426ee7ca7 in memory
flh f3, 0(x2) # load 0xb5b08b1426ee7ca7 from memory into f3
fdiv.h f10, f16, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xee2c4a038e78a826 # load x3 with value 0xee2c4a038e78a826
sw x3, 0(x2) # store 0xee2c4a038e78a826 in memory
flh f31, 0(x2) # load 0xee2c4a038e78a826 from memory into f31
la x2, scratch
li x3, 0x3cc646ed41f9b5c5 # load x3 with value 0x3cc646ed41f9b5c5
sw x3, 0(x2) # store 0x3cc646ed41f9b5c5 in memory
flh f4, 0(x2) # load 0x3cc646ed41f9b5c5 from memory into f4
fdiv.h f11, f31, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe8014a2dc5ebf237 # load x3 with value 0xe8014a2dc5ebf237
sw x3, 0(x2) # store 0xe8014a2dc5ebf237 in memory
flh f20, 0(x2) # load 0xe8014a2dc5ebf237 from memory into f20
la x2, scratch
li x3, 0x54be99da1ad15842 # load x3 with value 0x54be99da1ad15842
sw x3, 0(x2) # store 0x54be99da1ad15842 in memory
flh f5, 0(x2) # load 0x54be99da1ad15842 from memory into f5
fdiv.h f30, f20, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdaaa94dd88bf4d90 # load x3 with value 0xdaaa94dd88bf4d90
sw x3, 0(x2) # store 0xdaaa94dd88bf4d90 in memory
flh f7, 0(x2) # load 0xdaaa94dd88bf4d90 from memory into f7
la x2, scratch
li x3, 0x61c6488f37db948c # load x3 with value 0x61c6488f37db948c
sw x3, 0(x2) # store 0x61c6488f37db948c in memory
flh f6, 0(x2) # load 0x61c6488f37db948c from memory into f6
fdiv.h f21, f7, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
la x2, scratch
li x3, 0x47ff6475f75cea # load x3 with value 0x47ff6475f75cea
sw x3, 0(x2) # store 0x47ff6475f75cea in memory
flh f17, 0(x2) # load 0x47ff6475f75cea from memory into f17
la x2, scratch
li x3, 0x9e9ce3ee6b9a74ab # load x3 with value 0x9e9ce3ee6b9a74ab
sw x3, 0(x2) # store 0x9e9ce3ee6b9a74ab in memory
flh f7, 0(x2) # load 0x9e9ce3ee6b9a74ab from memory into f7
fdiv.h f9, f17, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x699a8563f7f2833 # load x3 with value 0x699a8563f7f2833
sw x3, 0(x2) # store 0x699a8563f7f2833 in memory
flh f29, 0(x2) # load 0x699a8563f7f2833 from memory into f29
la x2, scratch
li x3, 0x7d53e62f7e2f9567 # load x3 with value 0x7d53e62f7e2f9567
sw x3, 0(x2) # store 0x7d53e62f7e2f9567 in memory
flh f8, 0(x2) # load 0x7d53e62f7e2f9567 from memory into f8
fdiv.h f25, f29, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xf13932a2e4c34452 # load x3 with value 0xf13932a2e4c34452
sw x3, 0(x2) # store 0xf13932a2e4c34452 in memory
flh f30, 0(x2) # load 0xf13932a2e4c34452 from memory into f30
la x2, scratch
li x3, 0x2cad0744123db7e # load x3 with value 0x2cad0744123db7e
sw x3, 0(x2) # store 0x2cad0744123db7e in memory
flh f9, 0(x2) # load 0x2cad0744123db7e from memory into f9
fdiv.h f2, f30, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xa1bfd407b1ce5152 # load x3 with value 0xa1bfd407b1ce5152
sw x3, 0(x2) # store 0xa1bfd407b1ce5152 in memory
flh f29, 0(x2) # load 0xa1bfd407b1ce5152 from memory into f29
la x2, scratch
li x3, 0x3146d4d1b71d600d # load x3 with value 0x3146d4d1b71d600d
sw x3, 0(x2) # store 0x3146d4d1b71d600d in memory
flh f10, 0(x2) # load 0x3146d4d1b71d600d from memory into f10
fdiv.h f11, f29, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x2b6e0dc64d239c50 # load x3 with value 0x2b6e0dc64d239c50
sw x3, 0(x2) # store 0x2b6e0dc64d239c50 in memory
flh f7, 0(x2) # load 0x2b6e0dc64d239c50 from memory into f7
la x2, scratch
li x3, 0xa5a5879771da6d35 # load x3 with value 0xa5a5879771da6d35
sw x3, 0(x2) # store 0xa5a5879771da6d35 in memory
flh f11, 0(x2) # load 0xa5a5879771da6d35 from memory into f11
fdiv.h f28, f7, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x640e41be946ae4ef # load x3 with value 0x640e41be946ae4ef
sw x3, 0(x2) # store 0x640e41be946ae4ef in memory
flh f6, 0(x2) # load 0x640e41be946ae4ef from memory into f6
la x2, scratch
li x3, 0xf0dccf56118f30a3 # load x3 with value 0xf0dccf56118f30a3
sw x3, 0(x2) # store 0xf0dccf56118f30a3 in memory
flh f12, 0(x2) # load 0xf0dccf56118f30a3 from memory into f12
fdiv.h f2, f6, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x2b5acc8feeb6eba5 # load x3 with value 0x2b5acc8feeb6eba5
sw x3, 0(x2) # store 0x2b5acc8feeb6eba5 in memory
flh f22, 0(x2) # load 0x2b5acc8feeb6eba5 from memory into f22
la x2, scratch
li x3, 0xc6834d9a04f5af0f # load x3 with value 0xc6834d9a04f5af0f
sw x3, 0(x2) # store 0xc6834d9a04f5af0f in memory
flh f13, 0(x2) # load 0xc6834d9a04f5af0f from memory into f13
fdiv.h f19, f22, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xc51e108725e69574 # load x3 with value 0xc51e108725e69574
sw x3, 0(x2) # store 0xc51e108725e69574 in memory
flh f30, 0(x2) # load 0xc51e108725e69574 from memory into f30
la x2, scratch
li x3, 0x4eddc3e284f80d5 # load x3 with value 0x4eddc3e284f80d5
sw x3, 0(x2) # store 0x4eddc3e284f80d5 in memory
flh f14, 0(x2) # load 0x4eddc3e284f80d5 from memory into f14
fdiv.h f23, f30, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x4a053b6ea2b28440 # load x3 with value 0x4a053b6ea2b28440
sw x3, 0(x2) # store 0x4a053b6ea2b28440 in memory
flh f14, 0(x2) # load 0x4a053b6ea2b28440 from memory into f14
la x2, scratch
li x3, 0x7faf1012b505ad9 # load x3 with value 0x7faf1012b505ad9
sw x3, 0(x2) # store 0x7faf1012b505ad9 in memory
flh f15, 0(x2) # load 0x7faf1012b505ad9 from memory into f15
fdiv.h f25, f14, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x3178f738ed564ee2 # load x3 with value 0x3178f738ed564ee2
sw x3, 0(x2) # store 0x3178f738ed564ee2 in memory
flh f27, 0(x2) # load 0x3178f738ed564ee2 from memory into f27
la x2, scratch
li x3, 0x67af0cbb078b7d0e # load x3 with value 0x67af0cbb078b7d0e
sw x3, 0(x2) # store 0x67af0cbb078b7d0e in memory
flh f16, 0(x2) # load 0x67af0cbb078b7d0e from memory into f16
fdiv.h f18, f27, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x9571f1e2187c592e # load x3 with value 0x9571f1e2187c592e
sw x3, 0(x2) # store 0x9571f1e2187c592e in memory
flh f31, 0(x2) # load 0x9571f1e2187c592e from memory into f31
la x2, scratch
li x3, 0xe060e08e0f4f2558 # load x3 with value 0xe060e08e0f4f2558
sw x3, 0(x2) # store 0xe060e08e0f4f2558 in memory
flh f17, 0(x2) # load 0xe060e08e0f4f2558 from memory into f17
fdiv.h f21, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x72324cec85cd09a0 # load x3 with value 0x72324cec85cd09a0
sw x3, 0(x2) # store 0x72324cec85cd09a0 in memory
flh f28, 0(x2) # load 0x72324cec85cd09a0 from memory into f28
la x2, scratch
li x3, 0x776c2bb91d00cfd8 # load x3 with value 0x776c2bb91d00cfd8
sw x3, 0(x2) # store 0x776c2bb91d00cfd8 in memory
flh f18, 0(x2) # load 0x776c2bb91d00cfd8 from memory into f18
fdiv.h f6, f28, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x34ea3327946a470d # load x3 with value 0x34ea3327946a470d
sw x3, 0(x2) # store 0x34ea3327946a470d in memory
flh f6, 0(x2) # load 0x34ea3327946a470d from memory into f6
la x2, scratch
li x3, 0xfe796034f0fcc021 # load x3 with value 0xfe796034f0fcc021
sw x3, 0(x2) # store 0xfe796034f0fcc021 in memory
flh f19, 0(x2) # load 0xfe796034f0fcc021 from memory into f19
fdiv.h f9, f6, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x7bae28cede251be2 # load x3 with value 0x7bae28cede251be2
sw x3, 0(x2) # store 0x7bae28cede251be2 in memory
flh f25, 0(x2) # load 0x7bae28cede251be2 from memory into f25
la x2, scratch
li x3, 0x2d7c794a236298ce # load x3 with value 0x2d7c794a236298ce
sw x3, 0(x2) # store 0x2d7c794a236298ce in memory
flh f20, 0(x2) # load 0x2d7c794a236298ce from memory into f20
fdiv.h f27, f25, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xfd01c0ca6232ee3a # load x3 with value 0xfd01c0ca6232ee3a
sw x3, 0(x2) # store 0xfd01c0ca6232ee3a in memory
flh f14, 0(x2) # load 0xfd01c0ca6232ee3a from memory into f14
la x2, scratch
li x3, 0xecf138613f74f0cc # load x3 with value 0xecf138613f74f0cc
sw x3, 0(x2) # store 0xecf138613f74f0cc in memory
flh f21, 0(x2) # load 0xecf138613f74f0cc from memory into f21
fdiv.h f27, f14, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x33b505f367fe1af4 # load x3 with value 0x33b505f367fe1af4
sw x3, 0(x2) # store 0x33b505f367fe1af4 in memory
flh f24, 0(x2) # load 0x33b505f367fe1af4 from memory into f24
la x2, scratch
li x3, 0x58d4e62482cfe999 # load x3 with value 0x58d4e62482cfe999
sw x3, 0(x2) # store 0x58d4e62482cfe999 in memory
flh f22, 0(x2) # load 0x58d4e62482cfe999 from memory into f22
fdiv.h f2, f24, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xe6975a958b5dc92f # load x3 with value 0xe6975a958b5dc92f
sw x3, 0(x2) # store 0xe6975a958b5dc92f in memory
flh f27, 0(x2) # load 0xe6975a958b5dc92f from memory into f27
la x2, scratch
li x3, 0x7175c436ba53c31f # load x3 with value 0x7175c436ba53c31f
sw x3, 0(x2) # store 0x7175c436ba53c31f in memory
flh f23, 0(x2) # load 0x7175c436ba53c31f from memory into f23
fdiv.h f17, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x60f879302b9ff36c # load x3 with value 0x60f879302b9ff36c
sw x3, 0(x2) # store 0x60f879302b9ff36c in memory
flh f20, 0(x2) # load 0x60f879302b9ff36c from memory into f20
la x2, scratch
li x3, 0x6f2d259744404e8e # load x3 with value 0x6f2d259744404e8e
sw x3, 0(x2) # store 0x6f2d259744404e8e in memory
flh f24, 0(x2) # load 0x6f2d259744404e8e from memory into f24
fdiv.h f1, f20, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xad63ffe354602e87 # load x3 with value 0xad63ffe354602e87
sw x3, 0(x2) # store 0xad63ffe354602e87 in memory
flh f11, 0(x2) # load 0xad63ffe354602e87 from memory into f11
la x2, scratch
li x3, 0x45ec04b092edf50a # load x3 with value 0x45ec04b092edf50a
sw x3, 0(x2) # store 0x45ec04b092edf50a in memory
flh f25, 0(x2) # load 0x45ec04b092edf50a from memory into f25
fdiv.h f24, f11, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x610633e07cf7de71 # load x3 with value 0x610633e07cf7de71
sw x3, 0(x2) # store 0x610633e07cf7de71 in memory
flh f10, 0(x2) # load 0x610633e07cf7de71 from memory into f10
la x2, scratch
li x3, 0x23d4b897afb836f5 # load x3 with value 0x23d4b897afb836f5
sw x3, 0(x2) # store 0x23d4b897afb836f5 in memory
flh f26, 0(x2) # load 0x23d4b897afb836f5 from memory into f26
fdiv.h f18, f10, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xe2659e4164e82b21 # load x3 with value 0xe2659e4164e82b21
sw x3, 0(x2) # store 0xe2659e4164e82b21 in memory
flh f3, 0(x2) # load 0xe2659e4164e82b21 from memory into f3
la x2, scratch
li x3, 0x63eca9807efca59e # load x3 with value 0x63eca9807efca59e
sw x3, 0(x2) # store 0x63eca9807efca59e in memory
flh f27, 0(x2) # load 0x63eca9807efca59e from memory into f27
fdiv.h f16, f3, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xa9cab57479f3d750 # load x3 with value 0xa9cab57479f3d750
sw x3, 0(x2) # store 0xa9cab57479f3d750 in memory
flh f27, 0(x2) # load 0xa9cab57479f3d750 from memory into f27
la x2, scratch
li x3, 0x5ebd8e8eeed121ef # load x3 with value 0x5ebd8e8eeed121ef
sw x3, 0(x2) # store 0x5ebd8e8eeed121ef in memory
flh f28, 0(x2) # load 0x5ebd8e8eeed121ef from memory into f28
fdiv.h f15, f27, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xb1cf325472e6db59 # load x3 with value 0xb1cf325472e6db59
sw x3, 0(x2) # store 0xb1cf325472e6db59 in memory
flh f27, 0(x2) # load 0xb1cf325472e6db59 from memory into f27
la x2, scratch
li x3, 0x297575dd743dd10e # load x3 with value 0x297575dd743dd10e
sw x3, 0(x2) # store 0x297575dd743dd10e in memory
flh f29, 0(x2) # load 0x297575dd743dd10e from memory into f29
fdiv.h f26, f27, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xca2c67f9a6013374 # load x3 with value 0xca2c67f9a6013374
sw x3, 0(x2) # store 0xca2c67f9a6013374 in memory
flh f20, 0(x2) # load 0xca2c67f9a6013374 from memory into f20
la x2, scratch
li x3, 0x5c0b549a369d7b5d # load x3 with value 0x5c0b549a369d7b5d
sw x3, 0(x2) # store 0x5c0b549a369d7b5d in memory
flh f30, 0(x2) # load 0x5c0b549a369d7b5d from memory into f30
fdiv.h f8, f20, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xf42c75dfbdb477ff # load x3 with value 0xf42c75dfbdb477ff
sw x3, 0(x2) # store 0xf42c75dfbdb477ff in memory
flh f29, 0(x2) # load 0xf42c75dfbdb477ff from memory into f29
la x2, scratch
li x3, 0xd8a334c8c9b14cd0 # load x3 with value 0xd8a334c8c9b14cd0
sw x3, 0(x2) # store 0xd8a334c8c9b14cd0 in memory
flh f31, 0(x2) # load 0xd8a334c8c9b14cd0 from memory into f31
fdiv.h f23, f29, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x543108f0e28c2d33 # load x3 with value 0x543108f0e28c2d33
sw x3, 0(x2) # store 0x543108f0e28c2d33 in memory
flh f25, 0(x2) # load 0x543108f0e28c2d33 from memory into f25
la x2, scratch
li x3, 0x19acd83af0b257c5 # load x3 with value 0x19acd83af0b257c5
sw x3, 0(x2) # store 0x19acd83af0b257c5 in memory
flh f6, 0(x2) # load 0x19acd83af0b257c5 from memory into f6
fdiv.h f0, f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x35f7ecb0d1a202b7 # load x3 with value 0x35f7ecb0d1a202b7
sw x3, 0(x2) # store 0x35f7ecb0d1a202b7 in memory
flh f14, 0(x2) # load 0x35f7ecb0d1a202b7 from memory into f14
la x2, scratch
li x3, 0x2fe45f2ebea0b585 # load x3 with value 0x2fe45f2ebea0b585
sw x3, 0(x2) # store 0x2fe45f2ebea0b585 in memory
flh f23, 0(x2) # load 0x2fe45f2ebea0b585 from memory into f23
fdiv.h f1, f14, f23 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x8d43a8e183f5beee # load x3 with value 0x8d43a8e183f5beee
sw x3, 0(x2) # store 0x8d43a8e183f5beee in memory
flh f29, 0(x2) # load 0x8d43a8e183f5beee from memory into f29
la x2, scratch
li x3, 0x515292e2589b8e07 # load x3 with value 0x515292e2589b8e07
sw x3, 0(x2) # store 0x515292e2589b8e07 in memory
flh f11, 0(x2) # load 0x515292e2589b8e07 from memory into f11
fdiv.h f2, f29, f11 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x348bc87e8a35920 # load x3 with value 0x348bc87e8a35920
sw x3, 0(x2) # store 0x348bc87e8a35920 in memory
flh f3, 0(x2) # load 0x348bc87e8a35920 from memory into f3
la x2, scratch
li x3, 0x1fb30d50ec10474b # load x3 with value 0x1fb30d50ec10474b
sw x3, 0(x2) # store 0x1fb30d50ec10474b in memory
flh f10, 0(x2) # load 0x1fb30d50ec10474b from memory into f10
fdiv.h f3, f3, f10 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdf1fda70fff6d688 # load x3 with value 0xdf1fda70fff6d688
sw x3, 0(x2) # store 0xdf1fda70fff6d688 in memory
flh f27, 0(x2) # load 0xdf1fda70fff6d688 from memory into f27
la x2, scratch
li x3, 0xa0bf662788fa91b6 # load x3 with value 0xa0bf662788fa91b6
sw x3, 0(x2) # store 0xa0bf662788fa91b6 in memory
flh f8, 0(x2) # load 0xa0bf662788fa91b6 from memory into f8
fdiv.h f4, f27, f8 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa2266efe6704afaf # load x3 with value 0xa2266efe6704afaf
sw x3, 0(x2) # store 0xa2266efe6704afaf in memory
flh f20, 0(x2) # load 0xa2266efe6704afaf from memory into f20
la x2, scratch
li x3, 0xca0b4cef8de5ed4 # load x3 with value 0xca0b4cef8de5ed4
sw x3, 0(x2) # store 0xca0b4cef8de5ed4 in memory
flh f30, 0(x2) # load 0xca0b4cef8de5ed4 from memory into f30
fdiv.h f5, f20, f30 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8c2daa8381c8df04 # load x3 with value 0x8c2daa8381c8df04
sw x3, 0(x2) # store 0x8c2daa8381c8df04 in memory
flh f18, 0(x2) # load 0x8c2daa8381c8df04 from memory into f18
la x2, scratch
li x3, 0xa0cbf2e69eb87dad # load x3 with value 0xa0cbf2e69eb87dad
sw x3, 0(x2) # store 0xa0cbf2e69eb87dad in memory
flh f30, 0(x2) # load 0xa0cbf2e69eb87dad from memory into f30
fdiv.h f6, f18, f30 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3939c3bd987f91cd # load x3 with value 0x3939c3bd987f91cd
sw x3, 0(x2) # store 0x3939c3bd987f91cd in memory
flh f6, 0(x2) # load 0x3939c3bd987f91cd from memory into f6
la x2, scratch
li x3, 0xa5f2e81176ff426e # load x3 with value 0xa5f2e81176ff426e
sw x3, 0(x2) # store 0xa5f2e81176ff426e in memory
flh f19, 0(x2) # load 0xa5f2e81176ff426e from memory into f19
fdiv.h f7, f6, f19 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0xd4fa2941c4e70131 # load x3 with value 0xd4fa2941c4e70131
sw x3, 0(x2) # store 0xd4fa2941c4e70131 in memory
flh f3, 0(x2) # load 0xd4fa2941c4e70131 from memory into f3
la x2, scratch
li x3, 0x6e2dd4b4aa1fbf6b # load x3 with value 0x6e2dd4b4aa1fbf6b
sw x3, 0(x2) # store 0x6e2dd4b4aa1fbf6b in memory
flh f27, 0(x2) # load 0x6e2dd4b4aa1fbf6b from memory into f27
fdiv.h f8, f3, f27 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x4cd06506d6440d76 # load x3 with value 0x4cd06506d6440d76
sw x3, 0(x2) # store 0x4cd06506d6440d76 in memory
flh f22, 0(x2) # load 0x4cd06506d6440d76 from memory into f22
la x2, scratch
li x3, 0x6398f875cad485ba # load x3 with value 0x6398f875cad485ba
sw x3, 0(x2) # store 0x6398f875cad485ba in memory
flh f9, 0(x2) # load 0x6398f875cad485ba from memory into f9
fdiv.h f9, f22, f9 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xb88b5df08beab10d # load x3 with value 0xb88b5df08beab10d
sw x3, 0(x2) # store 0xb88b5df08beab10d in memory
flh f18, 0(x2) # load 0xb88b5df08beab10d from memory into f18
la x2, scratch
li x3, 0x1c7bebbae940be66 # load x3 with value 0x1c7bebbae940be66
sw x3, 0(x2) # store 0x1c7bebbae940be66 in memory
flh f2, 0(x2) # load 0x1c7bebbae940be66 from memory into f2
fdiv.h f10, f18, f2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x53d2b0d393552545 # load x3 with value 0x53d2b0d393552545
sw x3, 0(x2) # store 0x53d2b0d393552545 in memory
flh f14, 0(x2) # load 0x53d2b0d393552545 from memory into f14
la x2, scratch
li x3, 0xbc40e1a0cda0129 # load x3 with value 0xbc40e1a0cda0129
sw x3, 0(x2) # store 0xbc40e1a0cda0129 in memory
flh f30, 0(x2) # load 0xbc40e1a0cda0129 from memory into f30
fdiv.h f11, f14, f30 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xd34122745a8fd1a3 # load x3 with value 0xd34122745a8fd1a3
sw x3, 0(x2) # store 0xd34122745a8fd1a3 in memory
flh f30, 0(x2) # load 0xd34122745a8fd1a3 from memory into f30
la x2, scratch
li x3, 0x31d75dd545db88db # load x3 with value 0x31d75dd545db88db
sw x3, 0(x2) # store 0x31d75dd545db88db in memory
flh f11, 0(x2) # load 0x31d75dd545db88db from memory into f11
fdiv.h f12, f30, f11 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0xc6ad0a002afad8f0 # load x3 with value 0xc6ad0a002afad8f0
sw x3, 0(x2) # store 0xc6ad0a002afad8f0 in memory
flh f5, 0(x2) # load 0xc6ad0a002afad8f0 from memory into f5
la x2, scratch
li x3, 0xf1bcdfc354985981 # load x3 with value 0xf1bcdfc354985981
sw x3, 0(x2) # store 0xf1bcdfc354985981 in memory
flh f13, 0(x2) # load 0xf1bcdfc354985981 from memory into f13
fdiv.h f13, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0xa920c6d1a7f401a5 # load x3 with value 0xa920c6d1a7f401a5
sw x3, 0(x2) # store 0xa920c6d1a7f401a5 in memory
flh f21, 0(x2) # load 0xa920c6d1a7f401a5 from memory into f21
la x2, scratch
li x3, 0x6c0a8352702fadeb # load x3 with value 0x6c0a8352702fadeb
sw x3, 0(x2) # store 0x6c0a8352702fadeb in memory
flh f31, 0(x2) # load 0x6c0a8352702fadeb from memory into f31
fdiv.h f14, f21, f31 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xc627b49eb81b679b # load x3 with value 0xc627b49eb81b679b
sw x3, 0(x2) # store 0xc627b49eb81b679b in memory
flh f22, 0(x2) # load 0xc627b49eb81b679b from memory into f22
la x2, scratch
li x3, 0x5c01f099b61fa448 # load x3 with value 0x5c01f099b61fa448
sw x3, 0(x2) # store 0x5c01f099b61fa448 in memory
flh f6, 0(x2) # load 0x5c01f099b61fa448 from memory into f6
fdiv.h f15, f22, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xb7f8767801c1b99c # load x3 with value 0xb7f8767801c1b99c
sw x3, 0(x2) # store 0xb7f8767801c1b99c in memory
flh f28, 0(x2) # load 0xb7f8767801c1b99c from memory into f28
la x2, scratch
li x3, 0x40cb79922baf7620 # load x3 with value 0x40cb79922baf7620
sw x3, 0(x2) # store 0x40cb79922baf7620 in memory
flh f13, 0(x2) # load 0x40cb79922baf7620 from memory into f13
fdiv.h f16, f28, f13 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x5674f8a9c74fb9c3 # load x3 with value 0x5674f8a9c74fb9c3
sw x3, 0(x2) # store 0x5674f8a9c74fb9c3 in memory
flh f29, 0(x2) # load 0x5674f8a9c74fb9c3 from memory into f29
la x2, scratch
li x3, 0x2f9136e28b2b11d5 # load x3 with value 0x2f9136e28b2b11d5
sw x3, 0(x2) # store 0x2f9136e28b2b11d5 in memory
flh f12, 0(x2) # load 0x2f9136e28b2b11d5 from memory into f12
fdiv.h f17, f29, f12 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xaba3159bb7c2f4ef # load x3 with value 0xaba3159bb7c2f4ef
sw x3, 0(x2) # store 0xaba3159bb7c2f4ef in memory
flh f20, 0(x2) # load 0xaba3159bb7c2f4ef from memory into f20
la x2, scratch
li x3, 0x6507d3aa0467eb61 # load x3 with value 0x6507d3aa0467eb61
sw x3, 0(x2) # store 0x6507d3aa0467eb61 in memory
flh f3, 0(x2) # load 0x6507d3aa0467eb61 from memory into f3
fdiv.h f18, f20, f3 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0xdbe56050ce64c58d # load x3 with value 0xdbe56050ce64c58d
sw x3, 0(x2) # store 0xdbe56050ce64c58d in memory
flh f18, 0(x2) # load 0xdbe56050ce64c58d from memory into f18
la x2, scratch
li x3, 0x7785dde3912b7c05 # load x3 with value 0x7785dde3912b7c05
sw x3, 0(x2) # store 0x7785dde3912b7c05 in memory
flh f11, 0(x2) # load 0x7785dde3912b7c05 from memory into f11
fdiv.h f19, f18, f11 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0xef0c32814f50ec09 # load x3 with value 0xef0c32814f50ec09
sw x3, 0(x2) # store 0xef0c32814f50ec09 in memory
flh f25, 0(x2) # load 0xef0c32814f50ec09 from memory into f25
la x2, scratch
li x3, 0xf53b10dd913212f # load x3 with value 0xf53b10dd913212f
sw x3, 0(x2) # store 0xf53b10dd913212f in memory
flh f15, 0(x2) # load 0xf53b10dd913212f from memory into f15
fdiv.h f20, f25, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x877c14cd7f1f7792 # load x3 with value 0x877c14cd7f1f7792
sw x3, 0(x2) # store 0x877c14cd7f1f7792 in memory
flh f26, 0(x2) # load 0x877c14cd7f1f7792 from memory into f26
la x2, scratch
li x3, 0x6db0b4b0c9f5b576 # load x3 with value 0x6db0b4b0c9f5b576
sw x3, 0(x2) # store 0x6db0b4b0c9f5b576 in memory
flh f9, 0(x2) # load 0x6db0b4b0c9f5b576 from memory into f9
fdiv.h f21, f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x8010fcd8b5026c4c # load x3 with value 0x8010fcd8b5026c4c
sw x3, 0(x2) # store 0x8010fcd8b5026c4c in memory
flh f11, 0(x2) # load 0x8010fcd8b5026c4c from memory into f11
la x2, scratch
li x3, 0xa2e2eddc7df5e1d0 # load x3 with value 0xa2e2eddc7df5e1d0
sw x3, 0(x2) # store 0xa2e2eddc7df5e1d0 in memory
flh f10, 0(x2) # load 0xa2e2eddc7df5e1d0 from memory into f10
fdiv.h f22, f11, f10 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x558be68940f2ed25 # load x3 with value 0x558be68940f2ed25
sw x3, 0(x2) # store 0x558be68940f2ed25 in memory
flh f19, 0(x2) # load 0x558be68940f2ed25 from memory into f19
la x2, scratch
li x3, 0x8508ddccf566bb95 # load x3 with value 0x8508ddccf566bb95
sw x3, 0(x2) # store 0x8508ddccf566bb95 in memory
flh f29, 0(x2) # load 0x8508ddccf566bb95 from memory into f29
fdiv.h f23, f19, f29 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x77ec2c151dbbcbe3 # load x3 with value 0x77ec2c151dbbcbe3
sw x3, 0(x2) # store 0x77ec2c151dbbcbe3 in memory
flh f28, 0(x2) # load 0x77ec2c151dbbcbe3 from memory into f28
la x2, scratch
li x3, 0xbba40de5767250e0 # load x3 with value 0xbba40de5767250e0
sw x3, 0(x2) # store 0xbba40de5767250e0 in memory
flh f23, 0(x2) # load 0xbba40de5767250e0 from memory into f23
fdiv.h f24, f28, f23 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x4278001a4ae90552 # load x3 with value 0x4278001a4ae90552
sw x3, 0(x2) # store 0x4278001a4ae90552 in memory
flh f1, 0(x2) # load 0x4278001a4ae90552 from memory into f1
la x2, scratch
li x3, 0xa3f21b4b9748b8c4 # load x3 with value 0xa3f21b4b9748b8c4
sw x3, 0(x2) # store 0xa3f21b4b9748b8c4 in memory
flh f9, 0(x2) # load 0xa3f21b4b9748b8c4 from memory into f9
fdiv.h f25, f1, f9 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xd8ec9814058ec1ee # load x3 with value 0xd8ec9814058ec1ee
sw x3, 0(x2) # store 0xd8ec9814058ec1ee in memory
flh f27, 0(x2) # load 0xd8ec9814058ec1ee from memory into f27
la x2, scratch
li x3, 0x6a9e1144bc3ab848 # load x3 with value 0x6a9e1144bc3ab848
sw x3, 0(x2) # store 0x6a9e1144bc3ab848 in memory
flh f6, 0(x2) # load 0x6a9e1144bc3ab848 from memory into f6
fdiv.h f26, f27, f6 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xa5bd9688e8adae45 # load x3 with value 0xa5bd9688e8adae45
sw x3, 0(x2) # store 0xa5bd9688e8adae45 in memory
flh f14, 0(x2) # load 0xa5bd9688e8adae45 from memory into f14
la x2, scratch
li x3, 0x7a315fd02813f312 # load x3 with value 0x7a315fd02813f312
sw x3, 0(x2) # store 0x7a315fd02813f312 in memory
flh f6, 0(x2) # load 0x7a315fd02813f312 from memory into f6
fdiv.h f27, f14, f6 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x90bb385f3fd82df7 # load x3 with value 0x90bb385f3fd82df7
sw x3, 0(x2) # store 0x90bb385f3fd82df7 in memory
flh f6, 0(x2) # load 0x90bb385f3fd82df7 from memory into f6
la x2, scratch
li x3, 0x5667ca4fb3199ea # load x3 with value 0x5667ca4fb3199ea
sw x3, 0(x2) # store 0x5667ca4fb3199ea in memory
flh f2, 0(x2) # load 0x5667ca4fb3199ea from memory into f2
fdiv.h f28, f6, f2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x713b65d00eaff4b5 # load x3 with value 0x713b65d00eaff4b5
sw x3, 0(x2) # store 0x713b65d00eaff4b5 in memory
flh f31, 0(x2) # load 0x713b65d00eaff4b5 from memory into f31
la x2, scratch
li x3, 0x1beafa35329dd58d # load x3 with value 0x1beafa35329dd58d
sw x3, 0(x2) # store 0x1beafa35329dd58d in memory
flh f8, 0(x2) # load 0x1beafa35329dd58d from memory into f8
fdiv.h f29, f31, f8 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x25894d163d73b34e # load x3 with value 0x25894d163d73b34e
sw x3, 0(x2) # store 0x25894d163d73b34e in memory
flh f11, 0(x2) # load 0x25894d163d73b34e from memory into f11
la x2, scratch
li x3, 0x1f10246f2a7bd2b5 # load x3 with value 0x1f10246f2a7bd2b5
sw x3, 0(x2) # store 0x1f10246f2a7bd2b5 in memory
flh f20, 0(x2) # load 0x1f10246f2a7bd2b5 from memory into f20
fdiv.h f30, f11, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0xe695940640151e9d # load x3 with value 0xe695940640151e9d
sw x3, 0(x2) # store 0xe695940640151e9d in memory
flh f17, 0(x2) # load 0xe695940640151e9d from memory into f17
la x2, scratch
li x3, 0x6dc38bc2fce9e67a # load x3 with value 0x6dc38bc2fce9e67a
sw x3, 0(x2) # store 0x6dc38bc2fce9e67a in memory
flh f25, 0(x2) # load 0x6dc38bc2fce9e67a from memory into f25
fdiv.h f31, f17, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xbdeda267a64643f0 # load x3 with value 0xbdeda267a64643f0
sw x3, 0(x2) # store 0xbdeda267a64643f0 in memory
flh f30, 0(x2) # load 0xbdeda267a64643f0 from memory into f30
fdiv.h f10, f31, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
la x2, scratch
li x3, 0x29a5ae5b1a1630b8 # load x3 with value 0x29a5ae5b1a1630b8
sw x3, 0(x2) # store 0x29a5ae5b1a1630b8 in memory
flh f29, 0(x2) # load 0x29a5ae5b1a1630b8 from memory into f29
fdiv.h f20, f3, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x5db7a032ef420302 # load x3 with value 0x5db7a032ef420302
sw x3, 0(x2) # store 0x5db7a032ef420302 in memory
flh f23, 0(x2) # load 0x5db7a032ef420302 from memory into f23
fdiv.h f3, f26, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0xfb63d4722e590931 # load x3 with value 0xfb63d4722e590931
sw x3, 0(x2) # store 0xfb63d4722e590931 in memory
flh f25, 0(x2) # load 0xfb63d4722e590931 from memory into f25
fdiv.h f24, f28, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x3f8e2bc35e5fc6ca # load x3 with value 0x3f8e2bc35e5fc6ca
sw x3, 0(x2) # store 0x3f8e2bc35e5fc6ca in memory
flh f31, 0(x2) # load 0x3f8e2bc35e5fc6ca from memory into f31
fdiv.h f27, f29, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x2, scratch
li x3, 0x3f97df8f5d1616b8 # load x3 with value 0x3f97df8f5d1616b8
sw x3, 0(x2) # store 0x3f97df8f5d1616b8 in memory
flh f25, 0(x2) # load 0x3f97df8f5d1616b8 from memory into f25
fdiv.h f11, f29, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0xd4021c55df35b63f # load x3 with value 0xd4021c55df35b63f
sw x3, 0(x2) # store 0xd4021c55df35b63f in memory
flh f24, 0(x2) # load 0xd4021c55df35b63f from memory into f24
fdiv.h f2, f22, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
la x2, scratch
li x3, 0x574515def869a56b # load x3 with value 0x574515def869a56b
sw x3, 0(x2) # store 0x574515def869a56b in memory
flh f7, 0(x2) # load 0x574515def869a56b from memory into f7
fdiv.h f2, f27, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0xd5969acd7f291f42 # load x3 with value 0xd5969acd7f291f42
sw x3, 0(x2) # store 0xd5969acd7f291f42 in memory
flh f13, 0(x2) # load 0xd5969acd7f291f42 from memory into f13
fdiv.h f12, f23, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0xb9e5c82b12dff0cb # load x3 with value 0xb9e5c82b12dff0cb
sw x3, 0(x2) # store 0xb9e5c82b12dff0cb in memory
flh f3, 0(x2) # load 0xb9e5c82b12dff0cb from memory into f3
fdiv.h f30, f10, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
la x2, scratch
li x3, 0xc7eb9ad8057e195d # load x3 with value 0xc7eb9ad8057e195d
sw x3, 0(x2) # store 0xc7eb9ad8057e195d in memory
flh f29, 0(x2) # load 0xc7eb9ad8057e195d from memory into f29
fdiv.h f20, f31, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
la x2, scratch
li x3, 0x1f513c6ceab415c4 # load x3 with value 0x1f513c6ceab415c4
sw x3, 0(x2) # store 0x1f513c6ceab415c4 in memory
flh f28, 0(x2) # load 0x1f513c6ceab415c4 from memory into f28
fdiv.h f5, f12, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x953c5448320a4aef # load x3 with value 0x953c5448320a4aef
sw x3, 0(x2) # store 0x953c5448320a4aef in memory
flh f30, 0(x2) # load 0x953c5448320a4aef from memory into f30
fdiv.h f8, f3, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0xf178367269a5cc4c # load x3 with value 0xf178367269a5cc4c
sw x3, 0(x2) # store 0xf178367269a5cc4c in memory
flh f29, 0(x2) # load 0xf178367269a5cc4c from memory into f29
fdiv.h f16, f22, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x80865dd31c390ce2 # load x3 with value 0x80865dd31c390ce2
sw x3, 0(x2) # store 0x80865dd31c390ce2 in memory
flh f1, 0(x2) # load 0x80865dd31c390ce2 from memory into f1
fdiv.h f31, f3, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x76e443a7dd51513d # load x3 with value 0x76e443a7dd51513d
sw x3, 0(x2) # store 0x76e443a7dd51513d in memory
flh f24, 0(x2) # load 0x76e443a7dd51513d from memory into f24
fdiv.h f27, f19, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0xbf899bd9a09e5184 # load x3 with value 0xbf899bd9a09e5184
sw x3, 0(x2) # store 0xbf899bd9a09e5184 in memory
flh f8, 0(x2) # load 0xbf899bd9a09e5184 from memory into f8
fdiv.h f9, f18, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x9925b5569424bd7c # load x3 with value 0x9925b5569424bd7c
sw x3, 0(x2) # store 0x9925b5569424bd7c in memory
flh f22, 0(x2) # load 0x9925b5569424bd7c from memory into f22
fdiv.h f24, f14, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0xd7666820f3fa1d43 # load x3 with value 0xd7666820f3fa1d43
sw x3, 0(x2) # store 0xd7666820f3fa1d43 in memory
flh f30, 0(x2) # load 0xd7666820f3fa1d43 from memory into f30
fdiv.h f1, f16, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
la x2, scratch
li x3, 0x209da0e41f5690ce # load x3 with value 0x209da0e41f5690ce
sw x3, 0(x2) # store 0x209da0e41f5690ce in memory
flh f23, 0(x2) # load 0x209da0e41f5690ce from memory into f23
fdiv.h f9, f27, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0xc5dd699b46f9d02c # load x3 with value 0xc5dd699b46f9d02c
sw x3, 0(x2) # store 0xc5dd699b46f9d02c in memory
flh f23, 0(x2) # load 0xc5dd699b46f9d02c from memory into f23
fdiv.h f10, f26, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0xc78810010501ea58 # load x3 with value 0xc78810010501ea58
sw x3, 0(x2) # store 0xc78810010501ea58 in memory
flh f16, 0(x2) # load 0xc78810010501ea58 from memory into f16
fdiv.h f11, f2, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x918057c6aa9b8d1f # load x3 with value 0x918057c6aa9b8d1f
sw x3, 0(x2) # store 0x918057c6aa9b8d1f in memory
flh f22, 0(x2) # load 0x918057c6aa9b8d1f from memory into f22
fdiv.h f13, f15, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
la x2, scratch
li x3, 0x17fbc00af894bbef # load x3 with value 0x17fbc00af894bbef
sw x3, 0(x2) # store 0x17fbc00af894bbef in memory
flh f11, 0(x2) # load 0x17fbc00af894bbef from memory into f11
fdiv.h f16, f23, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x2a9036287e53af12 # load x3 with value 0x2a9036287e53af12
sw x3, 0(x2) # store 0x2a9036287e53af12 in memory
flh f18, 0(x2) # load 0x2a9036287e53af12 from memory into f18
fdiv.h f8, f24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x96727c1a7b1fa07 # load x3 with value 0x96727c1a7b1fa07
sw x3, 0(x2) # store 0x96727c1a7b1fa07 in memory
flh f18, 0(x2) # load 0x96727c1a7b1fa07 from memory into f18
fdiv.h f25, f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x2c328d798c8066e4 # load x3 with value 0x2c328d798c8066e4
sw x3, 0(x2) # store 0x2c328d798c8066e4 in memory
flh f12, 0(x2) # load 0x2c328d798c8066e4 from memory into f12
fdiv.h f2, f5, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
la x2, scratch
li x3, 0xd8d4e1540459ccbe # load x3 with value 0xd8d4e1540459ccbe
sw x3, 0(x2) # store 0xd8d4e1540459ccbe in memory
flh f2, 0(x2) # load 0xd8d4e1540459ccbe from memory into f2
fdiv.h f30, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x8a6f14a779683565 # load x3 with value 0x8a6f14a779683565
sw x3, 0(x2) # store 0x8a6f14a779683565 in memory
flh f26, 0(x2) # load 0x8a6f14a779683565 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.h f13, f26, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0xa1d5e0c6b2345360 # load x3 with value 0xa1d5e0c6b2345360
sw x3, 0(x2) # store 0xa1d5e0c6b2345360 in memory
flh f8, 0(x2) # load 0xa1d5e0c6b2345360 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fdiv.h f3, f8, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0xdb2d9176f6bc55de # load x3 with value 0xdb2d9176f6bc55de
sw x3, 0(x2) # store 0xdb2d9176f6bc55de in memory
flh f17, 0(x2) # load 0xdb2d9176f6bc55de from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f31, f17, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x1f0f468eeba45d12 # load x3 with value 0x1f0f468eeba45d12
sw x3, 0(x2) # store 0x1f0f468eeba45d12 in memory
flh f19, 0(x2) # load 0x1f0f468eeba45d12 from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fdiv.h f24, f19, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0xb4fb62c45253f571 # load x3 with value 0xb4fb62c45253f571
sw x3, 0(x2) # store 0xb4fb62c45253f571 in memory
flh f18, 0(x2) # load 0xb4fb62c45253f571 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fdiv.h f8, f18, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x85d82207f9aaa1e0 # load x3 with value 0x85d82207f9aaa1e0
sw x3, 0(x2) # store 0x85d82207f9aaa1e0 in memory
flh f26, 0(x2) # load 0x85d82207f9aaa1e0 from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fdiv.h f7, f26, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0xf3ed582614191e44 # load x3 with value 0xf3ed582614191e44
sw x3, 0(x2) # store 0xf3ed582614191e44 in memory
flh f28, 0(x2) # load 0xf3ed582614191e44 from memory into f28
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fdiv.h f7, f28, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x6a303bf0f0589357 # load x3 with value 0x6a303bf0f0589357
sw x3, 0(x2) # store 0x6a303bf0f0589357 in memory
flh f5, 0(x2) # load 0x6a303bf0f0589357 from memory into f5
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fdiv.h f27, f5, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x32964ca1b01a33b # load x3 with value 0x32964ca1b01a33b
sw x3, 0(x2) # store 0x32964ca1b01a33b in memory
flh f9, 0(x2) # load 0x32964ca1b01a33b from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fdiv.h f13, f9, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0xd0d552b62d354237 # load x3 with value 0xd0d552b62d354237
sw x3, 0(x2) # store 0xd0d552b62d354237 in memory
flh f17, 0(x2) # load 0xd0d552b62d354237 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fdiv.h f6, f17, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0xd958f949a11050f7 # load x3 with value 0xd958f949a11050f7
sw x3, 0(x2) # store 0xd958f949a11050f7 in memory
flh f25, 0(x2) # load 0xd958f949a11050f7 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fdiv.h f8, f25, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0xca0c177d33237870 # load x3 with value 0xca0c177d33237870
sw x3, 0(x2) # store 0xca0c177d33237870 in memory
flh f16, 0(x2) # load 0xca0c177d33237870 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fdiv.h f5, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0xebb7c7a290851e12 # load x3 with value 0xebb7c7a290851e12
sw x3, 0(x2) # store 0xebb7c7a290851e12 in memory
flh f30, 0(x2) # load 0xebb7c7a290851e12 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f31, f30, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x4de6e6e9a4cffa8f # load x3 with value 0x4de6e6e9a4cffa8f
sw x3, 0(x2) # store 0x4de6e6e9a4cffa8f in memory
flh f21, 0(x2) # load 0x4de6e6e9a4cffa8f from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fdiv.h f2, f21, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x6c98131cdf4a9bd1 # load x3 with value 0x6c98131cdf4a9bd1
sw x3, 0(x2) # store 0x6c98131cdf4a9bd1 in memory
flh f8, 0(x2) # load 0x6c98131cdf4a9bd1 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fdiv.h f18, f8, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x3e220eb8acd62fb7 # load x3 with value 0x3e220eb8acd62fb7
sw x3, 0(x2) # store 0x3e220eb8acd62fb7 in memory
flh f22, 0(x2) # load 0x3e220eb8acd62fb7 from memory into f22
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fdiv.h f21, f22, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0xaac033441c0a5913 # load x3 with value 0xaac033441c0a5913
sw x3, 0(x2) # store 0xaac033441c0a5913 in memory
flh f21, 0(x2) # load 0xaac033441c0a5913 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.h f2, f21, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0xb110370f4cc550f6 # load x3 with value 0xb110370f4cc550f6
sw x3, 0(x2) # store 0xb110370f4cc550f6 in memory
flh f17, 0(x2) # load 0xb110370f4cc550f6 from memory into f17
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fdiv.h f12, f17, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x4640f54dd93844c0 # load x3 with value 0x4640f54dd93844c0
sw x3, 0(x2) # store 0x4640f54dd93844c0 in memory
flh f7, 0(x2) # load 0x4640f54dd93844c0 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f19, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0xfcf5eb65131d7f02 # load x3 with value 0xfcf5eb65131d7f02
sw x3, 0(x2) # store 0xfcf5eb65131d7f02 in memory
flh f9, 0(x2) # load 0xfcf5eb65131d7f02 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fdiv.h f11, f9, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x6d3c5f4e4805bf27 # load x3 with value 0x6d3c5f4e4805bf27
sw x3, 0(x2) # store 0x6d3c5f4e4805bf27 in memory
flh f16, 0(x2) # load 0x6d3c5f4e4805bf27 from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fdiv.h f9, f16, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x898e941d2e43e7f2 # load x3 with value 0x898e941d2e43e7f2
sw x3, 0(x2) # store 0x898e941d2e43e7f2 in memory
flh f23, 0(x2) # load 0x898e941d2e43e7f2 from memory into f23
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fdiv.h f14, f23, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x18051a39f66946f1 # load x3 with value 0x18051a39f66946f1
sw x3, 0(x2) # store 0x18051a39f66946f1 in memory
flh f20, 0(x2) # load 0x18051a39f66946f1 from memory into f20
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fdiv.h f10, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x8cfc8a2a6a3eb8aa # load x3 with value 0x8cfc8a2a6a3eb8aa
sw x3, 0(x2) # store 0x8cfc8a2a6a3eb8aa in memory
flh f21, 0(x2) # load 0x8cfc8a2a6a3eb8aa from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fdiv.h f24, f21, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x9b29c3c478dfae57 # load x3 with value 0x9b29c3c478dfae57
sw x3, 0(x2) # store 0x9b29c3c478dfae57 in memory
flh f19, 0(x2) # load 0x9b29c3c478dfae57 from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fdiv.h f7, f19, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x1f15632b9322c946 # load x3 with value 0x1f15632b9322c946
sw x3, 0(x2) # store 0x1f15632b9322c946 in memory
flh f14, 0(x2) # load 0x1f15632b9322c946 from memory into f14
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fdiv.h f18, f14, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x61e4d48b104136ac # load x3 with value 0x61e4d48b104136ac
sw x3, 0(x2) # store 0x61e4d48b104136ac in memory
flh f9, 0(x2) # load 0x61e4d48b104136ac from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fdiv.h f21, f9, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0xa9113054651a7b3f # load x3 with value 0xa9113054651a7b3f
sw x3, 0(x2) # store 0xa9113054651a7b3f in memory
flh f18, 0(x2) # load 0xa9113054651a7b3f from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fdiv.h f28, f18, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xea741e52ed0d40c8 # load x3 with value 0xea741e52ed0d40c8
sw x3, 0(x2) # store 0xea741e52ed0d40c8 in memory
flh f0, 0(x2) # load 0xea741e52ed0d40c8 from memory into f0
la x2, scratch
li x3, 0x7c56835d88dbb8f1 # load x3 with value 0x7c56835d88dbb8f1
sw x3, 0(x2) # store 0x7c56835d88dbb8f1 in memory
flh f29, 0(x2) # load 0x7c56835d88dbb8f1 from memory into f29
fdiv.h f0, f0, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x3af7b5b40b64403b # load x3 with value 0x3af7b5b40b64403b
sw x3, 0(x2) # store 0x3af7b5b40b64403b in memory
flh f1, 0(x2) # load 0x3af7b5b40b64403b from memory into f1
la x2, scratch
li x3, 0xde51883bbad3e7f0 # load x3 with value 0xde51883bbad3e7f0
sw x3, 0(x2) # store 0xde51883bbad3e7f0 in memory
flh f27, 0(x2) # load 0xde51883bbad3e7f0 from memory into f27
fdiv.h f1, f1, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x737f46a582e63fd9 # load x3 with value 0x737f46a582e63fd9
sw x3, 0(x2) # store 0x737f46a582e63fd9 in memory
flh f2, 0(x2) # load 0x737f46a582e63fd9 from memory into f2
la x2, scratch
li x3, 0xe20aafa3b08f137d # load x3 with value 0xe20aafa3b08f137d
sw x3, 0(x2) # store 0xe20aafa3b08f137d in memory
flh f22, 0(x2) # load 0xe20aafa3b08f137d from memory into f22
fdiv.h f2, f2, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x13d9fb6e872e604f # load x3 with value 0x13d9fb6e872e604f
sw x3, 0(x2) # store 0x13d9fb6e872e604f in memory
flh f3, 0(x2) # load 0x13d9fb6e872e604f from memory into f3
la x2, scratch
li x3, 0xd93a714053531402 # load x3 with value 0xd93a714053531402
sw x3, 0(x2) # store 0xd93a714053531402 in memory
flh f6, 0(x2) # load 0xd93a714053531402 from memory into f6
fdiv.h f3, f3, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x568780924d23d298 # load x3 with value 0x568780924d23d298
sw x3, 0(x2) # store 0x568780924d23d298 in memory
flh f4, 0(x2) # load 0x568780924d23d298 from memory into f4
la x2, scratch
li x3, 0x60642d6024ea3624 # load x3 with value 0x60642d6024ea3624
sw x3, 0(x2) # store 0x60642d6024ea3624 in memory
flh f9, 0(x2) # load 0x60642d6024ea3624 from memory into f9
fdiv.h f4, f4, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7bb48abee4f495f2 # load x3 with value 0x7bb48abee4f495f2
sw x3, 0(x2) # store 0x7bb48abee4f495f2 in memory
flh f5, 0(x2) # load 0x7bb48abee4f495f2 from memory into f5
la x2, scratch
li x3, 0x6354507d21fec83c # load x3 with value 0x6354507d21fec83c
sw x3, 0(x2) # store 0x6354507d21fec83c in memory
flh f21, 0(x2) # load 0x6354507d21fec83c from memory into f21
fdiv.h f5, f5, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9f64c7370ea1c192 # load x3 with value 0x9f64c7370ea1c192
sw x3, 0(x2) # store 0x9f64c7370ea1c192 in memory
flh f6, 0(x2) # load 0x9f64c7370ea1c192 from memory into f6
la x2, scratch
li x3, 0x6d81a5bed40a3748 # load x3 with value 0x6d81a5bed40a3748
sw x3, 0(x2) # store 0x6d81a5bed40a3748 in memory
flh f27, 0(x2) # load 0x6d81a5bed40a3748 from memory into f27
fdiv.h f6, f6, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1bba610f77e7af24 # load x3 with value 0x1bba610f77e7af24
sw x3, 0(x2) # store 0x1bba610f77e7af24 in memory
flh f7, 0(x2) # load 0x1bba610f77e7af24 from memory into f7
la x2, scratch
li x3, 0x16c1aca64d53e043 # load x3 with value 0x16c1aca64d53e043
sw x3, 0(x2) # store 0x16c1aca64d53e043 in memory
flh f13, 0(x2) # load 0x16c1aca64d53e043 from memory into f13
fdiv.h f7, f7, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x95ad812571103fb9 # load x3 with value 0x95ad812571103fb9
sw x3, 0(x2) # store 0x95ad812571103fb9 in memory
flh f8, 0(x2) # load 0x95ad812571103fb9 from memory into f8
la x2, scratch
li x3, 0xdf53ebcc6b474eff # load x3 with value 0xdf53ebcc6b474eff
sw x3, 0(x2) # store 0xdf53ebcc6b474eff in memory
flh f14, 0(x2) # load 0xdf53ebcc6b474eff from memory into f14
fdiv.h f8, f8, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xcbca0a8346343124 # load x3 with value 0xcbca0a8346343124
sw x3, 0(x2) # store 0xcbca0a8346343124 in memory
flh f9, 0(x2) # load 0xcbca0a8346343124 from memory into f9
la x2, scratch
li x3, 0xf6c0b3c41531d8e0 # load x3 with value 0xf6c0b3c41531d8e0
sw x3, 0(x2) # store 0xf6c0b3c41531d8e0 in memory
flh f10, 0(x2) # load 0xf6c0b3c41531d8e0 from memory into f10
fdiv.h f9, f9, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x4ae1a44598461249 # load x3 with value 0x4ae1a44598461249
sw x3, 0(x2) # store 0x4ae1a44598461249 in memory
flh f10, 0(x2) # load 0x4ae1a44598461249 from memory into f10
la x2, scratch
li x3, 0x2acd74372e93315 # load x3 with value 0x2acd74372e93315
sw x3, 0(x2) # store 0x2acd74372e93315 in memory
flh f5, 0(x2) # load 0x2acd74372e93315 from memory into f5
fdiv.h f10, f10, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x96fe80a317f3d79b # load x3 with value 0x96fe80a317f3d79b
sw x3, 0(x2) # store 0x96fe80a317f3d79b in memory
flh f11, 0(x2) # load 0x96fe80a317f3d79b from memory into f11
la x2, scratch
li x3, 0x4389d332b4200a72 # load x3 with value 0x4389d332b4200a72
sw x3, 0(x2) # store 0x4389d332b4200a72 in memory
flh f19, 0(x2) # load 0x4389d332b4200a72 from memory into f19
fdiv.h f11, f11, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xe0548e59f635431f # load x3 with value 0xe0548e59f635431f
sw x3, 0(x2) # store 0xe0548e59f635431f in memory
flh f12, 0(x2) # load 0xe0548e59f635431f from memory into f12
la x2, scratch
li x3, 0xd235d120e115c8e3 # load x3 with value 0xd235d120e115c8e3
sw x3, 0(x2) # store 0xd235d120e115c8e3 in memory
flh f12, 0(x2) # load 0xd235d120e115c8e3 from memory into f12
fdiv.h f12, f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x7da0fe7d00b5af0d # load x3 with value 0x7da0fe7d00b5af0d
sw x3, 0(x2) # store 0x7da0fe7d00b5af0d in memory
flh f13, 0(x2) # load 0x7da0fe7d00b5af0d from memory into f13
la x2, scratch
li x3, 0xd6f69207224a7c54 # load x3 with value 0xd6f69207224a7c54
sw x3, 0(x2) # store 0xd6f69207224a7c54 in memory
flh f30, 0(x2) # load 0xd6f69207224a7c54 from memory into f30
fdiv.h f13, f13, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xcaea4c15d58d5571 # load x3 with value 0xcaea4c15d58d5571
sw x3, 0(x2) # store 0xcaea4c15d58d5571 in memory
flh f14, 0(x2) # load 0xcaea4c15d58d5571 from memory into f14
la x2, scratch
li x3, 0xdd878837efc19a60 # load x3 with value 0xdd878837efc19a60
sw x3, 0(x2) # store 0xdd878837efc19a60 in memory
flh f31, 0(x2) # load 0xdd878837efc19a60 from memory into f31
fdiv.h f14, f14, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x417ca7050380296 # load x3 with value 0x417ca7050380296
sw x3, 0(x2) # store 0x417ca7050380296 in memory
flh f15, 0(x2) # load 0x417ca7050380296 from memory into f15
la x2, scratch
li x3, 0xc61740ba25a21861 # load x3 with value 0xc61740ba25a21861
sw x3, 0(x2) # store 0xc61740ba25a21861 in memory
flh f27, 0(x2) # load 0xc61740ba25a21861 from memory into f27
fdiv.h f15, f15, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xb2227f939ad75a59 # load x3 with value 0xb2227f939ad75a59
sw x3, 0(x2) # store 0xb2227f939ad75a59 in memory
flh f16, 0(x2) # load 0xb2227f939ad75a59 from memory into f16
la x2, scratch
li x3, 0x55a728231ecb57bb # load x3 with value 0x55a728231ecb57bb
sw x3, 0(x2) # store 0x55a728231ecb57bb in memory
flh f13, 0(x2) # load 0x55a728231ecb57bb from memory into f13
fdiv.h f16, f16, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x287e45e80fc09797 # load x3 with value 0x287e45e80fc09797
sw x3, 0(x2) # store 0x287e45e80fc09797 in memory
flh f17, 0(x2) # load 0x287e45e80fc09797 from memory into f17
la x2, scratch
li x3, 0xd6cd2f3217cc15bc # load x3 with value 0xd6cd2f3217cc15bc
sw x3, 0(x2) # store 0xd6cd2f3217cc15bc in memory
flh f6, 0(x2) # load 0xd6cd2f3217cc15bc from memory into f6
fdiv.h f17, f17, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xced9faec1d996b9 # load x3 with value 0xced9faec1d996b9
sw x3, 0(x2) # store 0xced9faec1d996b9 in memory
flh f18, 0(x2) # load 0xced9faec1d996b9 from memory into f18
la x2, scratch
li x3, 0x68e08cb5382546cc # load x3 with value 0x68e08cb5382546cc
sw x3, 0(x2) # store 0x68e08cb5382546cc in memory
flh f31, 0(x2) # load 0x68e08cb5382546cc from memory into f31
fdiv.h f18, f18, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x3d29cda9b0fff31c # load x3 with value 0x3d29cda9b0fff31c
sw x3, 0(x2) # store 0x3d29cda9b0fff31c in memory
flh f19, 0(x2) # load 0x3d29cda9b0fff31c from memory into f19
la x2, scratch
li x3, 0x9b5d05ed4e697d13 # load x3 with value 0x9b5d05ed4e697d13
sw x3, 0(x2) # store 0x9b5d05ed4e697d13 in memory
flh f13, 0(x2) # load 0x9b5d05ed4e697d13 from memory into f13
fdiv.h f19, f19, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x7cb3a59602b4121e # load x3 with value 0x7cb3a59602b4121e
sw x3, 0(x2) # store 0x7cb3a59602b4121e in memory
flh f20, 0(x2) # load 0x7cb3a59602b4121e from memory into f20
la x2, scratch
li x3, 0xa3171ecc6be1250d # load x3 with value 0xa3171ecc6be1250d
sw x3, 0(x2) # store 0xa3171ecc6be1250d in memory
flh f15, 0(x2) # load 0xa3171ecc6be1250d from memory into f15
fdiv.h f20, f20, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xcc6eb7b9fabd328e # load x3 with value 0xcc6eb7b9fabd328e
sw x3, 0(x2) # store 0xcc6eb7b9fabd328e in memory
flh f21, 0(x2) # load 0xcc6eb7b9fabd328e from memory into f21
la x2, scratch
li x3, 0x262d8b4c994ff3aa # load x3 with value 0x262d8b4c994ff3aa
sw x3, 0(x2) # store 0x262d8b4c994ff3aa in memory
flh f1, 0(x2) # load 0x262d8b4c994ff3aa from memory into f1
fdiv.h f21, f21, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x688919a015a211b # load x3 with value 0x688919a015a211b
sw x3, 0(x2) # store 0x688919a015a211b in memory
flh f22, 0(x2) # load 0x688919a015a211b from memory into f22
la x2, scratch
li x3, 0x1ea916538f5942bc # load x3 with value 0x1ea916538f5942bc
sw x3, 0(x2) # store 0x1ea916538f5942bc in memory
flh f18, 0(x2) # load 0x1ea916538f5942bc from memory into f18
fdiv.h f22, f22, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x3acb05e01e088c79 # load x3 with value 0x3acb05e01e088c79
sw x3, 0(x2) # store 0x3acb05e01e088c79 in memory
flh f23, 0(x2) # load 0x3acb05e01e088c79 from memory into f23
la x2, scratch
li x3, 0xa3fdb36bbdd48b47 # load x3 with value 0xa3fdb36bbdd48b47
sw x3, 0(x2) # store 0xa3fdb36bbdd48b47 in memory
flh f31, 0(x2) # load 0xa3fdb36bbdd48b47 from memory into f31
fdiv.h f23, f23, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xd12846f0284d6fb # load x3 with value 0xd12846f0284d6fb
sw x3, 0(x2) # store 0xd12846f0284d6fb in memory
flh f24, 0(x2) # load 0xd12846f0284d6fb from memory into f24
la x2, scratch
li x3, 0xf121fdf7ed664b44 # load x3 with value 0xf121fdf7ed664b44
sw x3, 0(x2) # store 0xf121fdf7ed664b44 in memory
flh f26, 0(x2) # load 0xf121fdf7ed664b44 from memory into f26
fdiv.h f24, f24, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0xe0c8e6640225617a # load x3 with value 0xe0c8e6640225617a
sw x3, 0(x2) # store 0xe0c8e6640225617a in memory
flh f25, 0(x2) # load 0xe0c8e6640225617a from memory into f25
la x2, scratch
li x3, 0x1004964e2ec64772 # load x3 with value 0x1004964e2ec64772
sw x3, 0(x2) # store 0x1004964e2ec64772 in memory
flh f23, 0(x2) # load 0x1004964e2ec64772 from memory into f23
fdiv.h f25, f25, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xea5457880b8d9c0d # load x3 with value 0xea5457880b8d9c0d
sw x3, 0(x2) # store 0xea5457880b8d9c0d in memory
flh f26, 0(x2) # load 0xea5457880b8d9c0d from memory into f26
la x2, scratch
li x3, 0x96e507eb12e4830a # load x3 with value 0x96e507eb12e4830a
sw x3, 0(x2) # store 0x96e507eb12e4830a in memory
flh f10, 0(x2) # load 0x96e507eb12e4830a from memory into f10
fdiv.h f26, f26, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x67247a9ece7b4e21 # load x3 with value 0x67247a9ece7b4e21
sw x3, 0(x2) # store 0x67247a9ece7b4e21 in memory
flh f27, 0(x2) # load 0x67247a9ece7b4e21 from memory into f27
la x2, scratch
li x3, 0xa8d4e34206eb4290 # load x3 with value 0xa8d4e34206eb4290
sw x3, 0(x2) # store 0xa8d4e34206eb4290 in memory
flh f5, 0(x2) # load 0xa8d4e34206eb4290 from memory into f5
fdiv.h f27, f27, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x9060be6a4c9c8b16 # load x3 with value 0x9060be6a4c9c8b16
sw x3, 0(x2) # store 0x9060be6a4c9c8b16 in memory
flh f28, 0(x2) # load 0x9060be6a4c9c8b16 from memory into f28
la x2, scratch
li x3, 0x76f15a604b1b9119 # load x3 with value 0x76f15a604b1b9119
sw x3, 0(x2) # store 0x76f15a604b1b9119 in memory
flh f13, 0(x2) # load 0x76f15a604b1b9119 from memory into f13
fdiv.h f28, f28, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0x6a6ef8eecc835488 # load x3 with value 0x6a6ef8eecc835488
sw x3, 0(x2) # store 0x6a6ef8eecc835488 in memory
flh f29, 0(x2) # load 0x6a6ef8eecc835488 from memory into f29
la x2, scratch
li x3, 0xfbc28a4988fd971d # load x3 with value 0xfbc28a4988fd971d
sw x3, 0(x2) # store 0xfbc28a4988fd971d in memory
flh f9, 0(x2) # load 0xfbc28a4988fd971d from memory into f9
fdiv.h f29, f29, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x28871aad39971c4 # load x3 with value 0x28871aad39971c4
sw x3, 0(x2) # store 0x28871aad39971c4 in memory
flh f30, 0(x2) # load 0x28871aad39971c4 from memory into f30
la x2, scratch
li x3, 0x1a2a276061b320de # load x3 with value 0x1a2a276061b320de
sw x3, 0(x2) # store 0x1a2a276061b320de in memory
flh f7, 0(x2) # load 0x1a2a276061b320de from memory into f7
fdiv.h f30, f30, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0xa1c96b9b87e4ce00 # load x3 with value 0xa1c96b9b87e4ce00
sw x3, 0(x2) # store 0xa1c96b9b87e4ce00 in memory
flh f31, 0(x2) # load 0xa1c96b9b87e4ce00 from memory into f31
la x2, scratch
li x3, 0x3804c0799be4d918 # load x3 with value 0x3804c0799be4d918
sw x3, 0(x2) # store 0x3804c0799be4d918 in memory
flh f31, 0(x2) # load 0x3804c0799be4d918 from memory into f31
fdiv.h f31, f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xb2a3049f4c7e5c30 # load x3 with value 0xb2a3049f4c7e5c30
sw x3, 0(x2) # store 0xb2a3049f4c7e5c30 in memory
flh f28, 0(x2) # load 0xb2a3049f4c7e5c30 from memory into f28
la x2, scratch
li x3, 0x17c031ac1eda4dad # load x3 with value 0x17c031ac1eda4dad
sw x3, 0(x2) # store 0x17c031ac1eda4dad in memory
flh f0, 0(x2) # load 0x17c031ac1eda4dad from memory into f0
fdiv.h f0, f28, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x921fc1cf4ca4ed49 # load x3 with value 0x921fc1cf4ca4ed49
sw x3, 0(x2) # store 0x921fc1cf4ca4ed49 in memory
flh f15, 0(x2) # load 0x921fc1cf4ca4ed49 from memory into f15
la x2, scratch
li x3, 0x7016cdaa0c00d9d2 # load x3 with value 0x7016cdaa0c00d9d2
sw x3, 0(x2) # store 0x7016cdaa0c00d9d2 in memory
flh f1, 0(x2) # load 0x7016cdaa0c00d9d2 from memory into f1
fdiv.h f1, f15, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xbb67f0ae82a8311d # load x3 with value 0xbb67f0ae82a8311d
sw x3, 0(x2) # store 0xbb67f0ae82a8311d in memory
flh f27, 0(x2) # load 0xbb67f0ae82a8311d from memory into f27
la x2, scratch
li x3, 0x608edfde12277d8b # load x3 with value 0x608edfde12277d8b
sw x3, 0(x2) # store 0x608edfde12277d8b in memory
flh f2, 0(x2) # load 0x608edfde12277d8b from memory into f2
fdiv.h f2, f27, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x4739c7b3a5cfcf89 # load x3 with value 0x4739c7b3a5cfcf89
sw x3, 0(x2) # store 0x4739c7b3a5cfcf89 in memory
flh f17, 0(x2) # load 0x4739c7b3a5cfcf89 from memory into f17
la x2, scratch
li x3, 0x8f33af8f896df86d # load x3 with value 0x8f33af8f896df86d
sw x3, 0(x2) # store 0x8f33af8f896df86d in memory
flh f3, 0(x2) # load 0x8f33af8f896df86d from memory into f3
fdiv.h f3, f17, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3f5d1d40db391ac2 # load x3 with value 0x3f5d1d40db391ac2
sw x3, 0(x2) # store 0x3f5d1d40db391ac2 in memory
flh f22, 0(x2) # load 0x3f5d1d40db391ac2 from memory into f22
la x2, scratch
li x3, 0xc7dcbdbcae5fc94f # load x3 with value 0xc7dcbdbcae5fc94f
sw x3, 0(x2) # store 0xc7dcbdbcae5fc94f in memory
flh f4, 0(x2) # load 0xc7dcbdbcae5fc94f from memory into f4
fdiv.h f4, f22, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x18f03f6fd17f35b1 # load x3 with value 0x18f03f6fd17f35b1
sw x3, 0(x2) # store 0x18f03f6fd17f35b1 in memory
flh f14, 0(x2) # load 0x18f03f6fd17f35b1 from memory into f14
la x2, scratch
li x3, 0xc8c653e73282f069 # load x3 with value 0xc8c653e73282f069
sw x3, 0(x2) # store 0xc8c653e73282f069 in memory
flh f5, 0(x2) # load 0xc8c653e73282f069 from memory into f5
fdiv.h f5, f14, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xab0a9676f3857fa2 # load x3 with value 0xab0a9676f3857fa2
sw x3, 0(x2) # store 0xab0a9676f3857fa2 in memory
flh f9, 0(x2) # load 0xab0a9676f3857fa2 from memory into f9
la x2, scratch
li x3, 0x1f22a23d7c538553 # load x3 with value 0x1f22a23d7c538553
sw x3, 0(x2) # store 0x1f22a23d7c538553 in memory
flh f6, 0(x2) # load 0x1f22a23d7c538553 from memory into f6
fdiv.h f6, f9, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x548a44a2e5216e68 # load x3 with value 0x548a44a2e5216e68
sw x3, 0(x2) # store 0x548a44a2e5216e68 in memory
flh f25, 0(x2) # load 0x548a44a2e5216e68 from memory into f25
la x2, scratch
li x3, 0xa0c09b05378f73dd # load x3 with value 0xa0c09b05378f73dd
sw x3, 0(x2) # store 0xa0c09b05378f73dd in memory
flh f7, 0(x2) # load 0xa0c09b05378f73dd from memory into f7
fdiv.h f7, f25, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xb608130b0e4b620f # load x3 with value 0xb608130b0e4b620f
sw x3, 0(x2) # store 0xb608130b0e4b620f in memory
flh f31, 0(x2) # load 0xb608130b0e4b620f from memory into f31
la x2, scratch
li x3, 0x64844733bc1f954d # load x3 with value 0x64844733bc1f954d
sw x3, 0(x2) # store 0x64844733bc1f954d in memory
flh f8, 0(x2) # load 0x64844733bc1f954d from memory into f8
fdiv.h f8, f31, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x3e2bd8364e454d49 # load x3 with value 0x3e2bd8364e454d49
sw x3, 0(x2) # store 0x3e2bd8364e454d49 in memory
flh f26, 0(x2) # load 0x3e2bd8364e454d49 from memory into f26
la x2, scratch
li x3, 0x303881c4bd59ad7b # load x3 with value 0x303881c4bd59ad7b
sw x3, 0(x2) # store 0x303881c4bd59ad7b in memory
flh f9, 0(x2) # load 0x303881c4bd59ad7b from memory into f9
fdiv.h f9, f26, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xb1068278981bb216 # load x3 with value 0xb1068278981bb216
sw x3, 0(x2) # store 0xb1068278981bb216 in memory
flh f22, 0(x2) # load 0xb1068278981bb216 from memory into f22
la x2, scratch
li x3, 0x2fd7ffb36f3c36d # load x3 with value 0x2fd7ffb36f3c36d
sw x3, 0(x2) # store 0x2fd7ffb36f3c36d in memory
flh f10, 0(x2) # load 0x2fd7ffb36f3c36d from memory into f10
fdiv.h f10, f22, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xe2bf01e0db989ca9 # load x3 with value 0xe2bf01e0db989ca9
sw x3, 0(x2) # store 0xe2bf01e0db989ca9 in memory
flh f9, 0(x2) # load 0xe2bf01e0db989ca9 from memory into f9
la x2, scratch
li x3, 0xed8fd99cb7983ef3 # load x3 with value 0xed8fd99cb7983ef3
sw x3, 0(x2) # store 0xed8fd99cb7983ef3 in memory
flh f11, 0(x2) # load 0xed8fd99cb7983ef3 from memory into f11
fdiv.h f11, f9, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xd370def46c025640 # load x3 with value 0xd370def46c025640
sw x3, 0(x2) # store 0xd370def46c025640 in memory
flh f20, 0(x2) # load 0xd370def46c025640 from memory into f20
la x2, scratch
li x3, 0x57430a5814402a72 # load x3 with value 0x57430a5814402a72
sw x3, 0(x2) # store 0x57430a5814402a72 in memory
flh f12, 0(x2) # load 0x57430a5814402a72 from memory into f12
fdiv.h f12, f20, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x674e60bbd6a66502 # load x3 with value 0x674e60bbd6a66502
sw x3, 0(x2) # store 0x674e60bbd6a66502 in memory
flh f21, 0(x2) # load 0x674e60bbd6a66502 from memory into f21
la x2, scratch
li x3, 0x8a554ad3e345facf # load x3 with value 0x8a554ad3e345facf
sw x3, 0(x2) # store 0x8a554ad3e345facf in memory
flh f13, 0(x2) # load 0x8a554ad3e345facf from memory into f13
fdiv.h f13, f21, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xa77a5d43b7d9ae44 # load x3 with value 0xa77a5d43b7d9ae44
sw x3, 0(x2) # store 0xa77a5d43b7d9ae44 in memory
flh f1, 0(x2) # load 0xa77a5d43b7d9ae44 from memory into f1
la x2, scratch
li x3, 0x32aed7c6c490417d # load x3 with value 0x32aed7c6c490417d
sw x3, 0(x2) # store 0x32aed7c6c490417d in memory
flh f14, 0(x2) # load 0x32aed7c6c490417d from memory into f14
fdiv.h f14, f1, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x7dc0f94ccff59126 # load x3 with value 0x7dc0f94ccff59126
sw x3, 0(x2) # store 0x7dc0f94ccff59126 in memory
flh f2, 0(x2) # load 0x7dc0f94ccff59126 from memory into f2
la x2, scratch
li x3, 0xc6d048c21638cdc2 # load x3 with value 0xc6d048c21638cdc2
sw x3, 0(x2) # store 0xc6d048c21638cdc2 in memory
flh f15, 0(x2) # load 0xc6d048c21638cdc2 from memory into f15
fdiv.h f15, f2, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x4bab3628c2c0292f # load x3 with value 0x4bab3628c2c0292f
sw x3, 0(x2) # store 0x4bab3628c2c0292f in memory
flh f14, 0(x2) # load 0x4bab3628c2c0292f from memory into f14
la x2, scratch
li x3, 0x1f6c1819000a80cd # load x3 with value 0x1f6c1819000a80cd
sw x3, 0(x2) # store 0x1f6c1819000a80cd in memory
flh f16, 0(x2) # load 0x1f6c1819000a80cd from memory into f16
fdiv.h f16, f14, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x4fad6823302c6aef # load x3 with value 0x4fad6823302c6aef
sw x3, 0(x2) # store 0x4fad6823302c6aef in memory
flh f3, 0(x2) # load 0x4fad6823302c6aef from memory into f3
la x2, scratch
li x3, 0x9f56f6d5ca07abb6 # load x3 with value 0x9f56f6d5ca07abb6
sw x3, 0(x2) # store 0x9f56f6d5ca07abb6 in memory
flh f17, 0(x2) # load 0x9f56f6d5ca07abb6 from memory into f17
fdiv.h f17, f3, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0xaf7a35c1fe44c942 # load x3 with value 0xaf7a35c1fe44c942
sw x3, 0(x2) # store 0xaf7a35c1fe44c942 in memory
flh f31, 0(x2) # load 0xaf7a35c1fe44c942 from memory into f31
la x2, scratch
li x3, 0x5ac78ed9459d8b07 # load x3 with value 0x5ac78ed9459d8b07
sw x3, 0(x2) # store 0x5ac78ed9459d8b07 in memory
flh f18, 0(x2) # load 0x5ac78ed9459d8b07 from memory into f18
fdiv.h f18, f31, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x50337f10b53f6e5e # load x3 with value 0x50337f10b53f6e5e
sw x3, 0(x2) # store 0x50337f10b53f6e5e in memory
flh f31, 0(x2) # load 0x50337f10b53f6e5e from memory into f31
la x2, scratch
li x3, 0x71bb80b1a9dbcbc8 # load x3 with value 0x71bb80b1a9dbcbc8
sw x3, 0(x2) # store 0x71bb80b1a9dbcbc8 in memory
flh f19, 0(x2) # load 0x71bb80b1a9dbcbc8 from memory into f19
fdiv.h f19, f31, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x3a9e8f053f6a2d91 # load x3 with value 0x3a9e8f053f6a2d91
sw x3, 0(x2) # store 0x3a9e8f053f6a2d91 in memory
flh f8, 0(x2) # load 0x3a9e8f053f6a2d91 from memory into f8
la x2, scratch
li x3, 0x8d10afca7290259d # load x3 with value 0x8d10afca7290259d
sw x3, 0(x2) # store 0x8d10afca7290259d in memory
flh f20, 0(x2) # load 0x8d10afca7290259d from memory into f20
fdiv.h f20, f8, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x5d2f462b8cd66df1 # load x3 with value 0x5d2f462b8cd66df1
sw x3, 0(x2) # store 0x5d2f462b8cd66df1 in memory
flh f7, 0(x2) # load 0x5d2f462b8cd66df1 from memory into f7
la x2, scratch
li x3, 0x2397dd69fe84a88e # load x3 with value 0x2397dd69fe84a88e
sw x3, 0(x2) # store 0x2397dd69fe84a88e in memory
flh f21, 0(x2) # load 0x2397dd69fe84a88e from memory into f21
fdiv.h f21, f7, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0xd439a6f00754a57 # load x3 with value 0xd439a6f00754a57
sw x3, 0(x2) # store 0xd439a6f00754a57 in memory
flh f10, 0(x2) # load 0xd439a6f00754a57 from memory into f10
la x2, scratch
li x3, 0x9a33e168005f399a # load x3 with value 0x9a33e168005f399a
sw x3, 0(x2) # store 0x9a33e168005f399a in memory
flh f22, 0(x2) # load 0x9a33e168005f399a from memory into f22
fdiv.h f22, f10, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xce429e38716c71b5 # load x3 with value 0xce429e38716c71b5
sw x3, 0(x2) # store 0xce429e38716c71b5 in memory
flh f18, 0(x2) # load 0xce429e38716c71b5 from memory into f18
la x2, scratch
li x3, 0x397965237d85c770 # load x3 with value 0x397965237d85c770
sw x3, 0(x2) # store 0x397965237d85c770 in memory
flh f23, 0(x2) # load 0x397965237d85c770 from memory into f23
fdiv.h f23, f18, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x7818c5f18dac8efa # load x3 with value 0x7818c5f18dac8efa
sw x3, 0(x2) # store 0x7818c5f18dac8efa in memory
flh f9, 0(x2) # load 0x7818c5f18dac8efa from memory into f9
la x2, scratch
li x3, 0xdc08e4f1adcce798 # load x3 with value 0xdc08e4f1adcce798
sw x3, 0(x2) # store 0xdc08e4f1adcce798 in memory
flh f24, 0(x2) # load 0xdc08e4f1adcce798 from memory into f24
fdiv.h f24, f9, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x1b855457dbdb6dd5 # load x3 with value 0x1b855457dbdb6dd5
sw x3, 0(x2) # store 0x1b855457dbdb6dd5 in memory
flh f25, 0(x2) # load 0x1b855457dbdb6dd5 from memory into f25
la x2, scratch
li x3, 0x659107294f9df14a # load x3 with value 0x659107294f9df14a
sw x3, 0(x2) # store 0x659107294f9df14a in memory
flh f25, 0(x2) # load 0x659107294f9df14a from memory into f25
fdiv.h f25, f25, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x9271583b615636f7 # load x3 with value 0x9271583b615636f7
sw x3, 0(x2) # store 0x9271583b615636f7 in memory
flh f25, 0(x2) # load 0x9271583b615636f7 from memory into f25
la x2, scratch
li x3, 0xf4e1f5654be5852c # load x3 with value 0xf4e1f5654be5852c
sw x3, 0(x2) # store 0xf4e1f5654be5852c in memory
flh f26, 0(x2) # load 0xf4e1f5654be5852c from memory into f26
fdiv.h f26, f25, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x243bbaaac6dd7171 # load x3 with value 0x243bbaaac6dd7171
sw x3, 0(x2) # store 0x243bbaaac6dd7171 in memory
flh f20, 0(x2) # load 0x243bbaaac6dd7171 from memory into f20
la x2, scratch
li x3, 0xacb90365623ccbcd # load x3 with value 0xacb90365623ccbcd
sw x3, 0(x2) # store 0xacb90365623ccbcd in memory
flh f27, 0(x2) # load 0xacb90365623ccbcd from memory into f27
fdiv.h f27, f20, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x31f9d3bce58c4a95 # load x3 with value 0x31f9d3bce58c4a95
sw x3, 0(x2) # store 0x31f9d3bce58c4a95 in memory
flh f28, 0(x2) # load 0x31f9d3bce58c4a95 from memory into f28
la x2, scratch
li x3, 0x706362497bf8609a # load x3 with value 0x706362497bf8609a
sw x3, 0(x2) # store 0x706362497bf8609a in memory
flh f28, 0(x2) # load 0x706362497bf8609a from memory into f28
fdiv.h f28, f28, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x4d96d89d427a3a1f # load x3 with value 0x4d96d89d427a3a1f
sw x3, 0(x2) # store 0x4d96d89d427a3a1f in memory
flh f12, 0(x2) # load 0x4d96d89d427a3a1f from memory into f12
la x2, scratch
li x3, 0xd7c13a1f0fd35801 # load x3 with value 0xd7c13a1f0fd35801
sw x3, 0(x2) # store 0xd7c13a1f0fd35801 in memory
flh f29, 0(x2) # load 0xd7c13a1f0fd35801 from memory into f29
fdiv.h f29, f12, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0xef73de488ad2c669 # load x3 with value 0xef73de488ad2c669
sw x3, 0(x2) # store 0xef73de488ad2c669 in memory
flh f9, 0(x2) # load 0xef73de488ad2c669 from memory into f9
la x2, scratch
li x3, 0xcd65c4edc4cef782 # load x3 with value 0xcd65c4edc4cef782
sw x3, 0(x2) # store 0xcd65c4edc4cef782 in memory
flh f30, 0(x2) # load 0xcd65c4edc4cef782 from memory into f30
fdiv.h f30, f9, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x5872326364a090a6 # load x3 with value 0x5872326364a090a6
sw x3, 0(x2) # store 0x5872326364a090a6 in memory
flh f14, 0(x2) # load 0x5872326364a090a6 from memory into f14
la x2, scratch
li x3, 0x75ea005633cbe361 # load x3 with value 0x75ea005633cbe361
sw x3, 0(x2) # store 0x75ea005633cbe361 in memory
flh f31, 0(x2) # load 0x75ea005633cbe361 from memory into f31
fdiv.h f31, f14, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xea70daa3ab89a56b # load x3 with value 0xea70daa3ab89a56b
sw x3, 0(x2) # store 0xea70daa3ab89a56b in memory
flh f19, 0(x2) # load 0xea70daa3ab89a56b from memory into f19
la x2, scratch
li x3, 0x61cd932d3ef77941 # load x3 with value 0x61cd932d3ef77941
sw x3, 0(x2) # store 0x61cd932d3ef77941 in memory
flh f30, 0(x2) # load 0x61cd932d3ef77941 from memory into f30
fdiv.h f13, f19, f30, dyn # perform operation
fdiv.h f13, f19, f30, rdn # perform operation
fdiv.h f13, f19, f30, rmm # perform operation
fdiv.h f13, f19, f30, rne # perform operation
fdiv.h f13, f19, f30, rtz # perform operation
fdiv.h f13, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.h f15, f27, f5, dyn # perform operation
fdiv.h f15, f27, f5, rdn # perform operation
fdiv.h f15, f27, f5, rmm # perform operation
fdiv.h f15, f27, f5, rne # perform operation
fdiv.h f15, f27, f5, rtz # perform operation
fdiv.h f15, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fdiv.h f7, f17, f14, dyn # perform operation
fdiv.h f7, f17, f14, rdn # perform operation
fdiv.h f7, f17, f14, rmm # perform operation
fdiv.h f7, f17, f14, rne # perform operation
fdiv.h f7, f17, f14, rtz # perform operation
fdiv.h f7, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f20, f15, f26, dyn # perform operation
fdiv.h f20, f15, f26, rdn # perform operation
fdiv.h f20, f15, f26, rmm # perform operation
fdiv.h f20, f15, f26, rne # perform operation
fdiv.h f20, f15, f26, rtz # perform operation
fdiv.h f20, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fdiv.h f28, f11, f15, dyn # perform operation
fdiv.h f28, f11, f15, rdn # perform operation
fdiv.h f28, f11, f15, rmm # perform operation
fdiv.h f28, f11, f15, rne # perform operation
fdiv.h f28, f11, f15, rtz # perform operation
fdiv.h f28, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fdiv.h f17, f8, f6, dyn # perform operation
fdiv.h f17, f8, f6, rdn # perform operation
fdiv.h f17, f8, f6, rmm # perform operation
fdiv.h f17, f8, f6, rne # perform operation
fdiv.h f17, f8, f6, rtz # perform operation
fdiv.h f17, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fdiv.h f15, f1, f17, dyn # perform operation
fdiv.h f15, f1, f17, rdn # perform operation
fdiv.h f15, f1, f17, rmm # perform operation
fdiv.h f15, f1, f17, rne # perform operation
fdiv.h f15, f1, f17, rtz # perform operation
fdiv.h f15, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fdiv.h f25, f31, f26, dyn # perform operation
fdiv.h f25, f31, f26, rdn # perform operation
fdiv.h f25, f31, f26, rmm # perform operation
fdiv.h f25, f31, f26, rne # perform operation
fdiv.h f25, f31, f26, rtz # perform operation
fdiv.h f25, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fdiv.h f23, f12, f6, dyn # perform operation
fdiv.h f23, f12, f6, rdn # perform operation
fdiv.h f23, f12, f6, rmm # perform operation
fdiv.h f23, f12, f6, rne # perform operation
fdiv.h f23, f12, f6, rtz # perform operation
fdiv.h f23, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f12, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f13, f22, f27, dyn # perform operation
fdiv.h f13, f22, f27, rdn # perform operation
fdiv.h f13, f22, f27, rmm # perform operation
fdiv.h f13, f22, f27, rne # perform operation
fdiv.h f13, f22, f27, rtz # perform operation
fdiv.h f13, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fdiv.h f3, f6, f16, dyn # perform operation
fdiv.h f3, f6, f16, rdn # perform operation
fdiv.h f3, f6, f16, rmm # perform operation
fdiv.h f3, f6, f16, rne # perform operation
fdiv.h f3, f6, f16, rtz # perform operation
fdiv.h f3, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fdiv.h f18, f2, f20, dyn # perform operation
fdiv.h f18, f2, f20, rdn # perform operation
fdiv.h f18, f2, f20, rmm # perform operation
fdiv.h f18, f2, f20, rne # perform operation
fdiv.h f18, f2, f20, rtz # perform operation
fdiv.h f18, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fdiv.h f27, f31, f23, dyn # perform operation
fdiv.h f27, f31, f23, rdn # perform operation
fdiv.h f27, f31, f23, rmm # perform operation
fdiv.h f27, f31, f23, rne # perform operation
fdiv.h f27, f31, f23, rtz # perform operation
fdiv.h f27, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fdiv.h f11, f19, f17, dyn # perform operation
fdiv.h f11, f19, f17, rdn # perform operation
fdiv.h f11, f19, f17, rmm # perform operation
fdiv.h f11, f19, f17, rne # perform operation
fdiv.h f11, f19, f17, rtz # perform operation
fdiv.h f11, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fdiv.h f20, f16, f7, dyn # perform operation
fdiv.h f20, f16, f7, rdn # perform operation
fdiv.h f20, f16, f7, rmm # perform operation
fdiv.h f20, f16, f7, rne # perform operation
fdiv.h f20, f16, f7, rtz # perform operation
fdiv.h f20, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fdiv.h f18, f8, f3, dyn # perform operation
fdiv.h f18, f8, f3, rdn # perform operation
fdiv.h f18, f8, f3, rmm # perform operation
fdiv.h f18, f8, f3, rne # perform operation
fdiv.h f18, f8, f3, rtz # perform operation
fdiv.h f18, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fdiv.h f25, f8, f24, dyn # perform operation
fdiv.h f25, f8, f24, rdn # perform operation
fdiv.h f25, f8, f24, rmm # perform operation
fdiv.h f25, f8, f24, rne # perform operation
fdiv.h f25, f8, f24, rtz # perform operation
fdiv.h f25, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.h f20, f26, f29, dyn # perform operation
fdiv.h f20, f26, f29, rdn # perform operation
fdiv.h f20, f26, f29, rmm # perform operation
fdiv.h f20, f26, f29, rne # perform operation
fdiv.h f20, f26, f29, rtz # perform operation
fdiv.h f20, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fdiv.h f11, f6, f7, dyn # perform operation
fdiv.h f11, f6, f7, rdn # perform operation
fdiv.h f11, f6, f7, rmm # perform operation
fdiv.h f11, f6, f7, rne # perform operation
fdiv.h f11, f6, f7, rtz # perform operation
fdiv.h f11, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fdiv.h f10, f6, f21, dyn # perform operation
fdiv.h f10, f6, f21, rdn # perform operation
fdiv.h f10, f6, f21, rmm # perform operation
fdiv.h f10, f6, f21, rne # perform operation
fdiv.h f10, f6, f21, rtz # perform operation
fdiv.h f10, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fdiv.h f14, f21, f18, dyn # perform operation
fdiv.h f14, f21, f18, rdn # perform operation
fdiv.h f14, f21, f18, rmm # perform operation
fdiv.h f14, f21, f18, rne # perform operation
fdiv.h f14, f21, f18, rtz # perform operation
fdiv.h f14, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fdiv.h f2, f25, f9, dyn # perform operation
fdiv.h f2, f25, f9, rdn # perform operation
fdiv.h f2, f25, f9, rmm # perform operation
fdiv.h f2, f25, f9, rne # perform operation
fdiv.h f2, f25, f9, rtz # perform operation
fdiv.h f2, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fdiv.h f14, f30, f19, dyn # perform operation
fdiv.h f14, f30, f19, rdn # perform operation
fdiv.h f14, f30, f19, rmm # perform operation
fdiv.h f14, f30, f19, rne # perform operation
fdiv.h f14, f30, f19, rtz # perform operation
fdiv.h f14, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fdiv.h f10, f28, f16, dyn # perform operation
fdiv.h f10, f28, f16, rdn # perform operation
fdiv.h f10, f28, f16, rmm # perform operation
fdiv.h f10, f28, f16, rne # perform operation
fdiv.h f10, f28, f16, rtz # perform operation
fdiv.h f10, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fdiv.h f19, f18, f29, dyn # perform operation
fdiv.h f19, f18, f29, rdn # perform operation
fdiv.h f19, f18, f29, rmm # perform operation
fdiv.h f19, f18, f29, rne # perform operation
fdiv.h f19, f18, f29, rtz # perform operation
fdiv.h f19, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fdiv.h f14, f21, f13, dyn # perform operation
fdiv.h f14, f21, f13, rdn # perform operation
fdiv.h f14, f21, f13, rmm # perform operation
fdiv.h f14, f21, f13, rne # perform operation
fdiv.h f14, f21, f13, rtz # perform operation
fdiv.h f14, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fdiv.h f8, f3, f6, dyn # perform operation
fdiv.h f8, f3, f6, rdn # perform operation
fdiv.h f8, f3, f6, rmm # perform operation
fdiv.h f8, f3, f6, rne # perform operation
fdiv.h f8, f3, f6, rtz # perform operation
fdiv.h f8, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fdiv.h f7, f23, f20, dyn # perform operation
fdiv.h f7, f23, f20, rdn # perform operation
fdiv.h f7, f23, f20, rmm # perform operation
fdiv.h f7, f23, f20, rne # perform operation
fdiv.h f7, f23, f20, rtz # perform operation
fdiv.h f7, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fdiv.h f18, f21, f19, dyn # perform operation
fdiv.h f18, f21, f19, rdn # perform operation
fdiv.h f18, f21, f19, rmm # perform operation
fdiv.h f18, f21, f19, rne # perform operation
fdiv.h f18, f21, f19, rtz # perform operation
fdiv.h f18, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.h f7, f19, f2, dyn # perform operation
fdiv.h f7, f19, f2, rdn # perform operation
fdiv.h f7, f19, f2, rmm # perform operation
fdiv.h f7, f19, f2, rne # perform operation
fdiv.h f7, f19, f2, rtz # perform operation
fdiv.h f7, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fdiv.h f25, f13, f22, dyn # perform operation
fdiv.h f25, f13, f22, rdn # perform operation
fdiv.h f25, f13, f22, rmm # perform operation
fdiv.h f25, f13, f22, rne # perform operation
fdiv.h f25, f13, f22, rtz # perform operation
fdiv.h f25, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fdiv.h f22, f9, f23, dyn # perform operation
fdiv.h f22, f9, f23, rdn # perform operation
fdiv.h f22, f9, f23, rmm # perform operation
fdiv.h f22, f9, f23, rne # perform operation
fdiv.h f22, f9, f23, rtz # perform operation
fdiv.h f22, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fdiv.h f12, f6, f21, dyn # perform operation
fdiv.h f12, f6, f21, rdn # perform operation
fdiv.h f12, f6, f21, rmm # perform operation
fdiv.h f12, f6, f21, rne # perform operation
fdiv.h f12, f6, f21, rtz # perform operation
fdiv.h f12, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fdiv.h f31, f22, f11, dyn # perform operation
fdiv.h f31, f22, f11, rdn # perform operation
fdiv.h f31, f22, f11, rmm # perform operation
fdiv.h f31, f22, f11, rne # perform operation
fdiv.h f31, f22, f11, rtz # perform operation
fdiv.h f31, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fdiv.h f14, f5, f7, dyn # perform operation
fdiv.h f14, f5, f7, rdn # perform operation
fdiv.h f14, f5, f7, rmm # perform operation
fdiv.h f14, f5, f7, rne # perform operation
fdiv.h f14, f5, f7, rtz # perform operation
fdiv.h f14, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fdiv.h f14, f25, f11, dyn # perform operation
fdiv.h f14, f25, f11, rdn # perform operation
fdiv.h f14, f25, f11, rmm # perform operation
fdiv.h f14, f25, f11, rne # perform operation
fdiv.h f14, f25, f11, rtz # perform operation
fdiv.h f14, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f19, f30, f26, dyn # perform operation
fdiv.h f19, f30, f26, rdn # perform operation
fdiv.h f19, f30, f26, rmm # perform operation
fdiv.h f19, f30, f26, rne # perform operation
fdiv.h f19, f30, f26, rtz # perform operation
fdiv.h f19, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fdiv.h f17, f3, f29, dyn # perform operation
fdiv.h f17, f3, f29, rdn # perform operation
fdiv.h f17, f3, f29, rmm # perform operation
fdiv.h f17, f3, f29, rne # perform operation
fdiv.h f17, f3, f29, rtz # perform operation
fdiv.h f17, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fdiv.h f12, f5, f6, dyn # perform operation
fdiv.h f12, f5, f6, rdn # perform operation
fdiv.h f12, f5, f6, rmm # perform operation
fdiv.h f12, f5, f6, rne # perform operation
fdiv.h f12, f5, f6, rtz # perform operation
fdiv.h f12, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fdiv.h f28, f31, f7, dyn # perform operation
fdiv.h f28, f31, f7, rdn # perform operation
fdiv.h f28, f31, f7, rmm # perform operation
fdiv.h f28, f31, f7, rne # perform operation
fdiv.h f28, f31, f7, rtz # perform operation
fdiv.h f28, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fdiv.h f10, f24, f1, dyn # perform operation
fdiv.h f10, f24, f1, rdn # perform operation
fdiv.h f10, f24, f1, rmm # perform operation
fdiv.h f10, f24, f1, rne # perform operation
fdiv.h f10, f24, f1, rtz # perform operation
fdiv.h f10, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fdiv.h f31, f17, f7, dyn # perform operation
fdiv.h f31, f17, f7, rdn # perform operation
fdiv.h f31, f17, f7, rmm # perform operation
fdiv.h f31, f17, f7, rne # perform operation
fdiv.h f31, f17, f7, rtz # perform operation
fdiv.h f31, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fdiv.h f27, f8, f5, dyn # perform operation
fdiv.h f27, f8, f5, rdn # perform operation
fdiv.h f27, f8, f5, rmm # perform operation
fdiv.h f27, f8, f5, rne # perform operation
fdiv.h f27, f8, f5, rtz # perform operation
fdiv.h f27, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fdiv.h f5, f10, f7, dyn # perform operation
fdiv.h f5, f10, f7, rdn # perform operation
fdiv.h f5, f10, f7, rmm # perform operation
fdiv.h f5, f10, f7, rne # perform operation
fdiv.h f5, f10, f7, rtz # perform operation
fdiv.h f5, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fdiv.h f20, f31, f18, dyn # perform operation
fdiv.h f20, f31, f18, rdn # perform operation
fdiv.h f20, f31, f18, rmm # perform operation
fdiv.h f20, f31, f18, rne # perform operation
fdiv.h f20, f31, f18, rtz # perform operation
fdiv.h f20, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fdiv.h f28, f12, f31, dyn # perform operation
fdiv.h f28, f12, f31, rdn # perform operation
fdiv.h f28, f12, f31, rmm # perform operation
fdiv.h f28, f12, f31, rne # perform operation
fdiv.h f28, f12, f31, rtz # perform operation
fdiv.h f28, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fdiv.h f25, f27, f24, dyn # perform operation
fdiv.h f25, f27, f24, rdn # perform operation
fdiv.h f25, f27, f24, rmm # perform operation
fdiv.h f25, f27, f24, rne # perform operation
fdiv.h f25, f27, f24, rtz # perform operation
fdiv.h f25, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f21, f1, f20, dyn # perform operation
fdiv.h f21, f1, f20, rdn # perform operation
fdiv.h f21, f1, f20, rmm # perform operation
fdiv.h f21, f1, f20, rne # perform operation
fdiv.h f21, f1, f20, rtz # perform operation
fdiv.h f21, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fdiv.h f13, f30, f6, dyn # perform operation
fdiv.h f13, f30, f6, rdn # perform operation
fdiv.h f13, f30, f6, rmm # perform operation
fdiv.h f13, f30, f6, rne # perform operation
fdiv.h f13, f30, f6, rtz # perform operation
fdiv.h f13, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fdiv.h f22, f16, f29, dyn # perform operation
fdiv.h f22, f16, f29, rdn # perform operation
fdiv.h f22, f16, f29, rmm # perform operation
fdiv.h f22, f16, f29, rne # perform operation
fdiv.h f22, f16, f29, rtz # perform operation
fdiv.h f22, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fdiv.h f19, f12, f27, dyn # perform operation
fdiv.h f19, f12, f27, rdn # perform operation
fdiv.h f19, f12, f27, rmm # perform operation
fdiv.h f19, f12, f27, rne # perform operation
fdiv.h f19, f12, f27, rtz # perform operation
fdiv.h f19, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fdiv.h f14, f26, f25, dyn # perform operation
fdiv.h f14, f26, f25, rdn # perform operation
fdiv.h f14, f26, f25, rmm # perform operation
fdiv.h f14, f26, f25, rne # perform operation
fdiv.h f14, f26, f25, rtz # perform operation
fdiv.h f14, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fdiv.h f5, f21, f27, dyn # perform operation
fdiv.h f5, f21, f27, rdn # perform operation
fdiv.h f5, f21, f27, rmm # perform operation
fdiv.h f5, f21, f27, rne # perform operation
fdiv.h f5, f21, f27, rtz # perform operation
fdiv.h f5, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fdiv.h f6, f2, f12, dyn # perform operation
fdiv.h f6, f2, f12, rdn # perform operation
fdiv.h f6, f2, f12, rmm # perform operation
fdiv.h f6, f2, f12, rne # perform operation
fdiv.h f6, f2, f12, rtz # perform operation
fdiv.h f6, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fdiv.h f11, f31, f16, dyn # perform operation
fdiv.h f11, f31, f16, rdn # perform operation
fdiv.h f11, f31, f16, rmm # perform operation
fdiv.h f11, f31, f16, rne # perform operation
fdiv.h f11, f31, f16, rtz # perform operation
fdiv.h f11, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f30, f6, f17, dyn # perform operation
fdiv.h f30, f6, f17, rdn # perform operation
fdiv.h f30, f6, f17, rmm # perform operation
fdiv.h f30, f6, f17, rne # perform operation
fdiv.h f30, f6, f17, rtz # perform operation
fdiv.h f30, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fdiv.h f14, f25, f12, dyn # perform operation
fdiv.h f14, f25, f12, rdn # perform operation
fdiv.h f14, f25, f12, rmm # perform operation
fdiv.h f14, f25, f12, rne # perform operation
fdiv.h f14, f25, f12, rtz # perform operation
fdiv.h f14, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f27, f24, f6, dyn # perform operation
fdiv.h f27, f24, f6, rdn # perform operation
fdiv.h f27, f24, f6, rmm # perform operation
fdiv.h f27, f24, f6, rne # perform operation
fdiv.h f27, f24, f6, rtz # perform operation
fdiv.h f27, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fdiv.h f3, f29, f20, dyn # perform operation
fdiv.h f3, f29, f20, rdn # perform operation
fdiv.h f3, f29, f20, rmm # perform operation
fdiv.h f3, f29, f20, rne # perform operation
fdiv.h f3, f29, f20, rtz # perform operation
fdiv.h f3, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f11, f25, f3, dyn # perform operation
fdiv.h f11, f25, f3, rdn # perform operation
fdiv.h f11, f25, f3, rmm # perform operation
fdiv.h f11, f25, f3, rne # perform operation
fdiv.h f11, f25, f3, rtz # perform operation
fdiv.h f11, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fdiv.h f23, f21, f17, dyn # perform operation
fdiv.h f23, f21, f17, rdn # perform operation
fdiv.h f23, f21, f17, rmm # perform operation
fdiv.h f23, f21, f17, rne # perform operation
fdiv.h f23, f21, f17, rtz # perform operation
fdiv.h f23, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fdiv.h f25, f1, f23, dyn # perform operation
fdiv.h f25, f1, f23, rdn # perform operation
fdiv.h f25, f1, f23, rmm # perform operation
fdiv.h f25, f1, f23, rne # perform operation
fdiv.h f25, f1, f23, rtz # perform operation
fdiv.h f25, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fdiv.h f31, f20, f30, dyn # perform operation
fdiv.h f31, f20, f30, rdn # perform operation
fdiv.h f31, f20, f30, rmm # perform operation
fdiv.h f31, f20, f30, rne # perform operation
fdiv.h f31, f20, f30, rtz # perform operation
fdiv.h f31, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fdiv.h f2, f13, f19, dyn # perform operation
fdiv.h f2, f13, f19, rdn # perform operation
fdiv.h f2, f13, f19, rmm # perform operation
fdiv.h f2, f13, f19, rne # perform operation
fdiv.h f2, f13, f19, rtz # perform operation
fdiv.h f2, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fdiv.h f7, f16, f21, dyn # perform operation
fdiv.h f7, f16, f21, rdn # perform operation
fdiv.h f7, f16, f21, rmm # perform operation
fdiv.h f7, f16, f21, rne # perform operation
fdiv.h f7, f16, f21, rtz # perform operation
fdiv.h f7, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fdiv.h f20, f17, f21, dyn # perform operation
fdiv.h f20, f17, f21, rdn # perform operation
fdiv.h f20, f17, f21, rmm # perform operation
fdiv.h f20, f17, f21, rne # perform operation
fdiv.h f20, f17, f21, rtz # perform operation
fdiv.h f20, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fdiv.h f9, f5, f23, dyn # perform operation
fdiv.h f9, f5, f23, rdn # perform operation
fdiv.h f9, f5, f23, rmm # perform operation
fdiv.h f9, f5, f23, rne # perform operation
fdiv.h f9, f5, f23, rtz # perform operation
fdiv.h f9, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f15, f26, f22, dyn # perform operation
fdiv.h f15, f26, f22, rdn # perform operation
fdiv.h f15, f26, f22, rmm # perform operation
fdiv.h f15, f26, f22, rne # perform operation
fdiv.h f15, f26, f22, rtz # perform operation
fdiv.h f15, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fdiv.h f29, f7, f1, dyn # perform operation
fdiv.h f29, f7, f1, rdn # perform operation
fdiv.h f29, f7, f1, rmm # perform operation
fdiv.h f29, f7, f1, rne # perform operation
fdiv.h f29, f7, f1, rtz # perform operation
fdiv.h f29, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f15, f5, f6, dyn # perform operation
fdiv.h f15, f5, f6, rdn # perform operation
fdiv.h f15, f5, f6, rmm # perform operation
fdiv.h f15, f5, f6, rne # perform operation
fdiv.h f15, f5, f6, rtz # perform operation
fdiv.h f15, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fdiv.h f15, f25, f6, dyn # perform operation
fdiv.h f15, f25, f6, rdn # perform operation
fdiv.h f15, f25, f6, rmm # perform operation
fdiv.h f15, f25, f6, rne # perform operation
fdiv.h f15, f25, f6, rtz # perform operation
fdiv.h f15, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f16, f23, f13, dyn # perform operation
fdiv.h f16, f23, f13, rdn # perform operation
fdiv.h f16, f23, f13, rmm # perform operation
fdiv.h f16, f23, f13, rne # perform operation
fdiv.h f16, f23, f13, rtz # perform operation
fdiv.h f16, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fdiv.h f24, f16, f15, dyn # perform operation
fdiv.h f24, f16, f15, rdn # perform operation
fdiv.h f24, f16, f15, rmm # perform operation
fdiv.h f24, f16, f15, rne # perform operation
fdiv.h f24, f16, f15, rtz # perform operation
fdiv.h f24, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f16, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f3, f2, f16, dyn # perform operation
fdiv.h f3, f2, f16, rdn # perform operation
fdiv.h f3, f2, f16, rmm # perform operation
fdiv.h f3, f2, f16, rne # perform operation
fdiv.h f3, f2, f16, rtz # perform operation
fdiv.h f3, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fdiv.h f9, f26, f13, dyn # perform operation
fdiv.h f9, f26, f13, rdn # perform operation
fdiv.h f9, f26, f13, rmm # perform operation
fdiv.h f9, f26, f13, rne # perform operation
fdiv.h f9, f26, f13, rtz # perform operation
fdiv.h f9, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fdiv.h f9, f22, f15, dyn # perform operation
fdiv.h f9, f22, f15, rdn # perform operation
fdiv.h f9, f22, f15, rmm # perform operation
fdiv.h f9, f22, f15, rne # perform operation
fdiv.h f9, f22, f15, rtz # perform operation
fdiv.h f9, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fdiv.h f29, f10, f25, dyn # perform operation
fdiv.h f29, f10, f25, rdn # perform operation
fdiv.h f29, f10, f25, rmm # perform operation
fdiv.h f29, f10, f25, rne # perform operation
fdiv.h f29, f10, f25, rtz # perform operation
fdiv.h f29, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fdiv.h f22, f10, f29, dyn # perform operation
fdiv.h f22, f10, f29, rdn # perform operation
fdiv.h f22, f10, f29, rmm # perform operation
fdiv.h f22, f10, f29, rne # perform operation
fdiv.h f22, f10, f29, rtz # perform operation
fdiv.h f22, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fdiv.h f28, f15, f2, dyn # perform operation
fdiv.h f28, f15, f2, rdn # perform operation
fdiv.h f28, f15, f2, rmm # perform operation
fdiv.h f28, f15, f2, rne # perform operation
fdiv.h f28, f15, f2, rtz # perform operation
fdiv.h f28, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fdiv.h f21, f12, f10, dyn # perform operation
fdiv.h f21, f12, f10, rdn # perform operation
fdiv.h f21, f12, f10, rmm # perform operation
fdiv.h f21, f12, f10, rne # perform operation
fdiv.h f21, f12, f10, rtz # perform operation
fdiv.h f21, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fdiv.h f13, f21, f9, dyn # perform operation
fdiv.h f13, f21, f9, rdn # perform operation
fdiv.h f13, f21, f9, rmm # perform operation
fdiv.h f13, f21, f9, rne # perform operation
fdiv.h f13, f21, f9, rtz # perform operation
fdiv.h f13, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fdiv.h f5, f10, f20, dyn # perform operation
fdiv.h f5, f10, f20, rdn # perform operation
fdiv.h f5, f10, f20, rmm # perform operation
fdiv.h f5, f10, f20, rne # perform operation
fdiv.h f5, f10, f20, rtz # perform operation
fdiv.h f5, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
fdiv.h f29, f5, f17, dyn # perform operation
fdiv.h f29, f5, f17, rdn # perform operation
fdiv.h f29, f5, f17, rmm # perform operation
fdiv.h f29, f5, f17, rne # perform operation
fdiv.h f29, f5, f17, rtz # perform operation
fdiv.h f29, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fdiv.h f21, f20, f7, dyn # perform operation
fdiv.h f21, f20, f7, rdn # perform operation
fdiv.h f21, f20, f7, rmm # perform operation
fdiv.h f21, f20, f7, rne # perform operation
fdiv.h f21, f20, f7, rtz # perform operation
fdiv.h f21, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fdiv.h f11, f30, f18, dyn # perform operation
fdiv.h f11, f30, f18, rdn # perform operation
fdiv.h f11, f30, f18, rmm # perform operation
fdiv.h f11, f30, f18, rne # perform operation
fdiv.h f11, f30, f18, rtz # perform operation
fdiv.h f11, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.h f24, f22, f28, dyn # perform operation
fdiv.h f24, f22, f28, rdn # perform operation
fdiv.h f24, f22, f28, rmm # perform operation
fdiv.h f24, f22, f28, rne # perform operation
fdiv.h f24, f22, f28, rtz # perform operation
fdiv.h f24, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f30, f19, f10, dyn # perform operation
fdiv.h f30, f19, f10, rdn # perform operation
fdiv.h f30, f19, f10, rmm # perform operation
fdiv.h f30, f19, f10, rne # perform operation
fdiv.h f30, f19, f10, rtz # perform operation
fdiv.h f30, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fdiv.h f26, f7, f25, dyn # perform operation
fdiv.h f26, f7, f25, rdn # perform operation
fdiv.h f26, f7, f25, rmm # perform operation
fdiv.h f26, f7, f25, rne # perform operation
fdiv.h f26, f7, f25, rtz # perform operation
fdiv.h f26, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fdiv.h f16, f29, f9, dyn # perform operation
fdiv.h f16, f29, f9, rdn # perform operation
fdiv.h f16, f29, f9, rmm # perform operation
fdiv.h f16, f29, f9, rne # perform operation
fdiv.h f16, f29, f9, rtz # perform operation
fdiv.h f16, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fdiv.h f24, f27, f14, dyn # perform operation
fdiv.h f24, f27, f14, rdn # perform operation
fdiv.h f24, f27, f14, rmm # perform operation
fdiv.h f24, f27, f14, rne # perform operation
fdiv.h f24, f27, f14, rtz # perform operation
fdiv.h f24, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f12, f14, f8, dyn # perform operation
fdiv.h f12, f14, f8, rdn # perform operation
fdiv.h f12, f14, f8, rmm # perform operation
fdiv.h f12, f14, f8, rne # perform operation
fdiv.h f12, f14, f8, rtz # perform operation
fdiv.h f12, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fdiv.h f22, f1, f30, dyn # perform operation
fdiv.h f22, f1, f30, rdn # perform operation
fdiv.h f22, f1, f30, rmm # perform operation
fdiv.h f22, f1, f30, rne # perform operation
fdiv.h f22, f1, f30, rtz # perform operation
fdiv.h f22, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f5, f8, f17, dyn # perform operation
fdiv.h f5, f8, f17, rdn # perform operation
fdiv.h f5, f8, f17, rmm # perform operation
fdiv.h f5, f8, f17, rne # perform operation
fdiv.h f5, f8, f17, rtz # perform operation
fdiv.h f5, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fdiv.h f1, f24, f14, dyn # perform operation
fdiv.h f1, f24, f14, rdn # perform operation
fdiv.h f1, f24, f14, rmm # perform operation
fdiv.h f1, f24, f14, rne # perform operation
fdiv.h f1, f24, f14, rtz # perform operation
fdiv.h f1, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fdiv.h f3, f7, f15, dyn # perform operation
fdiv.h f3, f7, f15, rdn # perform operation
fdiv.h f3, f7, f15, rmm # perform operation
fdiv.h f3, f7, f15, rne # perform operation
fdiv.h f3, f7, f15, rtz # perform operation
fdiv.h f3, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fdiv.h f9, f22, f24, dyn # perform operation
fdiv.h f9, f22, f24, rdn # perform operation
fdiv.h f9, f22, f24, rmm # perform operation
fdiv.h f9, f22, f24, rne # perform operation
fdiv.h f9, f22, f24, rtz # perform operation
fdiv.h f9, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f9, f3, f16, dyn # perform operation
fdiv.h f9, f3, f16, rdn # perform operation
fdiv.h f9, f3, f16, rmm # perform operation
fdiv.h f9, f3, f16, rne # perform operation
fdiv.h f9, f3, f16, rtz # perform operation
fdiv.h f9, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fdiv.h f5, f24, f21, dyn # perform operation
fdiv.h f5, f24, f21, rdn # perform operation
fdiv.h f5, f24, f21, rmm # perform operation
fdiv.h f5, f24, f21, rne # perform operation
fdiv.h f5, f24, f21, rtz # perform operation
fdiv.h f5, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fdiv.h f31, f3, f20, dyn # perform operation
fdiv.h f31, f3, f20, rdn # perform operation
fdiv.h f31, f3, f20, rmm # perform operation
fdiv.h f31, f3, f20, rne # perform operation
fdiv.h f31, f3, f20, rtz # perform operation
fdiv.h f31, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fdiv.h f30, f15, f18, dyn # perform operation
fdiv.h f30, f15, f18, rdn # perform operation
fdiv.h f30, f15, f18, rmm # perform operation
fdiv.h f30, f15, f18, rne # perform operation
fdiv.h f30, f15, f18, rtz # perform operation
fdiv.h f30, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fdiv.h f7, f19, f2, dyn # perform operation
fdiv.h f7, f19, f2, rdn # perform operation
fdiv.h f7, f19, f2, rmm # perform operation
fdiv.h f7, f19, f2, rne # perform operation
fdiv.h f7, f19, f2, rtz # perform operation
fdiv.h f7, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.h f3, f28, f19, dyn # perform operation
fdiv.h f3, f28, f19, rdn # perform operation
fdiv.h f3, f28, f19, rmm # perform operation
fdiv.h f3, f28, f19, rne # perform operation
fdiv.h f3, f28, f19, rtz # perform operation
fdiv.h f3, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fdiv.h f1, f24, f6, dyn # perform operation
fdiv.h f1, f24, f6, rdn # perform operation
fdiv.h f1, f24, f6, rmm # perform operation
fdiv.h f1, f24, f6, rne # perform operation
fdiv.h f1, f24, f6, rtz # perform operation
fdiv.h f1, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fdiv.h f27, f17, f28, dyn # perform operation
fdiv.h f27, f17, f28, rdn # perform operation
fdiv.h f27, f17, f28, rmm # perform operation
fdiv.h f27, f17, f28, rne # perform operation
fdiv.h f27, f17, f28, rtz # perform operation
fdiv.h f27, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fdiv.h f2, f29, f19, dyn # perform operation
fdiv.h f2, f29, f19, rdn # perform operation
fdiv.h f2, f29, f19, rmm # perform operation
fdiv.h f2, f29, f19, rne # perform operation
fdiv.h f2, f29, f19, rtz # perform operation
fdiv.h f2, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fdiv.h f29, f21, f5, dyn # perform operation
fdiv.h f29, f21, f5, rdn # perform operation
fdiv.h f29, f21, f5, rmm # perform operation
fdiv.h f29, f21, f5, rne # perform operation
fdiv.h f29, f21, f5, rtz # perform operation
fdiv.h f29, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fdiv.h f28, f14, f13, dyn # perform operation
fdiv.h f28, f14, f13, rdn # perform operation
fdiv.h f28, f14, f13, rmm # perform operation
fdiv.h f28, f14, f13, rne # perform operation
fdiv.h f28, f14, f13, rtz # perform operation
fdiv.h f28, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fdiv.h f21, f10, f15, dyn # perform operation
fdiv.h f21, f10, f15, rdn # perform operation
fdiv.h f21, f10, f15, rmm # perform operation
fdiv.h f21, f10, f15, rne # perform operation
fdiv.h f21, f10, f15, rtz # perform operation
fdiv.h f21, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fdiv.h f9, f1, f20, dyn # perform operation
fdiv.h f9, f1, f20, rdn # perform operation
fdiv.h f9, f1, f20, rmm # perform operation
fdiv.h f9, f1, f20, rne # perform operation
fdiv.h f9, f1, f20, rtz # perform operation
fdiv.h f9, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fdiv.h f18, f30, f17, dyn # perform operation
fdiv.h f18, f30, f17, rdn # perform operation
fdiv.h f18, f30, f17, rmm # perform operation
fdiv.h f18, f30, f17, rne # perform operation
fdiv.h f18, f30, f17, rtz # perform operation
fdiv.h f18, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fdiv.h f27, f5, f7, dyn # perform operation
fdiv.h f27, f5, f7, rdn # perform operation
fdiv.h f27, f5, f7, rmm # perform operation
fdiv.h f27, f5, f7, rne # perform operation
fdiv.h f27, f5, f7, rtz # perform operation
fdiv.h f27, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fdiv.h f13, f10, f24, dyn # perform operation
fdiv.h f13, f10, f24, rdn # perform operation
fdiv.h f13, f10, f24, rmm # perform operation
fdiv.h f13, f10, f24, rne # perform operation
fdiv.h f13, f10, f24, rtz # perform operation
fdiv.h f13, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fdiv.h f28, f13, f10, dyn # perform operation
fdiv.h f28, f13, f10, rdn # perform operation
fdiv.h f28, f13, f10, rmm # perform operation
fdiv.h f28, f13, f10, rne # perform operation
fdiv.h f28, f13, f10, rtz # perform operation
fdiv.h f28, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.h f24, f6, f12, dyn # perform operation
fdiv.h f24, f6, f12, rdn # perform operation
fdiv.h f24, f6, f12, rmm # perform operation
fdiv.h f24, f6, f12, rne # perform operation
fdiv.h f24, f6, f12, rtz # perform operation
fdiv.h f24, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fdiv.h f9, f8, f13, dyn # perform operation
fdiv.h f9, f8, f13, rdn # perform operation
fdiv.h f9, f8, f13, rmm # perform operation
fdiv.h f9, f8, f13, rne # perform operation
fdiv.h f9, f8, f13, rtz # perform operation
fdiv.h f9, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f8, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fdiv.h f11, f29, f28, dyn # perform operation
fdiv.h f11, f29, f28, rdn # perform operation
fdiv.h f11, f29, f28, rmm # perform operation
fdiv.h f11, f29, f28, rne # perform operation
fdiv.h f11, f29, f28, rtz # perform operation
fdiv.h f11, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fdiv.h f5, f9, f26, dyn # perform operation
fdiv.h f5, f9, f26, rdn # perform operation
fdiv.h f5, f9, f26, rmm # perform operation
fdiv.h f5, f9, f26, rne # perform operation
fdiv.h f5, f9, f26, rtz # perform operation
fdiv.h f5, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fdiv.h f14, f13, f16, dyn # perform operation
fdiv.h f14, f13, f16, rdn # perform operation
fdiv.h f14, f13, f16, rmm # perform operation
fdiv.h f14, f13, f16, rne # perform operation
fdiv.h f14, f13, f16, rtz # perform operation
fdiv.h f14, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fdiv.h f28, f16, f1, dyn # perform operation
fdiv.h f28, f16, f1, rdn # perform operation
fdiv.h f28, f16, f1, rmm # perform operation
fdiv.h f28, f16, f1, rne # perform operation
fdiv.h f28, f16, f1, rtz # perform operation
fdiv.h f28, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fdiv.h f8, f21, f9, dyn # perform operation
fdiv.h f8, f21, f9, rdn # perform operation
fdiv.h f8, f21, f9, rmm # perform operation
fdiv.h f8, f21, f9, rne # perform operation
fdiv.h f8, f21, f9, rtz # perform operation
fdiv.h f8, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fdiv.h f25, f6, f9, dyn # perform operation
fdiv.h f25, f6, f9, rdn # perform operation
fdiv.h f25, f6, f9, rmm # perform operation
fdiv.h f25, f6, f9, rne # perform operation
fdiv.h f25, f6, f9, rtz # perform operation
fdiv.h f25, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fdiv.h f22, f14, f1, dyn # perform operation
fdiv.h f22, f14, f1, rdn # perform operation
fdiv.h f22, f14, f1, rmm # perform operation
fdiv.h f22, f14, f1, rne # perform operation
fdiv.h f22, f14, f1, rtz # perform operation
fdiv.h f22, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fdiv.h f2, f19, f26, dyn # perform operation
fdiv.h f2, f19, f26, rdn # perform operation
fdiv.h f2, f19, f26, rmm # perform operation
fdiv.h f2, f19, f26, rne # perform operation
fdiv.h f2, f19, f26, rtz # perform operation
fdiv.h f2, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fdiv.h f28, f25, f20, dyn # perform operation
fdiv.h f28, f25, f20, rdn # perform operation
fdiv.h f28, f25, f20, rmm # perform operation
fdiv.h f28, f25, f20, rne # perform operation
fdiv.h f28, f25, f20, rtz # perform operation
fdiv.h f28, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fdiv.h f7, f3, f27, dyn # perform operation
fdiv.h f7, f3, f27, rdn # perform operation
fdiv.h f7, f3, f27, rmm # perform operation
fdiv.h f7, f3, f27, rne # perform operation
fdiv.h f7, f3, f27, rtz # perform operation
fdiv.h f7, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fdiv.h f15, f6, f27, dyn # perform operation
fdiv.h f15, f6, f27, rdn # perform operation
fdiv.h f15, f6, f27, rmm # perform operation
fdiv.h f15, f6, f27, rne # perform operation
fdiv.h f15, f6, f27, rtz # perform operation
fdiv.h f15, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fdiv.h f25, f9, f1, dyn # perform operation
fdiv.h f25, f9, f1, rdn # perform operation
fdiv.h f25, f9, f1, rmm # perform operation
fdiv.h f25, f9, f1, rne # perform operation
fdiv.h f25, f9, f1, rtz # perform operation
fdiv.h f25, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fdiv.h f13, f29, f1, dyn # perform operation
fdiv.h f13, f29, f1, rdn # perform operation
fdiv.h f13, f29, f1, rmm # perform operation
fdiv.h f13, f29, f1, rne # perform operation
fdiv.h f13, f29, f1, rtz # perform operation
fdiv.h f13, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fdiv.h f31, f23, f13, dyn # perform operation
fdiv.h f31, f23, f13, rdn # perform operation
fdiv.h f31, f23, f13, rmm # perform operation
fdiv.h f31, f23, f13, rne # perform operation
fdiv.h f31, f23, f13, rtz # perform operation
fdiv.h f31, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.h f3, f28, f6, dyn # perform operation
fdiv.h f3, f28, f6, rdn # perform operation
fdiv.h f3, f28, f6, rmm # perform operation
fdiv.h f3, f28, f6, rne # perform operation
fdiv.h f3, f28, f6, rtz # perform operation
fdiv.h f3, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fdiv.h f22, f3, f23, dyn # perform operation
fdiv.h f22, f3, f23, rdn # perform operation
fdiv.h f22, f3, f23, rmm # perform operation
fdiv.h f22, f3, f23, rne # perform operation
fdiv.h f22, f3, f23, rtz # perform operation
fdiv.h f22, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fdiv.h f26, f3, f31, dyn # perform operation
fdiv.h f26, f3, f31, rdn # perform operation
fdiv.h f26, f3, f31, rmm # perform operation
fdiv.h f26, f3, f31, rne # perform operation
fdiv.h f26, f3, f31, rtz # perform operation
fdiv.h f26, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fdiv.h f7, f24, f27, dyn # perform operation
fdiv.h f7, f24, f27, rdn # perform operation
fdiv.h f7, f24, f27, rmm # perform operation
fdiv.h f7, f24, f27, rne # perform operation
fdiv.h f7, f24, f27, rtz # perform operation
fdiv.h f7, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fdiv.h f10, f7, f1, dyn # perform operation
fdiv.h f10, f7, f1, rdn # perform operation
fdiv.h f10, f7, f1, rmm # perform operation
fdiv.h f10, f7, f1, rne # perform operation
fdiv.h f10, f7, f1, rtz # perform operation
fdiv.h f10, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f18, f2, f8, dyn # perform operation
fdiv.h f18, f2, f8, rdn # perform operation
fdiv.h f18, f2, f8, rmm # perform operation
fdiv.h f18, f2, f8, rne # perform operation
fdiv.h f18, f2, f8, rtz # perform operation
fdiv.h f18, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fdiv.h f29, f28, f23, dyn # perform operation
fdiv.h f29, f28, f23, rdn # perform operation
fdiv.h f29, f28, f23, rmm # perform operation
fdiv.h f29, f28, f23, rne # perform operation
fdiv.h f29, f28, f23, rtz # perform operation
fdiv.h f29, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fdiv.h f27, f28, f12, dyn # perform operation
fdiv.h f27, f28, f12, rdn # perform operation
fdiv.h f27, f28, f12, rmm # perform operation
fdiv.h f27, f28, f12, rne # perform operation
fdiv.h f27, f28, f12, rtz # perform operation
fdiv.h f27, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fdiv.h f11, f31, f8, dyn # perform operation
fdiv.h f11, f31, f8, rdn # perform operation
fdiv.h f11, f31, f8, rmm # perform operation
fdiv.h f11, f31, f8, rne # perform operation
fdiv.h f11, f31, f8, rtz # perform operation
fdiv.h f11, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fdiv.h f20, f29, f3, dyn # perform operation
fdiv.h f20, f29, f3, rdn # perform operation
fdiv.h f20, f29, f3, rmm # perform operation
fdiv.h f20, f29, f3, rne # perform operation
fdiv.h f20, f29, f3, rtz # perform operation
fdiv.h f20, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fdiv.h f14, f18, f8, dyn # perform operation
fdiv.h f14, f18, f8, rdn # perform operation
fdiv.h f14, f18, f8, rmm # perform operation
fdiv.h f14, f18, f8, rne # perform operation
fdiv.h f14, f18, f8, rtz # perform operation
fdiv.h f14, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fdiv.h f15, f7, f31, dyn # perform operation
fdiv.h f15, f7, f31, rdn # perform operation
fdiv.h f15, f7, f31, rmm # perform operation
fdiv.h f15, f7, f31, rne # perform operation
fdiv.h f15, f7, f31, rtz # perform operation
fdiv.h f15, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.h f17, f22, f2, dyn # perform operation
fdiv.h f17, f22, f2, rdn # perform operation
fdiv.h f17, f22, f2, rmm # perform operation
fdiv.h f17, f22, f2, rne # perform operation
fdiv.h f17, f22, f2, rtz # perform operation
fdiv.h f17, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fdiv.h f9, f24, f30, dyn # perform operation
fdiv.h f9, f24, f30, rdn # perform operation
fdiv.h f9, f24, f30, rmm # perform operation
fdiv.h f9, f24, f30, rne # perform operation
fdiv.h f9, f24, f30, rtz # perform operation
fdiv.h f9, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fdiv.h f31, f28, f7, dyn # perform operation
fdiv.h f31, f28, f7, rdn # perform operation
fdiv.h f31, f28, f7, rmm # perform operation
fdiv.h f31, f28, f7, rne # perform operation
fdiv.h f31, f28, f7, rtz # perform operation
fdiv.h f31, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fdiv.h f18, f2, f3, dyn # perform operation
fdiv.h f18, f2, f3, rdn # perform operation
fdiv.h f18, f2, f3, rmm # perform operation
fdiv.h f18, f2, f3, rne # perform operation
fdiv.h f18, f2, f3, rtz # perform operation
fdiv.h f18, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fdiv.h f10, f18, f1, dyn # perform operation
fdiv.h f10, f18, f1, rdn # perform operation
fdiv.h f10, f18, f1, rmm # perform operation
fdiv.h f10, f18, f1, rne # perform operation
fdiv.h f10, f18, f1, rtz # perform operation
fdiv.h f10, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fdiv.h f8, f18, f30, dyn # perform operation
fdiv.h f8, f18, f30, rdn # perform operation
fdiv.h f8, f18, f30, rmm # perform operation
fdiv.h f8, f18, f30, rne # perform operation
fdiv.h f8, f18, f30, rtz # perform operation
fdiv.h f8, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fdiv.h f12, f30, f17, dyn # perform operation
fdiv.h f12, f30, f17, rdn # perform operation
fdiv.h f12, f30, f17, rmm # perform operation
fdiv.h f12, f30, f17, rne # perform operation
fdiv.h f12, f30, f17, rtz # perform operation
fdiv.h f12, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f13, f15, f24, dyn # perform operation
fdiv.h f13, f15, f24, rdn # perform operation
fdiv.h f13, f15, f24, rmm # perform operation
fdiv.h f13, f15, f24, rne # perform operation
fdiv.h f13, f15, f24, rtz # perform operation
fdiv.h f13, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fdiv.h f16, f29, f28, dyn # perform operation
fdiv.h f16, f29, f28, rdn # perform operation
fdiv.h f16, f29, f28, rmm # perform operation
fdiv.h f16, f29, f28, rne # perform operation
fdiv.h f16, f29, f28, rtz # perform operation
fdiv.h f16, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fdiv.h f28, f16, f14, dyn # perform operation
fdiv.h f28, f16, f14, rdn # perform operation
fdiv.h f28, f16, f14, rmm # perform operation
fdiv.h f28, f16, f14, rne # perform operation
fdiv.h f28, f16, f14, rtz # perform operation
fdiv.h f28, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fdiv.h f6, f28, f26, dyn # perform operation
fdiv.h f6, f28, f26, rdn # perform operation
fdiv.h f6, f28, f26, rmm # perform operation
fdiv.h f6, f28, f26, rne # perform operation
fdiv.h f6, f28, f26, rtz # perform operation
fdiv.h f6, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fdiv.h f19, f8, f15, dyn # perform operation
fdiv.h f19, f8, f15, rdn # perform operation
fdiv.h f19, f8, f15, rmm # perform operation
fdiv.h f19, f8, f15, rne # perform operation
fdiv.h f19, f8, f15, rtz # perform operation
fdiv.h f19, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f3, f20, f12, dyn # perform operation
fdiv.h f3, f20, f12, rdn # perform operation
fdiv.h f3, f20, f12, rmm # perform operation
fdiv.h f3, f20, f12, rne # perform operation
fdiv.h f3, f20, f12, rtz # perform operation
fdiv.h f3, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fdiv.h f10, f8, f17, dyn # perform operation
fdiv.h f10, f8, f17, rdn # perform operation
fdiv.h f10, f8, f17, rmm # perform operation
fdiv.h f10, f8, f17, rne # perform operation
fdiv.h f10, f8, f17, rtz # perform operation
fdiv.h f10, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fdiv.h f23, f30, f22, dyn # perform operation
fdiv.h f23, f30, f22, rdn # perform operation
fdiv.h f23, f30, f22, rmm # perform operation
fdiv.h f23, f30, f22, rne # perform operation
fdiv.h f23, f30, f22, rtz # perform operation
fdiv.h f23, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fdiv.h f28, f17, f27, dyn # perform operation
fdiv.h f28, f17, f27, rdn # perform operation
fdiv.h f28, f17, f27, rmm # perform operation
fdiv.h f28, f17, f27, rne # perform operation
fdiv.h f28, f17, f27, rtz # perform operation
fdiv.h f28, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f13, f9, f16, dyn # perform operation
fdiv.h f13, f9, f16, rdn # perform operation
fdiv.h f13, f9, f16, rmm # perform operation
fdiv.h f13, f9, f16, rne # perform operation
fdiv.h f13, f9, f16, rtz # perform operation
fdiv.h f13, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fdiv.h f12, f22, f5, dyn # perform operation
fdiv.h f12, f22, f5, rdn # perform operation
fdiv.h f12, f22, f5, rmm # perform operation
fdiv.h f12, f22, f5, rne # perform operation
fdiv.h f12, f22, f5, rtz # perform operation
fdiv.h f12, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fdiv.h f9, f3, f29, dyn # perform operation
fdiv.h f9, f3, f29, rdn # perform operation
fdiv.h f9, f3, f29, rmm # perform operation
fdiv.h f9, f3, f29, rne # perform operation
fdiv.h f9, f3, f29, rtz # perform operation
fdiv.h f9, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fdiv.h f19, f15, f20, dyn # perform operation
fdiv.h f19, f15, f20, rdn # perform operation
fdiv.h f19, f15, f20, rmm # perform operation
fdiv.h f19, f15, f20, rne # perform operation
fdiv.h f19, f15, f20, rtz # perform operation
fdiv.h f19, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fdiv.h f23, f17, f11, dyn # perform operation
fdiv.h f23, f17, f11, rdn # perform operation
fdiv.h f23, f17, f11, rmm # perform operation
fdiv.h f23, f17, f11, rne # perform operation
fdiv.h f23, f17, f11, rtz # perform operation
fdiv.h f23, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fdiv.h f11, f3, f26, dyn # perform operation
fdiv.h f11, f3, f26, rdn # perform operation
fdiv.h f11, f3, f26, rmm # perform operation
fdiv.h f11, f3, f26, rne # perform operation
fdiv.h f11, f3, f26, rtz # perform operation
fdiv.h f11, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fdiv.h f14, f16, f7, dyn # perform operation
fdiv.h f14, f16, f7, rdn # perform operation
fdiv.h f14, f16, f7, rmm # perform operation
fdiv.h f14, f16, f7, rne # perform operation
fdiv.h f14, f16, f7, rtz # perform operation
fdiv.h f14, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fdiv.h f17, f12, f2, dyn # perform operation
fdiv.h f17, f12, f2, rdn # perform operation
fdiv.h f17, f12, f2, rmm # perform operation
fdiv.h f17, f12, f2, rne # perform operation
fdiv.h f17, f12, f2, rtz # perform operation
fdiv.h f17, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f12, f7, f3, dyn # perform operation
fdiv.h f12, f7, f3, rdn # perform operation
fdiv.h f12, f7, f3, rmm # perform operation
fdiv.h f12, f7, f3, rne # perform operation
fdiv.h f12, f7, f3, rtz # perform operation
fdiv.h f12, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fdiv.h f10, f12, f29, dyn # perform operation
fdiv.h f10, f12, f29, rdn # perform operation
fdiv.h f10, f12, f29, rmm # perform operation
fdiv.h f10, f12, f29, rne # perform operation
fdiv.h f10, f12, f29, rtz # perform operation
fdiv.h f10, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fdiv.h f14, f18, f20, dyn # perform operation
fdiv.h f14, f18, f20, rdn # perform operation
fdiv.h f14, f18, f20, rmm # perform operation
fdiv.h f14, f18, f20, rne # perform operation
fdiv.h f14, f18, f20, rtz # perform operation
fdiv.h f14, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fdiv.h f15, f28, f16, dyn # perform operation
fdiv.h f15, f28, f16, rdn # perform operation
fdiv.h f15, f28, f16, rmm # perform operation
fdiv.h f15, f28, f16, rne # perform operation
fdiv.h f15, f28, f16, rtz # perform operation
fdiv.h f15, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fdiv.h f12, f16, f27, dyn # perform operation
fdiv.h f12, f16, f27, rdn # perform operation
fdiv.h f12, f16, f27, rmm # perform operation
fdiv.h f12, f16, f27, rne # perform operation
fdiv.h f12, f16, f27, rtz # perform operation
fdiv.h f12, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fdiv.h f9, f21, f27, dyn # perform operation
fdiv.h f9, f21, f27, rdn # perform operation
fdiv.h f9, f21, f27, rmm # perform operation
fdiv.h f9, f21, f27, rne # perform operation
fdiv.h f9, f21, f27, rtz # perform operation
fdiv.h f9, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f5, f28, f26, dyn # perform operation
fdiv.h f5, f28, f26, rdn # perform operation
fdiv.h f5, f28, f26, rmm # perform operation
fdiv.h f5, f28, f26, rne # perform operation
fdiv.h f5, f28, f26, rtz # perform operation
fdiv.h f5, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fdiv.h f19, f25, f22, dyn # perform operation
fdiv.h f19, f25, f22, rdn # perform operation
fdiv.h f19, f25, f22, rmm # perform operation
fdiv.h f19, f25, f22, rne # perform operation
fdiv.h f19, f25, f22, rtz # perform operation
fdiv.h f19, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fdiv.h f30, f7, f28, dyn # perform operation
fdiv.h f30, f7, f28, rdn # perform operation
fdiv.h f30, f7, f28, rmm # perform operation
fdiv.h f30, f7, f28, rne # perform operation
fdiv.h f30, f7, f28, rtz # perform operation
fdiv.h f30, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f25, f16, f2, dyn # perform operation
fdiv.h f25, f16, f2, rdn # perform operation
fdiv.h f25, f16, f2, rmm # perform operation
fdiv.h f25, f16, f2, rne # perform operation
fdiv.h f25, f16, f2, rtz # perform operation
fdiv.h f25, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fdiv.h f8, f20, f24, dyn # perform operation
fdiv.h f8, f20, f24, rdn # perform operation
fdiv.h f8, f20, f24, rmm # perform operation
fdiv.h f8, f20, f24, rne # perform operation
fdiv.h f8, f20, f24, rtz # perform operation
fdiv.h f8, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f1, f13, f24, dyn # perform operation
fdiv.h f1, f13, f24, rdn # perform operation
fdiv.h f1, f13, f24, rmm # perform operation
fdiv.h f1, f13, f24, rne # perform operation
fdiv.h f1, f13, f24, rtz # perform operation
fdiv.h f1, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fdiv.h f5, f7, f2, dyn # perform operation
fdiv.h f5, f7, f2, rdn # perform operation
fdiv.h f5, f7, f2, rmm # perform operation
fdiv.h f5, f7, f2, rne # perform operation
fdiv.h f5, f7, f2, rtz # perform operation
fdiv.h f5, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fdiv.h f1, f11, f6, dyn # perform operation
fdiv.h f1, f11, f6, rdn # perform operation
fdiv.h f1, f11, f6, rmm # perform operation
fdiv.h f1, f11, f6, rne # perform operation
fdiv.h f1, f11, f6, rtz # perform operation
fdiv.h f1, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fdiv.h f8, f27, f12, dyn # perform operation
fdiv.h f8, f27, f12, rdn # perform operation
fdiv.h f8, f27, f12, rmm # perform operation
fdiv.h f8, f27, f12, rne # perform operation
fdiv.h f8, f27, f12, rtz # perform operation
fdiv.h f8, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fdiv.h f3, f17, f11, dyn # perform operation
fdiv.h f3, f17, f11, rdn # perform operation
fdiv.h f3, f17, f11, rmm # perform operation
fdiv.h f3, f17, f11, rne # perform operation
fdiv.h f3, f17, f11, rtz # perform operation
fdiv.h f3, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f31, f11, f23, dyn # perform operation
fdiv.h f31, f11, f23, rdn # perform operation
fdiv.h f31, f11, f23, rmm # perform operation
fdiv.h f31, f11, f23, rne # perform operation
fdiv.h f31, f11, f23, rtz # perform operation
fdiv.h f31, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fdiv.h f26, f23, f18, dyn # perform operation
fdiv.h f26, f23, f18, rdn # perform operation
fdiv.h f26, f23, f18, rmm # perform operation
fdiv.h f26, f23, f18, rne # perform operation
fdiv.h f26, f23, f18, rtz # perform operation
fdiv.h f26, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fdiv.h f2, f21, f7, dyn # perform operation
fdiv.h f2, f21, f7, rdn # perform operation
fdiv.h f2, f21, f7, rmm # perform operation
fdiv.h f2, f21, f7, rne # perform operation
fdiv.h f2, f21, f7, rtz # perform operation
fdiv.h f2, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fdiv.h f18, f11, f1, dyn # perform operation
fdiv.h f18, f11, f1, rdn # perform operation
fdiv.h f18, f11, f1, rmm # perform operation
fdiv.h f18, f11, f1, rne # perform operation
fdiv.h f18, f11, f1, rtz # perform operation
fdiv.h f18, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.h f12, f23, f9, dyn # perform operation
fdiv.h f12, f23, f9, rdn # perform operation
fdiv.h f12, f23, f9, rmm # perform operation
fdiv.h f12, f23, f9, rne # perform operation
fdiv.h f12, f23, f9, rtz # perform operation
fdiv.h f12, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f29, f21, f14, dyn # perform operation
fdiv.h f29, f21, f14, rdn # perform operation
fdiv.h f29, f21, f14, rmm # perform operation
fdiv.h f29, f21, f14, rne # perform operation
fdiv.h f29, f21, f14, rtz # perform operation
fdiv.h f29, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fdiv.h f30, f21, f22, dyn # perform operation
fdiv.h f30, f21, f22, rdn # perform operation
fdiv.h f30, f21, f22, rmm # perform operation
fdiv.h f30, f21, f22, rne # perform operation
fdiv.h f30, f21, f22, rtz # perform operation
fdiv.h f30, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fdiv.h f28, f31, f18, dyn # perform operation
fdiv.h f28, f31, f18, rdn # perform operation
fdiv.h f28, f31, f18, rmm # perform operation
fdiv.h f28, f31, f18, rne # perform operation
fdiv.h f28, f31, f18, rtz # perform operation
fdiv.h f28, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fdiv.h f5, f23, f25, dyn # perform operation
fdiv.h f5, f23, f25, rdn # perform operation
fdiv.h f5, f23, f25, rmm # perform operation
fdiv.h f5, f23, f25, rne # perform operation
fdiv.h f5, f23, f25, rtz # perform operation
fdiv.h f5, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fdiv.h f26, f25, f14, dyn # perform operation
fdiv.h f26, f25, f14, rdn # perform operation
fdiv.h f26, f25, f14, rmm # perform operation
fdiv.h f26, f25, f14, rne # perform operation
fdiv.h f26, f25, f14, rtz # perform operation
fdiv.h f26, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fdiv.h f31, f27, f13, dyn # perform operation
fdiv.h f31, f27, f13, rdn # perform operation
fdiv.h f31, f27, f13, rmm # perform operation
fdiv.h f31, f27, f13, rne # perform operation
fdiv.h f31, f27, f13, rtz # perform operation
fdiv.h f31, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fdiv.h f9, f11, f16, dyn # perform operation
fdiv.h f9, f11, f16, rdn # perform operation
fdiv.h f9, f11, f16, rmm # perform operation
fdiv.h f9, f11, f16, rne # perform operation
fdiv.h f9, f11, f16, rtz # perform operation
fdiv.h f9, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fdiv.h f27, f16, f29, dyn # perform operation
fdiv.h f27, f16, f29, rdn # perform operation
fdiv.h f27, f16, f29, rmm # perform operation
fdiv.h f27, f16, f29, rne # perform operation
fdiv.h f27, f16, f29, rtz # perform operation
fdiv.h f27, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fdiv.h f21, f15, f16, dyn # perform operation
fdiv.h f21, f15, f16, rdn # perform operation
fdiv.h f21, f15, f16, rmm # perform operation
fdiv.h f21, f15, f16, rne # perform operation
fdiv.h f21, f15, f16, rtz # perform operation
fdiv.h f21, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f28, f31, f17, dyn # perform operation
fdiv.h f28, f31, f17, rdn # perform operation
fdiv.h f28, f31, f17, rmm # perform operation
fdiv.h f28, f31, f17, rne # perform operation
fdiv.h f28, f31, f17, rtz # perform operation
fdiv.h f28, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f28, f21, f1, dyn # perform operation
fdiv.h f28, f21, f1, rdn # perform operation
fdiv.h f28, f21, f1, rmm # perform operation
fdiv.h f28, f21, f1, rne # perform operation
fdiv.h f28, f21, f1, rtz # perform operation
fdiv.h f28, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fdiv.h f9, f16, f11, dyn # perform operation
fdiv.h f9, f16, f11, rdn # perform operation
fdiv.h f9, f16, f11, rmm # perform operation
fdiv.h f9, f16, f11, rne # perform operation
fdiv.h f9, f16, f11, rtz # perform operation
fdiv.h f9, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fdiv.h f27, f9, f19, dyn # perform operation
fdiv.h f27, f9, f19, rdn # perform operation
fdiv.h f27, f9, f19, rmm # perform operation
fdiv.h f27, f9, f19, rne # perform operation
fdiv.h f27, f9, f19, rtz # perform operation
fdiv.h f27, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f18, f20, f5, dyn # perform operation
fdiv.h f18, f20, f5, rdn # perform operation
fdiv.h f18, f20, f5, rmm # perform operation
fdiv.h f18, f20, f5, rne # perform operation
fdiv.h f18, f20, f5, rtz # perform operation
fdiv.h f18, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fdiv.h f9, f11, f5, dyn # perform operation
fdiv.h f9, f11, f5, rdn # perform operation
fdiv.h f9, f11, f5, rmm # perform operation
fdiv.h f9, f11, f5, rne # perform operation
fdiv.h f9, f11, f5, rtz # perform operation
fdiv.h f9, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fdiv.h f8, f15, f18, dyn # perform operation
fdiv.h f8, f15, f18, rdn # perform operation
fdiv.h f8, f15, f18, rmm # perform operation
fdiv.h f8, f15, f18, rne # perform operation
fdiv.h f8, f15, f18, rtz # perform operation
fdiv.h f8, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fdiv.h f19, f16, f22, dyn # perform operation
fdiv.h f19, f16, f22, rdn # perform operation
fdiv.h f19, f16, f22, rmm # perform operation
fdiv.h f19, f16, f22, rne # perform operation
fdiv.h f19, f16, f22, rtz # perform operation
fdiv.h f19, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fdiv.h f18, f3, f9, dyn # perform operation
fdiv.h f18, f3, f9, rdn # perform operation
fdiv.h f18, f3, f9, rmm # perform operation
fdiv.h f18, f3, f9, rne # perform operation
fdiv.h f18, f3, f9, rtz # perform operation
fdiv.h f18, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fdiv.h f14, f22, f31, dyn # perform operation
fdiv.h f14, f22, f31, rdn # perform operation
fdiv.h f14, f22, f31, rmm # perform operation
fdiv.h f14, f22, f31, rne # perform operation
fdiv.h f14, f22, f31, rtz # perform operation
fdiv.h f14, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fdiv.h f2, f21, f14, dyn # perform operation
fdiv.h f2, f21, f14, rdn # perform operation
fdiv.h f2, f21, f14, rmm # perform operation
fdiv.h f2, f21, f14, rne # perform operation
fdiv.h f2, f21, f14, rtz # perform operation
fdiv.h f2, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fdiv.h f31, f17, f1, dyn # perform operation
fdiv.h f31, f17, f1, rdn # perform operation
fdiv.h f31, f17, f1, rmm # perform operation
fdiv.h f31, f17, f1, rne # perform operation
fdiv.h f31, f17, f1, rtz # perform operation
fdiv.h f31, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fdiv.h f17, f1, f25, dyn # perform operation
fdiv.h f17, f1, f25, rdn # perform operation
fdiv.h f17, f1, f25, rmm # perform operation
fdiv.h f17, f1, f25, rne # perform operation
fdiv.h f17, f1, f25, rtz # perform operation
fdiv.h f17, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fdiv.h f29, f6, f31, dyn # perform operation
fdiv.h f29, f6, f31, rdn # perform operation
fdiv.h f29, f6, f31, rmm # perform operation
fdiv.h f29, f6, f31, rne # perform operation
fdiv.h f29, f6, f31, rtz # perform operation
fdiv.h f29, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fdiv.h f28, f21, f31, dyn # perform operation
fdiv.h f28, f21, f31, rdn # perform operation
fdiv.h f28, f21, f31, rmm # perform operation
fdiv.h f28, f21, f31, rne # perform operation
fdiv.h f28, f21, f31, rtz # perform operation
fdiv.h f28, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fdiv.h f12, f5, f14, dyn # perform operation
fdiv.h f12, f5, f14, rdn # perform operation
fdiv.h f12, f5, f14, rmm # perform operation
fdiv.h f12, f5, f14, rne # perform operation
fdiv.h f12, f5, f14, rtz # perform operation
fdiv.h f12, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fdiv.h f6, f23, f2, dyn # perform operation
fdiv.h f6, f23, f2, rdn # perform operation
fdiv.h f6, f23, f2, rmm # perform operation
fdiv.h f6, f23, f2, rne # perform operation
fdiv.h f6, f23, f2, rtz # perform operation
fdiv.h f6, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fdiv.h f18, f21, f14, dyn # perform operation
fdiv.h f18, f21, f14, rdn # perform operation
fdiv.h f18, f21, f14, rmm # perform operation
fdiv.h f18, f21, f14, rne # perform operation
fdiv.h f18, f21, f14, rtz # perform operation
fdiv.h f18, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f5, f18, f16, dyn # perform operation
fdiv.h f5, f18, f16, rdn # perform operation
fdiv.h f5, f18, f16, rmm # perform operation
fdiv.h f5, f18, f16, rne # perform operation
fdiv.h f5, f18, f16, rtz # perform operation
fdiv.h f5, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fdiv.h f28, f29, f15, dyn # perform operation
fdiv.h f28, f29, f15, rdn # perform operation
fdiv.h f28, f29, f15, rmm # perform operation
fdiv.h f28, f29, f15, rne # perform operation
fdiv.h f28, f29, f15, rtz # perform operation
fdiv.h f28, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f30, f9, f20, dyn # perform operation
fdiv.h f30, f9, f20, rdn # perform operation
fdiv.h f30, f9, f20, rmm # perform operation
fdiv.h f30, f9, f20, rne # perform operation
fdiv.h f30, f9, f20, rtz # perform operation
fdiv.h f30, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f9, f20 # perform operation


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
fdiv.h f16, f6, f8, dyn # perform operation
fdiv.h f16, f6, f8, rdn # perform operation
fdiv.h f16, f6, f8, rmm # perform operation
fdiv.h f16, f6, f8, rne # perform operation
fdiv.h f16, f6, f8, rtz # perform operation
fdiv.h f16, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fdiv.h f6, f15, f17, dyn # perform operation
fdiv.h f6, f15, f17, rdn # perform operation
fdiv.h f6, f15, f17, rmm # perform operation
fdiv.h f6, f15, f17, rne # perform operation
fdiv.h f6, f15, f17, rtz # perform operation
fdiv.h f6, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fdiv.h f22, f11, f28, dyn # perform operation
fdiv.h f22, f11, f28, rdn # perform operation
fdiv.h f22, f11, f28, rmm # perform operation
fdiv.h f22, f11, f28, rne # perform operation
fdiv.h f22, f11, f28, rtz # perform operation
fdiv.h f22, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fdiv.h f15, f2, f16, dyn # perform operation
fdiv.h f15, f2, f16, rdn # perform operation
fdiv.h f15, f2, f16, rmm # perform operation
fdiv.h f15, f2, f16, rne # perform operation
fdiv.h f15, f2, f16, rtz # perform operation
fdiv.h f15, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fdiv.h f27, f28, f15, dyn # perform operation
fdiv.h f27, f28, f15, rdn # perform operation
fdiv.h f27, f28, f15, rmm # perform operation
fdiv.h f27, f28, f15, rne # perform operation
fdiv.h f27, f28, f15, rtz # perform operation
fdiv.h f27, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fdiv.h f5, f17, f16, dyn # perform operation
fdiv.h f5, f17, f16, rdn # perform operation
fdiv.h f5, f17, f16, rmm # perform operation
fdiv.h f5, f17, f16, rne # perform operation
fdiv.h f5, f17, f16, rtz # perform operation
fdiv.h f5, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fdiv.h f24, f8, f16, dyn # perform operation
fdiv.h f24, f8, f16, rdn # perform operation
fdiv.h f24, f8, f16, rmm # perform operation
fdiv.h f24, f8, f16, rne # perform operation
fdiv.h f24, f8, f16, rtz # perform operation
fdiv.h f24, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fdiv.h f2, f23, f20, dyn # perform operation
fdiv.h f2, f23, f20, rdn # perform operation
fdiv.h f2, f23, f20, rmm # perform operation
fdiv.h f2, f23, f20, rne # perform operation
fdiv.h f2, f23, f20, rtz # perform operation
fdiv.h f2, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f15, f6, f5, dyn # perform operation
fdiv.h f15, f6, f5, rdn # perform operation
fdiv.h f15, f6, f5, rmm # perform operation
fdiv.h f15, f6, f5, rne # perform operation
fdiv.h f15, f6, f5, rtz # perform operation
fdiv.h f15, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f18, f7, f19, dyn # perform operation
fdiv.h f18, f7, f19, rdn # perform operation
fdiv.h f18, f7, f19, rmm # perform operation
fdiv.h f18, f7, f19, rne # perform operation
fdiv.h f18, f7, f19, rtz # perform operation
fdiv.h f18, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fdiv.h f22, f13, f25, dyn # perform operation
fdiv.h f22, f13, f25, rdn # perform operation
fdiv.h f22, f13, f25, rmm # perform operation
fdiv.h f22, f13, f25, rne # perform operation
fdiv.h f22, f13, f25, rtz # perform operation
fdiv.h f22, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fdiv.h f27, f10, f12, dyn # perform operation
fdiv.h f27, f10, f12, rdn # perform operation
fdiv.h f27, f10, f12, rmm # perform operation
fdiv.h f27, f10, f12, rne # perform operation
fdiv.h f27, f10, f12, rtz # perform operation
fdiv.h f27, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fdiv.h f30, f14, f13, dyn # perform operation
fdiv.h f30, f14, f13, rdn # perform operation
fdiv.h f30, f14, f13, rmm # perform operation
fdiv.h f30, f14, f13, rne # perform operation
fdiv.h f30, f14, f13, rtz # perform operation
fdiv.h f30, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fdiv.h f18, f31, f28, dyn # perform operation
fdiv.h f18, f31, f28, rdn # perform operation
fdiv.h f18, f31, f28, rmm # perform operation
fdiv.h f18, f31, f28, rne # perform operation
fdiv.h f18, f31, f28, rtz # perform operation
fdiv.h f18, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fdiv.h f27, f25, f23, dyn # perform operation
fdiv.h f27, f25, f23, rdn # perform operation
fdiv.h f27, f25, f23, rmm # perform operation
fdiv.h f27, f25, f23, rne # perform operation
fdiv.h f27, f25, f23, rtz # perform operation
fdiv.h f27, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fdiv.h f25, f21, f23, dyn # perform operation
fdiv.h f25, f21, f23, rdn # perform operation
fdiv.h f25, f21, f23, rmm # perform operation
fdiv.h f25, f21, f23, rne # perform operation
fdiv.h f25, f21, f23, rtz # perform operation
fdiv.h f25, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fdiv.h f7, f14, f27, dyn # perform operation
fdiv.h f7, f14, f27, rdn # perform operation
fdiv.h f7, f14, f27, rmm # perform operation
fdiv.h f7, f14, f27, rne # perform operation
fdiv.h f7, f14, f27, rtz # perform operation
fdiv.h f7, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fdiv.h f21, f23, f15, dyn # perform operation
fdiv.h f21, f23, f15, rdn # perform operation
fdiv.h f21, f23, f15, rmm # perform operation
fdiv.h f21, f23, f15, rne # perform operation
fdiv.h f21, f23, f15, rtz # perform operation
fdiv.h f21, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fdiv.h f18, f2, f5, dyn # perform operation
fdiv.h f18, f2, f5, rdn # perform operation
fdiv.h f18, f2, f5, rmm # perform operation
fdiv.h f18, f2, f5, rne # perform operation
fdiv.h f18, f2, f5, rtz # perform operation
fdiv.h f18, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fdiv.h f20, f26, f10, dyn # perform operation
fdiv.h f20, f26, f10, rdn # perform operation
fdiv.h f20, f26, f10, rmm # perform operation
fdiv.h f20, f26, f10, rne # perform operation
fdiv.h f20, f26, f10, rtz # perform operation
fdiv.h f20, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fdiv.h f22, f20, f23, dyn # perform operation
fdiv.h f22, f20, f23, rdn # perform operation
fdiv.h f22, f20, f23, rmm # perform operation
fdiv.h f22, f20, f23, rne # perform operation
fdiv.h f22, f20, f23, rtz # perform operation
fdiv.h f22, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fdiv.h f5, f20, f25, dyn # perform operation
fdiv.h f5, f20, f25, rdn # perform operation
fdiv.h f5, f20, f25, rmm # perform operation
fdiv.h f5, f20, f25, rne # perform operation
fdiv.h f5, f20, f25, rtz # perform operation
fdiv.h f5, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fdiv.h f16, f8, f21, dyn # perform operation
fdiv.h f16, f8, f21, rdn # perform operation
fdiv.h f16, f8, f21, rmm # perform operation
fdiv.h f16, f8, f21, rne # perform operation
fdiv.h f16, f8, f21, rtz # perform operation
fdiv.h f16, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fdiv.h f22, f6, f21, dyn # perform operation
fdiv.h f22, f6, f21, rdn # perform operation
fdiv.h f22, f6, f21, rmm # perform operation
fdiv.h f22, f6, f21, rne # perform operation
fdiv.h f22, f6, f21, rtz # perform operation
fdiv.h f22, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fdiv.h f10, f3, f22, dyn # perform operation
fdiv.h f10, f3, f22, rdn # perform operation
fdiv.h f10, f3, f22, rmm # perform operation
fdiv.h f10, f3, f22, rne # perform operation
fdiv.h f10, f3, f22, rtz # perform operation
fdiv.h f10, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fdiv.h f28, f5, f1, dyn # perform operation
fdiv.h f28, f5, f1, rdn # perform operation
fdiv.h f28, f5, f1, rmm # perform operation
fdiv.h f28, f5, f1, rne # perform operation
fdiv.h f28, f5, f1, rtz # perform operation
fdiv.h f28, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fdiv.h f31, f14, f11, dyn # perform operation
fdiv.h f31, f14, f11, rdn # perform operation
fdiv.h f31, f14, f11, rmm # perform operation
fdiv.h f31, f14, f11, rne # perform operation
fdiv.h f31, f14, f11, rtz # perform operation
fdiv.h f31, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fdiv.h f16, f23, f7, dyn # perform operation
fdiv.h f16, f23, f7, rdn # perform operation
fdiv.h f16, f23, f7, rmm # perform operation
fdiv.h f16, f23, f7, rne # perform operation
fdiv.h f16, f23, f7, rtz # perform operation
fdiv.h f16, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fdiv.h f29, f28, f19, dyn # perform operation
fdiv.h f29, f28, f19, rdn # perform operation
fdiv.h f29, f28, f19, rmm # perform operation
fdiv.h f29, f28, f19, rne # perform operation
fdiv.h f29, f28, f19, rtz # perform operation
fdiv.h f29, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fdiv.h f22, f8, f31, dyn # perform operation
fdiv.h f22, f8, f31, rdn # perform operation
fdiv.h f22, f8, f31, rmm # perform operation
fdiv.h f22, f8, f31, rne # perform operation
fdiv.h f22, f8, f31, rtz # perform operation
fdiv.h f22, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fdiv.h f16, f10, f17, dyn # perform operation
fdiv.h f16, f10, f17, rdn # perform operation
fdiv.h f16, f10, f17, rmm # perform operation
fdiv.h f16, f10, f17, rne # perform operation
fdiv.h f16, f10, f17, rtz # perform operation
fdiv.h f16, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fdiv.h f16, f21, f30, dyn # perform operation
fdiv.h f16, f21, f30, rdn # perform operation
fdiv.h f16, f21, f30, rmm # perform operation
fdiv.h f16, f21, f30, rne # perform operation
fdiv.h f16, f21, f30, rtz # perform operation
fdiv.h f16, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fdiv.h f12, f26, f22, dyn # perform operation
fdiv.h f12, f26, f22, rdn # perform operation
fdiv.h f12, f26, f22, rmm # perform operation
fdiv.h f12, f26, f22, rne # perform operation
fdiv.h f12, f26, f22, rtz # perform operation
fdiv.h f12, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fdiv.h f16, f28, f10, dyn # perform operation
fdiv.h f16, f28, f10, rdn # perform operation
fdiv.h f16, f28, f10, rmm # perform operation
fdiv.h f16, f28, f10, rne # perform operation
fdiv.h f16, f28, f10, rtz # perform operation
fdiv.h f16, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fdiv.h f24, f2, f16, dyn # perform operation
fdiv.h f24, f2, f16, rdn # perform operation
fdiv.h f24, f2, f16, rmm # perform operation
fdiv.h f24, f2, f16, rne # perform operation
fdiv.h f24, f2, f16, rtz # perform operation
fdiv.h f24, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fdiv.h f17, f25, f31, dyn # perform operation
fdiv.h f17, f25, f31, rdn # perform operation
fdiv.h f17, f25, f31, rmm # perform operation
fdiv.h f17, f25, f31, rne # perform operation
fdiv.h f17, f25, f31, rtz # perform operation
fdiv.h f17, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fdiv.h f7, f6, f19, dyn # perform operation
fdiv.h f7, f6, f19, rdn # perform operation
fdiv.h f7, f6, f19, rmm # perform operation
fdiv.h f7, f6, f19, rne # perform operation
fdiv.h f7, f6, f19, rtz # perform operation
fdiv.h f7, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.h f14, f7, f20, dyn # perform operation
fdiv.h f14, f7, f20, rdn # perform operation
fdiv.h f14, f7, f20, rmm # perform operation
fdiv.h f14, f7, f20, rne # perform operation
fdiv.h f14, f7, f20, rtz # perform operation
fdiv.h f14, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fdiv.h f22, f20, f7, dyn # perform operation
fdiv.h f22, f20, f7, rdn # perform operation
fdiv.h f22, f20, f7, rmm # perform operation
fdiv.h f22, f20, f7, rne # perform operation
fdiv.h f22, f20, f7, rtz # perform operation
fdiv.h f22, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f7, f14, f15, dyn # perform operation
fdiv.h f7, f14, f15, rdn # perform operation
fdiv.h f7, f14, f15, rmm # perform operation
fdiv.h f7, f14, f15, rne # perform operation
fdiv.h f7, f14, f15, rtz # perform operation
fdiv.h f7, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fdiv.h f18, f25, f10, dyn # perform operation
fdiv.h f18, f25, f10, rdn # perform operation
fdiv.h f18, f25, f10, rmm # perform operation
fdiv.h f18, f25, f10, rne # perform operation
fdiv.h f18, f25, f10, rtz # perform operation
fdiv.h f18, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fdiv.h f12, f16, f25, dyn # perform operation
fdiv.h f12, f16, f25, rdn # perform operation
fdiv.h f12, f16, f25, rmm # perform operation
fdiv.h f12, f16, f25, rne # perform operation
fdiv.h f12, f16, f25, rtz # perform operation
fdiv.h f12, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fdiv.h f23, f2, f5, dyn # perform operation
fdiv.h f23, f2, f5, rdn # perform operation
fdiv.h f23, f2, f5, rmm # perform operation
fdiv.h f23, f2, f5, rne # perform operation
fdiv.h f23, f2, f5, rtz # perform operation
fdiv.h f23, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fdiv.h f25, f27, f10, dyn # perform operation
fdiv.h f25, f27, f10, rdn # perform operation
fdiv.h f25, f27, f10, rmm # perform operation
fdiv.h f25, f27, f10, rne # perform operation
fdiv.h f25, f27, f10, rtz # perform operation
fdiv.h f25, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fdiv.h f10, f19, f6, dyn # perform operation
fdiv.h f10, f19, f6, rdn # perform operation
fdiv.h f10, f19, f6, rmm # perform operation
fdiv.h f10, f19, f6, rne # perform operation
fdiv.h f10, f19, f6, rtz # perform operation
fdiv.h f10, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f21, f3, f27, dyn # perform operation
fdiv.h f21, f3, f27, rdn # perform operation
fdiv.h f21, f3, f27, rmm # perform operation
fdiv.h f21, f3, f27, rne # perform operation
fdiv.h f21, f3, f27, rtz # perform operation
fdiv.h f21, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fdiv.h f27, f2, f29, dyn # perform operation
fdiv.h f27, f2, f29, rdn # perform operation
fdiv.h f27, f2, f29, rmm # perform operation
fdiv.h f27, f2, f29, rne # perform operation
fdiv.h f27, f2, f29, rtz # perform operation
fdiv.h f27, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fdiv.h f2, f29, f3, dyn # perform operation
fdiv.h f2, f29, f3, rdn # perform operation
fdiv.h f2, f29, f3, rmm # perform operation
fdiv.h f2, f29, f3, rne # perform operation
fdiv.h f2, f29, f3, rtz # perform operation
fdiv.h f2, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fdiv.h f19, f25, f6, dyn # perform operation
fdiv.h f19, f25, f6, rdn # perform operation
fdiv.h f19, f25, f6, rmm # perform operation
fdiv.h f19, f25, f6, rne # perform operation
fdiv.h f19, f25, f6, rtz # perform operation
fdiv.h f19, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f13, f3, f23, dyn # perform operation
fdiv.h f13, f3, f23, rdn # perform operation
fdiv.h f13, f3, f23, rmm # perform operation
fdiv.h f13, f3, f23, rne # perform operation
fdiv.h f13, f3, f23, rtz # perform operation
fdiv.h f13, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fdiv.h f24, f21, f10, dyn # perform operation
fdiv.h f24, f21, f10, rdn # perform operation
fdiv.h f24, f21, f10, rmm # perform operation
fdiv.h f24, f21, f10, rne # perform operation
fdiv.h f24, f21, f10, rtz # perform operation
fdiv.h f24, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fdiv.h f23, f2, f29, dyn # perform operation
fdiv.h f23, f2, f29, rdn # perform operation
fdiv.h f23, f2, f29, rmm # perform operation
fdiv.h f23, f2, f29, rne # perform operation
fdiv.h f23, f2, f29, rtz # perform operation
fdiv.h f23, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fdiv.h f28, f8, f19, dyn # perform operation
fdiv.h f28, f8, f19, rdn # perform operation
fdiv.h f28, f8, f19, rmm # perform operation
fdiv.h f28, f8, f19, rne # perform operation
fdiv.h f28, f8, f19, rtz # perform operation
fdiv.h f28, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.h f14, f29, f23, dyn # perform operation
fdiv.h f14, f29, f23, rdn # perform operation
fdiv.h f14, f29, f23, rmm # perform operation
fdiv.h f14, f29, f23, rne # perform operation
fdiv.h f14, f29, f23, rtz # perform operation
fdiv.h f14, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fdiv.h f6, f24, f3, dyn # perform operation
fdiv.h f6, f24, f3, rdn # perform operation
fdiv.h f6, f24, f3, rmm # perform operation
fdiv.h f6, f24, f3, rne # perform operation
fdiv.h f6, f24, f3, rtz # perform operation
fdiv.h f6, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fdiv.h f14, f26, f13, dyn # perform operation
fdiv.h f14, f26, f13, rdn # perform operation
fdiv.h f14, f26, f13, rmm # perform operation
fdiv.h f14, f26, f13, rne # perform operation
fdiv.h f14, f26, f13, rtz # perform operation
fdiv.h f14, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fdiv.h f10, f13, f21, dyn # perform operation
fdiv.h f10, f13, f21, rdn # perform operation
fdiv.h f10, f13, f21, rmm # perform operation
fdiv.h f10, f13, f21, rne # perform operation
fdiv.h f10, f13, f21, rtz # perform operation
fdiv.h f10, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fdiv.h f25, f30, f24, dyn # perform operation
fdiv.h f25, f30, f24, rdn # perform operation
fdiv.h f25, f30, f24, rmm # perform operation
fdiv.h f25, f30, f24, rne # perform operation
fdiv.h f25, f30, f24, rtz # perform operation
fdiv.h f25, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f29, f30, f10, dyn # perform operation
fdiv.h f29, f30, f10, rdn # perform operation
fdiv.h f29, f30, f10, rmm # perform operation
fdiv.h f29, f30, f10, rne # perform operation
fdiv.h f29, f30, f10, rtz # perform operation
fdiv.h f29, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fdiv.h f19, f12, f27, dyn # perform operation
fdiv.h f19, f12, f27, rdn # perform operation
fdiv.h f19, f12, f27, rmm # perform operation
fdiv.h f19, f12, f27, rne # perform operation
fdiv.h f19, f12, f27, rtz # perform operation
fdiv.h f19, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fdiv.h f27, f31, f10, dyn # perform operation
fdiv.h f27, f31, f10, rdn # perform operation
fdiv.h f27, f31, f10, rmm # perform operation
fdiv.h f27, f31, f10, rne # perform operation
fdiv.h f27, f31, f10, rtz # perform operation
fdiv.h f27, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fdiv.h f29, f8, f2, dyn # perform operation
fdiv.h f29, f8, f2, rdn # perform operation
fdiv.h f29, f8, f2, rmm # perform operation
fdiv.h f29, f8, f2, rne # perform operation
fdiv.h f29, f8, f2, rtz # perform operation
fdiv.h f29, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fdiv.h f11, f30, f6, dyn # perform operation
fdiv.h f11, f30, f6, rdn # perform operation
fdiv.h f11, f30, f6, rmm # perform operation
fdiv.h f11, f30, f6, rne # perform operation
fdiv.h f11, f30, f6, rtz # perform operation
fdiv.h f11, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fdiv.h f16, f31, f13, dyn # perform operation
fdiv.h f16, f31, f13, rdn # perform operation
fdiv.h f16, f31, f13, rmm # perform operation
fdiv.h f16, f31, f13, rne # perform operation
fdiv.h f16, f31, f13, rtz # perform operation
fdiv.h f16, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fdiv.h f2, f7, f31, dyn # perform operation
fdiv.h f2, f7, f31, rdn # perform operation
fdiv.h f2, f7, f31, rmm # perform operation
fdiv.h f2, f7, f31, rne # perform operation
fdiv.h f2, f7, f31, rtz # perform operation
fdiv.h f2, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f6, f23, f31, dyn # perform operation
fdiv.h f6, f23, f31, rdn # perform operation
fdiv.h f6, f23, f31, rmm # perform operation
fdiv.h f6, f23, f31, rne # perform operation
fdiv.h f6, f23, f31, rtz # perform operation
fdiv.h f6, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fdiv.h f27, f15, f19, dyn # perform operation
fdiv.h f27, f15, f19, rdn # perform operation
fdiv.h f27, f15, f19, rmm # perform operation
fdiv.h f27, f15, f19, rne # perform operation
fdiv.h f27, f15, f19, rtz # perform operation
fdiv.h f27, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fdiv.h f17, f25, f13, dyn # perform operation
fdiv.h f17, f25, f13, rdn # perform operation
fdiv.h f17, f25, f13, rmm # perform operation
fdiv.h f17, f25, f13, rne # perform operation
fdiv.h f17, f25, f13, rtz # perform operation
fdiv.h f17, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fdiv.h f19, f18, f2, dyn # perform operation
fdiv.h f19, f18, f2, rdn # perform operation
fdiv.h f19, f18, f2, rmm # perform operation
fdiv.h f19, f18, f2, rne # perform operation
fdiv.h f19, f18, f2, rtz # perform operation
fdiv.h f19, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f17, f12, f29, dyn # perform operation
fdiv.h f17, f12, f29, rdn # perform operation
fdiv.h f17, f12, f29, rmm # perform operation
fdiv.h f17, f12, f29, rne # perform operation
fdiv.h f17, f12, f29, rtz # perform operation
fdiv.h f17, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fdiv.h f28, f10, f5, dyn # perform operation
fdiv.h f28, f10, f5, rdn # perform operation
fdiv.h f28, f10, f5, rmm # perform operation
fdiv.h f28, f10, f5, rne # perform operation
fdiv.h f28, f10, f5, rtz # perform operation
fdiv.h f28, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fdiv.h f22, f26, f16, dyn # perform operation
fdiv.h f22, f26, f16, rdn # perform operation
fdiv.h f22, f26, f16, rmm # perform operation
fdiv.h f22, f26, f16, rne # perform operation
fdiv.h f22, f26, f16, rtz # perform operation
fdiv.h f22, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fdiv.h f19, f26, f14, dyn # perform operation
fdiv.h f19, f26, f14, rdn # perform operation
fdiv.h f19, f26, f14, rmm # perform operation
fdiv.h f19, f26, f14, rne # perform operation
fdiv.h f19, f26, f14, rtz # perform operation
fdiv.h f19, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fdiv.h f10, f26, f15, dyn # perform operation
fdiv.h f10, f26, f15, rdn # perform operation
fdiv.h f10, f26, f15, rmm # perform operation
fdiv.h f10, f26, f15, rne # perform operation
fdiv.h f10, f26, f15, rtz # perform operation
fdiv.h f10, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fdiv.h f22, f15, f21, dyn # perform operation
fdiv.h f22, f15, f21, rdn # perform operation
fdiv.h f22, f15, f21, rmm # perform operation
fdiv.h f22, f15, f21, rne # perform operation
fdiv.h f22, f15, f21, rtz # perform operation
fdiv.h f22, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fdiv.h f21, f30, f27, dyn # perform operation
fdiv.h f21, f30, f27, rdn # perform operation
fdiv.h f21, f30, f27, rmm # perform operation
fdiv.h f21, f30, f27, rne # perform operation
fdiv.h f21, f30, f27, rtz # perform operation
fdiv.h f21, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fdiv.h f14, f15, f17, dyn # perform operation
fdiv.h f14, f15, f17, rdn # perform operation
fdiv.h f14, f15, f17, rmm # perform operation
fdiv.h f14, f15, f17, rne # perform operation
fdiv.h f14, f15, f17, rtz # perform operation
fdiv.h f14, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fdiv.h f17, f11, f14, dyn # perform operation
fdiv.h f17, f11, f14, rdn # perform operation
fdiv.h f17, f11, f14, rmm # perform operation
fdiv.h f17, f11, f14, rne # perform operation
fdiv.h f17, f11, f14, rtz # perform operation
fdiv.h f17, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fdiv.h f30, f14, f8, dyn # perform operation
fdiv.h f30, f14, f8, rdn # perform operation
fdiv.h f30, f14, f8, rmm # perform operation
fdiv.h f30, f14, f8, rne # perform operation
fdiv.h f30, f14, f8, rtz # perform operation
fdiv.h f30, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fdiv.h f22, f7, f5, dyn # perform operation
fdiv.h f22, f7, f5, rdn # perform operation
fdiv.h f22, f7, f5, rmm # perform operation
fdiv.h f22, f7, f5, rne # perform operation
fdiv.h f22, f7, f5, rtz # perform operation
fdiv.h f22, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f2, f24, f25, dyn # perform operation
fdiv.h f2, f24, f25, rdn # perform operation
fdiv.h f2, f24, f25, rmm # perform operation
fdiv.h f2, f24, f25, rne # perform operation
fdiv.h f2, f24, f25, rtz # perform operation
fdiv.h f2, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.h f17, f12, f2, dyn # perform operation
fdiv.h f17, f12, f2, rdn # perform operation
fdiv.h f17, f12, f2, rmm # perform operation
fdiv.h f17, f12, f2, rne # perform operation
fdiv.h f17, f12, f2, rtz # perform operation
fdiv.h f17, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fdiv.h f24, f18, f26, dyn # perform operation
fdiv.h f24, f18, f26, rdn # perform operation
fdiv.h f24, f18, f26, rmm # perform operation
fdiv.h f24, f18, f26, rne # perform operation
fdiv.h f24, f18, f26, rtz # perform operation
fdiv.h f24, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fdiv.h f27, f9, f14, dyn # perform operation
fdiv.h f27, f9, f14, rdn # perform operation
fdiv.h f27, f9, f14, rmm # perform operation
fdiv.h f27, f9, f14, rne # perform operation
fdiv.h f27, f9, f14, rtz # perform operation
fdiv.h f27, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fdiv.h f24, f20, f27, dyn # perform operation
fdiv.h f24, f20, f27, rdn # perform operation
fdiv.h f24, f20, f27, rmm # perform operation
fdiv.h f24, f20, f27, rne # perform operation
fdiv.h f24, f20, f27, rtz # perform operation
fdiv.h f24, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fdiv.h f23, f18, f3, dyn # perform operation
fdiv.h f23, f18, f3, rdn # perform operation
fdiv.h f23, f18, f3, rmm # perform operation
fdiv.h f23, f18, f3, rne # perform operation
fdiv.h f23, f18, f3, rtz # perform operation
fdiv.h f23, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fdiv.h f30, f3, f7, dyn # perform operation
fdiv.h f30, f3, f7, rdn # perform operation
fdiv.h f30, f3, f7, rmm # perform operation
fdiv.h f30, f3, f7, rne # perform operation
fdiv.h f30, f3, f7, rtz # perform operation
fdiv.h f30, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fdiv.h f2, f29, f26, dyn # perform operation
fdiv.h f2, f29, f26, rdn # perform operation
fdiv.h f2, f29, f26, rmm # perform operation
fdiv.h f2, f29, f26, rne # perform operation
fdiv.h f2, f29, f26, rtz # perform operation
fdiv.h f2, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fdiv.h f10, f14, f1, dyn # perform operation
fdiv.h f10, f14, f1, rdn # perform operation
fdiv.h f10, f14, f1, rmm # perform operation
fdiv.h f10, f14, f1, rne # perform operation
fdiv.h f10, f14, f1, rtz # perform operation
fdiv.h f10, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fdiv.h f27, f10, f23, dyn # perform operation
fdiv.h f27, f10, f23, rdn # perform operation
fdiv.h f27, f10, f23, rmm # perform operation
fdiv.h f27, f10, f23, rne # perform operation
fdiv.h f27, f10, f23, rtz # perform operation
fdiv.h f27, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
fdiv.h f22, f1, f13, dyn # perform operation
fdiv.h f22, f1, f13, rdn # perform operation
fdiv.h f22, f1, f13, rmm # perform operation
fdiv.h f22, f1, f13, rne # perform operation
fdiv.h f22, f1, f13, rtz # perform operation
fdiv.h f22, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fdiv.h f15, f8, f24, dyn # perform operation
fdiv.h f15, f8, f24, rdn # perform operation
fdiv.h f15, f8, f24, rmm # perform operation
fdiv.h f15, f8, f24, rne # perform operation
fdiv.h f15, f8, f24, rtz # perform operation
fdiv.h f15, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fdiv.h f5, f9, f30, dyn # perform operation
fdiv.h f5, f9, f30, rdn # perform operation
fdiv.h f5, f9, f30, rmm # perform operation
fdiv.h f5, f9, f30, rne # perform operation
fdiv.h f5, f9, f30, rtz # perform operation
fdiv.h f5, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f31, f13, f6, dyn # perform operation
fdiv.h f31, f13, f6, rdn # perform operation
fdiv.h f31, f13, f6, rmm # perform operation
fdiv.h f31, f13, f6, rne # perform operation
fdiv.h f31, f13, f6, rtz # perform operation
fdiv.h f31, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fdiv.h f31, f11, f14, dyn # perform operation
fdiv.h f31, f11, f14, rdn # perform operation
fdiv.h f31, f11, f14, rmm # perform operation
fdiv.h f31, f11, f14, rne # perform operation
fdiv.h f31, f11, f14, rtz # perform operation
fdiv.h f31, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fdiv.h f8, f13, f1, dyn # perform operation
fdiv.h f8, f13, f1, rdn # perform operation
fdiv.h f8, f13, f1, rmm # perform operation
fdiv.h f8, f13, f1, rne # perform operation
fdiv.h f8, f13, f1, rtz # perform operation
fdiv.h f8, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fdiv.h f22, f10, f29, dyn # perform operation
fdiv.h f22, f10, f29, rdn # perform operation
fdiv.h f22, f10, f29, rmm # perform operation
fdiv.h f22, f10, f29, rne # perform operation
fdiv.h f22, f10, f29, rtz # perform operation
fdiv.h f22, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fdiv.h f24, f14, f30, dyn # perform operation
fdiv.h f24, f14, f30, rdn # perform operation
fdiv.h f24, f14, f30, rmm # perform operation
fdiv.h f24, f14, f30, rne # perform operation
fdiv.h f24, f14, f30, rtz # perform operation
fdiv.h f24, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f23, f20, f2, dyn # perform operation
fdiv.h f23, f20, f2, rdn # perform operation
fdiv.h f23, f20, f2, rmm # perform operation
fdiv.h f23, f20, f2, rne # perform operation
fdiv.h f23, f20, f2, rtz # perform operation
fdiv.h f23, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fdiv.h f15, f27, f23, dyn # perform operation
fdiv.h f15, f27, f23, rdn # perform operation
fdiv.h f15, f27, f23, rmm # perform operation
fdiv.h f15, f27, f23, rne # perform operation
fdiv.h f15, f27, f23, rtz # perform operation
fdiv.h f15, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fdiv.h f27, f13, f1, dyn # perform operation
fdiv.h f27, f13, f1, rdn # perform operation
fdiv.h f27, f13, f1, rmm # perform operation
fdiv.h f27, f13, f1, rne # perform operation
fdiv.h f27, f13, f1, rtz # perform operation
fdiv.h f27, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fdiv.h f17, f8, f3, dyn # perform operation
fdiv.h f17, f8, f3, rdn # perform operation
fdiv.h f17, f8, f3, rmm # perform operation
fdiv.h f17, f8, f3, rne # perform operation
fdiv.h f17, f8, f3, rtz # perform operation
fdiv.h f17, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fdiv.h f9, f5, f8, dyn # perform operation
fdiv.h f9, f5, f8, rdn # perform operation
fdiv.h f9, f5, f8, rmm # perform operation
fdiv.h f9, f5, f8, rne # perform operation
fdiv.h f9, f5, f8, rtz # perform operation
fdiv.h f9, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fdiv.h f25, f22, f6, dyn # perform operation
fdiv.h f25, f22, f6, rdn # perform operation
fdiv.h f25, f22, f6, rmm # perform operation
fdiv.h f25, f22, f6, rne # perform operation
fdiv.h f25, f22, f6, rtz # perform operation
fdiv.h f25, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fdiv.h f18, f13, f30, dyn # perform operation
fdiv.h f18, f13, f30, rdn # perform operation
fdiv.h f18, f13, f30, rmm # perform operation
fdiv.h f18, f13, f30, rne # perform operation
fdiv.h f18, f13, f30, rtz # perform operation
fdiv.h f18, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fdiv.h f3, f6, f31, dyn # perform operation
fdiv.h f3, f6, f31, rdn # perform operation
fdiv.h f3, f6, f31, rmm # perform operation
fdiv.h f3, f6, f31, rne # perform operation
fdiv.h f3, f6, f31, rtz # perform operation
fdiv.h f3, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fdiv.h f16, f24, f25, dyn # perform operation
fdiv.h f16, f24, f25, rdn # perform operation
fdiv.h f16, f24, f25, rmm # perform operation
fdiv.h f16, f24, f25, rne # perform operation
fdiv.h f16, f24, f25, rtz # perform operation
fdiv.h f16, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fdiv.h f8, f2, f23, dyn # perform operation
fdiv.h f8, f2, f23, rdn # perform operation
fdiv.h f8, f2, f23, rmm # perform operation
fdiv.h f8, f2, f23, rne # perform operation
fdiv.h f8, f2, f23, rtz # perform operation
fdiv.h f8, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fdiv.h f8, f7, f19, dyn # perform operation
fdiv.h f8, f7, f19, rdn # perform operation
fdiv.h f8, f7, f19, rmm # perform operation
fdiv.h f8, f7, f19, rne # perform operation
fdiv.h f8, f7, f19, rtz # perform operation
fdiv.h f8, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.h f10, f17, f11, dyn # perform operation
fdiv.h f10, f17, f11, rdn # perform operation
fdiv.h f10, f17, f11, rmm # perform operation
fdiv.h f10, f17, f11, rne # perform operation
fdiv.h f10, f17, f11, rtz # perform operation
fdiv.h f10, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fdiv.h f18, f6, f7, dyn # perform operation
fdiv.h f18, f6, f7, rdn # perform operation
fdiv.h f18, f6, f7, rmm # perform operation
fdiv.h f18, f6, f7, rne # perform operation
fdiv.h f18, f6, f7, rtz # perform operation
fdiv.h f18, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f5, f14, f20, dyn # perform operation
fdiv.h f5, f14, f20, rdn # perform operation
fdiv.h f5, f14, f20, rmm # perform operation
fdiv.h f5, f14, f20, rne # perform operation
fdiv.h f5, f14, f20, rtz # perform operation
fdiv.h f5, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f26, f2, f31, dyn # perform operation
fdiv.h f26, f2, f31, rdn # perform operation
fdiv.h f26, f2, f31, rmm # perform operation
fdiv.h f26, f2, f31, rne # perform operation
fdiv.h f26, f2, f31, rtz # perform operation
fdiv.h f26, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fdiv.h f6, f16, f19, dyn # perform operation
fdiv.h f6, f16, f19, rdn # perform operation
fdiv.h f6, f16, f19, rmm # perform operation
fdiv.h f6, f16, f19, rne # perform operation
fdiv.h f6, f16, f19, rtz # perform operation
fdiv.h f6, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fdiv.h f13, f24, f30, dyn # perform operation
fdiv.h f13, f24, f30, rdn # perform operation
fdiv.h f13, f24, f30, rmm # perform operation
fdiv.h f13, f24, f30, rne # perform operation
fdiv.h f13, f24, f30, rtz # perform operation
fdiv.h f13, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fdiv.h f15, f17, f22, dyn # perform operation
fdiv.h f15, f17, f22, rdn # perform operation
fdiv.h f15, f17, f22, rmm # perform operation
fdiv.h f15, f17, f22, rne # perform operation
fdiv.h f15, f17, f22, rtz # perform operation
fdiv.h f15, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fdiv.h f1, f9, f12, dyn # perform operation
fdiv.h f1, f9, f12, rdn # perform operation
fdiv.h f1, f9, f12, rmm # perform operation
fdiv.h f1, f9, f12, rne # perform operation
fdiv.h f1, f9, f12, rtz # perform operation
fdiv.h f1, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fdiv.h f26, f31, f14, dyn # perform operation
fdiv.h f26, f31, f14, rdn # perform operation
fdiv.h f26, f31, f14, rmm # perform operation
fdiv.h f26, f31, f14, rne # perform operation
fdiv.h f26, f31, f14, rtz # perform operation
fdiv.h f26, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fdiv.h f3, f2, f8, dyn # perform operation
fdiv.h f3, f2, f8, rdn # perform operation
fdiv.h f3, f2, f8, rmm # perform operation
fdiv.h f3, f2, f8, rne # perform operation
fdiv.h f3, f2, f8, rtz # perform operation
fdiv.h f3, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fdiv.h f23, f14, f11, dyn # perform operation
fdiv.h f23, f14, f11, rdn # perform operation
fdiv.h f23, f14, f11, rmm # perform operation
fdiv.h f23, f14, f11, rne # perform operation
fdiv.h f23, f14, f11, rtz # perform operation
fdiv.h f23, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fdiv.h f29, f2, f7, dyn # perform operation
fdiv.h f29, f2, f7, rdn # perform operation
fdiv.h f29, f2, f7, rmm # perform operation
fdiv.h f29, f2, f7, rne # perform operation
fdiv.h f29, f2, f7, rtz # perform operation
fdiv.h f29, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.h f11, f12, f2, dyn # perform operation
fdiv.h f11, f12, f2, rdn # perform operation
fdiv.h f11, f12, f2, rmm # perform operation
fdiv.h f11, f12, f2, rne # perform operation
fdiv.h f11, f12, f2, rtz # perform operation
fdiv.h f11, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fdiv.h f26, f2, f21, dyn # perform operation
fdiv.h f26, f2, f21, rdn # perform operation
fdiv.h f26, f2, f21, rmm # perform operation
fdiv.h f26, f2, f21, rne # perform operation
fdiv.h f26, f2, f21, rtz # perform operation
fdiv.h f26, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fdiv.h f19, f21, f25, dyn # perform operation
fdiv.h f19, f21, f25, rdn # perform operation
fdiv.h f19, f21, f25, rmm # perform operation
fdiv.h f19, f21, f25, rne # perform operation
fdiv.h f19, f21, f25, rtz # perform operation
fdiv.h f19, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fdiv.h f20, f7, f1, dyn # perform operation
fdiv.h f20, f7, f1, rdn # perform operation
fdiv.h f20, f7, f1, rmm # perform operation
fdiv.h f20, f7, f1, rne # perform operation
fdiv.h f20, f7, f1, rtz # perform operation
fdiv.h f20, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fdiv.h f16, f18, f21, dyn # perform operation
fdiv.h f16, f18, f21, rdn # perform operation
fdiv.h f16, f18, f21, rmm # perform operation
fdiv.h f16, f18, f21, rne # perform operation
fdiv.h f16, f18, f21, rtz # perform operation
fdiv.h f16, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fdiv.h f5, f20, f16, dyn # perform operation
fdiv.h f5, f20, f16, rdn # perform operation
fdiv.h f5, f20, f16, rmm # perform operation
fdiv.h f5, f20, f16, rne # perform operation
fdiv.h f5, f20, f16, rtz # perform operation
fdiv.h f5, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fdiv.h f27, f10, f29, dyn # perform operation
fdiv.h f27, f10, f29, rdn # perform operation
fdiv.h f27, f10, f29, rmm # perform operation
fdiv.h f27, f10, f29, rne # perform operation
fdiv.h f27, f10, f29, rtz # perform operation
fdiv.h f27, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fdiv.h f12, f21, f2, dyn # perform operation
fdiv.h f12, f21, f2, rdn # perform operation
fdiv.h f12, f21, f2, rmm # perform operation
fdiv.h f12, f21, f2, rne # perform operation
fdiv.h f12, f21, f2, rtz # perform operation
fdiv.h f12, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fdiv.h f1, f29, f15, dyn # perform operation
fdiv.h f1, f29, f15, rdn # perform operation
fdiv.h f1, f29, f15, rmm # perform operation
fdiv.h f1, f29, f15, rne # perform operation
fdiv.h f1, f29, f15, rtz # perform operation
fdiv.h f1, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fdiv.h f2, f10, f8, dyn # perform operation
fdiv.h f2, f10, f8, rdn # perform operation
fdiv.h f2, f10, f8, rmm # perform operation
fdiv.h f2, f10, f8, rne # perform operation
fdiv.h f2, f10, f8, rtz # perform operation
fdiv.h f2, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fdiv.h f2, f22, f31, dyn # perform operation
fdiv.h f2, f22, f31, rdn # perform operation
fdiv.h f2, f22, f31, rmm # perform operation
fdiv.h f2, f22, f31, rne # perform operation
fdiv.h f2, f22, f31, rtz # perform operation
fdiv.h f2, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fdiv.h f10, f21, f19, dyn # perform operation
fdiv.h f10, f21, f19, rdn # perform operation
fdiv.h f10, f21, f19, rmm # perform operation
fdiv.h f10, f21, f19, rne # perform operation
fdiv.h f10, f21, f19, rtz # perform operation
fdiv.h f10, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f2, f11, f23, dyn # perform operation
fdiv.h f2, f11, f23, rdn # perform operation
fdiv.h f2, f11, f23, rmm # perform operation
fdiv.h f2, f11, f23, rne # perform operation
fdiv.h f2, f11, f23, rtz # perform operation
fdiv.h f2, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fdiv.h f8, f25, f14, dyn # perform operation
fdiv.h f8, f25, f14, rdn # perform operation
fdiv.h f8, f25, f14, rmm # perform operation
fdiv.h f8, f25, f14, rne # perform operation
fdiv.h f8, f25, f14, rtz # perform operation
fdiv.h f8, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fdiv.h f20, f25, f22, dyn # perform operation
fdiv.h f20, f25, f22, rdn # perform operation
fdiv.h f20, f25, f22, rmm # perform operation
fdiv.h f20, f25, f22, rne # perform operation
fdiv.h f20, f25, f22, rtz # perform operation
fdiv.h f20, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f8, f12, f25, dyn # perform operation
fdiv.h f8, f12, f25, rdn # perform operation
fdiv.h f8, f12, f25, rmm # perform operation
fdiv.h f8, f12, f25, rne # perform operation
fdiv.h f8, f12, f25, rtz # perform operation
fdiv.h f8, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.h f7, f17, f29, dyn # perform operation
fdiv.h f7, f17, f29, rdn # perform operation
fdiv.h f7, f17, f29, rmm # perform operation
fdiv.h f7, f17, f29, rne # perform operation
fdiv.h f7, f17, f29, rtz # perform operation
fdiv.h f7, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fdiv.h f22, f11, f13, dyn # perform operation
fdiv.h f22, f11, f13, rdn # perform operation
fdiv.h f22, f11, f13, rmm # perform operation
fdiv.h f22, f11, f13, rne # perform operation
fdiv.h f22, f11, f13, rtz # perform operation
fdiv.h f22, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f3, f24, f20, dyn # perform operation
fdiv.h f3, f24, f20, rdn # perform operation
fdiv.h f3, f24, f20, rmm # perform operation
fdiv.h f3, f24, f20, rne # perform operation
fdiv.h f3, f24, f20, rtz # perform operation
fdiv.h f3, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fdiv.h f2, f1, f28, dyn # perform operation
fdiv.h f2, f1, f28, rdn # perform operation
fdiv.h f2, f1, f28, rmm # perform operation
fdiv.h f2, f1, f28, rne # perform operation
fdiv.h f2, f1, f28, rtz # perform operation
fdiv.h f2, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fdiv.h f28, f5, f10, dyn # perform operation
fdiv.h f28, f5, f10, rdn # perform operation
fdiv.h f28, f5, f10, rmm # perform operation
fdiv.h f28, f5, f10, rne # perform operation
fdiv.h f28, f5, f10, rtz # perform operation
fdiv.h f28, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f24, f30, f8, dyn # perform operation
fdiv.h f24, f30, f8, rdn # perform operation
fdiv.h f24, f30, f8, rmm # perform operation
fdiv.h f24, f30, f8, rne # perform operation
fdiv.h f24, f30, f8, rtz # perform operation
fdiv.h f24, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fdiv.h f5, f21, f27, dyn # perform operation
fdiv.h f5, f21, f27, rdn # perform operation
fdiv.h f5, f21, f27, rmm # perform operation
fdiv.h f5, f21, f27, rne # perform operation
fdiv.h f5, f21, f27, rtz # perform operation
fdiv.h f5, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fdiv.h f26, f23, f18, dyn # perform operation
fdiv.h f26, f23, f18, rdn # perform operation
fdiv.h f26, f23, f18, rmm # perform operation
fdiv.h f26, f23, f18, rne # perform operation
fdiv.h f26, f23, f18, rtz # perform operation
fdiv.h f26, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fdiv.h f10, f27, f12, dyn # perform operation
fdiv.h f10, f27, f12, rdn # perform operation
fdiv.h f10, f27, f12, rmm # perform operation
fdiv.h f10, f27, f12, rne # perform operation
fdiv.h f10, f27, f12, rtz # perform operation
fdiv.h f10, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fdiv.h f27, f1, f8, dyn # perform operation
fdiv.h f27, f1, f8, rdn # perform operation
fdiv.h f27, f1, f8, rmm # perform operation
fdiv.h f27, f1, f8, rne # perform operation
fdiv.h f27, f1, f8, rtz # perform operation
fdiv.h f27, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fdiv.h f9, f16, f11, dyn # perform operation
fdiv.h f9, f16, f11, rdn # perform operation
fdiv.h f9, f16, f11, rmm # perform operation
fdiv.h f9, f16, f11, rne # perform operation
fdiv.h f9, f16, f11, rtz # perform operation
fdiv.h f9, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f6, f3, f5, dyn # perform operation
fdiv.h f6, f3, f5, rdn # perform operation
fdiv.h f6, f3, f5, rmm # perform operation
fdiv.h f6, f3, f5, rne # perform operation
fdiv.h f6, f3, f5, rtz # perform operation
fdiv.h f6, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fdiv.h f5, f24, f21, dyn # perform operation
fdiv.h f5, f24, f21, rdn # perform operation
fdiv.h f5, f24, f21, rmm # perform operation
fdiv.h f5, f24, f21, rne # perform operation
fdiv.h f5, f24, f21, rtz # perform operation
fdiv.h f5, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fdiv.h f20, f3, f11, dyn # perform operation
fdiv.h f20, f3, f11, rdn # perform operation
fdiv.h f20, f3, f11, rmm # perform operation
fdiv.h f20, f3, f11, rne # perform operation
fdiv.h f20, f3, f11, rtz # perform operation
fdiv.h f20, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fdiv.h f7, f31, f13, dyn # perform operation
fdiv.h f7, f31, f13, rdn # perform operation
fdiv.h f7, f31, f13, rmm # perform operation
fdiv.h f7, f31, f13, rne # perform operation
fdiv.h f7, f31, f13, rtz # perform operation
fdiv.h f7, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fdiv.h f21, f20, f24, dyn # perform operation
fdiv.h f21, f20, f24, rdn # perform operation
fdiv.h f21, f20, f24, rmm # perform operation
fdiv.h f21, f20, f24, rne # perform operation
fdiv.h f21, f20, f24, rtz # perform operation
fdiv.h f21, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fdiv.h f13, f31, f10, dyn # perform operation
fdiv.h f13, f31, f10, rdn # perform operation
fdiv.h f13, f31, f10, rmm # perform operation
fdiv.h f13, f31, f10, rne # perform operation
fdiv.h f13, f31, f10, rtz # perform operation
fdiv.h f13, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fdiv.h f13, f26, f20, dyn # perform operation
fdiv.h f13, f26, f20, rdn # perform operation
fdiv.h f13, f26, f20, rmm # perform operation
fdiv.h f13, f26, f20, rne # perform operation
fdiv.h f13, f26, f20, rtz # perform operation
fdiv.h f13, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fdiv.h f8, f11, f15, dyn # perform operation
fdiv.h f8, f11, f15, rdn # perform operation
fdiv.h f8, f11, f15, rmm # perform operation
fdiv.h f8, f11, f15, rne # perform operation
fdiv.h f8, f11, f15, rtz # perform operation
fdiv.h f8, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fdiv.h f8, f24, f3, dyn # perform operation
fdiv.h f8, f24, f3, rdn # perform operation
fdiv.h f8, f24, f3, rmm # perform operation
fdiv.h f8, f24, f3, rne # perform operation
fdiv.h f8, f24, f3, rtz # perform operation
fdiv.h f8, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fdiv.h f5, f18, f22, dyn # perform operation
fdiv.h f5, f18, f22, rdn # perform operation
fdiv.h f5, f18, f22, rmm # perform operation
fdiv.h f5, f18, f22, rne # perform operation
fdiv.h f5, f18, f22, rtz # perform operation
fdiv.h f5, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fdiv.h f11, f6, f18, dyn # perform operation
fdiv.h f11, f6, f18, rdn # perform operation
fdiv.h f11, f6, f18, rmm # perform operation
fdiv.h f11, f6, f18, rne # perform operation
fdiv.h f11, f6, f18, rtz # perform operation
fdiv.h f11, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fdiv.h f29, f24, f21, dyn # perform operation
fdiv.h f29, f24, f21, rdn # perform operation
fdiv.h f29, f24, f21, rmm # perform operation
fdiv.h f29, f24, f21, rne # perform operation
fdiv.h f29, f24, f21, rtz # perform operation
fdiv.h f29, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fdiv.h f9, f16, f18, dyn # perform operation
fdiv.h f9, f16, f18, rdn # perform operation
fdiv.h f9, f16, f18, rmm # perform operation
fdiv.h f9, f16, f18, rne # perform operation
fdiv.h f9, f16, f18, rtz # perform operation
fdiv.h f9, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fdiv.h f24, f12, f18, dyn # perform operation
fdiv.h f24, f12, f18, rdn # perform operation
fdiv.h f24, f12, f18, rmm # perform operation
fdiv.h f24, f12, f18, rne # perform operation
fdiv.h f24, f12, f18, rtz # perform operation
fdiv.h f24, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fdiv.h f28, f12, f20, dyn # perform operation
fdiv.h f28, f12, f20, rdn # perform operation
fdiv.h f28, f12, f20, rmm # perform operation
fdiv.h f28, f12, f20, rne # perform operation
fdiv.h f28, f12, f20, rtz # perform operation
fdiv.h f28, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fdiv.h f16, f30, f9, dyn # perform operation
fdiv.h f16, f30, f9, rdn # perform operation
fdiv.h f16, f30, f9, rmm # perform operation
fdiv.h f16, f30, f9, rne # perform operation
fdiv.h f16, f30, f9, rtz # perform operation
fdiv.h f16, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fdiv.h f15, f1, f28, dyn # perform operation
fdiv.h f15, f1, f28, rdn # perform operation
fdiv.h f15, f1, f28, rmm # perform operation
fdiv.h f15, f1, f28, rne # perform operation
fdiv.h f15, f1, f28, rtz # perform operation
fdiv.h f15, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fdiv.h f26, f21, f10, dyn # perform operation
fdiv.h f26, f21, f10, rdn # perform operation
fdiv.h f26, f21, f10, rmm # perform operation
fdiv.h f26, f21, f10, rne # perform operation
fdiv.h f26, f21, f10, rtz # perform operation
fdiv.h f26, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fdiv.h f9, f7, f2, dyn # perform operation
fdiv.h f9, f7, f2, rdn # perform operation
fdiv.h f9, f7, f2, rmm # perform operation
fdiv.h f9, f7, f2, rne # perform operation
fdiv.h f9, f7, f2, rtz # perform operation
fdiv.h f9, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fdiv.h f6, f5, f17, dyn # perform operation
fdiv.h f6, f5, f17, rdn # perform operation
fdiv.h f6, f5, f17, rmm # perform operation
fdiv.h f6, f5, f17, rne # perform operation
fdiv.h f6, f5, f17, rtz # perform operation
fdiv.h f6, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fdiv.h f14, f8, f1, dyn # perform operation
fdiv.h f14, f8, f1, rdn # perform operation
fdiv.h f14, f8, f1, rmm # perform operation
fdiv.h f14, f8, f1, rne # perform operation
fdiv.h f14, f8, f1, rtz # perform operation
fdiv.h f14, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fdiv.h f26, f2, f13, dyn # perform operation
fdiv.h f26, f2, f13, rdn # perform operation
fdiv.h f26, f2, f13, rmm # perform operation
fdiv.h f26, f2, f13, rne # perform operation
fdiv.h f26, f2, f13, rtz # perform operation
fdiv.h f26, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fdiv.h f20, f16, f14, dyn # perform operation
fdiv.h f20, f16, f14, rdn # perform operation
fdiv.h f20, f16, f14, rmm # perform operation
fdiv.h f20, f16, f14, rne # perform operation
fdiv.h f20, f16, f14, rtz # perform operation
fdiv.h f20, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fdiv.h f24, f9, f28, dyn # perform operation
fdiv.h f24, f9, f28, rdn # perform operation
fdiv.h f24, f9, f28, rmm # perform operation
fdiv.h f24, f9, f28, rne # perform operation
fdiv.h f24, f9, f28, rtz # perform operation
fdiv.h f24, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fdiv.h f28, f17, f22, dyn # perform operation
fdiv.h f28, f17, f22, rdn # perform operation
fdiv.h f28, f17, f22, rmm # perform operation
fdiv.h f28, f17, f22, rne # perform operation
fdiv.h f28, f17, f22, rtz # perform operation
fdiv.h f28, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fdiv.h f12, f9, f28, dyn # perform operation
fdiv.h f12, f9, f28, rdn # perform operation
fdiv.h f12, f9, f28, rmm # perform operation
fdiv.h f12, f9, f28, rne # perform operation
fdiv.h f12, f9, f28, rtz # perform operation
fdiv.h f12, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fdiv.h f29, f31, f5, dyn # perform operation
fdiv.h f29, f31, f5, rdn # perform operation
fdiv.h f29, f31, f5, rmm # perform operation
fdiv.h f29, f31, f5, rne # perform operation
fdiv.h f29, f31, f5, rtz # perform operation
fdiv.h f29, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fdiv.h f8, f29, f24, dyn # perform operation
fdiv.h f8, f29, f24, rdn # perform operation
fdiv.h f8, f29, f24, rmm # perform operation
fdiv.h f8, f29, f24, rne # perform operation
fdiv.h f8, f29, f24, rtz # perform operation
fdiv.h f8, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fdiv.h f11, f16, f13, dyn # perform operation
fdiv.h f11, f16, f13, rdn # perform operation
fdiv.h f11, f16, f13, rmm # perform operation
fdiv.h f11, f16, f13, rne # perform operation
fdiv.h f11, f16, f13, rtz # perform operation
fdiv.h f11, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f16, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.h f28, f22, f29, dyn # perform operation
fdiv.h f28, f22, f29, rdn # perform operation
fdiv.h f28, f22, f29, rmm # perform operation
fdiv.h f28, f22, f29, rne # perform operation
fdiv.h f28, f22, f29, rtz # perform operation
fdiv.h f28, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fdiv.h f22, f24, f25, dyn # perform operation
fdiv.h f22, f24, f25, rdn # perform operation
fdiv.h f22, f24, f25, rmm # perform operation
fdiv.h f22, f24, f25, rne # perform operation
fdiv.h f22, f24, f25, rtz # perform operation
fdiv.h f22, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fdiv.h f26, f16, f18, dyn # perform operation
fdiv.h f26, f16, f18, rdn # perform operation
fdiv.h f26, f16, f18, rmm # perform operation
fdiv.h f26, f16, f18, rne # perform operation
fdiv.h f26, f16, f18, rtz # perform operation
fdiv.h f26, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f3, f24, f11, dyn # perform operation
fdiv.h f3, f24, f11, rdn # perform operation
fdiv.h f3, f24, f11, rmm # perform operation
fdiv.h f3, f24, f11, rne # perform operation
fdiv.h f3, f24, f11, rtz # perform operation
fdiv.h f3, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fdiv.h f28, f27, f17, dyn # perform operation
fdiv.h f28, f27, f17, rdn # perform operation
fdiv.h f28, f27, f17, rmm # perform operation
fdiv.h f28, f27, f17, rne # perform operation
fdiv.h f28, f27, f17, rtz # perform operation
fdiv.h f28, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fdiv.h f7, f12, f17, dyn # perform operation
fdiv.h f7, f12, f17, rdn # perform operation
fdiv.h f7, f12, f17, rmm # perform operation
fdiv.h f7, f12, f17, rne # perform operation
fdiv.h f7, f12, f17, rtz # perform operation
fdiv.h f7, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fdiv.h f18, f16, f30, dyn # perform operation
fdiv.h f18, f16, f30, rdn # perform operation
fdiv.h f18, f16, f30, rmm # perform operation
fdiv.h f18, f16, f30, rne # perform operation
fdiv.h f18, f16, f30, rtz # perform operation
fdiv.h f18, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fdiv.h f20, f6, f30, dyn # perform operation
fdiv.h f20, f6, f30, rdn # perform operation
fdiv.h f20, f6, f30, rmm # perform operation
fdiv.h f20, f6, f30, rne # perform operation
fdiv.h f20, f6, f30, rtz # perform operation
fdiv.h f20, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f20, f24, f27, dyn # perform operation
fdiv.h f20, f24, f27, rdn # perform operation
fdiv.h f20, f24, f27, rmm # perform operation
fdiv.h f20, f24, f27, rne # perform operation
fdiv.h f20, f24, f27, rtz # perform operation
fdiv.h f20, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fdiv.h f5, f16, f12, dyn # perform operation
fdiv.h f5, f16, f12, rdn # perform operation
fdiv.h f5, f16, f12, rmm # perform operation
fdiv.h f5, f16, f12, rne # perform operation
fdiv.h f5, f16, f12, rtz # perform operation
fdiv.h f5, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fdiv.h f26, f22, f5, dyn # perform operation
fdiv.h f26, f22, f5, rdn # perform operation
fdiv.h f26, f22, f5, rmm # perform operation
fdiv.h f26, f22, f5, rne # perform operation
fdiv.h f26, f22, f5, rtz # perform operation
fdiv.h f26, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fdiv.h f31, f10, f12, dyn # perform operation
fdiv.h f31, f10, f12, rdn # perform operation
fdiv.h f31, f10, f12, rmm # perform operation
fdiv.h f31, f10, f12, rne # perform operation
fdiv.h f31, f10, f12, rtz # perform operation
fdiv.h f31, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fdiv.h f23, f26, f22, dyn # perform operation
fdiv.h f23, f26, f22, rdn # perform operation
fdiv.h f23, f26, f22, rmm # perform operation
fdiv.h f23, f26, f22, rne # perform operation
fdiv.h f23, f26, f22, rtz # perform operation
fdiv.h f23, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fdiv.h f21, f13, f10, dyn # perform operation
fdiv.h f21, f13, f10, rdn # perform operation
fdiv.h f21, f13, f10, rmm # perform operation
fdiv.h f21, f13, f10, rne # perform operation
fdiv.h f21, f13, f10, rtz # perform operation
fdiv.h f21, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fdiv.h f29, f9, f26, dyn # perform operation
fdiv.h f29, f9, f26, rdn # perform operation
fdiv.h f29, f9, f26, rmm # perform operation
fdiv.h f29, f9, f26, rne # perform operation
fdiv.h f29, f9, f26, rtz # perform operation
fdiv.h f29, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fdiv.h f30, f26, f27, dyn # perform operation
fdiv.h f30, f26, f27, rdn # perform operation
fdiv.h f30, f26, f27, rmm # perform operation
fdiv.h f30, f26, f27, rne # perform operation
fdiv.h f30, f26, f27, rtz # perform operation
fdiv.h f30, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fdiv.h f29, f3, f28, dyn # perform operation
fdiv.h f29, f3, f28, rdn # perform operation
fdiv.h f29, f3, f28, rmm # perform operation
fdiv.h f29, f3, f28, rne # perform operation
fdiv.h f29, f3, f28, rtz # perform operation
fdiv.h f29, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fdiv.h f17, f8, f31, dyn # perform operation
fdiv.h f17, f8, f31, rdn # perform operation
fdiv.h f17, f8, f31, rmm # perform operation
fdiv.h f17, f8, f31, rne # perform operation
fdiv.h f17, f8, f31, rtz # perform operation
fdiv.h f17, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fdiv.h f7, f19, f10, dyn # perform operation
fdiv.h f7, f19, f10, rdn # perform operation
fdiv.h f7, f19, f10, rmm # perform operation
fdiv.h f7, f19, f10, rne # perform operation
fdiv.h f7, f19, f10, rtz # perform operation
fdiv.h f7, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fdiv.h f8, f12, f6, dyn # perform operation
fdiv.h f8, f12, f6, rdn # perform operation
fdiv.h f8, f12, f6, rmm # perform operation
fdiv.h f8, f12, f6, rne # perform operation
fdiv.h f8, f12, f6, rtz # perform operation
fdiv.h f8, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f12, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fdiv.h f29, f5, f17, dyn # perform operation
fdiv.h f29, f5, f17, rdn # perform operation
fdiv.h f29, f5, f17, rmm # perform operation
fdiv.h f29, f5, f17, rne # perform operation
fdiv.h f29, f5, f17, rtz # perform operation
fdiv.h f29, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fdiv.h f22, f12, f2, dyn # perform operation
fdiv.h f22, f12, f2, rdn # perform operation
fdiv.h f22, f12, f2, rmm # perform operation
fdiv.h f22, f12, f2, rne # perform operation
fdiv.h f22, f12, f2, rtz # perform operation
fdiv.h f22, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fdiv.h f16, f25, f17, dyn # perform operation
fdiv.h f16, f25, f17, rdn # perform operation
fdiv.h f16, f25, f17, rmm # perform operation
fdiv.h f16, f25, f17, rne # perform operation
fdiv.h f16, f25, f17, rtz # perform operation
fdiv.h f16, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fdiv.h f2, f6, f7, dyn # perform operation
fdiv.h f2, f6, f7, rdn # perform operation
fdiv.h f2, f6, f7, rmm # perform operation
fdiv.h f2, f6, f7, rne # perform operation
fdiv.h f2, f6, f7, rtz # perform operation
fdiv.h f2, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fdiv.h f3, f6, f12, dyn # perform operation
fdiv.h f3, f6, f12, rdn # perform operation
fdiv.h f3, f6, f12, rmm # perform operation
fdiv.h f3, f6, f12, rne # perform operation
fdiv.h f3, f6, f12, rtz # perform operation
fdiv.h f3, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fdiv.h f5, f11, f10, dyn # perform operation
fdiv.h f5, f11, f10, rdn # perform operation
fdiv.h f5, f11, f10, rmm # perform operation
fdiv.h f5, f11, f10, rne # perform operation
fdiv.h f5, f11, f10, rtz # perform operation
fdiv.h f5, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fdiv.h f18, f12, f29, dyn # perform operation
fdiv.h f18, f12, f29, rdn # perform operation
fdiv.h f18, f12, f29, rmm # perform operation
fdiv.h f18, f12, f29, rne # perform operation
fdiv.h f18, f12, f29, rtz # perform operation
fdiv.h f18, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f9, f13, f14, dyn # perform operation
fdiv.h f9, f13, f14, rdn # perform operation
fdiv.h f9, f13, f14, rmm # perform operation
fdiv.h f9, f13, f14, rne # perform operation
fdiv.h f9, f13, f14, rtz # perform operation
fdiv.h f9, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.h f22, f19, f14, dyn # perform operation
fdiv.h f22, f19, f14, rdn # perform operation
fdiv.h f22, f19, f14, rmm # perform operation
fdiv.h f22, f19, f14, rne # perform operation
fdiv.h f22, f19, f14, rtz # perform operation
fdiv.h f22, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fdiv.h f30, f18, f5, dyn # perform operation
fdiv.h f30, f18, f5, rdn # perform operation
fdiv.h f30, f18, f5, rmm # perform operation
fdiv.h f30, f18, f5, rne # perform operation
fdiv.h f30, f18, f5, rtz # perform operation
fdiv.h f30, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fdiv.h f14, f11, f22, dyn # perform operation
fdiv.h f14, f11, f22, rdn # perform operation
fdiv.h f14, f11, f22, rmm # perform operation
fdiv.h f14, f11, f22, rne # perform operation
fdiv.h f14, f11, f22, rtz # perform operation
fdiv.h f14, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fdiv.h f17, f9, f19, dyn # perform operation
fdiv.h f17, f9, f19, rdn # perform operation
fdiv.h f17, f9, f19, rmm # perform operation
fdiv.h f17, f9, f19, rne # perform operation
fdiv.h f17, f9, f19, rtz # perform operation
fdiv.h f17, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fdiv.h f20, f28, f15, dyn # perform operation
fdiv.h f20, f28, f15, rdn # perform operation
fdiv.h f20, f28, f15, rmm # perform operation
fdiv.h f20, f28, f15, rne # perform operation
fdiv.h f20, f28, f15, rtz # perform operation
fdiv.h f20, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fdiv.h f27, f8, f22, dyn # perform operation
fdiv.h f27, f8, f22, rdn # perform operation
fdiv.h f27, f8, f22, rmm # perform operation
fdiv.h f27, f8, f22, rne # perform operation
fdiv.h f27, f8, f22, rtz # perform operation
fdiv.h f27, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f10, f22, f13, dyn # perform operation
fdiv.h f10, f22, f13, rdn # perform operation
fdiv.h f10, f22, f13, rmm # perform operation
fdiv.h f10, f22, f13, rne # perform operation
fdiv.h f10, f22, f13, rtz # perform operation
fdiv.h f10, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fdiv.h f24, f30, f27, dyn # perform operation
fdiv.h f24, f30, f27, rdn # perform operation
fdiv.h f24, f30, f27, rmm # perform operation
fdiv.h f24, f30, f27, rne # perform operation
fdiv.h f24, f30, f27, rtz # perform operation
fdiv.h f24, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fdiv.h f29, f19, f9, dyn # perform operation
fdiv.h f29, f19, f9, rdn # perform operation
fdiv.h f29, f19, f9, rmm # perform operation
fdiv.h f29, f19, f9, rne # perform operation
fdiv.h f29, f19, f9, rtz # perform operation
fdiv.h f29, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fdiv.h f31, f14, f20, dyn # perform operation
fdiv.h f31, f14, f20, rdn # perform operation
fdiv.h f31, f14, f20, rmm # perform operation
fdiv.h f31, f14, f20, rne # perform operation
fdiv.h f31, f14, f20, rtz # perform operation
fdiv.h f31, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fdiv.h f10, f16, f1, dyn # perform operation
fdiv.h f10, f16, f1, rdn # perform operation
fdiv.h f10, f16, f1, rmm # perform operation
fdiv.h f10, f16, f1, rne # perform operation
fdiv.h f10, f16, f1, rtz # perform operation
fdiv.h f10, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fdiv.h f12, f18, f25, dyn # perform operation
fdiv.h f12, f18, f25, rdn # perform operation
fdiv.h f12, f18, f25, rmm # perform operation
fdiv.h f12, f18, f25, rne # perform operation
fdiv.h f12, f18, f25, rtz # perform operation
fdiv.h f12, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fdiv.h f17, f1, f5, dyn # perform operation
fdiv.h f17, f1, f5, rdn # perform operation
fdiv.h f17, f1, f5, rmm # perform operation
fdiv.h f17, f1, f5, rne # perform operation
fdiv.h f17, f1, f5, rtz # perform operation
fdiv.h f17, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fdiv.h f20, f2, f21, dyn # perform operation
fdiv.h f20, f2, f21, rdn # perform operation
fdiv.h f20, f2, f21, rmm # perform operation
fdiv.h f20, f2, f21, rne # perform operation
fdiv.h f20, f2, f21, rtz # perform operation
fdiv.h f20, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fdiv.h f10, f3, f15, dyn # perform operation
fdiv.h f10, f3, f15, rdn # perform operation
fdiv.h f10, f3, f15, rmm # perform operation
fdiv.h f10, f3, f15, rne # perform operation
fdiv.h f10, f3, f15, rtz # perform operation
fdiv.h f10, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fdiv.h f24, f3, f2, dyn # perform operation
fdiv.h f24, f3, f2, rdn # perform operation
fdiv.h f24, f3, f2, rmm # perform operation
fdiv.h f24, f3, f2, rne # perform operation
fdiv.h f24, f3, f2, rtz # perform operation
fdiv.h f24, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.h f16, f27, f19, dyn # perform operation
fdiv.h f16, f27, f19, rdn # perform operation
fdiv.h f16, f27, f19, rmm # perform operation
fdiv.h f16, f27, f19, rne # perform operation
fdiv.h f16, f27, f19, rtz # perform operation
fdiv.h f16, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fdiv.h f9, f23, f6, dyn # perform operation
fdiv.h f9, f23, f6, rdn # perform operation
fdiv.h f9, f23, f6, rmm # perform operation
fdiv.h f9, f23, f6, rne # perform operation
fdiv.h f9, f23, f6, rtz # perform operation
fdiv.h f9, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fdiv.h f19, f18, f28, dyn # perform operation
fdiv.h f19, f18, f28, rdn # perform operation
fdiv.h f19, f18, f28, rmm # perform operation
fdiv.h f19, f18, f28, rne # perform operation
fdiv.h f19, f18, f28, rtz # perform operation
fdiv.h f19, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fdiv.h f5, f27, f19, dyn # perform operation
fdiv.h f5, f27, f19, rdn # perform operation
fdiv.h f5, f27, f19, rmm # perform operation
fdiv.h f5, f27, f19, rne # perform operation
fdiv.h f5, f27, f19, rtz # perform operation
fdiv.h f5, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fdiv.h f9, f15, f1, dyn # perform operation
fdiv.h f9, f15, f1, rdn # perform operation
fdiv.h f9, f15, f1, rmm # perform operation
fdiv.h f9, f15, f1, rne # perform operation
fdiv.h f9, f15, f1, rtz # perform operation
fdiv.h f9, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fdiv.h f5, f16, f1, dyn # perform operation
fdiv.h f5, f16, f1, rdn # perform operation
fdiv.h f5, f16, f1, rmm # perform operation
fdiv.h f5, f16, f1, rne # perform operation
fdiv.h f5, f16, f1, rtz # perform operation
fdiv.h f5, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fdiv.h f7, f29, f15, dyn # perform operation
fdiv.h f7, f29, f15, rdn # perform operation
fdiv.h f7, f29, f15, rmm # perform operation
fdiv.h f7, f29, f15, rne # perform operation
fdiv.h f7, f29, f15, rtz # perform operation
fdiv.h f7, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fdiv.h f30, f28, f12, dyn # perform operation
fdiv.h f30, f28, f12, rdn # perform operation
fdiv.h f30, f28, f12, rmm # perform operation
fdiv.h f30, f28, f12, rne # perform operation
fdiv.h f30, f28, f12, rtz # perform operation
fdiv.h f30, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fdiv.h f20, f2, f24, dyn # perform operation
fdiv.h f20, f2, f24, rdn # perform operation
fdiv.h f20, f2, f24, rmm # perform operation
fdiv.h f20, f2, f24, rne # perform operation
fdiv.h f20, f2, f24, rtz # perform operation
fdiv.h f20, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
fdiv.h f24, f14, f20, dyn # perform operation
fdiv.h f24, f14, f20, rdn # perform operation
fdiv.h f24, f14, f20, rmm # perform operation
fdiv.h f24, f14, f20, rne # perform operation
fdiv.h f24, f14, f20, rtz # perform operation
fdiv.h f24, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fdiv.h f11, f21, f20, dyn # perform operation
fdiv.h f11, f21, f20, rdn # perform operation
fdiv.h f11, f21, f20, rmm # perform operation
fdiv.h f11, f21, f20, rne # perform operation
fdiv.h f11, f21, f20, rtz # perform operation
fdiv.h f11, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fdiv.h f12, f21, f11, dyn # perform operation
fdiv.h f12, f21, f11, rdn # perform operation
fdiv.h f12, f21, f11, rmm # perform operation
fdiv.h f12, f21, f11, rne # perform operation
fdiv.h f12, f21, f11, rtz # perform operation
fdiv.h f12, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f25, f13, f30, dyn # perform operation
fdiv.h f25, f13, f30, rdn # perform operation
fdiv.h f25, f13, f30, rmm # perform operation
fdiv.h f25, f13, f30, rne # perform operation
fdiv.h f25, f13, f30, rtz # perform operation
fdiv.h f25, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fdiv.h f18, f28, f11, dyn # perform operation
fdiv.h f18, f28, f11, rdn # perform operation
fdiv.h f18, f28, f11, rmm # perform operation
fdiv.h f18, f28, f11, rne # perform operation
fdiv.h f18, f28, f11, rtz # perform operation
fdiv.h f18, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fdiv.h f10, f11, f1, dyn # perform operation
fdiv.h f10, f11, f1, rdn # perform operation
fdiv.h f10, f11, f1, rmm # perform operation
fdiv.h f10, f11, f1, rne # perform operation
fdiv.h f10, f11, f1, rtz # perform operation
fdiv.h f10, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fdiv.h f23, f31, f6, dyn # perform operation
fdiv.h f23, f31, f6, rdn # perform operation
fdiv.h f23, f31, f6, rmm # perform operation
fdiv.h f23, f31, f6, rne # perform operation
fdiv.h f23, f31, f6, rtz # perform operation
fdiv.h f23, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fdiv.h f13, f20, f3, dyn # perform operation
fdiv.h f13, f20, f3, rdn # perform operation
fdiv.h f13, f20, f3, rmm # perform operation
fdiv.h f13, f20, f3, rne # perform operation
fdiv.h f13, f20, f3, rtz # perform operation
fdiv.h f13, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fdiv.h f27, f28, f9, dyn # perform operation
fdiv.h f27, f28, f9, rdn # perform operation
fdiv.h f27, f28, f9, rmm # perform operation
fdiv.h f27, f28, f9, rne # perform operation
fdiv.h f27, f28, f9, rtz # perform operation
fdiv.h f27, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fdiv.h f22, f28, f30, dyn # perform operation
fdiv.h f22, f28, f30, rdn # perform operation
fdiv.h f22, f28, f30, rmm # perform operation
fdiv.h f22, f28, f30, rne # perform operation
fdiv.h f22, f28, f30, rtz # perform operation
fdiv.h f22, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f5, f18, f17, dyn # perform operation
fdiv.h f5, f18, f17, rdn # perform operation
fdiv.h f5, f18, f17, rmm # perform operation
fdiv.h f5, f18, f17, rne # perform operation
fdiv.h f5, f18, f17, rtz # perform operation
fdiv.h f5, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fdiv.h f8, f28, f20, dyn # perform operation
fdiv.h f8, f28, f20, rdn # perform operation
fdiv.h f8, f28, f20, rmm # perform operation
fdiv.h f8, f28, f20, rne # perform operation
fdiv.h f8, f28, f20, rtz # perform operation
fdiv.h f8, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fdiv.h f27, f29, f13, dyn # perform operation
fdiv.h f27, f29, f13, rdn # perform operation
fdiv.h f27, f29, f13, rmm # perform operation
fdiv.h f27, f29, f13, rne # perform operation
fdiv.h f27, f29, f13, rtz # perform operation
fdiv.h f27, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fdiv.h f28, f25, f15, dyn # perform operation
fdiv.h f28, f25, f15, rdn # perform operation
fdiv.h f28, f25, f15, rmm # perform operation
fdiv.h f28, f25, f15, rne # perform operation
fdiv.h f28, f25, f15, rtz # perform operation
fdiv.h f28, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fdiv.h f21, f22, f19, dyn # perform operation
fdiv.h f21, f22, f19, rdn # perform operation
fdiv.h f21, f22, f19, rmm # perform operation
fdiv.h f21, f22, f19, rne # perform operation
fdiv.h f21, f22, f19, rtz # perform operation
fdiv.h f21, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fdiv.h f8, f16, f17, dyn # perform operation
fdiv.h f8, f16, f17, rdn # perform operation
fdiv.h f8, f16, f17, rmm # perform operation
fdiv.h f8, f16, f17, rne # perform operation
fdiv.h f8, f16, f17, rtz # perform operation
fdiv.h f8, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fdiv.h f13, f27, f6, dyn # perform operation
fdiv.h f13, f27, f6, rdn # perform operation
fdiv.h f13, f27, f6, rmm # perform operation
fdiv.h f13, f27, f6, rne # perform operation
fdiv.h f13, f27, f6, rtz # perform operation
fdiv.h f13, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fdiv.h f27, f21, f9, dyn # perform operation
fdiv.h f27, f21, f9, rdn # perform operation
fdiv.h f27, f21, f9, rmm # perform operation
fdiv.h f27, f21, f9, rne # perform operation
fdiv.h f27, f21, f9, rtz # perform operation
fdiv.h f27, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fdiv.h f14, f16, f3, dyn # perform operation
fdiv.h f14, f16, f3, rdn # perform operation
fdiv.h f14, f16, f3, rmm # perform operation
fdiv.h f14, f16, f3, rne # perform operation
fdiv.h f14, f16, f3, rtz # perform operation
fdiv.h f14, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f26, f10, f16, dyn # perform operation
fdiv.h f26, f10, f16, rdn # perform operation
fdiv.h f26, f10, f16, rmm # perform operation
fdiv.h f26, f10, f16, rne # perform operation
fdiv.h f26, f10, f16, rtz # perform operation
fdiv.h f26, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fdiv.h f20, f24, f18, dyn # perform operation
fdiv.h f20, f24, f18, rdn # perform operation
fdiv.h f20, f24, f18, rmm # perform operation
fdiv.h f20, f24, f18, rne # perform operation
fdiv.h f20, f24, f18, rtz # perform operation
fdiv.h f20, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fdiv.h f25, f10, f7, dyn # perform operation
fdiv.h f25, f10, f7, rdn # perform operation
fdiv.h f25, f10, f7, rmm # perform operation
fdiv.h f25, f10, f7, rne # perform operation
fdiv.h f25, f10, f7, rtz # perform operation
fdiv.h f25, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fdiv.h f11, f21, f7, dyn # perform operation
fdiv.h f11, f21, f7, rdn # perform operation
fdiv.h f11, f21, f7, rmm # perform operation
fdiv.h f11, f21, f7, rne # perform operation
fdiv.h f11, f21, f7, rtz # perform operation
fdiv.h f11, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fdiv.h f25, f11, f15, dyn # perform operation
fdiv.h f25, f11, f15, rdn # perform operation
fdiv.h f25, f11, f15, rmm # perform operation
fdiv.h f25, f11, f15, rne # perform operation
fdiv.h f25, f11, f15, rtz # perform operation
fdiv.h f25, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fdiv.h f3, f16, f20, dyn # perform operation
fdiv.h f3, f16, f20, rdn # perform operation
fdiv.h f3, f16, f20, rmm # perform operation
fdiv.h f3, f16, f20, rne # perform operation
fdiv.h f3, f16, f20, rtz # perform operation
fdiv.h f3, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fdiv.h f23, f14, f17, dyn # perform operation
fdiv.h f23, f14, f17, rdn # perform operation
fdiv.h f23, f14, f17, rmm # perform operation
fdiv.h f23, f14, f17, rne # perform operation
fdiv.h f23, f14, f17, rtz # perform operation
fdiv.h f23, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fdiv.h f11, f22, f26, dyn # perform operation
fdiv.h f11, f22, f26, rdn # perform operation
fdiv.h f11, f22, f26, rmm # perform operation
fdiv.h f11, f22, f26, rne # perform operation
fdiv.h f11, f22, f26, rtz # perform operation
fdiv.h f11, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fdiv.h f8, f23, f28, dyn # perform operation
fdiv.h f8, f23, f28, rdn # perform operation
fdiv.h f8, f23, f28, rmm # perform operation
fdiv.h f8, f23, f28, rne # perform operation
fdiv.h f8, f23, f28, rtz # perform operation
fdiv.h f8, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fdiv.h f12, f27, f29, dyn # perform operation
fdiv.h f12, f27, f29, rdn # perform operation
fdiv.h f12, f27, f29, rmm # perform operation
fdiv.h f12, f27, f29, rne # perform operation
fdiv.h f12, f27, f29, rtz # perform operation
fdiv.h f12, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f14, f11, f17, dyn # perform operation
fdiv.h f14, f11, f17, rdn # perform operation
fdiv.h f14, f11, f17, rmm # perform operation
fdiv.h f14, f11, f17, rne # perform operation
fdiv.h f14, f11, f17, rtz # perform operation
fdiv.h f14, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fdiv.h f8, f26, f20, dyn # perform operation
fdiv.h f8, f26, f20, rdn # perform operation
fdiv.h f8, f26, f20, rmm # perform operation
fdiv.h f8, f26, f20, rne # perform operation
fdiv.h f8, f26, f20, rtz # perform operation
fdiv.h f8, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.h f6, f9, f12, dyn # perform operation
fdiv.h f6, f9, f12, rdn # perform operation
fdiv.h f6, f9, f12, rmm # perform operation
fdiv.h f6, f9, f12, rne # perform operation
fdiv.h f6, f9, f12, rtz # perform operation
fdiv.h f6, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fdiv.h f16, f1, f11, dyn # perform operation
fdiv.h f16, f1, f11, rdn # perform operation
fdiv.h f16, f1, f11, rmm # perform operation
fdiv.h f16, f1, f11, rne # perform operation
fdiv.h f16, f1, f11, rtz # perform operation
fdiv.h f16, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f11, f20, f3, dyn # perform operation
fdiv.h f11, f20, f3, rdn # perform operation
fdiv.h f11, f20, f3, rmm # perform operation
fdiv.h f11, f20, f3, rne # perform operation
fdiv.h f11, f20, f3, rtz # perform operation
fdiv.h f11, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fdiv.h f21, f29, f2, dyn # perform operation
fdiv.h f21, f29, f2, rdn # perform operation
fdiv.h f21, f29, f2, rmm # perform operation
fdiv.h f21, f29, f2, rne # perform operation
fdiv.h f21, f29, f2, rtz # perform operation
fdiv.h f21, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fdiv.h f9, f2, f19, dyn # perform operation
fdiv.h f9, f2, f19, rdn # perform operation
fdiv.h f9, f2, f19, rmm # perform operation
fdiv.h f9, f2, f19, rne # perform operation
fdiv.h f9, f2, f19, rtz # perform operation
fdiv.h f9, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fdiv.h f21, f13, f3, dyn # perform operation
fdiv.h f21, f13, f3, rdn # perform operation
fdiv.h f21, f13, f3, rmm # perform operation
fdiv.h f21, f13, f3, rne # perform operation
fdiv.h f21, f13, f3, rtz # perform operation
fdiv.h f21, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fdiv.h f9, f5, f6, dyn # perform operation
fdiv.h f9, f5, f6, rdn # perform operation
fdiv.h f9, f5, f6, rmm # perform operation
fdiv.h f9, f5, f6, rne # perform operation
fdiv.h f9, f5, f6, rtz # perform operation
fdiv.h f9, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fdiv.h f31, f22, f23, dyn # perform operation
fdiv.h f31, f22, f23, rdn # perform operation
fdiv.h f31, f22, f23, rmm # perform operation
fdiv.h f31, f22, f23, rne # perform operation
fdiv.h f31, f22, f23, rtz # perform operation
fdiv.h f31, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fdiv.h f17, f9, f26, dyn # perform operation
fdiv.h f17, f9, f26, rdn # perform operation
fdiv.h f17, f9, f26, rmm # perform operation
fdiv.h f17, f9, f26, rne # perform operation
fdiv.h f17, f9, f26, rtz # perform operation
fdiv.h f17, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fdiv.h f23, f5, f14, dyn # perform operation
fdiv.h f23, f5, f14, rdn # perform operation
fdiv.h f23, f5, f14, rmm # perform operation
fdiv.h f23, f5, f14, rne # perform operation
fdiv.h f23, f5, f14, rtz # perform operation
fdiv.h f23, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fdiv.h f11, f27, f10, dyn # perform operation
fdiv.h f11, f27, f10, rdn # perform operation
fdiv.h f11, f27, f10, rmm # perform operation
fdiv.h f11, f27, f10, rne # perform operation
fdiv.h f11, f27, f10, rtz # perform operation
fdiv.h f11, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fdiv.h f10, f6, f12, dyn # perform operation
fdiv.h f10, f6, f12, rdn # perform operation
fdiv.h f10, f6, f12, rmm # perform operation
fdiv.h f10, f6, f12, rne # perform operation
fdiv.h f10, f6, f12, rtz # perform operation
fdiv.h f10, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fdiv.h f29, f30, f2, dyn # perform operation
fdiv.h f29, f30, f2, rdn # perform operation
fdiv.h f29, f30, f2, rmm # perform operation
fdiv.h f29, f30, f2, rne # perform operation
fdiv.h f29, f30, f2, rtz # perform operation
fdiv.h f29, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fdiv.h f2, f20, f8, dyn # perform operation
fdiv.h f2, f20, f8, rdn # perform operation
fdiv.h f2, f20, f8, rmm # perform operation
fdiv.h f2, f20, f8, rne # perform operation
fdiv.h f2, f20, f8, rtz # perform operation
fdiv.h f2, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fdiv.h f31, f21, f12, dyn # perform operation
fdiv.h f31, f21, f12, rdn # perform operation
fdiv.h f31, f21, f12, rmm # perform operation
fdiv.h f31, f21, f12, rne # perform operation
fdiv.h f31, f21, f12, rtz # perform operation
fdiv.h f31, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fdiv.h f7, f13, f10, dyn # perform operation
fdiv.h f7, f13, f10, rdn # perform operation
fdiv.h f7, f13, f10, rmm # perform operation
fdiv.h f7, f13, f10, rne # perform operation
fdiv.h f7, f13, f10, rtz # perform operation
fdiv.h f7, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f13, f3, f21, dyn # perform operation
fdiv.h f13, f3, f21, rdn # perform operation
fdiv.h f13, f3, f21, rmm # perform operation
fdiv.h f13, f3, f21, rne # perform operation
fdiv.h f13, f3, f21, rtz # perform operation
fdiv.h f13, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fdiv.h f7, f6, f20, dyn # perform operation
fdiv.h f7, f6, f20, rdn # perform operation
fdiv.h f7, f6, f20, rmm # perform operation
fdiv.h f7, f6, f20, rne # perform operation
fdiv.h f7, f6, f20, rtz # perform operation
fdiv.h f7, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fdiv.h f29, f19, f5, dyn # perform operation
fdiv.h f29, f19, f5, rdn # perform operation
fdiv.h f29, f19, f5, rmm # perform operation
fdiv.h f29, f19, f5, rne # perform operation
fdiv.h f29, f19, f5, rtz # perform operation
fdiv.h f29, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fdiv.h f15, f19, f21, dyn # perform operation
fdiv.h f15, f19, f21, rdn # perform operation
fdiv.h f15, f19, f21, rmm # perform operation
fdiv.h f15, f19, f21, rne # perform operation
fdiv.h f15, f19, f21, rtz # perform operation
fdiv.h f15, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fdiv.h f24, f25, f12, dyn # perform operation
fdiv.h f24, f25, f12, rdn # perform operation
fdiv.h f24, f25, f12, rmm # perform operation
fdiv.h f24, f25, f12, rne # perform operation
fdiv.h f24, f25, f12, rtz # perform operation
fdiv.h f24, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fdiv.h f20, f28, f27, dyn # perform operation
fdiv.h f20, f28, f27, rdn # perform operation
fdiv.h f20, f28, f27, rmm # perform operation
fdiv.h f20, f28, f27, rne # perform operation
fdiv.h f20, f28, f27, rtz # perform operation
fdiv.h f20, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
fdiv.h f25, f23, f8, dyn # perform operation
fdiv.h f25, f23, f8, rdn # perform operation
fdiv.h f25, f23, f8, rmm # perform operation
fdiv.h f25, f23, f8, rne # perform operation
fdiv.h f25, f23, f8, rtz # perform operation
fdiv.h f25, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fdiv.h f5, f16, f8, dyn # perform operation
fdiv.h f5, f16, f8, rdn # perform operation
fdiv.h f5, f16, f8, rmm # perform operation
fdiv.h f5, f16, f8, rne # perform operation
fdiv.h f5, f16, f8, rtz # perform operation
fdiv.h f5, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fdiv.h f25, f10, f1, dyn # perform operation
fdiv.h f25, f10, f1, rdn # perform operation
fdiv.h f25, f10, f1, rmm # perform operation
fdiv.h f25, f10, f1, rne # perform operation
fdiv.h f25, f10, f1, rtz # perform operation
fdiv.h f25, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fdiv.h f12, f11, f8, dyn # perform operation
fdiv.h f12, f11, f8, rdn # perform operation
fdiv.h f12, f11, f8, rmm # perform operation
fdiv.h f12, f11, f8, rne # perform operation
fdiv.h f12, f11, f8, rtz # perform operation
fdiv.h f12, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fdiv.h f12, f26, f5, dyn # perform operation
fdiv.h f12, f26, f5, rdn # perform operation
fdiv.h f12, f26, f5, rmm # perform operation
fdiv.h f12, f26, f5, rne # perform operation
fdiv.h f12, f26, f5, rtz # perform operation
fdiv.h f12, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fdiv.h f31, f11, f22, dyn # perform operation
fdiv.h f31, f11, f22, rdn # perform operation
fdiv.h f31, f11, f22, rmm # perform operation
fdiv.h f31, f11, f22, rne # perform operation
fdiv.h f31, f11, f22, rtz # perform operation
fdiv.h f31, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f10, f22, f19, dyn # perform operation
fdiv.h f10, f22, f19, rdn # perform operation
fdiv.h f10, f22, f19, rmm # perform operation
fdiv.h f10, f22, f19, rne # perform operation
fdiv.h f10, f22, f19, rtz # perform operation
fdiv.h f10, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fdiv.h f29, f19, f17, dyn # perform operation
fdiv.h f29, f19, f17, rdn # perform operation
fdiv.h f29, f19, f17, rmm # perform operation
fdiv.h f29, f19, f17, rne # perform operation
fdiv.h f29, f19, f17, rtz # perform operation
fdiv.h f29, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fdiv.h f1, f11, f7, dyn # perform operation
fdiv.h f1, f11, f7, rdn # perform operation
fdiv.h f1, f11, f7, rmm # perform operation
fdiv.h f1, f11, f7, rne # perform operation
fdiv.h f1, f11, f7, rtz # perform operation
fdiv.h f1, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fdiv.h f25, f8, f18, dyn # perform operation
fdiv.h f25, f8, f18, rdn # perform operation
fdiv.h f25, f8, f18, rmm # perform operation
fdiv.h f25, f8, f18, rne # perform operation
fdiv.h f25, f8, f18, rtz # perform operation
fdiv.h f25, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fdiv.h f13, f3, f10, dyn # perform operation
fdiv.h f13, f3, f10, rdn # perform operation
fdiv.h f13, f3, f10, rmm # perform operation
fdiv.h f13, f3, f10, rne # perform operation
fdiv.h f13, f3, f10, rtz # perform operation
fdiv.h f13, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fdiv.h f8, f10, f27, dyn # perform operation
fdiv.h f8, f10, f27, rdn # perform operation
fdiv.h f8, f10, f27, rmm # perform operation
fdiv.h f8, f10, f27, rne # perform operation
fdiv.h f8, f10, f27, rtz # perform operation
fdiv.h f8, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fdiv.h f30, f3, f27, dyn # perform operation
fdiv.h f30, f3, f27, rdn # perform operation
fdiv.h f30, f3, f27, rmm # perform operation
fdiv.h f30, f3, f27, rne # perform operation
fdiv.h f30, f3, f27, rtz # perform operation
fdiv.h f30, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f12, f22, f17, dyn # perform operation
fdiv.h f12, f22, f17, rdn # perform operation
fdiv.h f12, f22, f17, rmm # perform operation
fdiv.h f12, f22, f17, rne # perform operation
fdiv.h f12, f22, f17, rtz # perform operation
fdiv.h f12, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fdiv.h f24, f14, f7, dyn # perform operation
fdiv.h f24, f14, f7, rdn # perform operation
fdiv.h f24, f14, f7, rmm # perform operation
fdiv.h f24, f14, f7, rne # perform operation
fdiv.h f24, f14, f7, rtz # perform operation
fdiv.h f24, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fdiv.h f23, f9, f26, dyn # perform operation
fdiv.h f23, f9, f26, rdn # perform operation
fdiv.h f23, f9, f26, rmm # perform operation
fdiv.h f23, f9, f26, rne # perform operation
fdiv.h f23, f9, f26, rtz # perform operation
fdiv.h f23, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fdiv.h f30, f5, f27, dyn # perform operation
fdiv.h f30, f5, f27, rdn # perform operation
fdiv.h f30, f5, f27, rmm # perform operation
fdiv.h f30, f5, f27, rne # perform operation
fdiv.h f30, f5, f27, rtz # perform operation
fdiv.h f30, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fdiv.h f3, f1, f12, dyn # perform operation
fdiv.h f3, f1, f12, rdn # perform operation
fdiv.h f3, f1, f12, rmm # perform operation
fdiv.h f3, f1, f12, rne # perform operation
fdiv.h f3, f1, f12, rtz # perform operation
fdiv.h f3, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f1, f11, f6, dyn # perform operation
fdiv.h f1, f11, f6, rdn # perform operation
fdiv.h f1, f11, f6, rmm # perform operation
fdiv.h f1, f11, f6, rne # perform operation
fdiv.h f1, f11, f6, rtz # perform operation
fdiv.h f1, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fdiv.h f8, f30, f28, dyn # perform operation
fdiv.h f8, f30, f28, rdn # perform operation
fdiv.h f8, f30, f28, rmm # perform operation
fdiv.h f8, f30, f28, rne # perform operation
fdiv.h f8, f30, f28, rtz # perform operation
fdiv.h f8, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fdiv.h f31, f10, f12, dyn # perform operation
fdiv.h f31, f10, f12, rdn # perform operation
fdiv.h f31, f10, f12, rmm # perform operation
fdiv.h f31, f10, f12, rne # perform operation
fdiv.h f31, f10, f12, rtz # perform operation
fdiv.h f31, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fdiv.h f29, f14, f30, dyn # perform operation
fdiv.h f29, f14, f30, rdn # perform operation
fdiv.h f29, f14, f30, rmm # perform operation
fdiv.h f29, f14, f30, rne # perform operation
fdiv.h f29, f14, f30, rtz # perform operation
fdiv.h f29, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.h f16, f22, f14, dyn # perform operation
fdiv.h f16, f22, f14, rdn # perform operation
fdiv.h f16, f22, f14, rmm # perform operation
fdiv.h f16, f22, f14, rne # perform operation
fdiv.h f16, f22, f14, rtz # perform operation
fdiv.h f16, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fdiv.h f10, f11, f30, dyn # perform operation
fdiv.h f10, f11, f30, rdn # perform operation
fdiv.h f10, f11, f30, rmm # perform operation
fdiv.h f10, f11, f30, rne # perform operation
fdiv.h f10, f11, f30, rtz # perform operation
fdiv.h f10, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fdiv.h f16, f22, f23, dyn # perform operation
fdiv.h f16, f22, f23, rdn # perform operation
fdiv.h f16, f22, f23, rmm # perform operation
fdiv.h f16, f22, f23, rne # perform operation
fdiv.h f16, f22, f23, rtz # perform operation
fdiv.h f16, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fdiv.h f22, f28, f17, dyn # perform operation
fdiv.h f22, f28, f17, rdn # perform operation
fdiv.h f22, f28, f17, rmm # perform operation
fdiv.h f22, f28, f17, rne # perform operation
fdiv.h f22, f28, f17, rtz # perform operation
fdiv.h f22, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fdiv.h f15, f25, f19, dyn # perform operation
fdiv.h f15, f25, f19, rdn # perform operation
fdiv.h f15, f25, f19, rmm # perform operation
fdiv.h f15, f25, f19, rne # perform operation
fdiv.h f15, f25, f19, rtz # perform operation
fdiv.h f15, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fdiv.h f1, f24, f18, dyn # perform operation
fdiv.h f1, f24, f18, rdn # perform operation
fdiv.h f1, f24, f18, rmm # perform operation
fdiv.h f1, f24, f18, rne # perform operation
fdiv.h f1, f24, f18, rtz # perform operation
fdiv.h f1, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fdiv.h f23, f14, f13, dyn # perform operation
fdiv.h f23, f14, f13, rdn # perform operation
fdiv.h f23, f14, f13, rmm # perform operation
fdiv.h f23, f14, f13, rne # perform operation
fdiv.h f23, f14, f13, rtz # perform operation
fdiv.h f23, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fdiv.h f22, f21, f31, dyn # perform operation
fdiv.h f22, f21, f31, rdn # perform operation
fdiv.h f22, f21, f31, rmm # perform operation
fdiv.h f22, f21, f31, rne # perform operation
fdiv.h f22, f21, f31, rtz # perform operation
fdiv.h f22, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fdiv.h f14, f18, f30, dyn # perform operation
fdiv.h f14, f18, f30, rdn # perform operation
fdiv.h f14, f18, f30, rmm # perform operation
fdiv.h f14, f18, f30, rne # perform operation
fdiv.h f14, f18, f30, rtz # perform operation
fdiv.h f14, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
fdiv.h f30, f23, f28, dyn # perform operation
fdiv.h f30, f23, f28, rdn # perform operation
fdiv.h f30, f23, f28, rmm # perform operation
fdiv.h f30, f23, f28, rne # perform operation
fdiv.h f30, f23, f28, rtz # perform operation
fdiv.h f30, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fdiv.h f12, f3, f15, dyn # perform operation
fdiv.h f12, f3, f15, rdn # perform operation
fdiv.h f12, f3, f15, rmm # perform operation
fdiv.h f12, f3, f15, rne # perform operation
fdiv.h f12, f3, f15, rtz # perform operation
fdiv.h f12, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fdiv.h f6, f15, f12, dyn # perform operation
fdiv.h f6, f15, f12, rdn # perform operation
fdiv.h f6, f15, f12, rmm # perform operation
fdiv.h f6, f15, f12, rne # perform operation
fdiv.h f6, f15, f12, rtz # perform operation
fdiv.h f6, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fdiv.h f9, f18, f10, dyn # perform operation
fdiv.h f9, f18, f10, rdn # perform operation
fdiv.h f9, f18, f10, rmm # perform operation
fdiv.h f9, f18, f10, rne # perform operation
fdiv.h f9, f18, f10, rtz # perform operation
fdiv.h f9, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fdiv.h f11, f17, f28, dyn # perform operation
fdiv.h f11, f17, f28, rdn # perform operation
fdiv.h f11, f17, f28, rmm # perform operation
fdiv.h f11, f17, f28, rne # perform operation
fdiv.h f11, f17, f28, rtz # perform operation
fdiv.h f11, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f19, f20, f15, dyn # perform operation
fdiv.h f19, f20, f15, rdn # perform operation
fdiv.h f19, f20, f15, rmm # perform operation
fdiv.h f19, f20, f15, rne # perform operation
fdiv.h f19, f20, f15, rtz # perform operation
fdiv.h f19, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fdiv.h f1, f17, f27, dyn # perform operation
fdiv.h f1, f17, f27, rdn # perform operation
fdiv.h f1, f17, f27, rmm # perform operation
fdiv.h f1, f17, f27, rne # perform operation
fdiv.h f1, f17, f27, rtz # perform operation
fdiv.h f1, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fdiv.h f1, f7, f27, dyn # perform operation
fdiv.h f1, f7, f27, rdn # perform operation
fdiv.h f1, f7, f27, rmm # perform operation
fdiv.h f1, f7, f27, rne # perform operation
fdiv.h f1, f7, f27, rtz # perform operation
fdiv.h f1, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fdiv.h f22, f14, f23, dyn # perform operation
fdiv.h f22, f14, f23, rdn # perform operation
fdiv.h f22, f14, f23, rmm # perform operation
fdiv.h f22, f14, f23, rne # perform operation
fdiv.h f22, f14, f23, rtz # perform operation
fdiv.h f22, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fdiv.h f19, f12, f18, dyn # perform operation
fdiv.h f19, f12, f18, rdn # perform operation
fdiv.h f19, f12, f18, rmm # perform operation
fdiv.h f19, f12, f18, rne # perform operation
fdiv.h f19, f12, f18, rtz # perform operation
fdiv.h f19, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fdiv.h f10, f14, f19, dyn # perform operation
fdiv.h f10, f14, f19, rdn # perform operation
fdiv.h f10, f14, f19, rmm # perform operation
fdiv.h f10, f14, f19, rne # perform operation
fdiv.h f10, f14, f19, rtz # perform operation
fdiv.h f10, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fdiv.h f28, f11, f12, dyn # perform operation
fdiv.h f28, f11, f12, rdn # perform operation
fdiv.h f28, f11, f12, rmm # perform operation
fdiv.h f28, f11, f12, rne # perform operation
fdiv.h f28, f11, f12, rtz # perform operation
fdiv.h f28, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fdiv.h f12, f25, f26, dyn # perform operation
fdiv.h f12, f25, f26, rdn # perform operation
fdiv.h f12, f25, f26, rmm # perform operation
fdiv.h f12, f25, f26, rne # perform operation
fdiv.h f12, f25, f26, rtz # perform operation
fdiv.h f12, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fdiv.h f6, f5, f25, dyn # perform operation
fdiv.h f6, f5, f25, rdn # perform operation
fdiv.h f6, f5, f25, rmm # perform operation
fdiv.h f6, f5, f25, rne # perform operation
fdiv.h f6, f5, f25, rtz # perform operation
fdiv.h f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fdiv.h f3, f6, f5, dyn # perform operation
fdiv.h f3, f6, f5, rdn # perform operation
fdiv.h f3, f6, f5, rmm # perform operation
fdiv.h f3, f6, f5, rne # perform operation
fdiv.h f3, f6, f5, rtz # perform operation
fdiv.h f3, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fdiv.h f15, f23, f30, dyn # perform operation
fdiv.h f15, f23, f30, rdn # perform operation
fdiv.h f15, f23, f30, rmm # perform operation
fdiv.h f15, f23, f30, rne # perform operation
fdiv.h f15, f23, f30, rtz # perform operation
fdiv.h f15, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fdiv.h f27, f3, f24, dyn # perform operation
fdiv.h f27, f3, f24, rdn # perform operation
fdiv.h f27, f3, f24, rmm # perform operation
fdiv.h f27, f3, f24, rne # perform operation
fdiv.h f27, f3, f24, rtz # perform operation
fdiv.h f27, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fdiv.h f24, f2, f31, dyn # perform operation
fdiv.h f24, f2, f31, rdn # perform operation
fdiv.h f24, f2, f31, rmm # perform operation
fdiv.h f24, f2, f31, rne # perform operation
fdiv.h f24, f2, f31, rtz # perform operation
fdiv.h f24, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fdiv.h f28, f31, f20, dyn # perform operation
fdiv.h f28, f31, f20, rdn # perform operation
fdiv.h f28, f31, f20, rmm # perform operation
fdiv.h f28, f31, f20, rne # perform operation
fdiv.h f28, f31, f20, rtz # perform operation
fdiv.h f28, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.h f11, f31, f22, dyn # perform operation
fdiv.h f11, f31, f22, rdn # perform operation
fdiv.h f11, f31, f22, rmm # perform operation
fdiv.h f11, f31, f22, rne # perform operation
fdiv.h f11, f31, f22, rtz # perform operation
fdiv.h f11, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fdiv.h f26, f12, f23, dyn # perform operation
fdiv.h f26, f12, f23, rdn # perform operation
fdiv.h f26, f12, f23, rmm # perform operation
fdiv.h f26, f12, f23, rne # perform operation
fdiv.h f26, f12, f23, rtz # perform operation
fdiv.h f26, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fdiv.h f26, f3, f19, dyn # perform operation
fdiv.h f26, f3, f19, rdn # perform operation
fdiv.h f26, f3, f19, rmm # perform operation
fdiv.h f26, f3, f19, rne # perform operation
fdiv.h f26, f3, f19, rtz # perform operation
fdiv.h f26, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fdiv.h f30, f22, f18, dyn # perform operation
fdiv.h f30, f22, f18, rdn # perform operation
fdiv.h f30, f22, f18, rmm # perform operation
fdiv.h f30, f22, f18, rne # perform operation
fdiv.h f30, f22, f18, rtz # perform operation
fdiv.h f30, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fdiv.h f1, f30, f14, dyn # perform operation
fdiv.h f1, f30, f14, rdn # perform operation
fdiv.h f1, f30, f14, rmm # perform operation
fdiv.h f1, f30, f14, rne # perform operation
fdiv.h f1, f30, f14, rtz # perform operation
fdiv.h f1, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fdiv.h f23, f8, f31, dyn # perform operation
fdiv.h f23, f8, f31, rdn # perform operation
fdiv.h f23, f8, f31, rmm # perform operation
fdiv.h f23, f8, f31, rne # perform operation
fdiv.h f23, f8, f31, rtz # perform operation
fdiv.h f23, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fdiv.h f16, f13, f2, dyn # perform operation
fdiv.h f16, f13, f2, rdn # perform operation
fdiv.h f16, f13, f2, rmm # perform operation
fdiv.h f16, f13, f2, rne # perform operation
fdiv.h f16, f13, f2, rtz # perform operation
fdiv.h f16, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fdiv.h f19, f9, f28, dyn # perform operation
fdiv.h f19, f9, f28, rdn # perform operation
fdiv.h f19, f9, f28, rmm # perform operation
fdiv.h f19, f9, f28, rne # perform operation
fdiv.h f19, f9, f28, rtz # perform operation
fdiv.h f19, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f23, f18, f3, dyn # perform operation
fdiv.h f23, f18, f3, rdn # perform operation
fdiv.h f23, f18, f3, rmm # perform operation
fdiv.h f23, f18, f3, rne # perform operation
fdiv.h f23, f18, f3, rtz # perform operation
fdiv.h f23, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
fdiv.h f13, f28, f14, dyn # perform operation
fdiv.h f13, f28, f14, rdn # perform operation
fdiv.h f13, f28, f14, rmm # perform operation
fdiv.h f13, f28, f14, rne # perform operation
fdiv.h f13, f28, f14, rtz # perform operation
fdiv.h f13, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fdiv.h f15, f22, f23, dyn # perform operation
fdiv.h f15, f22, f23, rdn # perform operation
fdiv.h f15, f22, f23, rmm # perform operation
fdiv.h f15, f22, f23, rne # perform operation
fdiv.h f15, f22, f23, rtz # perform operation
fdiv.h f15, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fdiv.h f11, f14, f18, dyn # perform operation
fdiv.h f11, f14, f18, rdn # perform operation
fdiv.h f11, f14, f18, rmm # perform operation
fdiv.h f11, f14, f18, rne # perform operation
fdiv.h f11, f14, f18, rtz # perform operation
fdiv.h f11, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fdiv.h f7, f8, f10, dyn # perform operation
fdiv.h f7, f8, f10, rdn # perform operation
fdiv.h f7, f8, f10, rmm # perform operation
fdiv.h f7, f8, f10, rne # perform operation
fdiv.h f7, f8, f10, rtz # perform operation
fdiv.h f7, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fdiv.h f20, f28, f15, dyn # perform operation
fdiv.h f20, f28, f15, rdn # perform operation
fdiv.h f20, f28, f15, rmm # perform operation
fdiv.h f20, f28, f15, rne # perform operation
fdiv.h f20, f28, f15, rtz # perform operation
fdiv.h f20, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f27, f30, f3, dyn # perform operation
fdiv.h f27, f30, f3, rdn # perform operation
fdiv.h f27, f30, f3, rmm # perform operation
fdiv.h f27, f30, f3, rne # perform operation
fdiv.h f27, f30, f3, rtz # perform operation
fdiv.h f27, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fdiv.h f1, f16, f6, dyn # perform operation
fdiv.h f1, f16, f6, rdn # perform operation
fdiv.h f1, f16, f6, rmm # perform operation
fdiv.h f1, f16, f6, rne # perform operation
fdiv.h f1, f16, f6, rtz # perform operation
fdiv.h f1, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fdiv.h f20, f8, f7, dyn # perform operation
fdiv.h f20, f8, f7, rdn # perform operation
fdiv.h f20, f8, f7, rmm # perform operation
fdiv.h f20, f8, f7, rne # perform operation
fdiv.h f20, f8, f7, rtz # perform operation
fdiv.h f20, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fdiv.h f17, f14, f30, dyn # perform operation
fdiv.h f17, f14, f30, rdn # perform operation
fdiv.h f17, f14, f30, rmm # perform operation
fdiv.h f17, f14, f30, rne # perform operation
fdiv.h f17, f14, f30, rtz # perform operation
fdiv.h f17, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f26, f2, f13, dyn # perform operation
fdiv.h f26, f2, f13, rdn # perform operation
fdiv.h f26, f2, f13, rmm # perform operation
fdiv.h f26, f2, f13, rne # perform operation
fdiv.h f26, f2, f13, rtz # perform operation
fdiv.h f26, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fdiv.h f18, f6, f21, dyn # perform operation
fdiv.h f18, f6, f21, rdn # perform operation
fdiv.h f18, f6, f21, rmm # perform operation
fdiv.h f18, f6, f21, rne # perform operation
fdiv.h f18, f6, f21, rtz # perform operation
fdiv.h f18, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fdiv.h f23, f29, f25, dyn # perform operation
fdiv.h f23, f29, f25, rdn # perform operation
fdiv.h f23, f29, f25, rmm # perform operation
fdiv.h f23, f29, f25, rne # perform operation
fdiv.h f23, f29, f25, rtz # perform operation
fdiv.h f23, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fdiv.h f1, f20, f10, dyn # perform operation
fdiv.h f1, f20, f10, rdn # perform operation
fdiv.h f1, f20, f10, rmm # perform operation
fdiv.h f1, f20, f10, rne # perform operation
fdiv.h f1, f20, f10, rtz # perform operation
fdiv.h f1, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f26, f29, f2, dyn # perform operation
fdiv.h f26, f29, f2, rdn # perform operation
fdiv.h f26, f29, f2, rmm # perform operation
fdiv.h f26, f29, f2, rne # perform operation
fdiv.h f26, f29, f2, rtz # perform operation
fdiv.h f26, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f31, f20, f16, dyn # perform operation
fdiv.h f31, f20, f16, rdn # perform operation
fdiv.h f31, f20, f16, rmm # perform operation
fdiv.h f31, f20, f16, rne # perform operation
fdiv.h f31, f20, f16, rtz # perform operation
fdiv.h f31, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fdiv.h f3, f10, f13, dyn # perform operation
fdiv.h f3, f10, f13, rdn # perform operation
fdiv.h f3, f10, f13, rmm # perform operation
fdiv.h f3, f10, f13, rne # perform operation
fdiv.h f3, f10, f13, rtz # perform operation
fdiv.h f3, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fdiv.h f5, f14, f17, dyn # perform operation
fdiv.h f5, f14, f17, rdn # perform operation
fdiv.h f5, f14, f17, rmm # perform operation
fdiv.h f5, f14, f17, rne # perform operation
fdiv.h f5, f14, f17, rtz # perform operation
fdiv.h f5, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fdiv.h f24, f31, f18, dyn # perform operation
fdiv.h f24, f31, f18, rdn # perform operation
fdiv.h f24, f31, f18, rmm # perform operation
fdiv.h f24, f31, f18, rne # perform operation
fdiv.h f24, f31, f18, rtz # perform operation
fdiv.h f24, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fdiv.h f8, f23, f19, dyn # perform operation
fdiv.h f8, f23, f19, rdn # perform operation
fdiv.h f8, f23, f19, rmm # perform operation
fdiv.h f8, f23, f19, rne # perform operation
fdiv.h f8, f23, f19, rtz # perform operation
fdiv.h f8, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f10, f2, f16, dyn # perform operation
fdiv.h f10, f2, f16, rdn # perform operation
fdiv.h f10, f2, f16, rmm # perform operation
fdiv.h f10, f2, f16, rne # perform operation
fdiv.h f10, f2, f16, rtz # perform operation
fdiv.h f10, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fdiv.h f22, f5, f19, dyn # perform operation
fdiv.h f22, f5, f19, rdn # perform operation
fdiv.h f22, f5, f19, rmm # perform operation
fdiv.h f22, f5, f19, rne # perform operation
fdiv.h f22, f5, f19, rtz # perform operation
fdiv.h f22, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fdiv.h f14, f25, f9, dyn # perform operation
fdiv.h f14, f25, f9, rdn # perform operation
fdiv.h f14, f25, f9, rmm # perform operation
fdiv.h f14, f25, f9, rne # perform operation
fdiv.h f14, f25, f9, rtz # perform operation
fdiv.h f14, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fdiv.h f16, f24, f17, dyn # perform operation
fdiv.h f16, f24, f17, rdn # perform operation
fdiv.h f16, f24, f17, rmm # perform operation
fdiv.h f16, f24, f17, rne # perform operation
fdiv.h f16, f24, f17, rtz # perform operation
fdiv.h f16, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fdiv.h f21, f31, f30, dyn # perform operation
fdiv.h f21, f31, f30, rdn # perform operation
fdiv.h f21, f31, f30, rmm # perform operation
fdiv.h f21, f31, f30, rne # perform operation
fdiv.h f21, f31, f30, rtz # perform operation
fdiv.h f21, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f12, f11, f10, dyn # perform operation
fdiv.h f12, f11, f10, rdn # perform operation
fdiv.h f12, f11, f10, rmm # perform operation
fdiv.h f12, f11, f10, rne # perform operation
fdiv.h f12, f11, f10, rtz # perform operation
fdiv.h f12, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fdiv.h f7, f25, f17, dyn # perform operation
fdiv.h f7, f25, f17, rdn # perform operation
fdiv.h f7, f25, f17, rmm # perform operation
fdiv.h f7, f25, f17, rne # perform operation
fdiv.h f7, f25, f17, rtz # perform operation
fdiv.h f7, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fdiv.h f25, f20, f24, dyn # perform operation
fdiv.h f25, f20, f24, rdn # perform operation
fdiv.h f25, f20, f24, rmm # perform operation
fdiv.h f25, f20, f24, rne # perform operation
fdiv.h f25, f20, f24, rtz # perform operation
fdiv.h f25, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fdiv.h f14, f26, f21, dyn # perform operation
fdiv.h f14, f26, f21, rdn # perform operation
fdiv.h f14, f26, f21, rmm # perform operation
fdiv.h f14, f26, f21, rne # perform operation
fdiv.h f14, f26, f21, rtz # perform operation
fdiv.h f14, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fdiv.h f24, f7, f16, dyn # perform operation
fdiv.h f24, f7, f16, rdn # perform operation
fdiv.h f24, f7, f16, rmm # perform operation
fdiv.h f24, f7, f16, rne # perform operation
fdiv.h f24, f7, f16, rtz # perform operation
fdiv.h f24, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f8, f5, f3, dyn # perform operation
fdiv.h f8, f5, f3, rdn # perform operation
fdiv.h f8, f5, f3, rmm # perform operation
fdiv.h f8, f5, f3, rne # perform operation
fdiv.h f8, f5, f3, rtz # perform operation
fdiv.h f8, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fdiv.h f14, f30, f9, dyn # perform operation
fdiv.h f14, f30, f9, rdn # perform operation
fdiv.h f14, f30, f9, rmm # perform operation
fdiv.h f14, f30, f9, rne # perform operation
fdiv.h f14, f30, f9, rtz # perform operation
fdiv.h f14, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f25, f19, f7, dyn # perform operation
fdiv.h f25, f19, f7, rdn # perform operation
fdiv.h f25, f19, f7, rmm # perform operation
fdiv.h f25, f19, f7, rne # perform operation
fdiv.h f25, f19, f7, rtz # perform operation
fdiv.h f25, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fdiv.h f21, f7, f6, dyn # perform operation
fdiv.h f21, f7, f6, rdn # perform operation
fdiv.h f21, f7, f6, rmm # perform operation
fdiv.h f21, f7, f6, rne # perform operation
fdiv.h f21, f7, f6, rtz # perform operation
fdiv.h f21, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fdiv.h f24, f6, f18, dyn # perform operation
fdiv.h f24, f6, f18, rdn # perform operation
fdiv.h f24, f6, f18, rmm # perform operation
fdiv.h f24, f6, f18, rne # perform operation
fdiv.h f24, f6, f18, rtz # perform operation
fdiv.h f24, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fdiv.h f27, f6, f20, dyn # perform operation
fdiv.h f27, f6, f20, rdn # perform operation
fdiv.h f27, f6, f20, rmm # perform operation
fdiv.h f27, f6, f20, rne # perform operation
fdiv.h f27, f6, f20, rtz # perform operation
fdiv.h f27, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fdiv.h f29, f9, f14, dyn # perform operation
fdiv.h f29, f9, f14, rdn # perform operation
fdiv.h f29, f9, f14, rmm # perform operation
fdiv.h f29, f9, f14, rne # perform operation
fdiv.h f29, f9, f14, rtz # perform operation
fdiv.h f29, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fdiv.h f14, f23, f18, dyn # perform operation
fdiv.h f14, f23, f18, rdn # perform operation
fdiv.h f14, f23, f18, rmm # perform operation
fdiv.h f14, f23, f18, rne # perform operation
fdiv.h f14, f23, f18, rtz # perform operation
fdiv.h f14, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fdiv.h f29, f31, f14, dyn # perform operation
fdiv.h f29, f31, f14, rdn # perform operation
fdiv.h f29, f31, f14, rmm # perform operation
fdiv.h f29, f31, f14, rne # perform operation
fdiv.h f29, f31, f14, rtz # perform operation
fdiv.h f29, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fdiv.h f7, f13, f1, dyn # perform operation
fdiv.h f7, f13, f1, rdn # perform operation
fdiv.h f7, f13, f1, rmm # perform operation
fdiv.h f7, f13, f1, rne # perform operation
fdiv.h f7, f13, f1, rtz # perform operation
fdiv.h f7, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fdiv.h f12, f22, f17, dyn # perform operation
fdiv.h f12, f22, f17, rdn # perform operation
fdiv.h f12, f22, f17, rmm # perform operation
fdiv.h f12, f22, f17, rne # perform operation
fdiv.h f12, f22, f17, rtz # perform operation
fdiv.h f12, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fdiv.h f26, f10, f7, dyn # perform operation
fdiv.h f26, f10, f7, rdn # perform operation
fdiv.h f26, f10, f7, rmm # perform operation
fdiv.h f26, f10, f7, rne # perform operation
fdiv.h f26, f10, f7, rtz # perform operation
fdiv.h f26, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fdiv.h f25, f1, f9, dyn # perform operation
fdiv.h f25, f1, f9, rdn # perform operation
fdiv.h f25, f1, f9, rmm # perform operation
fdiv.h f25, f1, f9, rne # perform operation
fdiv.h f25, f1, f9, rtz # perform operation
fdiv.h f25, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fdiv.h f19, f9, f17, dyn # perform operation
fdiv.h f19, f9, f17, rdn # perform operation
fdiv.h f19, f9, f17, rmm # perform operation
fdiv.h f19, f9, f17, rne # perform operation
fdiv.h f19, f9, f17, rtz # perform operation
fdiv.h f19, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fdiv.h f6, f23, f20, dyn # perform operation
fdiv.h f6, f23, f20, rdn # perform operation
fdiv.h f6, f23, f20, rmm # perform operation
fdiv.h f6, f23, f20, rne # perform operation
fdiv.h f6, f23, f20, rtz # perform operation
fdiv.h f6, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fdiv.h f28, f24, f12, dyn # perform operation
fdiv.h f28, f24, f12, rdn # perform operation
fdiv.h f28, f24, f12, rmm # perform operation
fdiv.h f28, f24, f12, rne # perform operation
fdiv.h f28, f24, f12, rtz # perform operation
fdiv.h f28, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fdiv.h f6, f30, f20, dyn # perform operation
fdiv.h f6, f30, f20, rdn # perform operation
fdiv.h f6, f30, f20, rmm # perform operation
fdiv.h f6, f30, f20, rne # perform operation
fdiv.h f6, f30, f20, rtz # perform operation
fdiv.h f6, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fdiv.h f23, f19, f7, dyn # perform operation
fdiv.h f23, f19, f7, rdn # perform operation
fdiv.h f23, f19, f7, rmm # perform operation
fdiv.h f23, f19, f7, rne # perform operation
fdiv.h f23, f19, f7, rtz # perform operation
fdiv.h f23, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fdiv.h f20, f6, f7, dyn # perform operation
fdiv.h f20, f6, f7, rdn # perform operation
fdiv.h f20, f6, f7, rmm # perform operation
fdiv.h f20, f6, f7, rne # perform operation
fdiv.h f20, f6, f7, rtz # perform operation
fdiv.h f20, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fdiv.h f6, f1, f30, dyn # perform operation
fdiv.h f6, f1, f30, rdn # perform operation
fdiv.h f6, f1, f30, rmm # perform operation
fdiv.h f6, f1, f30, rne # perform operation
fdiv.h f6, f1, f30, rtz # perform operation
fdiv.h f6, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fdiv.h f26, f22, f3, dyn # perform operation
fdiv.h f26, f22, f3, rdn # perform operation
fdiv.h f26, f22, f3, rmm # perform operation
fdiv.h f26, f22, f3, rne # perform operation
fdiv.h f26, f22, f3, rtz # perform operation
fdiv.h f26, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fdiv.h f26, f11, f1, dyn # perform operation
fdiv.h f26, f11, f1, rdn # perform operation
fdiv.h f26, f11, f1, rmm # perform operation
fdiv.h f26, f11, f1, rne # perform operation
fdiv.h f26, f11, f1, rtz # perform operation
fdiv.h f26, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fdiv.h f1, f19, f26, dyn # perform operation
fdiv.h f1, f19, f26, rdn # perform operation
fdiv.h f1, f19, f26, rmm # perform operation
fdiv.h f1, f19, f26, rne # perform operation
fdiv.h f1, f19, f26, rtz # perform operation
fdiv.h f1, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fdiv.h f18, f25, f27, dyn # perform operation
fdiv.h f18, f25, f27, rdn # perform operation
fdiv.h f18, f25, f27, rmm # perform operation
fdiv.h f18, f25, f27, rne # perform operation
fdiv.h f18, f25, f27, rtz # perform operation
fdiv.h f18, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fdiv.h f11, f15, f5, dyn # perform operation
fdiv.h f11, f15, f5, rdn # perform operation
fdiv.h f11, f15, f5, rmm # perform operation
fdiv.h f11, f15, f5, rne # perform operation
fdiv.h f11, f15, f5, rtz # perform operation
fdiv.h f11, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fdiv.h f29, f27, f9, dyn # perform operation
fdiv.h f29, f27, f9, rdn # perform operation
fdiv.h f29, f27, f9, rmm # perform operation
fdiv.h f29, f27, f9, rne # perform operation
fdiv.h f29, f27, f9, rtz # perform operation
fdiv.h f29, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fdiv.h f12, f23, f6, dyn # perform operation
fdiv.h f12, f23, f6, rdn # perform operation
fdiv.h f12, f23, f6, rmm # perform operation
fdiv.h f12, f23, f6, rne # perform operation
fdiv.h f12, f23, f6, rtz # perform operation
fdiv.h f12, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fdiv.h f3, f13, f27, dyn # perform operation
fdiv.h f3, f13, f27, rdn # perform operation
fdiv.h f3, f13, f27, rmm # perform operation
fdiv.h f3, f13, f27, rne # perform operation
fdiv.h f3, f13, f27, rtz # perform operation
fdiv.h f3, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fdiv.h f22, f15, f25, dyn # perform operation
fdiv.h f22, f15, f25, rdn # perform operation
fdiv.h f22, f15, f25, rmm # perform operation
fdiv.h f22, f15, f25, rne # perform operation
fdiv.h f22, f15, f25, rtz # perform operation
fdiv.h f22, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fdiv.h f21, f23, f24, dyn # perform operation
fdiv.h f21, f23, f24, rdn # perform operation
fdiv.h f21, f23, f24, rmm # perform operation
fdiv.h f21, f23, f24, rne # perform operation
fdiv.h f21, f23, f24, rtz # perform operation
fdiv.h f21, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.h f21, f12, f9, dyn # perform operation
fdiv.h f21, f12, f9, rdn # perform operation
fdiv.h f21, f12, f9, rmm # perform operation
fdiv.h f21, f12, f9, rne # perform operation
fdiv.h f21, f12, f9, rtz # perform operation
fdiv.h f21, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f23, f24, f10, dyn # perform operation
fdiv.h f23, f24, f10, rdn # perform operation
fdiv.h f23, f24, f10, rmm # perform operation
fdiv.h f23, f24, f10, rne # perform operation
fdiv.h f23, f24, f10, rtz # perform operation
fdiv.h f23, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f5, f16, f26, dyn # perform operation
fdiv.h f5, f16, f26, rdn # perform operation
fdiv.h f5, f16, f26, rmm # perform operation
fdiv.h f5, f16, f26, rne # perform operation
fdiv.h f5, f16, f26, rtz # perform operation
fdiv.h f5, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fdiv.h f21, f11, f7, dyn # perform operation
fdiv.h f21, f11, f7, rdn # perform operation
fdiv.h f21, f11, f7, rmm # perform operation
fdiv.h f21, f11, f7, rne # perform operation
fdiv.h f21, f11, f7, rtz # perform operation
fdiv.h f21, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fdiv.h f11, f3, f26, dyn # perform operation
fdiv.h f11, f3, f26, rdn # perform operation
fdiv.h f11, f3, f26, rmm # perform operation
fdiv.h f11, f3, f26, rne # perform operation
fdiv.h f11, f3, f26, rtz # perform operation
fdiv.h f11, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fdiv.h f25, f20, f26, dyn # perform operation
fdiv.h f25, f20, f26, rdn # perform operation
fdiv.h f25, f20, f26, rmm # perform operation
fdiv.h f25, f20, f26, rne # perform operation
fdiv.h f25, f20, f26, rtz # perform operation
fdiv.h f25, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fdiv.h f25, f18, f30, dyn # perform operation
fdiv.h f25, f18, f30, rdn # perform operation
fdiv.h f25, f18, f30, rmm # perform operation
fdiv.h f25, f18, f30, rne # perform operation
fdiv.h f25, f18, f30, rtz # perform operation
fdiv.h f25, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fdiv.h f17, f3, f22, dyn # perform operation
fdiv.h f17, f3, f22, rdn # perform operation
fdiv.h f17, f3, f22, rmm # perform operation
fdiv.h f17, f3, f22, rne # perform operation
fdiv.h f17, f3, f22, rtz # perform operation
fdiv.h f17, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fdiv.h f27, f16, f29, dyn # perform operation
fdiv.h f27, f16, f29, rdn # perform operation
fdiv.h f27, f16, f29, rmm # perform operation
fdiv.h f27, f16, f29, rne # perform operation
fdiv.h f27, f16, f29, rtz # perform operation
fdiv.h f27, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f25, f28, f9, dyn # perform operation
fdiv.h f25, f28, f9, rdn # perform operation
fdiv.h f25, f28, f9, rmm # perform operation
fdiv.h f25, f28, f9, rne # perform operation
fdiv.h f25, f28, f9, rtz # perform operation
fdiv.h f25, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f26, f11, f29, dyn # perform operation
fdiv.h f26, f11, f29, rdn # perform operation
fdiv.h f26, f11, f29, rmm # perform operation
fdiv.h f26, f11, f29, rne # perform operation
fdiv.h f26, f11, f29, rtz # perform operation
fdiv.h f26, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fdiv.h f8, f7, f2, dyn # perform operation
fdiv.h f8, f7, f2, rdn # perform operation
fdiv.h f8, f7, f2, rmm # perform operation
fdiv.h f8, f7, f2, rne # perform operation
fdiv.h f8, f7, f2, rtz # perform operation
fdiv.h f8, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f11, f6, f23, dyn # perform operation
fdiv.h f11, f6, f23, rdn # perform operation
fdiv.h f11, f6, f23, rmm # perform operation
fdiv.h f11, f6, f23, rne # perform operation
fdiv.h f11, f6, f23, rtz # perform operation
fdiv.h f11, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fdiv.h f24, f5, f12, dyn # perform operation
fdiv.h f24, f5, f12, rdn # perform operation
fdiv.h f24, f5, f12, rmm # perform operation
fdiv.h f24, f5, f12, rne # perform operation
fdiv.h f24, f5, f12, rtz # perform operation
fdiv.h f24, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fdiv.h f3, f15, f6, dyn # perform operation
fdiv.h f3, f15, f6, rdn # perform operation
fdiv.h f3, f15, f6, rmm # perform operation
fdiv.h f3, f15, f6, rne # perform operation
fdiv.h f3, f15, f6, rtz # perform operation
fdiv.h f3, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fdiv.h f30, f1, f19, dyn # perform operation
fdiv.h f30, f1, f19, rdn # perform operation
fdiv.h f30, f1, f19, rmm # perform operation
fdiv.h f30, f1, f19, rne # perform operation
fdiv.h f30, f1, f19, rtz # perform operation
fdiv.h f30, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fdiv.h f25, f27, f24, dyn # perform operation
fdiv.h f25, f27, f24, rdn # perform operation
fdiv.h f25, f27, f24, rmm # perform operation
fdiv.h f25, f27, f24, rne # perform operation
fdiv.h f25, f27, f24, rtz # perform operation
fdiv.h f25, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fdiv.h f24, f6, f12, dyn # perform operation
fdiv.h f24, f6, f12, rdn # perform operation
fdiv.h f24, f6, f12, rmm # perform operation
fdiv.h f24, f6, f12, rne # perform operation
fdiv.h f24, f6, f12, rtz # perform operation
fdiv.h f24, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fdiv.h f26, f9, f1, dyn # perform operation
fdiv.h f26, f9, f1, rdn # perform operation
fdiv.h f26, f9, f1, rmm # perform operation
fdiv.h f26, f9, f1, rne # perform operation
fdiv.h f26, f9, f1, rtz # perform operation
fdiv.h f26, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fdiv.h f1, f8, f20, dyn # perform operation
fdiv.h f1, f8, f20, rdn # perform operation
fdiv.h f1, f8, f20, rmm # perform operation
fdiv.h f1, f8, f20, rne # perform operation
fdiv.h f1, f8, f20, rtz # perform operation
fdiv.h f1, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fdiv.h f31, f7, f10, dyn # perform operation
fdiv.h f31, f7, f10, rdn # perform operation
fdiv.h f31, f7, f10, rmm # perform operation
fdiv.h f31, f7, f10, rne # perform operation
fdiv.h f31, f7, f10, rtz # perform operation
fdiv.h f31, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fdiv.h f26, f16, f5, dyn # perform operation
fdiv.h f26, f16, f5, rdn # perform operation
fdiv.h f26, f16, f5, rmm # perform operation
fdiv.h f26, f16, f5, rne # perform operation
fdiv.h f26, f16, f5, rtz # perform operation
fdiv.h f26, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
fdiv.h f9, f16, f14, dyn # perform operation
fdiv.h f9, f16, f14, rdn # perform operation
fdiv.h f9, f16, f14, rmm # perform operation
fdiv.h f9, f16, f14, rne # perform operation
fdiv.h f9, f16, f14, rtz # perform operation
fdiv.h f9, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fdiv.h f17, f5, f15, dyn # perform operation
fdiv.h f17, f5, f15, rdn # perform operation
fdiv.h f17, f5, f15, rmm # perform operation
fdiv.h f17, f5, f15, rne # perform operation
fdiv.h f17, f5, f15, rtz # perform operation
fdiv.h f17, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f11, f22, f3, dyn # perform operation
fdiv.h f11, f22, f3, rdn # perform operation
fdiv.h f11, f22, f3, rmm # perform operation
fdiv.h f11, f22, f3, rne # perform operation
fdiv.h f11, f22, f3, rtz # perform operation
fdiv.h f11, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fdiv.h f6, f31, f16, dyn # perform operation
fdiv.h f6, f31, f16, rdn # perform operation
fdiv.h f6, f31, f16, rmm # perform operation
fdiv.h f6, f31, f16, rne # perform operation
fdiv.h f6, f31, f16, rtz # perform operation
fdiv.h f6, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f27, f9, f28, dyn # perform operation
fdiv.h f27, f9, f28, rdn # perform operation
fdiv.h f27, f9, f28, rmm # perform operation
fdiv.h f27, f9, f28, rne # perform operation
fdiv.h f27, f9, f28, rtz # perform operation
fdiv.h f27, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fdiv.h f22, f25, f17, dyn # perform operation
fdiv.h f22, f25, f17, rdn # perform operation
fdiv.h f22, f25, f17, rmm # perform operation
fdiv.h f22, f25, f17, rne # perform operation
fdiv.h f22, f25, f17, rtz # perform operation
fdiv.h f22, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fdiv.h f31, f18, f23, dyn # perform operation
fdiv.h f31, f18, f23, rdn # perform operation
fdiv.h f31, f18, f23, rmm # perform operation
fdiv.h f31, f18, f23, rne # perform operation
fdiv.h f31, f18, f23, rtz # perform operation
fdiv.h f31, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fdiv.h f10, f26, f17, dyn # perform operation
fdiv.h f10, f26, f17, rdn # perform operation
fdiv.h f10, f26, f17, rmm # perform operation
fdiv.h f10, f26, f17, rne # perform operation
fdiv.h f10, f26, f17, rtz # perform operation
fdiv.h f10, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fdiv.h f12, f16, f21, dyn # perform operation
fdiv.h f12, f16, f21, rdn # perform operation
fdiv.h f12, f16, f21, rmm # perform operation
fdiv.h f12, f16, f21, rne # perform operation
fdiv.h f12, f16, f21, rtz # perform operation
fdiv.h f12, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fdiv.h f21, f25, f30, dyn # perform operation
fdiv.h f21, f25, f30, rdn # perform operation
fdiv.h f21, f25, f30, rmm # perform operation
fdiv.h f21, f25, f30, rne # perform operation
fdiv.h f21, f25, f30, rtz # perform operation
fdiv.h f21, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fdiv.h f9, f16, f5, dyn # perform operation
fdiv.h f9, f16, f5, rdn # perform operation
fdiv.h f9, f16, f5, rmm # perform operation
fdiv.h f9, f16, f5, rne # perform operation
fdiv.h f9, f16, f5, rtz # perform operation
fdiv.h f9, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fdiv.h f7, f16, f18, dyn # perform operation
fdiv.h f7, f16, f18, rdn # perform operation
fdiv.h f7, f16, f18, rmm # perform operation
fdiv.h f7, f16, f18, rne # perform operation
fdiv.h f7, f16, f18, rtz # perform operation
fdiv.h f7, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f28, f20, f13, dyn # perform operation
fdiv.h f28, f20, f13, rdn # perform operation
fdiv.h f28, f20, f13, rmm # perform operation
fdiv.h f28, f20, f13, rne # perform operation
fdiv.h f28, f20, f13, rtz # perform operation
fdiv.h f28, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fdiv.h f30, f31, f12, dyn # perform operation
fdiv.h f30, f31, f12, rdn # perform operation
fdiv.h f30, f31, f12, rmm # perform operation
fdiv.h f30, f31, f12, rne # perform operation
fdiv.h f30, f31, f12, rtz # perform operation
fdiv.h f30, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fdiv.h f19, f11, f13, dyn # perform operation
fdiv.h f19, f11, f13, rdn # perform operation
fdiv.h f19, f11, f13, rmm # perform operation
fdiv.h f19, f11, f13, rne # perform operation
fdiv.h f19, f11, f13, rtz # perform operation
fdiv.h f19, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fdiv.h f9, f8, f30, dyn # perform operation
fdiv.h f9, f8, f30, rdn # perform operation
fdiv.h f9, f8, f30, rmm # perform operation
fdiv.h f9, f8, f30, rne # perform operation
fdiv.h f9, f8, f30, rtz # perform operation
fdiv.h f9, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fdiv.h f3, f19, f1, dyn # perform operation
fdiv.h f3, f19, f1, rdn # perform operation
fdiv.h f3, f19, f1, rmm # perform operation
fdiv.h f3, f19, f1, rne # perform operation
fdiv.h f3, f19, f1, rtz # perform operation
fdiv.h f3, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fdiv.h f26, f14, f3, dyn # perform operation
fdiv.h f26, f14, f3, rdn # perform operation
fdiv.h f26, f14, f3, rmm # perform operation
fdiv.h f26, f14, f3, rne # perform operation
fdiv.h f26, f14, f3, rtz # perform operation
fdiv.h f26, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f14, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fdiv.h f1, f7, f17, dyn # perform operation
fdiv.h f1, f7, f17, rdn # perform operation
fdiv.h f1, f7, f17, rmm # perform operation
fdiv.h f1, f7, f17, rne # perform operation
fdiv.h f1, f7, f17, rtz # perform operation
fdiv.h f1, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fdiv.h f18, f20, f5, dyn # perform operation
fdiv.h f18, f20, f5, rdn # perform operation
fdiv.h f18, f20, f5, rmm # perform operation
fdiv.h f18, f20, f5, rne # perform operation
fdiv.h f18, f20, f5, rtz # perform operation
fdiv.h f18, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fdiv.h f30, f19, f24, dyn # perform operation
fdiv.h f30, f19, f24, rdn # perform operation
fdiv.h f30, f19, f24, rmm # perform operation
fdiv.h f30, f19, f24, rne # perform operation
fdiv.h f30, f19, f24, rtz # perform operation
fdiv.h f30, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fdiv.h f24, f14, f22, dyn # perform operation
fdiv.h f24, f14, f22, rdn # perform operation
fdiv.h f24, f14, f22, rmm # perform operation
fdiv.h f24, f14, f22, rne # perform operation
fdiv.h f24, f14, f22, rtz # perform operation
fdiv.h f24, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fdiv.h f9, f24, f25, dyn # perform operation
fdiv.h f9, f24, f25, rdn # perform operation
fdiv.h f9, f24, f25, rmm # perform operation
fdiv.h f9, f24, f25, rne # perform operation
fdiv.h f9, f24, f25, rtz # perform operation
fdiv.h f9, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fdiv.h f21, f26, f15, dyn # perform operation
fdiv.h f21, f26, f15, rdn # perform operation
fdiv.h f21, f26, f15, rmm # perform operation
fdiv.h f21, f26, f15, rne # perform operation
fdiv.h f21, f26, f15, rtz # perform operation
fdiv.h f21, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fdiv.h f24, f13, f1, dyn # perform operation
fdiv.h f24, f13, f1, rdn # perform operation
fdiv.h f24, f13, f1, rmm # perform operation
fdiv.h f24, f13, f1, rne # perform operation
fdiv.h f24, f13, f1, rtz # perform operation
fdiv.h f24, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fdiv.h f6, f9, f23, dyn # perform operation
fdiv.h f6, f9, f23, rdn # perform operation
fdiv.h f6, f9, f23, rmm # perform operation
fdiv.h f6, f9, f23, rne # perform operation
fdiv.h f6, f9, f23, rtz # perform operation
fdiv.h f6, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fdiv.h f24, f8, f28, dyn # perform operation
fdiv.h f24, f8, f28, rdn # perform operation
fdiv.h f24, f8, f28, rmm # perform operation
fdiv.h f24, f8, f28, rne # perform operation
fdiv.h f24, f8, f28, rtz # perform operation
fdiv.h f24, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f5, f12, f8, dyn # perform operation
fdiv.h f5, f12, f8, rdn # perform operation
fdiv.h f5, f12, f8, rmm # perform operation
fdiv.h f5, f12, f8, rne # perform operation
fdiv.h f5, f12, f8, rtz # perform operation
fdiv.h f5, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fdiv.h f14, f9, f22, dyn # perform operation
fdiv.h f14, f9, f22, rdn # perform operation
fdiv.h f14, f9, f22, rmm # perform operation
fdiv.h f14, f9, f22, rne # perform operation
fdiv.h f14, f9, f22, rtz # perform operation
fdiv.h f14, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fdiv.h f28, f9, f31, dyn # perform operation
fdiv.h f28, f9, f31, rdn # perform operation
fdiv.h f28, f9, f31, rmm # perform operation
fdiv.h f28, f9, f31, rne # perform operation
fdiv.h f28, f9, f31, rtz # perform operation
fdiv.h f28, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fdiv.h f30, f13, f19, dyn # perform operation
fdiv.h f30, f13, f19, rdn # perform operation
fdiv.h f30, f13, f19, rmm # perform operation
fdiv.h f30, f13, f19, rne # perform operation
fdiv.h f30, f13, f19, rtz # perform operation
fdiv.h f30, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fdiv.h f31, f30, f21, dyn # perform operation
fdiv.h f31, f30, f21, rdn # perform operation
fdiv.h f31, f30, f21, rmm # perform operation
fdiv.h f31, f30, f21, rne # perform operation
fdiv.h f31, f30, f21, rtz # perform operation
fdiv.h f31, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fdiv.h f29, f28, f15, dyn # perform operation
fdiv.h f29, f28, f15, rdn # perform operation
fdiv.h f29, f28, f15, rmm # perform operation
fdiv.h f29, f28, f15, rne # perform operation
fdiv.h f29, f28, f15, rtz # perform operation
fdiv.h f29, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f12, f7, f14, dyn # perform operation
fdiv.h f12, f7, f14, rdn # perform operation
fdiv.h f12, f7, f14, rmm # perform operation
fdiv.h f12, f7, f14, rne # perform operation
fdiv.h f12, f7, f14, rtz # perform operation
fdiv.h f12, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.h f17, f22, f29, dyn # perform operation
fdiv.h f17, f22, f29, rdn # perform operation
fdiv.h f17, f22, f29, rmm # perform operation
fdiv.h f17, f22, f29, rne # perform operation
fdiv.h f17, f22, f29, rtz # perform operation
fdiv.h f17, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f22, f29 # perform operation


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
fdiv.h f16, f9, f10, dyn # perform operation
fdiv.h f16, f9, f10, rdn # perform operation
fdiv.h f16, f9, f10, rmm # perform operation
fdiv.h f16, f9, f10, rne # perform operation
fdiv.h f16, f9, f10, rtz # perform operation
fdiv.h f16, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fdiv.h f8, f30, f22, dyn # perform operation
fdiv.h f8, f30, f22, rdn # perform operation
fdiv.h f8, f30, f22, rmm # perform operation
fdiv.h f8, f30, f22, rne # perform operation
fdiv.h f8, f30, f22, rtz # perform operation
fdiv.h f8, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fdiv.h f9, f14, f12, dyn # perform operation
fdiv.h f9, f14, f12, rdn # perform operation
fdiv.h f9, f14, f12, rmm # perform operation
fdiv.h f9, f14, f12, rne # perform operation
fdiv.h f9, f14, f12, rtz # perform operation
fdiv.h f9, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fdiv.h f22, f29, f18, dyn # perform operation
fdiv.h f22, f29, f18, rdn # perform operation
fdiv.h f22, f29, f18, rmm # perform operation
fdiv.h f22, f29, f18, rne # perform operation
fdiv.h f22, f29, f18, rtz # perform operation
fdiv.h f22, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f20, f10, f15, dyn # perform operation
fdiv.h f20, f10, f15, rdn # perform operation
fdiv.h f20, f10, f15, rmm # perform operation
fdiv.h f20, f10, f15, rne # perform operation
fdiv.h f20, f10, f15, rtz # perform operation
fdiv.h f20, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fdiv.h f19, f11, f17, dyn # perform operation
fdiv.h f19, f11, f17, rdn # perform operation
fdiv.h f19, f11, f17, rmm # perform operation
fdiv.h f19, f11, f17, rne # perform operation
fdiv.h f19, f11, f17, rtz # perform operation
fdiv.h f19, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fdiv.h f2, f11, f5, dyn # perform operation
fdiv.h f2, f11, f5, rdn # perform operation
fdiv.h f2, f11, f5, rmm # perform operation
fdiv.h f2, f11, f5, rne # perform operation
fdiv.h f2, f11, f5, rtz # perform operation
fdiv.h f2, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fdiv.h f28, f18, f21, dyn # perform operation
fdiv.h f28, f18, f21, rdn # perform operation
fdiv.h f28, f18, f21, rmm # perform operation
fdiv.h f28, f18, f21, rne # perform operation
fdiv.h f28, f18, f21, rtz # perform operation
fdiv.h f28, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fdiv.h f16, f24, f18, dyn # perform operation
fdiv.h f16, f24, f18, rdn # perform operation
fdiv.h f16, f24, f18, rmm # perform operation
fdiv.h f16, f24, f18, rne # perform operation
fdiv.h f16, f24, f18, rtz # perform operation
fdiv.h f16, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f3, f14, f29, dyn # perform operation
fdiv.h f3, f14, f29, rdn # perform operation
fdiv.h f3, f14, f29, rmm # perform operation
fdiv.h f3, f14, f29, rne # perform operation
fdiv.h f3, f14, f29, rtz # perform operation
fdiv.h f3, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fdiv.h f9, f19, f10, dyn # perform operation
fdiv.h f9, f19, f10, rdn # perform operation
fdiv.h f9, f19, f10, rmm # perform operation
fdiv.h f9, f19, f10, rne # perform operation
fdiv.h f9, f19, f10, rtz # perform operation
fdiv.h f9, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fdiv.h f10, f12, f28, dyn # perform operation
fdiv.h f10, f12, f28, rdn # perform operation
fdiv.h f10, f12, f28, rmm # perform operation
fdiv.h f10, f12, f28, rne # perform operation
fdiv.h f10, f12, f28, rtz # perform operation
fdiv.h f10, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fdiv.h f29, f22, f11, dyn # perform operation
fdiv.h f29, f22, f11, rdn # perform operation
fdiv.h f29, f22, f11, rmm # perform operation
fdiv.h f29, f22, f11, rne # perform operation
fdiv.h f29, f22, f11, rtz # perform operation
fdiv.h f29, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fdiv.h f6, f28, f7, dyn # perform operation
fdiv.h f6, f28, f7, rdn # perform operation
fdiv.h f6, f28, f7, rmm # perform operation
fdiv.h f6, f28, f7, rne # perform operation
fdiv.h f6, f28, f7, rtz # perform operation
fdiv.h f6, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fdiv.h f15, f26, f13, dyn # perform operation
fdiv.h f15, f26, f13, rdn # perform operation
fdiv.h f15, f26, f13, rmm # perform operation
fdiv.h f15, f26, f13, rne # perform operation
fdiv.h f15, f26, f13, rtz # perform operation
fdiv.h f15, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.h f24, f21, f29, dyn # perform operation
fdiv.h f24, f21, f29, rdn # perform operation
fdiv.h f24, f21, f29, rmm # perform operation
fdiv.h f24, f21, f29, rne # perform operation
fdiv.h f24, f21, f29, rtz # perform operation
fdiv.h f24, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fdiv.h f10, f27, f18, dyn # perform operation
fdiv.h f10, f27, f18, rdn # perform operation
fdiv.h f10, f27, f18, rmm # perform operation
fdiv.h f10, f27, f18, rne # perform operation
fdiv.h f10, f27, f18, rtz # perform operation
fdiv.h f10, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f6, f15, f20, dyn # perform operation
fdiv.h f6, f15, f20, rdn # perform operation
fdiv.h f6, f15, f20, rmm # perform operation
fdiv.h f6, f15, f20, rne # perform operation
fdiv.h f6, f15, f20, rtz # perform operation
fdiv.h f6, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fdiv.h f28, f30, f8, dyn # perform operation
fdiv.h f28, f30, f8, rdn # perform operation
fdiv.h f28, f30, f8, rmm # perform operation
fdiv.h f28, f30, f8, rne # perform operation
fdiv.h f28, f30, f8, rtz # perform operation
fdiv.h f28, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fdiv.h f5, f21, f19, dyn # perform operation
fdiv.h f5, f21, f19, rdn # perform operation
fdiv.h f5, f21, f19, rmm # perform operation
fdiv.h f5, f21, f19, rne # perform operation
fdiv.h f5, f21, f19, rtz # perform operation
fdiv.h f5, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f21, f3, f10, dyn # perform operation
fdiv.h f21, f3, f10, rdn # perform operation
fdiv.h f21, f3, f10, rmm # perform operation
fdiv.h f21, f3, f10, rne # perform operation
fdiv.h f21, f3, f10, rtz # perform operation
fdiv.h f21, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fdiv.h f25, f21, f30, dyn # perform operation
fdiv.h f25, f21, f30, rdn # perform operation
fdiv.h f25, f21, f30, rmm # perform operation
fdiv.h f25, f21, f30, rne # perform operation
fdiv.h f25, f21, f30, rtz # perform operation
fdiv.h f25, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f23, f26, f30, dyn # perform operation
fdiv.h f23, f26, f30, rdn # perform operation
fdiv.h f23, f26, f30, rmm # perform operation
fdiv.h f23, f26, f30, rne # perform operation
fdiv.h f23, f26, f30, rtz # perform operation
fdiv.h f23, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fdiv.h f13, f20, f24, dyn # perform operation
fdiv.h f13, f20, f24, rdn # perform operation
fdiv.h f13, f20, f24, rmm # perform operation
fdiv.h f13, f20, f24, rne # perform operation
fdiv.h f13, f20, f24, rtz # perform operation
fdiv.h f13, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fdiv.h f24, f17, f25, dyn # perform operation
fdiv.h f24, f17, f25, rdn # perform operation
fdiv.h f24, f17, f25, rmm # perform operation
fdiv.h f24, f17, f25, rne # perform operation
fdiv.h f24, f17, f25, rtz # perform operation
fdiv.h f24, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fdiv.h f31, f19, f23, dyn # perform operation
fdiv.h f31, f19, f23, rdn # perform operation
fdiv.h f31, f19, f23, rmm # perform operation
fdiv.h f31, f19, f23, rne # perform operation
fdiv.h f31, f19, f23, rtz # perform operation
fdiv.h f31, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fdiv.h f12, f24, f21, dyn # perform operation
fdiv.h f12, f24, f21, rdn # perform operation
fdiv.h f12, f24, f21, rmm # perform operation
fdiv.h f12, f24, f21, rne # perform operation
fdiv.h f12, f24, f21, rtz # perform operation
fdiv.h f12, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f2, f18, f6, dyn # perform operation
fdiv.h f2, f18, f6, rdn # perform operation
fdiv.h f2, f18, f6, rmm # perform operation
fdiv.h f2, f18, f6, rne # perform operation
fdiv.h f2, f18, f6, rtz # perform operation
fdiv.h f2, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fdiv.h f11, f17, f15, dyn # perform operation
fdiv.h f11, f17, f15, rdn # perform operation
fdiv.h f11, f17, f15, rmm # perform operation
fdiv.h f11, f17, f15, rne # perform operation
fdiv.h f11, f17, f15, rtz # perform operation
fdiv.h f11, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f10, f24, f26, dyn # perform operation
fdiv.h f10, f24, f26, rdn # perform operation
fdiv.h f10, f24, f26, rmm # perform operation
fdiv.h f10, f24, f26, rne # perform operation
fdiv.h f10, f24, f26, rtz # perform operation
fdiv.h f10, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fdiv.h f6, f5, f24, dyn # perform operation
fdiv.h f6, f5, f24, rdn # perform operation
fdiv.h f6, f5, f24, rmm # perform operation
fdiv.h f6, f5, f24, rne # perform operation
fdiv.h f6, f5, f24, rtz # perform operation
fdiv.h f6, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fdiv.h f1, f28, f14, dyn # perform operation
fdiv.h f1, f28, f14, rdn # perform operation
fdiv.h f1, f28, f14, rmm # perform operation
fdiv.h f1, f28, f14, rne # perform operation
fdiv.h f1, f28, f14, rtz # perform operation
fdiv.h f1, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fdiv.h f23, f28, f20, dyn # perform operation
fdiv.h f23, f28, f20, rdn # perform operation
fdiv.h f23, f28, f20, rmm # perform operation
fdiv.h f23, f28, f20, rne # perform operation
fdiv.h f23, f28, f20, rtz # perform operation
fdiv.h f23, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fdiv.h f1, f13, f11, dyn # perform operation
fdiv.h f1, f13, f11, rdn # perform operation
fdiv.h f1, f13, f11, rmm # perform operation
fdiv.h f1, f13, f11, rne # perform operation
fdiv.h f1, f13, f11, rtz # perform operation
fdiv.h f1, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fdiv.h f15, f13, f1, dyn # perform operation
fdiv.h f15, f13, f1, rdn # perform operation
fdiv.h f15, f13, f1, rmm # perform operation
fdiv.h f15, f13, f1, rne # perform operation
fdiv.h f15, f13, f1, rtz # perform operation
fdiv.h f15, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fdiv.h f31, f5, f25, dyn # perform operation
fdiv.h f31, f5, f25, rdn # perform operation
fdiv.h f31, f5, f25, rmm # perform operation
fdiv.h f31, f5, f25, rne # perform operation
fdiv.h f31, f5, f25, rtz # perform operation
fdiv.h f31, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f26, f18, f27, dyn # perform operation
fdiv.h f26, f18, f27, rdn # perform operation
fdiv.h f26, f18, f27, rmm # perform operation
fdiv.h f26, f18, f27, rne # perform operation
fdiv.h f26, f18, f27, rtz # perform operation
fdiv.h f26, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fdiv.h f10, f29, f7, dyn # perform operation
fdiv.h f10, f29, f7, rdn # perform operation
fdiv.h f10, f29, f7, rmm # perform operation
fdiv.h f10, f29, f7, rne # perform operation
fdiv.h f10, f29, f7, rtz # perform operation
fdiv.h f10, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fdiv.h f23, f10, f11, dyn # perform operation
fdiv.h f23, f10, f11, rdn # perform operation
fdiv.h f23, f10, f11, rmm # perform operation
fdiv.h f23, f10, f11, rne # perform operation
fdiv.h f23, f10, f11, rtz # perform operation
fdiv.h f23, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fdiv.h f31, f15, f5, dyn # perform operation
fdiv.h f31, f15, f5, rdn # perform operation
fdiv.h f31, f15, f5, rmm # perform operation
fdiv.h f31, f15, f5, rne # perform operation
fdiv.h f31, f15, f5, rtz # perform operation
fdiv.h f31, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fdiv.h f15, f13, f8, dyn # perform operation
fdiv.h f15, f13, f8, rdn # perform operation
fdiv.h f15, f13, f8, rmm # perform operation
fdiv.h f15, f13, f8, rne # perform operation
fdiv.h f15, f13, f8, rtz # perform operation
fdiv.h f15, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fdiv.h f14, f3, f30, dyn # perform operation
fdiv.h f14, f3, f30, rdn # perform operation
fdiv.h f14, f3, f30, rmm # perform operation
fdiv.h f14, f3, f30, rne # perform operation
fdiv.h f14, f3, f30, rtz # perform operation
fdiv.h f14, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fdiv.h f17, f9, f6, dyn # perform operation
fdiv.h f17, f9, f6, rdn # perform operation
fdiv.h f17, f9, f6, rmm # perform operation
fdiv.h f17, f9, f6, rne # perform operation
fdiv.h f17, f9, f6, rtz # perform operation
fdiv.h f17, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.h f13, f27, f11, dyn # perform operation
fdiv.h f13, f27, f11, rdn # perform operation
fdiv.h f13, f27, f11, rmm # perform operation
fdiv.h f13, f27, f11, rne # perform operation
fdiv.h f13, f27, f11, rtz # perform operation
fdiv.h f13, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fdiv.h f23, f12, f5, dyn # perform operation
fdiv.h f23, f12, f5, rdn # perform operation
fdiv.h f23, f12, f5, rmm # perform operation
fdiv.h f23, f12, f5, rne # perform operation
fdiv.h f23, f12, f5, rtz # perform operation
fdiv.h f23, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fdiv.h f20, f30, f2, dyn # perform operation
fdiv.h f20, f30, f2, rdn # perform operation
fdiv.h f20, f30, f2, rmm # perform operation
fdiv.h f20, f30, f2, rne # perform operation
fdiv.h f20, f30, f2, rtz # perform operation
fdiv.h f20, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fdiv.h f7, f24, f14, dyn # perform operation
fdiv.h f7, f24, f14, rdn # perform operation
fdiv.h f7, f24, f14, rmm # perform operation
fdiv.h f7, f24, f14, rne # perform operation
fdiv.h f7, f24, f14, rtz # perform operation
fdiv.h f7, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fdiv.h f13, f9, f16, dyn # perform operation
fdiv.h f13, f9, f16, rdn # perform operation
fdiv.h f13, f9, f16, rmm # perform operation
fdiv.h f13, f9, f16, rne # perform operation
fdiv.h f13, f9, f16, rtz # perform operation
fdiv.h f13, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fdiv.h f1, f31, f22, dyn # perform operation
fdiv.h f1, f31, f22, rdn # perform operation
fdiv.h f1, f31, f22, rmm # perform operation
fdiv.h f1, f31, f22, rne # perform operation
fdiv.h f1, f31, f22, rtz # perform operation
fdiv.h f1, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fdiv.h f2, f3, f6, dyn # perform operation
fdiv.h f2, f3, f6, rdn # perform operation
fdiv.h f2, f3, f6, rmm # perform operation
fdiv.h f2, f3, f6, rne # perform operation
fdiv.h f2, f3, f6, rtz # perform operation
fdiv.h f2, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fdiv.h f29, f31, f15, dyn # perform operation
fdiv.h f29, f31, f15, rdn # perform operation
fdiv.h f29, f31, f15, rmm # perform operation
fdiv.h f29, f31, f15, rne # perform operation
fdiv.h f29, f31, f15, rtz # perform operation
fdiv.h f29, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fdiv.h f2, f8, f7, dyn # perform operation
fdiv.h f2, f8, f7, rdn # perform operation
fdiv.h f2, f8, f7, rmm # perform operation
fdiv.h f2, f8, f7, rne # perform operation
fdiv.h f2, f8, f7, rtz # perform operation
fdiv.h f2, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fdiv.h f19, f29, f30, dyn # perform operation
fdiv.h f19, f29, f30, rdn # perform operation
fdiv.h f19, f29, f30, rmm # perform operation
fdiv.h f19, f29, f30, rne # perform operation
fdiv.h f19, f29, f30, rtz # perform operation
fdiv.h f19, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fdiv.h f19, f17, f16, dyn # perform operation
fdiv.h f19, f17, f16, rdn # perform operation
fdiv.h f19, f17, f16, rmm # perform operation
fdiv.h f19, f17, f16, rne # perform operation
fdiv.h f19, f17, f16, rtz # perform operation
fdiv.h f19, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f11, f5, f1, dyn # perform operation
fdiv.h f11, f5, f1, rdn # perform operation
fdiv.h f11, f5, f1, rmm # perform operation
fdiv.h f11, f5, f1, rne # perform operation
fdiv.h f11, f5, f1, rtz # perform operation
fdiv.h f11, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.h f14, f12, f2, dyn # perform operation
fdiv.h f14, f12, f2, rdn # perform operation
fdiv.h f14, f12, f2, rmm # perform operation
fdiv.h f14, f12, f2, rne # perform operation
fdiv.h f14, f12, f2, rtz # perform operation
fdiv.h f14, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fdiv.h f8, f19, f7, dyn # perform operation
fdiv.h f8, f19, f7, rdn # perform operation
fdiv.h f8, f19, f7, rmm # perform operation
fdiv.h f8, f19, f7, rne # perform operation
fdiv.h f8, f19, f7, rtz # perform operation
fdiv.h f8, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f27, f9, f15, dyn # perform operation
fdiv.h f27, f9, f15, rdn # perform operation
fdiv.h f27, f9, f15, rmm # perform operation
fdiv.h f27, f9, f15, rne # perform operation
fdiv.h f27, f9, f15, rtz # perform operation
fdiv.h f27, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f29, f13, f11, dyn # perform operation
fdiv.h f29, f13, f11, rdn # perform operation
fdiv.h f29, f13, f11, rmm # perform operation
fdiv.h f29, f13, f11, rne # perform operation
fdiv.h f29, f13, f11, rtz # perform operation
fdiv.h f29, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fdiv.h f24, f13, f26, dyn # perform operation
fdiv.h f24, f13, f26, rdn # perform operation
fdiv.h f24, f13, f26, rmm # perform operation
fdiv.h f24, f13, f26, rne # perform operation
fdiv.h f24, f13, f26, rtz # perform operation
fdiv.h f24, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fdiv.h f8, f14, f12, dyn # perform operation
fdiv.h f8, f14, f12, rdn # perform operation
fdiv.h f8, f14, f12, rmm # perform operation
fdiv.h f8, f14, f12, rne # perform operation
fdiv.h f8, f14, f12, rtz # perform operation
fdiv.h f8, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fdiv.h f3, f12, f1, dyn # perform operation
fdiv.h f3, f12, f1, rdn # perform operation
fdiv.h f3, f12, f1, rmm # perform operation
fdiv.h f3, f12, f1, rne # perform operation
fdiv.h f3, f12, f1, rtz # perform operation
fdiv.h f3, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fdiv.h f29, f21, f20, dyn # perform operation
fdiv.h f29, f21, f20, rdn # perform operation
fdiv.h f29, f21, f20, rmm # perform operation
fdiv.h f29, f21, f20, rne # perform operation
fdiv.h f29, f21, f20, rtz # perform operation
fdiv.h f29, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fdiv.h f18, f5, f2, dyn # perform operation
fdiv.h f18, f5, f2, rdn # perform operation
fdiv.h f18, f5, f2, rmm # perform operation
fdiv.h f18, f5, f2, rne # perform operation
fdiv.h f18, f5, f2, rtz # perform operation
fdiv.h f18, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fdiv.h f8, f11, f5, dyn # perform operation
fdiv.h f8, f11, f5, rdn # perform operation
fdiv.h f8, f11, f5, rmm # perform operation
fdiv.h f8, f11, f5, rne # perform operation
fdiv.h f8, f11, f5, rtz # perform operation
fdiv.h f8, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fdiv.h f16, f25, f9, dyn # perform operation
fdiv.h f16, f25, f9, rdn # perform operation
fdiv.h f16, f25, f9, rmm # perform operation
fdiv.h f16, f25, f9, rne # perform operation
fdiv.h f16, f25, f9, rtz # perform operation
fdiv.h f16, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fdiv.h f11, f28, f24, dyn # perform operation
fdiv.h f11, f28, f24, rdn # perform operation
fdiv.h f11, f28, f24, rmm # perform operation
fdiv.h f11, f28, f24, rne # perform operation
fdiv.h f11, f28, f24, rtz # perform operation
fdiv.h f11, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fdiv.h f25, f26, f17, dyn # perform operation
fdiv.h f25, f26, f17, rdn # perform operation
fdiv.h f25, f26, f17, rmm # perform operation
fdiv.h f25, f26, f17, rne # perform operation
fdiv.h f25, f26, f17, rtz # perform operation
fdiv.h f25, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fdiv.h f19, f12, f9, dyn # perform operation
fdiv.h f19, f12, f9, rdn # perform operation
fdiv.h f19, f12, f9, rmm # perform operation
fdiv.h f19, f12, f9, rne # perform operation
fdiv.h f19, f12, f9, rtz # perform operation
fdiv.h f19, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fdiv.h f12, f15, f1, dyn # perform operation
fdiv.h f12, f15, f1, rdn # perform operation
fdiv.h f12, f15, f1, rmm # perform operation
fdiv.h f12, f15, f1, rne # perform operation
fdiv.h f12, f15, f1, rtz # perform operation
fdiv.h f12, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fdiv.h f26, f12, f28, dyn # perform operation
fdiv.h f26, f12, f28, rdn # perform operation
fdiv.h f26, f12, f28, rmm # perform operation
fdiv.h f26, f12, f28, rne # perform operation
fdiv.h f26, f12, f28, rtz # perform operation
fdiv.h f26, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fdiv.h f5, f7, f10, dyn # perform operation
fdiv.h f5, f7, f10, rdn # perform operation
fdiv.h f5, f7, f10, rmm # perform operation
fdiv.h f5, f7, f10, rne # perform operation
fdiv.h f5, f7, f10, rtz # perform operation
fdiv.h f5, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fdiv.h f2, f18, f10, dyn # perform operation
fdiv.h f2, f18, f10, rdn # perform operation
fdiv.h f2, f18, f10, rmm # perform operation
fdiv.h f2, f18, f10, rne # perform operation
fdiv.h f2, f18, f10, rtz # perform operation
fdiv.h f2, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fdiv.h f31, f3, f5, dyn # perform operation
fdiv.h f31, f3, f5, rdn # perform operation
fdiv.h f31, f3, f5, rmm # perform operation
fdiv.h f31, f3, f5, rne # perform operation
fdiv.h f31, f3, f5, rtz # perform operation
fdiv.h f31, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fdiv.h f15, f14, f26, dyn # perform operation
fdiv.h f15, f14, f26, rdn # perform operation
fdiv.h f15, f14, f26, rmm # perform operation
fdiv.h f15, f14, f26, rne # perform operation
fdiv.h f15, f14, f26, rtz # perform operation
fdiv.h f15, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fdiv.h f9, f16, f1, dyn # perform operation
fdiv.h f9, f16, f1, rdn # perform operation
fdiv.h f9, f16, f1, rmm # perform operation
fdiv.h f9, f16, f1, rne # perform operation
fdiv.h f9, f16, f1, rtz # perform operation
fdiv.h f9, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fdiv.h f19, f28, f13, dyn # perform operation
fdiv.h f19, f28, f13, rdn # perform operation
fdiv.h f19, f28, f13, rmm # perform operation
fdiv.h f19, f28, f13, rne # perform operation
fdiv.h f19, f28, f13, rtz # perform operation
fdiv.h f19, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fdiv.h f25, f3, f13, dyn # perform operation
fdiv.h f25, f3, f13, rdn # perform operation
fdiv.h f25, f3, f13, rmm # perform operation
fdiv.h f25, f3, f13, rne # perform operation
fdiv.h f25, f3, f13, rtz # perform operation
fdiv.h f25, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fdiv.h f14, f30, f15, dyn # perform operation
fdiv.h f14, f30, f15, rdn # perform operation
fdiv.h f14, f30, f15, rmm # perform operation
fdiv.h f14, f30, f15, rne # perform operation
fdiv.h f14, f30, f15, rtz # perform operation
fdiv.h f14, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fdiv.h f21, f14, f31, dyn # perform operation
fdiv.h f21, f14, f31, rdn # perform operation
fdiv.h f21, f14, f31, rmm # perform operation
fdiv.h f21, f14, f31, rne # perform operation
fdiv.h f21, f14, f31, rtz # perform operation
fdiv.h f21, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fdiv.h f29, f17, f27, dyn # perform operation
fdiv.h f29, f17, f27, rdn # perform operation
fdiv.h f29, f17, f27, rmm # perform operation
fdiv.h f29, f17, f27, rne # perform operation
fdiv.h f29, f17, f27, rtz # perform operation
fdiv.h f29, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f18, f13, f3, dyn # perform operation
fdiv.h f18, f13, f3, rdn # perform operation
fdiv.h f18, f13, f3, rmm # perform operation
fdiv.h f18, f13, f3, rne # perform operation
fdiv.h f18, f13, f3, rtz # perform operation
fdiv.h f18, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fdiv.h f13, f12, f8, dyn # perform operation
fdiv.h f13, f12, f8, rdn # perform operation
fdiv.h f13, f12, f8, rmm # perform operation
fdiv.h f13, f12, f8, rne # perform operation
fdiv.h f13, f12, f8, rtz # perform operation
fdiv.h f13, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f8, f22, f30, dyn # perform operation
fdiv.h f8, f22, f30, rdn # perform operation
fdiv.h f8, f22, f30, rmm # perform operation
fdiv.h f8, f22, f30, rne # perform operation
fdiv.h f8, f22, f30, rtz # perform operation
fdiv.h f8, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fdiv.h f20, f12, f11, dyn # perform operation
fdiv.h f20, f12, f11, rdn # perform operation
fdiv.h f20, f12, f11, rmm # perform operation
fdiv.h f20, f12, f11, rne # perform operation
fdiv.h f20, f12, f11, rtz # perform operation
fdiv.h f20, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fdiv.h f14, f2, f11, dyn # perform operation
fdiv.h f14, f2, f11, rdn # perform operation
fdiv.h f14, f2, f11, rmm # perform operation
fdiv.h f14, f2, f11, rne # perform operation
fdiv.h f14, f2, f11, rtz # perform operation
fdiv.h f14, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fdiv.h f9, f22, f23, dyn # perform operation
fdiv.h f9, f22, f23, rdn # perform operation
fdiv.h f9, f22, f23, rmm # perform operation
fdiv.h f9, f22, f23, rne # perform operation
fdiv.h f9, f22, f23, rtz # perform operation
fdiv.h f9, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fdiv.h f29, f3, f11, dyn # perform operation
fdiv.h f29, f3, f11, rdn # perform operation
fdiv.h f29, f3, f11, rmm # perform operation
fdiv.h f29, f3, f11, rne # perform operation
fdiv.h f29, f3, f11, rtz # perform operation
fdiv.h f29, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fdiv.h f14, f7, f1, dyn # perform operation
fdiv.h f14, f7, f1, rdn # perform operation
fdiv.h f14, f7, f1, rmm # perform operation
fdiv.h f14, f7, f1, rne # perform operation
fdiv.h f14, f7, f1, rtz # perform operation
fdiv.h f14, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fdiv.h f14, f31, f29, dyn # perform operation
fdiv.h f14, f31, f29, rdn # perform operation
fdiv.h f14, f31, f29, rmm # perform operation
fdiv.h f14, f31, f29, rne # perform operation
fdiv.h f14, f31, f29, rtz # perform operation
fdiv.h f14, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f14, f1, f24, dyn # perform operation
fdiv.h f14, f1, f24, rdn # perform operation
fdiv.h f14, f1, f24, rmm # perform operation
fdiv.h f14, f1, f24, rne # perform operation
fdiv.h f14, f1, f24, rtz # perform operation
fdiv.h f14, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fdiv.h f16, f27, f2, dyn # perform operation
fdiv.h f16, f27, f2, rdn # perform operation
fdiv.h f16, f27, f2, rmm # perform operation
fdiv.h f16, f27, f2, rne # perform operation
fdiv.h f16, f27, f2, rtz # perform operation
fdiv.h f16, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f18, f6, f9, dyn # perform operation
fdiv.h f18, f6, f9, rdn # perform operation
fdiv.h f18, f6, f9, rmm # perform operation
fdiv.h f18, f6, f9, rne # perform operation
fdiv.h f18, f6, f9, rtz # perform operation
fdiv.h f18, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fdiv.h f17, f16, f6, dyn # perform operation
fdiv.h f17, f16, f6, rdn # perform operation
fdiv.h f17, f16, f6, rmm # perform operation
fdiv.h f17, f16, f6, rne # perform operation
fdiv.h f17, f16, f6, rtz # perform operation
fdiv.h f17, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fdiv.h f3, f8, f18, dyn # perform operation
fdiv.h f3, f8, f18, rdn # perform operation
fdiv.h f3, f8, f18, rmm # perform operation
fdiv.h f3, f8, f18, rne # perform operation
fdiv.h f3, f8, f18, rtz # perform operation
fdiv.h f3, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fdiv.h f28, f30, f17, dyn # perform operation
fdiv.h f28, f30, f17, rdn # perform operation
fdiv.h f28, f30, f17, rmm # perform operation
fdiv.h f28, f30, f17, rne # perform operation
fdiv.h f28, f30, f17, rtz # perform operation
fdiv.h f28, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fdiv.h f10, f30, f23, dyn # perform operation
fdiv.h f10, f30, f23, rdn # perform operation
fdiv.h f10, f30, f23, rmm # perform operation
fdiv.h f10, f30, f23, rne # perform operation
fdiv.h f10, f30, f23, rtz # perform operation
fdiv.h f10, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fdiv.h f1, f22, f28, dyn # perform operation
fdiv.h f1, f22, f28, rdn # perform operation
fdiv.h f1, f22, f28, rmm # perform operation
fdiv.h f1, f22, f28, rne # perform operation
fdiv.h f1, f22, f28, rtz # perform operation
fdiv.h f1, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fdiv.h f11, f23, f29, dyn # perform operation
fdiv.h f11, f23, f29, rdn # perform operation
fdiv.h f11, f23, f29, rmm # perform operation
fdiv.h f11, f23, f29, rne # perform operation
fdiv.h f11, f23, f29, rtz # perform operation
fdiv.h f11, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.h f28, f21, f27, dyn # perform operation
fdiv.h f28, f21, f27, rdn # perform operation
fdiv.h f28, f21, f27, rmm # perform operation
fdiv.h f28, f21, f27, rne # perform operation
fdiv.h f28, f21, f27, rtz # perform operation
fdiv.h f28, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f9, f22, f14, dyn # perform operation
fdiv.h f9, f22, f14, rdn # perform operation
fdiv.h f9, f22, f14, rmm # perform operation
fdiv.h f9, f22, f14, rne # perform operation
fdiv.h f9, f22, f14, rtz # perform operation
fdiv.h f9, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fdiv.h f27, f7, f19, dyn # perform operation
fdiv.h f27, f7, f19, rdn # perform operation
fdiv.h f27, f7, f19, rmm # perform operation
fdiv.h f27, f7, f19, rne # perform operation
fdiv.h f27, f7, f19, rtz # perform operation
fdiv.h f27, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fdiv.h f12, f30, f23, dyn # perform operation
fdiv.h f12, f30, f23, rdn # perform operation
fdiv.h f12, f30, f23, rmm # perform operation
fdiv.h f12, f30, f23, rne # perform operation
fdiv.h f12, f30, f23, rtz # perform operation
fdiv.h f12, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fdiv.h f19, f10, f11, dyn # perform operation
fdiv.h f19, f10, f11, rdn # perform operation
fdiv.h f19, f10, f11, rmm # perform operation
fdiv.h f19, f10, f11, rne # perform operation
fdiv.h f19, f10, f11, rtz # perform operation
fdiv.h f19, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fdiv.h f2, f8, f25, dyn # perform operation
fdiv.h f2, f8, f25, rdn # perform operation
fdiv.h f2, f8, f25, rmm # perform operation
fdiv.h f2, f8, f25, rne # perform operation
fdiv.h f2, f8, f25, rtz # perform operation
fdiv.h f2, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
fdiv.h f2, f10, f8, dyn # perform operation
fdiv.h f2, f10, f8, rdn # perform operation
fdiv.h f2, f10, f8, rmm # perform operation
fdiv.h f2, f10, f8, rne # perform operation
fdiv.h f2, f10, f8, rtz # perform operation
fdiv.h f2, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fdiv.h f14, f31, f19, dyn # perform operation
fdiv.h f14, f31, f19, rdn # perform operation
fdiv.h f14, f31, f19, rmm # perform operation
fdiv.h f14, f31, f19, rne # perform operation
fdiv.h f14, f31, f19, rtz # perform operation
fdiv.h f14, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fdiv.h f14, f31, f21, dyn # perform operation
fdiv.h f14, f31, f21, rdn # perform operation
fdiv.h f14, f31, f21, rmm # perform operation
fdiv.h f14, f31, f21, rne # perform operation
fdiv.h f14, f31, f21, rtz # perform operation
fdiv.h f14, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
fdiv.h f10, f23, f20, dyn # perform operation
fdiv.h f10, f23, f20, rdn # perform operation
fdiv.h f10, f23, f20, rmm # perform operation
fdiv.h f10, f23, f20, rne # perform operation
fdiv.h f10, f23, f20, rtz # perform operation
fdiv.h f10, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f5, f6, f22, dyn # perform operation
fdiv.h f5, f6, f22, rdn # perform operation
fdiv.h f5, f6, f22, rmm # perform operation
fdiv.h f5, f6, f22, rne # perform operation
fdiv.h f5, f6, f22, rtz # perform operation
fdiv.h f5, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f16, f27, f14, dyn # perform operation
fdiv.h f16, f27, f14, rdn # perform operation
fdiv.h f16, f27, f14, rmm # perform operation
fdiv.h f16, f27, f14, rne # perform operation
fdiv.h f16, f27, f14, rtz # perform operation
fdiv.h f16, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f14 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x72f63ade9341ab5 # load x3 with value 0x72f63ade9341ab5
sw x3, 0(x2) # store 0x72f63ade9341ab5 in memory
flh f9, 0(x2) # load 0x72f63ade9341ab5 from memory into f9
la x2, scratch
li x3, 0xe0d5c733d200665e # load x3 with value 0xe0d5c733d200665e
sw x3, 0(x2) # store 0xe0d5c733d200665e in memory
flh f28, 0(x2) # load 0xe0d5c733d200665e from memory into f28
fdiv.h f13, f9, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x24db88a6788edb31 # load x3 with value 0x24db88a6788edb31
sw x3, 0(x2) # store 0x24db88a6788edb31 in memory
flw f17, 0(x2) # load 0x24db88a6788edb31 from memory into f17
fdiv.h f18, f3, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f2, 0(x2) # load 0xfffe8000 from memory into f2
la x2, scratch
li x3, 0xad3a7212c3311d5b # load x3 with value 0xad3a7212c3311d5b
sw x3, 0(x2) # store 0xad3a7212c3311d5b in memory
flw f1, 0(x2) # load 0xad3a7212c3311d5b from memory into f1
fdiv.h f29, f2, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f22, 0(x2) # load 0x7fff3c00 from memory into f22
la x2, scratch
li x3, 0x54993d02e69ec5d4 # load x3 with value 0x54993d02e69ec5d4
sw x3, 0(x2) # store 0x54993d02e69ec5d4 in memory
flw f20, 0(x2) # load 0x54993d02e69ec5d4 from memory into f20
fdiv.h f28, f22, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f6, 0(x2) # load 0xbeefbc00 from memory into f6
la x2, scratch
li x3, 0xc6415a841a187955 # load x3 with value 0xc6415a841a187955
sw x3, 0(x2) # store 0xc6415a841a187955 in memory
flw f30, 0(x2) # load 0xc6415a841a187955 from memory into f30
fdiv.h f29, f6, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f16, 0(x2) # load 0xfeff0400 from memory into f16
la x2, scratch
li x3, 0x3faed3e4fe3e9181 # load x3 with value 0x3faed3e4fe3e9181
sw x3, 0(x2) # store 0x3faed3e4fe3e9181 in memory
flw f19, 0(x2) # load 0x3faed3e4fe3e9181 from memory into f19
fdiv.h f3, f16, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f12, 0(x2) # load 0x0fff8400 from memory into f12
la x2, scratch
li x3, 0x5527c9de15cc8c35 # load x3 with value 0x5527c9de15cc8c35
sw x3, 0(x2) # store 0x5527c9de15cc8c35 in memory
flw f10, 0(x2) # load 0x5527c9de15cc8c35 from memory into f10
fdiv.h f3, f12, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f12, 0(x2) # load 0xefff7bff from memory into f12
la x2, scratch
li x3, 0x33e10cb21c4dec54 # load x3 with value 0x33e10cb21c4dec54
sw x3, 0(x2) # store 0x33e10cb21c4dec54 in memory
flw f21, 0(x2) # load 0x33e10cb21c4dec54 from memory into f21
fdiv.h f24, f12, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f16, 0(x2) # load 0xc0defbff from memory into f16
la x2, scratch
li x3, 0x71f3a84ef186d421 # load x3 with value 0x71f3a84ef186d421
sw x3, 0(x2) # store 0x71f3a84ef186d421 in memory
flw f20, 0(x2) # load 0x71f3a84ef186d421 from memory into f20
fdiv.h f21, f16, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f23, 0(x2) # load 0x4f1a7c00 from memory into f23
la x2, scratch
li x3, 0xb00d87ba5c1bafd5 # load x3 with value 0xb00d87ba5c1bafd5
sw x3, 0(x2) # store 0xb00d87ba5c1bafd5 in memory
flw f28, 0(x2) # load 0xb00d87ba5c1bafd5 from memory into f28
fdiv.h f17, f23, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f5, 0(x2) # load 0x0ffffc00 from memory into f5
la x2, scratch
li x3, 0x902e5c3f83a39362 # load x3 with value 0x902e5c3f83a39362
sw x3, 0(x2) # store 0x902e5c3f83a39362 in memory
flw f26, 0(x2) # load 0x902e5c3f83a39362 from memory into f26
fdiv.h f18, f5, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f26, 0(x2) # load 0xffef7e00 from memory into f26
la x2, scratch
li x3, 0x805e09a76ea55561 # load x3 with value 0x805e09a76ea55561
sw x3, 0(x2) # store 0x805e09a76ea55561 in memory
flw f15, 0(x2) # load 0x805e09a76ea55561 from memory into f15
fdiv.h f5, f26, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f7, 0(x2) # load 0xfeef7fff from memory into f7
la x2, scratch
li x3, 0xac91b85bdbad3e67 # load x3 with value 0xac91b85bdbad3e67
sw x3, 0(x2) # store 0xac91b85bdbad3e67 in memory
flw f21, 0(x2) # load 0xac91b85bdbad3e67 from memory into f21
fdiv.h f27, f7, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f5, 0(x2) # load 0xa1b27c01 from memory into f5
la x2, scratch
li x3, 0x5e22abb498d49c6d # load x3 with value 0x5e22abb498d49c6d
sw x3, 0(x2) # store 0x5e22abb498d49c6d in memory
flw f16, 0(x2) # load 0x5e22abb498d49c6d from memory into f16
fdiv.h f25, f5, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f9, 0(x2) # load 0x4fd77dff from memory into f9
la x2, scratch
li x3, 0x1acee1464a6a110a # load x3 with value 0x1acee1464a6a110a
sw x3, 0(x2) # store 0x1acee1464a6a110a in memory
flw f7, 0(x2) # load 0x1acee1464a6a110a from memory into f7
fdiv.h f24, f9, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xbbf20d99264c2d19 # load x3 with value 0xbbf20d99264c2d19
sw x3, 0(x2) # store 0xbbf20d99264c2d19 in memory
flw f26, 0(x2) # load 0xbbf20d99264c2d19 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f28, f26, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xda3e30b482fa0b4b # load x3 with value 0xda3e30b482fa0b4b
sw x3, 0(x2) # store 0xda3e30b482fa0b4b in memory
flw f29, 0(x2) # load 0xda3e30b482fa0b4b from memory into f29
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f30, 0(x2) # load 0xfffe8000 from memory into f30
fdiv.h f18, f29, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x5145c40a30ccfcac # load x3 with value 0x5145c40a30ccfcac
sw x3, 0(x2) # store 0x5145c40a30ccfcac in memory
flw f3, 0(x2) # load 0x5145c40a30ccfcac from memory into f3
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f12, 0(x2) # load 0x7fff3c00 from memory into f12
fdiv.h f5, f3, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xf061ee498c9da7d5 # load x3 with value 0xf061ee498c9da7d5
sw x3, 0(x2) # store 0xf061ee498c9da7d5 in memory
flw f28, 0(x2) # load 0xf061ee498c9da7d5 from memory into f28
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f18, 0(x2) # load 0xbeefbc00 from memory into f18
fdiv.h f30, f28, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0x8ca9ae82baf86443 # load x3 with value 0x8ca9ae82baf86443
sw x3, 0(x2) # store 0x8ca9ae82baf86443 in memory
flw f2, 0(x2) # load 0x8ca9ae82baf86443 from memory into f2
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f20, 0(x2) # load 0xfeff0400 from memory into f20
fdiv.h f24, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0xf1a293d129c85ce6 # load x3 with value 0xf1a293d129c85ce6
sw x3, 0(x2) # store 0xf1a293d129c85ce6 in memory
flw f3, 0(x2) # load 0xf1a293d129c85ce6 from memory into f3
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f9, 0(x2) # load 0x0fff8400 from memory into f9
fdiv.h f19, f3, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0x4e8ddd043b13c694 # load x3 with value 0x4e8ddd043b13c694
sw x3, 0(x2) # store 0x4e8ddd043b13c694 in memory
flw f29, 0(x2) # load 0x4e8ddd043b13c694 from memory into f29
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f28, 0(x2) # load 0xefff7bff from memory into f28
fdiv.h f13, f29, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0x6530e14efbdb7133 # load x3 with value 0x6530e14efbdb7133
sw x3, 0(x2) # store 0x6530e14efbdb7133 in memory
flw f21, 0(x2) # load 0x6530e14efbdb7133 from memory into f21
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f23, 0(x2) # load 0xc0defbff from memory into f23
fdiv.h f9, f21, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0xe0682936cc7abaf5 # load x3 with value 0xe0682936cc7abaf5
sw x3, 0(x2) # store 0xe0682936cc7abaf5 in memory
flw f14, 0(x2) # load 0xe0682936cc7abaf5 from memory into f14
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f15, 0(x2) # load 0x4f1a7c00 from memory into f15
fdiv.h f23, f14, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x13a052a051eb5149 # load x3 with value 0x13a052a051eb5149
sw x3, 0(x2) # store 0x13a052a051eb5149 in memory
flw f13, 0(x2) # load 0x13a052a051eb5149 from memory into f13
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f16, 0(x2) # load 0x0ffffc00 from memory into f16
fdiv.h f26, f13, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x165bc0473f74688e # load x3 with value 0x165bc0473f74688e
sw x3, 0(x2) # store 0x165bc0473f74688e in memory
flw f12, 0(x2) # load 0x165bc0473f74688e from memory into f12
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f23, 0(x2) # load 0xffef7e00 from memory into f23
fdiv.h f3, f12, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0x8e4abb991292da6c # load x3 with value 0x8e4abb991292da6c
sw x3, 0(x2) # store 0x8e4abb991292da6c in memory
flw f26, 0(x2) # load 0x8e4abb991292da6c from memory into f26
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f24, 0(x2) # load 0xfeef7fff from memory into f24
fdiv.h f3, f26, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0x5a7271bb53f3bcd9 # load x3 with value 0x5a7271bb53f3bcd9
sw x3, 0(x2) # store 0x5a7271bb53f3bcd9 in memory
flw f28, 0(x2) # load 0x5a7271bb53f3bcd9 from memory into f28
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f1, 0(x2) # load 0xa1b27c01 from memory into f1
fdiv.h f15, f28, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x1619a4493bb00a90 # load x3 with value 0x1619a4493bb00a90
sw x3, 0(x2) # store 0x1619a4493bb00a90 in memory
flw f23, 0(x2) # load 0x1619a4493bb00a90 from memory into f23
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f1, 0(x2) # load 0x4fd77dff from memory into f1
fdiv.h f14, f23, f1 # perform operation

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
