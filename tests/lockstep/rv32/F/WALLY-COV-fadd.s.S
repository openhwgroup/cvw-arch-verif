///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fadd.s.S
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
add x23, x25, x8 # perform first operation
fadd.s f14, f19, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x8, x7 # perform first operation
fadd.s f9, f28, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x29, x19 # perform first operation
fadd.s f6, f7, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f16, f31, f11 # perform first operation
fadd.s f11, f16, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f2, f8, f12 # perform first operation
fadd.s f12, f11, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x3, x2 # perform first operation
fadd.s f3, f22, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f17, f18 # perform first operation
fadd.s f27, f1, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f27, f2 # perform first operation
fadd.s f15, f18, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f30, f3 # perform first operation
fadd.s f6, f10, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f10, f23 # perform first operation
fadd.s f10, f22, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f15, f21 # perform first operation
fadd.s f21, f14, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f27, f25 # perform first operation
fadd.s f11, f29, f26 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xdf911d48 # load x3 with value 0xdf911d48
sw x3, 0(x2) # store 0xdf911d48 in memory
flw f0, 0(x2) # load 0xdf911d48 from memory into f0
la x2, scratch
li x3, 0xc61b862e # load x3 with value 0xc61b862e
sw x3, 0(x2) # store 0xc61b862e in memory
flw f10, 0(x2) # load 0xc61b862e from memory into f10
fadd.s f19, f0, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x0459155b # load x3 with value 0x0459155b
sw x3, 0(x2) # store 0x0459155b in memory
flw f1, 0(x2) # load 0x0459155b from memory into f1
la x2, scratch
li x3, 0x635fd2c6 # load x3 with value 0x635fd2c6
sw x3, 0(x2) # store 0x635fd2c6 in memory
flw f23, 0(x2) # load 0x635fd2c6 from memory into f23
fadd.s f11, f1, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xb287260f # load x3 with value 0xb287260f
sw x3, 0(x2) # store 0xb287260f in memory
flw f2, 0(x2) # load 0xb287260f from memory into f2
la x2, scratch
li x3, 0x9add96d0 # load x3 with value 0x9add96d0
sw x3, 0(x2) # store 0x9add96d0 in memory
flw f22, 0(x2) # load 0x9add96d0 from memory into f22
fadd.s f17, f2, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x98562631 # load x3 with value 0x98562631
sw x3, 0(x2) # store 0x98562631 in memory
flw f3, 0(x2) # load 0x98562631 from memory into f3
la x2, scratch
li x3, 0xb82ba621 # load x3 with value 0xb82ba621
sw x3, 0(x2) # store 0xb82ba621 in memory
flw f13, 0(x2) # load 0xb82ba621 from memory into f13
fadd.s f8, f3, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe5c65cd8 # load x3 with value 0xe5c65cd8
sw x3, 0(x2) # store 0xe5c65cd8 in memory
flw f4, 0(x2) # load 0xe5c65cd8 from memory into f4
la x2, scratch
li x3, 0x5d2aca49 # load x3 with value 0x5d2aca49
sw x3, 0(x2) # store 0x5d2aca49 in memory
flw f22, 0(x2) # load 0x5d2aca49 from memory into f22
fadd.s f21, f4, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6c8acbba # load x3 with value 0x6c8acbba
sw x3, 0(x2) # store 0x6c8acbba in memory
flw f5, 0(x2) # load 0x6c8acbba from memory into f5
la x2, scratch
li x3, 0x657182de # load x3 with value 0x657182de
sw x3, 0(x2) # store 0x657182de in memory
flw f29, 0(x2) # load 0x657182de from memory into f29
fadd.s f17, f5, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5e1042b8 # load x3 with value 0x5e1042b8
sw x3, 0(x2) # store 0x5e1042b8 in memory
flw f6, 0(x2) # load 0x5e1042b8 from memory into f6
la x2, scratch
li x3, 0xe1911784 # load x3 with value 0xe1911784
sw x3, 0(x2) # store 0xe1911784 in memory
flw f5, 0(x2) # load 0xe1911784 from memory into f5
fadd.s f24, f6, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6489f095 # load x3 with value 0x6489f095
sw x3, 0(x2) # store 0x6489f095 in memory
flw f7, 0(x2) # load 0x6489f095 from memory into f7
la x2, scratch
li x3, 0xaf412c5f # load x3 with value 0xaf412c5f
sw x3, 0(x2) # store 0xaf412c5f in memory
flw f15, 0(x2) # load 0xaf412c5f from memory into f15
fadd.s f22, f7, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xf3831c8e # load x3 with value 0xf3831c8e
sw x3, 0(x2) # store 0xf3831c8e in memory
flw f8, 0(x2) # load 0xf3831c8e from memory into f8
la x2, scratch
li x3, 0x36b0e03b # load x3 with value 0x36b0e03b
sw x3, 0(x2) # store 0x36b0e03b in memory
flw f9, 0(x2) # load 0x36b0e03b from memory into f9
fadd.s f31, f8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x6d399e03 # load x3 with value 0x6d399e03
sw x3, 0(x2) # store 0x6d399e03 in memory
flw f9, 0(x2) # load 0x6d399e03 from memory into f9
la x2, scratch
li x3, 0x6e93dc9f # load x3 with value 0x6e93dc9f
sw x3, 0(x2) # store 0x6e93dc9f in memory
flw f28, 0(x2) # load 0x6e93dc9f from memory into f28
fadd.s f8, f9, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xba7e0a84 # load x3 with value 0xba7e0a84
sw x3, 0(x2) # store 0xba7e0a84 in memory
flw f10, 0(x2) # load 0xba7e0a84 from memory into f10
la x2, scratch
li x3, 0x0be75bb5 # load x3 with value 0x0be75bb5
sw x3, 0(x2) # store 0x0be75bb5 in memory
flw f14, 0(x2) # load 0x0be75bb5 from memory into f14
fadd.s f17, f10, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x81f7ce2e # load x3 with value 0x81f7ce2e
sw x3, 0(x2) # store 0x81f7ce2e in memory
flw f11, 0(x2) # load 0x81f7ce2e from memory into f11
la x2, scratch
li x3, 0xc47f4bc5 # load x3 with value 0xc47f4bc5
sw x3, 0(x2) # store 0xc47f4bc5 in memory
flw f25, 0(x2) # load 0xc47f4bc5 from memory into f25
fadd.s f15, f11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x245d0a6a # load x3 with value 0x245d0a6a
sw x3, 0(x2) # store 0x245d0a6a in memory
flw f12, 0(x2) # load 0x245d0a6a from memory into f12
la x2, scratch
li x3, 0x37d9480e # load x3 with value 0x37d9480e
sw x3, 0(x2) # store 0x37d9480e in memory
flw f18, 0(x2) # load 0x37d9480e from memory into f18
fadd.s f8, f12, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x344d1f84 # load x3 with value 0x344d1f84
sw x3, 0(x2) # store 0x344d1f84 in memory
flw f13, 0(x2) # load 0x344d1f84 from memory into f13
la x2, scratch
li x3, 0xab9b347e # load x3 with value 0xab9b347e
sw x3, 0(x2) # store 0xab9b347e in memory
flw f14, 0(x2) # load 0xab9b347e from memory into f14
fadd.s f13, f13, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x2c7eba42 # load x3 with value 0x2c7eba42
sw x3, 0(x2) # store 0x2c7eba42 in memory
flw f14, 0(x2) # load 0x2c7eba42 from memory into f14
la x2, scratch
li x3, 0xb24f73c3 # load x3 with value 0xb24f73c3
sw x3, 0(x2) # store 0xb24f73c3 in memory
flw f13, 0(x2) # load 0xb24f73c3 from memory into f13
fadd.s f12, f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x3ff40392 # load x3 with value 0x3ff40392
sw x3, 0(x2) # store 0x3ff40392 in memory
flw f15, 0(x2) # load 0x3ff40392 from memory into f15
la x2, scratch
li x3, 0xd8a19ecd # load x3 with value 0xd8a19ecd
sw x3, 0(x2) # store 0xd8a19ecd in memory
flw f2, 0(x2) # load 0xd8a19ecd from memory into f2
fadd.s f14, f15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x763843fd # load x3 with value 0x763843fd
sw x3, 0(x2) # store 0x763843fd in memory
flw f16, 0(x2) # load 0x763843fd from memory into f16
la x2, scratch
li x3, 0xab35d190 # load x3 with value 0xab35d190
sw x3, 0(x2) # store 0xab35d190 in memory
flw f13, 0(x2) # load 0xab35d190 from memory into f13
fadd.s f1, f16, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xee38a843 # load x3 with value 0xee38a843
sw x3, 0(x2) # store 0xee38a843 in memory
flw f17, 0(x2) # load 0xee38a843 from memory into f17
la x2, scratch
li x3, 0xc524f62f # load x3 with value 0xc524f62f
sw x3, 0(x2) # store 0xc524f62f in memory
flw f16, 0(x2) # load 0xc524f62f from memory into f16
fadd.s f6, f17, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x80756e3d # load x3 with value 0x80756e3d
sw x3, 0(x2) # store 0x80756e3d in memory
flw f18, 0(x2) # load 0x80756e3d from memory into f18
la x2, scratch
li x3, 0x42c6b2fb # load x3 with value 0x42c6b2fb
sw x3, 0(x2) # store 0x42c6b2fb in memory
flw f10, 0(x2) # load 0x42c6b2fb from memory into f10
fadd.s f31, f18, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xd81ccf1e # load x3 with value 0xd81ccf1e
sw x3, 0(x2) # store 0xd81ccf1e in memory
flw f19, 0(x2) # load 0xd81ccf1e from memory into f19
la x2, scratch
li x3, 0x8c16a86e # load x3 with value 0x8c16a86e
sw x3, 0(x2) # store 0x8c16a86e in memory
flw f27, 0(x2) # load 0x8c16a86e from memory into f27
fadd.s f28, f19, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x5045b74b # load x3 with value 0x5045b74b
sw x3, 0(x2) # store 0x5045b74b in memory
flw f20, 0(x2) # load 0x5045b74b from memory into f20
la x2, scratch
li x3, 0x07003182 # load x3 with value 0x07003182
sw x3, 0(x2) # store 0x07003182 in memory
flw f3, 0(x2) # load 0x07003182 from memory into f3
fadd.s f17, f20, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa385adfa # load x3 with value 0xa385adfa
sw x3, 0(x2) # store 0xa385adfa in memory
flw f21, 0(x2) # load 0xa385adfa from memory into f21
la x2, scratch
li x3, 0xa5498abb # load x3 with value 0xa5498abb
sw x3, 0(x2) # store 0xa5498abb in memory
flw f22, 0(x2) # load 0xa5498abb from memory into f22
fadd.s f24, f21, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x0a544ac8 # load x3 with value 0x0a544ac8
sw x3, 0(x2) # store 0x0a544ac8 in memory
flw f22, 0(x2) # load 0x0a544ac8 from memory into f22
la x2, scratch
li x3, 0xaa3a2978 # load x3 with value 0xaa3a2978
sw x3, 0(x2) # store 0xaa3a2978 in memory
flw f12, 0(x2) # load 0xaa3a2978 from memory into f12
fadd.s f6, f22, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x30848cb0 # load x3 with value 0x30848cb0
sw x3, 0(x2) # store 0x30848cb0 in memory
flw f23, 0(x2) # load 0x30848cb0 from memory into f23
la x2, scratch
li x3, 0x99c824e6 # load x3 with value 0x99c824e6
sw x3, 0(x2) # store 0x99c824e6 in memory
flw f9, 0(x2) # load 0x99c824e6 from memory into f9
fadd.s f26, f23, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xf6e2a1f7 # load x3 with value 0xf6e2a1f7
sw x3, 0(x2) # store 0xf6e2a1f7 in memory
flw f24, 0(x2) # load 0xf6e2a1f7 from memory into f24
la x2, scratch
li x3, 0x23882fc9 # load x3 with value 0x23882fc9
sw x3, 0(x2) # store 0x23882fc9 in memory
flw f2, 0(x2) # load 0x23882fc9 from memory into f2
fadd.s f17, f24, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x87dfc990 # load x3 with value 0x87dfc990
sw x3, 0(x2) # store 0x87dfc990 in memory
flw f25, 0(x2) # load 0x87dfc990 from memory into f25
la x2, scratch
li x3, 0xdd769b99 # load x3 with value 0xdd769b99
sw x3, 0(x2) # store 0xdd769b99 in memory
flw f3, 0(x2) # load 0xdd769b99 from memory into f3
fadd.s f29, f25, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x69ef2671 # load x3 with value 0x69ef2671
sw x3, 0(x2) # store 0x69ef2671 in memory
flw f26, 0(x2) # load 0x69ef2671 from memory into f26
la x2, scratch
li x3, 0x335a6f5d # load x3 with value 0x335a6f5d
sw x3, 0(x2) # store 0x335a6f5d in memory
flw f8, 0(x2) # load 0x335a6f5d from memory into f8
fadd.s f30, f26, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xe4f950eb # load x3 with value 0xe4f950eb
sw x3, 0(x2) # store 0xe4f950eb in memory
flw f27, 0(x2) # load 0xe4f950eb from memory into f27
la x2, scratch
li x3, 0x048a407b # load x3 with value 0x048a407b
sw x3, 0(x2) # store 0x048a407b in memory
flw f16, 0(x2) # load 0x048a407b from memory into f16
fadd.s f26, f27, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x5b33ae18 # load x3 with value 0x5b33ae18
sw x3, 0(x2) # store 0x5b33ae18 in memory
flw f28, 0(x2) # load 0x5b33ae18 from memory into f28
la x2, scratch
li x3, 0x87b7c97a # load x3 with value 0x87b7c97a
sw x3, 0(x2) # store 0x87b7c97a in memory
flw f20, 0(x2) # load 0x87b7c97a from memory into f20
fadd.s f14, f28, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x6d8b5eb1 # load x3 with value 0x6d8b5eb1
sw x3, 0(x2) # store 0x6d8b5eb1 in memory
flw f29, 0(x2) # load 0x6d8b5eb1 from memory into f29
la x2, scratch
li x3, 0x1b8eda73 # load x3 with value 0x1b8eda73
sw x3, 0(x2) # store 0x1b8eda73 in memory
flw f30, 0(x2) # load 0x1b8eda73 from memory into f30
fadd.s f28, f29, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x77761d70 # load x3 with value 0x77761d70
sw x3, 0(x2) # store 0x77761d70 in memory
flw f30, 0(x2) # load 0x77761d70 from memory into f30
la x2, scratch
li x3, 0xe57bf1dc # load x3 with value 0xe57bf1dc
sw x3, 0(x2) # store 0xe57bf1dc in memory
flw f28, 0(x2) # load 0xe57bf1dc from memory into f28
fadd.s f16, f30, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xa6b64735 # load x3 with value 0xa6b64735
sw x3, 0(x2) # store 0xa6b64735 in memory
flw f31, 0(x2) # load 0xa6b64735 from memory into f31
la x2, scratch
li x3, 0x5f1a1cb7 # load x3 with value 0x5f1a1cb7
sw x3, 0(x2) # store 0x5f1a1cb7 in memory
flw f20, 0(x2) # load 0x5f1a1cb7 from memory into f20
fadd.s f5, f31, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x3c571525 # load x3 with value 0x3c571525
sw x3, 0(x2) # store 0x3c571525 in memory
flw f12, 0(x2) # load 0x3c571525 from memory into f12
la x2, scratch
li x3, 0x4d9752ab # load x3 with value 0x4d9752ab
sw x3, 0(x2) # store 0x4d9752ab in memory
flw f0, 0(x2) # load 0x4d9752ab from memory into f0
fadd.s f18, f12, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xa1ed3d7d # load x3 with value 0xa1ed3d7d
sw x3, 0(x2) # store 0xa1ed3d7d in memory
flw f17, 0(x2) # load 0xa1ed3d7d from memory into f17
la x2, scratch
li x3, 0xdbcc69c1 # load x3 with value 0xdbcc69c1
sw x3, 0(x2) # store 0xdbcc69c1 in memory
flw f1, 0(x2) # load 0xdbcc69c1 from memory into f1
fadd.s f30, f17, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9fac6a7d # load x3 with value 0x9fac6a7d
sw x3, 0(x2) # store 0x9fac6a7d in memory
flw f29, 0(x2) # load 0x9fac6a7d from memory into f29
la x2, scratch
li x3, 0x09ec7991 # load x3 with value 0x09ec7991
sw x3, 0(x2) # store 0x09ec7991 in memory
flw f2, 0(x2) # load 0x09ec7991 from memory into f2
fadd.s f5, f29, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xdd6c2fb9 # load x3 with value 0xdd6c2fb9
sw x3, 0(x2) # store 0xdd6c2fb9 in memory
flw f23, 0(x2) # load 0xdd6c2fb9 from memory into f23
la x2, scratch
li x3, 0x45bb8142 # load x3 with value 0x45bb8142
sw x3, 0(x2) # store 0x45bb8142 in memory
flw f3, 0(x2) # load 0x45bb8142 from memory into f3
fadd.s f6, f23, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6d2aa1b2 # load x3 with value 0x6d2aa1b2
sw x3, 0(x2) # store 0x6d2aa1b2 in memory
flw f7, 0(x2) # load 0x6d2aa1b2 from memory into f7
la x2, scratch
li x3, 0xe1667f40 # load x3 with value 0xe1667f40
sw x3, 0(x2) # store 0xe1667f40 in memory
flw f4, 0(x2) # load 0xe1667f40 from memory into f4
fadd.s f5, f7, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
la x2, scratch
li x3, 0x696a10fb # load x3 with value 0x696a10fb
sw x3, 0(x2) # store 0x696a10fb in memory
flw f8, 0(x2) # load 0x696a10fb from memory into f8
la x2, scratch
li x3, 0x6bd03c3d # load x3 with value 0x6bd03c3d
sw x3, 0(x2) # store 0x6bd03c3d in memory
flw f5, 0(x2) # load 0x6bd03c3d from memory into f5
fadd.s f24, f8, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe8374819 # load x3 with value 0xe8374819
sw x3, 0(x2) # store 0xe8374819 in memory
flw f19, 0(x2) # load 0xe8374819 from memory into f19
la x2, scratch
li x3, 0x2933581d # load x3 with value 0x2933581d
sw x3, 0(x2) # store 0x2933581d in memory
flw f6, 0(x2) # load 0x2933581d from memory into f6
fadd.s f7, f19, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
la x2, scratch
li x3, 0x620161c8 # load x3 with value 0x620161c8
sw x3, 0(x2) # store 0x620161c8 in memory
flw f10, 0(x2) # load 0x620161c8 from memory into f10
la x2, scratch
li x3, 0x3383949f # load x3 with value 0x3383949f
sw x3, 0(x2) # store 0x3383949f in memory
flw f7, 0(x2) # load 0x3383949f from memory into f7
fadd.s f1, f10, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x26c092bb # load x3 with value 0x26c092bb
sw x3, 0(x2) # store 0x26c092bb in memory
flw f2, 0(x2) # load 0x26c092bb from memory into f2
la x2, scratch
li x3, 0x9e1a6e84 # load x3 with value 0x9e1a6e84
sw x3, 0(x2) # store 0x9e1a6e84 in memory
flw f8, 0(x2) # load 0x9e1a6e84 from memory into f8
fadd.s f12, f2, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xf2633574 # load x3 with value 0xf2633574
sw x3, 0(x2) # store 0xf2633574 in memory
flw f22, 0(x2) # load 0xf2633574 from memory into f22
la x2, scratch
li x3, 0xf892e401 # load x3 with value 0xf892e401
sw x3, 0(x2) # store 0xf892e401 in memory
flw f9, 0(x2) # load 0xf892e401 from memory into f9
fadd.s f27, f22, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xadfc18d6 # load x3 with value 0xadfc18d6
sw x3, 0(x2) # store 0xadfc18d6 in memory
flw f26, 0(x2) # load 0xadfc18d6 from memory into f26
la x2, scratch
li x3, 0x1ae81249 # load x3 with value 0x1ae81249
sw x3, 0(x2) # store 0x1ae81249 in memory
flw f10, 0(x2) # load 0x1ae81249 from memory into f10
fadd.s f15, f26, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x3ac6733b # load x3 with value 0x3ac6733b
sw x3, 0(x2) # store 0x3ac6733b in memory
flw f24, 0(x2) # load 0x3ac6733b from memory into f24
la x2, scratch
li x3, 0x822f56cb # load x3 with value 0x822f56cb
sw x3, 0(x2) # store 0x822f56cb in memory
flw f11, 0(x2) # load 0x822f56cb from memory into f11
fadd.s f22, f24, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x409267a7 # load x3 with value 0x409267a7
sw x3, 0(x2) # store 0x409267a7 in memory
flw f15, 0(x2) # load 0x409267a7 from memory into f15
la x2, scratch
li x3, 0x28b32c65 # load x3 with value 0x28b32c65
sw x3, 0(x2) # store 0x28b32c65 in memory
flw f12, 0(x2) # load 0x28b32c65 from memory into f12
fadd.s f30, f15, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x15e1e049 # load x3 with value 0x15e1e049
sw x3, 0(x2) # store 0x15e1e049 in memory
flw f10, 0(x2) # load 0x15e1e049 from memory into f10
la x2, scratch
li x3, 0xa2f2fff6 # load x3 with value 0xa2f2fff6
sw x3, 0(x2) # store 0xa2f2fff6 in memory
flw f13, 0(x2) # load 0xa2f2fff6 from memory into f13
fadd.s f23, f10, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x490dadab # load x3 with value 0x490dadab
sw x3, 0(x2) # store 0x490dadab in memory
flw f26, 0(x2) # load 0x490dadab from memory into f26
la x2, scratch
li x3, 0x195263ec # load x3 with value 0x195263ec
sw x3, 0(x2) # store 0x195263ec in memory
flw f14, 0(x2) # load 0x195263ec from memory into f14
fadd.s f11, f26, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x139b47f5 # load x3 with value 0x139b47f5
sw x3, 0(x2) # store 0x139b47f5 in memory
flw f17, 0(x2) # load 0x139b47f5 from memory into f17
la x2, scratch
li x3, 0x11389028 # load x3 with value 0x11389028
sw x3, 0(x2) # store 0x11389028 in memory
flw f15, 0(x2) # load 0x11389028 from memory into f15
fadd.s f7, f17, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xb9ee3d08 # load x3 with value 0xb9ee3d08
sw x3, 0(x2) # store 0xb9ee3d08 in memory
flw f17, 0(x2) # load 0xb9ee3d08 from memory into f17
la x2, scratch
li x3, 0x04ca904e # load x3 with value 0x04ca904e
sw x3, 0(x2) # store 0x04ca904e in memory
flw f16, 0(x2) # load 0x04ca904e from memory into f16
fadd.s f24, f17, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x468b9312 # load x3 with value 0x468b9312
sw x3, 0(x2) # store 0x468b9312 in memory
flw f12, 0(x2) # load 0x468b9312 from memory into f12
la x2, scratch
li x3, 0x11769446 # load x3 with value 0x11769446
sw x3, 0(x2) # store 0x11769446 in memory
flw f17, 0(x2) # load 0x11769446 from memory into f17
fadd.s f1, f12, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x847a44dc # load x3 with value 0x847a44dc
sw x3, 0(x2) # store 0x847a44dc in memory
flw f22, 0(x2) # load 0x847a44dc from memory into f22
la x2, scratch
li x3, 0xc8032019 # load x3 with value 0xc8032019
sw x3, 0(x2) # store 0xc8032019 in memory
flw f18, 0(x2) # load 0xc8032019 from memory into f18
fadd.s f16, f22, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x5c04b2c0 # load x3 with value 0x5c04b2c0
sw x3, 0(x2) # store 0x5c04b2c0 in memory
flw f29, 0(x2) # load 0x5c04b2c0 from memory into f29
la x2, scratch
li x3, 0x4b199e17 # load x3 with value 0x4b199e17
sw x3, 0(x2) # store 0x4b199e17 in memory
flw f19, 0(x2) # load 0x4b199e17 from memory into f19
fadd.s f1, f29, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x8ab82704 # load x3 with value 0x8ab82704
sw x3, 0(x2) # store 0x8ab82704 in memory
flw f14, 0(x2) # load 0x8ab82704 from memory into f14
la x2, scratch
li x3, 0x6f279b38 # load x3 with value 0x6f279b38
sw x3, 0(x2) # store 0x6f279b38 in memory
flw f20, 0(x2) # load 0x6f279b38 from memory into f20
fadd.s f29, f14, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xa04d7204 # load x3 with value 0xa04d7204
sw x3, 0(x2) # store 0xa04d7204 in memory
flw f3, 0(x2) # load 0xa04d7204 from memory into f3
la x2, scratch
li x3, 0x3e09e18a # load x3 with value 0x3e09e18a
sw x3, 0(x2) # store 0x3e09e18a in memory
flw f21, 0(x2) # load 0x3e09e18a from memory into f21
fadd.s f19, f3, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x3e7acc78 # load x3 with value 0x3e7acc78
sw x3, 0(x2) # store 0x3e7acc78 in memory
flw f11, 0(x2) # load 0x3e7acc78 from memory into f11
la x2, scratch
li x3, 0x70d3e22e # load x3 with value 0x70d3e22e
sw x3, 0(x2) # store 0x70d3e22e in memory
flw f22, 0(x2) # load 0x70d3e22e from memory into f22
fadd.s f15, f11, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x86b0946b # load x3 with value 0x86b0946b
sw x3, 0(x2) # store 0x86b0946b in memory
flw f26, 0(x2) # load 0x86b0946b from memory into f26
la x2, scratch
li x3, 0xdf16bd01 # load x3 with value 0xdf16bd01
sw x3, 0(x2) # store 0xdf16bd01 in memory
flw f23, 0(x2) # load 0xdf16bd01 from memory into f23
fadd.s f25, f26, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xa62edb04 # load x3 with value 0xa62edb04
sw x3, 0(x2) # store 0xa62edb04 in memory
flw f2, 0(x2) # load 0xa62edb04 from memory into f2
la x2, scratch
li x3, 0x94afcb6f # load x3 with value 0x94afcb6f
sw x3, 0(x2) # store 0x94afcb6f in memory
flw f24, 0(x2) # load 0x94afcb6f from memory into f24
fadd.s f14, f2, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x663cab62 # load x3 with value 0x663cab62
sw x3, 0(x2) # store 0x663cab62 in memory
flw f29, 0(x2) # load 0x663cab62 from memory into f29
la x2, scratch
li x3, 0xfa7e0d6f # load x3 with value 0xfa7e0d6f
sw x3, 0(x2) # store 0xfa7e0d6f in memory
flw f25, 0(x2) # load 0xfa7e0d6f from memory into f25
fadd.s f15, f29, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x58d89106 # load x3 with value 0x58d89106
sw x3, 0(x2) # store 0x58d89106 in memory
flw f5, 0(x2) # load 0x58d89106 from memory into f5
la x2, scratch
li x3, 0x99a98c43 # load x3 with value 0x99a98c43
sw x3, 0(x2) # store 0x99a98c43 in memory
flw f26, 0(x2) # load 0x99a98c43 from memory into f26
fadd.s f23, f5, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x75b0b1ff # load x3 with value 0x75b0b1ff
sw x3, 0(x2) # store 0x75b0b1ff in memory
flw f9, 0(x2) # load 0x75b0b1ff from memory into f9
la x2, scratch
li x3, 0x112596fa # load x3 with value 0x112596fa
sw x3, 0(x2) # store 0x112596fa in memory
flw f27, 0(x2) # load 0x112596fa from memory into f27
fadd.s f6, f9, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xdf249c68 # load x3 with value 0xdf249c68
sw x3, 0(x2) # store 0xdf249c68 in memory
flw f19, 0(x2) # load 0xdf249c68 from memory into f19
la x2, scratch
li x3, 0xb2c89769 # load x3 with value 0xb2c89769
sw x3, 0(x2) # store 0xb2c89769 in memory
flw f28, 0(x2) # load 0xb2c89769 from memory into f28
fadd.s f31, f19, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x0cd22ae8 # load x3 with value 0x0cd22ae8
sw x3, 0(x2) # store 0x0cd22ae8 in memory
flw f10, 0(x2) # load 0x0cd22ae8 from memory into f10
la x2, scratch
li x3, 0x492a23cf # load x3 with value 0x492a23cf
sw x3, 0(x2) # store 0x492a23cf in memory
flw f29, 0(x2) # load 0x492a23cf from memory into f29
fadd.s f9, f10, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x1664593d # load x3 with value 0x1664593d
sw x3, 0(x2) # store 0x1664593d in memory
flw f17, 0(x2) # load 0x1664593d from memory into f17
la x2, scratch
li x3, 0xd8a4c4cc # load x3 with value 0xd8a4c4cc
sw x3, 0(x2) # store 0xd8a4c4cc in memory
flw f30, 0(x2) # load 0xd8a4c4cc from memory into f30
fadd.s f14, f17, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x3b0dec3f # load x3 with value 0x3b0dec3f
sw x3, 0(x2) # store 0x3b0dec3f in memory
flw f13, 0(x2) # load 0x3b0dec3f from memory into f13
la x2, scratch
li x3, 0x9d88a848 # load x3 with value 0x9d88a848
sw x3, 0(x2) # store 0x9d88a848 in memory
flw f31, 0(x2) # load 0x9d88a848 from memory into f31
fadd.s f6, f13, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xa3d2a6c0 # load x3 with value 0xa3d2a6c0
sw x3, 0(x2) # store 0xa3d2a6c0 in memory
flw f29, 0(x2) # load 0xa3d2a6c0 from memory into f29
la x2, scratch
li x3, 0x14d5495b # load x3 with value 0x14d5495b
sw x3, 0(x2) # store 0x14d5495b in memory
flw f18, 0(x2) # load 0x14d5495b from memory into f18
fadd.s f0, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0xac2f7f4b # load x3 with value 0xac2f7f4b
sw x3, 0(x2) # store 0xac2f7f4b in memory
flw f26, 0(x2) # load 0xac2f7f4b from memory into f26
la x2, scratch
li x3, 0xf743e5f2 # load x3 with value 0xf743e5f2
sw x3, 0(x2) # store 0xf743e5f2 in memory
flw f24, 0(x2) # load 0xf743e5f2 from memory into f24
fadd.s f1, f26, f24 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x1dd0629f # load x3 with value 0x1dd0629f
sw x3, 0(x2) # store 0x1dd0629f in memory
flw f6, 0(x2) # load 0x1dd0629f from memory into f6
la x2, scratch
li x3, 0x6a00bf45 # load x3 with value 0x6a00bf45
sw x3, 0(x2) # store 0x6a00bf45 in memory
flw f7, 0(x2) # load 0x6a00bf45 from memory into f7
fadd.s f2, f6, f7 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x2f2803af # load x3 with value 0x2f2803af
sw x3, 0(x2) # store 0x2f2803af in memory
flw f12, 0(x2) # load 0x2f2803af from memory into f12
la x2, scratch
li x3, 0xa585f617 # load x3 with value 0xa585f617
sw x3, 0(x2) # store 0xa585f617 in memory
flw f6, 0(x2) # load 0xa585f617 from memory into f6
fadd.s f3, f12, f6 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf1c5975d # load x3 with value 0xf1c5975d
sw x3, 0(x2) # store 0xf1c5975d in memory
flw f9, 0(x2) # load 0xf1c5975d from memory into f9
la x2, scratch
li x3, 0x738a28de # load x3 with value 0x738a28de
sw x3, 0(x2) # store 0x738a28de in memory
flw f26, 0(x2) # load 0x738a28de from memory into f26
fadd.s f4, f9, f26 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8261d55e # load x3 with value 0x8261d55e
sw x3, 0(x2) # store 0x8261d55e in memory
flw f6, 0(x2) # load 0x8261d55e from memory into f6
la x2, scratch
li x3, 0x3d9e2f34 # load x3 with value 0x3d9e2f34
sw x3, 0(x2) # store 0x3d9e2f34 in memory
flw f11, 0(x2) # load 0x3d9e2f34 from memory into f11
fadd.s f5, f6, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
la x2, scratch
li x3, 0xfc94c34a # load x3 with value 0xfc94c34a
sw x3, 0(x2) # store 0xfc94c34a in memory
flw f1, 0(x2) # load 0xfc94c34a from memory into f1
la x2, scratch
li x3, 0xff9825fe # load x3 with value 0xff9825fe
sw x3, 0(x2) # store 0xff9825fe in memory
flw f24, 0(x2) # load 0xff9825fe from memory into f24
fadd.s f6, f1, f24 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbcffc32f # load x3 with value 0xbcffc32f
sw x3, 0(x2) # store 0xbcffc32f in memory
flw f1, 0(x2) # load 0xbcffc32f from memory into f1
la x2, scratch
li x3, 0x10328db4 # load x3 with value 0x10328db4
sw x3, 0(x2) # store 0x10328db4 in memory
flw f5, 0(x2) # load 0x10328db4 from memory into f5
fadd.s f7, f1, f5 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x5f54ef88 # load x3 with value 0x5f54ef88
sw x3, 0(x2) # store 0x5f54ef88 in memory
flw f18, 0(x2) # load 0x5f54ef88 from memory into f18
la x2, scratch
li x3, 0xb557c285 # load x3 with value 0xb557c285
sw x3, 0(x2) # store 0xb557c285 in memory
flw f20, 0(x2) # load 0xb557c285 from memory into f20
fadd.s f8, f18, f20 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x9b5afff2 # load x3 with value 0x9b5afff2
sw x3, 0(x2) # store 0x9b5afff2 in memory
flw f3, 0(x2) # load 0x9b5afff2 from memory into f3
la x2, scratch
li x3, 0x7cc60da8 # load x3 with value 0x7cc60da8
sw x3, 0(x2) # store 0x7cc60da8 in memory
flw f14, 0(x2) # load 0x7cc60da8 from memory into f14
fadd.s f9, f3, f14 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xe8abae9a # load x3 with value 0xe8abae9a
sw x3, 0(x2) # store 0xe8abae9a in memory
flw f30, 0(x2) # load 0xe8abae9a from memory into f30
la x2, scratch
li x3, 0x0a20895f # load x3 with value 0x0a20895f
sw x3, 0(x2) # store 0x0a20895f in memory
flw f9, 0(x2) # load 0x0a20895f from memory into f9
fadd.s f10, f30, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xc04ec0d6 # load x3 with value 0xc04ec0d6
sw x3, 0(x2) # store 0xc04ec0d6 in memory
flw f18, 0(x2) # load 0xc04ec0d6 from memory into f18
la x2, scratch
li x3, 0xa37e71cc # load x3 with value 0xa37e71cc
sw x3, 0(x2) # store 0xa37e71cc in memory
flw f15, 0(x2) # load 0xa37e71cc from memory into f15
fadd.s f11, f18, f15 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0x35941e50 # load x3 with value 0x35941e50
sw x3, 0(x2) # store 0x35941e50 in memory
flw f1, 0(x2) # load 0x35941e50 from memory into f1
la x2, scratch
li x3, 0x8ea7fd9c # load x3 with value 0x8ea7fd9c
sw x3, 0(x2) # store 0x8ea7fd9c in memory
flw f20, 0(x2) # load 0x8ea7fd9c from memory into f20
fadd.s f12, f1, f20 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x691ca500 # load x3 with value 0x691ca500
sw x3, 0(x2) # store 0x691ca500 in memory
flw f18, 0(x2) # load 0x691ca500 from memory into f18
la x2, scratch
li x3, 0xc144ca72 # load x3 with value 0xc144ca72
sw x3, 0(x2) # store 0xc144ca72 in memory
flw f1, 0(x2) # load 0xc144ca72 from memory into f1
fadd.s f13, f18, f1 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0xe075a4b4 # load x3 with value 0xe075a4b4
sw x3, 0(x2) # store 0xe075a4b4 in memory
flw f8, 0(x2) # load 0xe075a4b4 from memory into f8
la x2, scratch
li x3, 0x1bbc5f19 # load x3 with value 0x1bbc5f19
sw x3, 0(x2) # store 0x1bbc5f19 in memory
flw f23, 0(x2) # load 0x1bbc5f19 from memory into f23
fadd.s f14, f8, f23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xbc975ade # load x3 with value 0xbc975ade
sw x3, 0(x2) # store 0xbc975ade in memory
flw f11, 0(x2) # load 0xbc975ade from memory into f11
la x2, scratch
li x3, 0xdfaf6724 # load x3 with value 0xdfaf6724
sw x3, 0(x2) # store 0xdfaf6724 in memory
flw f31, 0(x2) # load 0xdfaf6724 from memory into f31
fadd.s f15, f11, f31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xbd6fb86d # load x3 with value 0xbd6fb86d
sw x3, 0(x2) # store 0xbd6fb86d in memory
flw f1, 0(x2) # load 0xbd6fb86d from memory into f1
la x2, scratch
li x3, 0xc190e9d4 # load x3 with value 0xc190e9d4
sw x3, 0(x2) # store 0xc190e9d4 in memory
flw f20, 0(x2) # load 0xc190e9d4 from memory into f20
fadd.s f16, f1, f20 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xe148bcbc # load x3 with value 0xe148bcbc
sw x3, 0(x2) # store 0xe148bcbc in memory
flw f6, 0(x2) # load 0xe148bcbc from memory into f6
la x2, scratch
li x3, 0x87676f22 # load x3 with value 0x87676f22
sw x3, 0(x2) # store 0x87676f22 in memory
flw f8, 0(x2) # load 0x87676f22 from memory into f8
fadd.s f17, f6, f8 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xaa4511da # load x3 with value 0xaa4511da
sw x3, 0(x2) # store 0xaa4511da in memory
flw f28, 0(x2) # load 0xaa4511da from memory into f28
la x2, scratch
li x3, 0xf5ffd389 # load x3 with value 0xf5ffd389
sw x3, 0(x2) # store 0xf5ffd389 in memory
flw f19, 0(x2) # load 0xf5ffd389 from memory into f19
fadd.s f18, f28, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x3d80055b # load x3 with value 0x3d80055b
sw x3, 0(x2) # store 0x3d80055b in memory
flw f21, 0(x2) # load 0x3d80055b from memory into f21
la x2, scratch
li x3, 0x56b1fd50 # load x3 with value 0x56b1fd50
sw x3, 0(x2) # store 0x56b1fd50 in memory
flw f5, 0(x2) # load 0x56b1fd50 from memory into f5
fadd.s f19, f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x351a090b # load x3 with value 0x351a090b
sw x3, 0(x2) # store 0x351a090b in memory
flw f17, 0(x2) # load 0x351a090b from memory into f17
la x2, scratch
li x3, 0x3c8ac112 # load x3 with value 0x3c8ac112
sw x3, 0(x2) # store 0x3c8ac112 in memory
flw f28, 0(x2) # load 0x3c8ac112 from memory into f28
fadd.s f20, f17, f28 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x2170adad # load x3 with value 0x2170adad
sw x3, 0(x2) # store 0x2170adad in memory
flw f30, 0(x2) # load 0x2170adad from memory into f30
la x2, scratch
li x3, 0x0fb159b8 # load x3 with value 0x0fb159b8
sw x3, 0(x2) # store 0x0fb159b8 in memory
flw f5, 0(x2) # load 0x0fb159b8 from memory into f5
fadd.s f21, f30, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x108c8161 # load x3 with value 0x108c8161
sw x3, 0(x2) # store 0x108c8161 in memory
flw f31, 0(x2) # load 0x108c8161 from memory into f31
la x2, scratch
li x3, 0xbe9c167a # load x3 with value 0xbe9c167a
sw x3, 0(x2) # store 0xbe9c167a in memory
flw f7, 0(x2) # load 0xbe9c167a from memory into f7
fadd.s f22, f31, f7 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x16e82c65 # load x3 with value 0x16e82c65
sw x3, 0(x2) # store 0x16e82c65 in memory
flw f23, 0(x2) # load 0x16e82c65 from memory into f23
la x2, scratch
li x3, 0x2a4bc030 # load x3 with value 0x2a4bc030
sw x3, 0(x2) # store 0x2a4bc030 in memory
flw f13, 0(x2) # load 0x2a4bc030 from memory into f13
fadd.s f23, f23, f13 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0xac8b83b2 # load x3 with value 0xac8b83b2
sw x3, 0(x2) # store 0xac8b83b2 in memory
flw f30, 0(x2) # load 0xac8b83b2 from memory into f30
la x2, scratch
li x3, 0x56d8def4 # load x3 with value 0x56d8def4
sw x3, 0(x2) # store 0x56d8def4 in memory
flw f3, 0(x2) # load 0x56d8def4 from memory into f3
fadd.s f24, f30, f3 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x74e8736e # load x3 with value 0x74e8736e
sw x3, 0(x2) # store 0x74e8736e in memory
flw f25, 0(x2) # load 0x74e8736e from memory into f25
la x2, scratch
li x3, 0x4be071f9 # load x3 with value 0x4be071f9
sw x3, 0(x2) # store 0x4be071f9 in memory
flw f16, 0(x2) # load 0x4be071f9 from memory into f16
fadd.s f25, f25, f16 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xfa8cea1d # load x3 with value 0xfa8cea1d
sw x3, 0(x2) # store 0xfa8cea1d in memory
flw f17, 0(x2) # load 0xfa8cea1d from memory into f17
la x2, scratch
li x3, 0x455f159b # load x3 with value 0x455f159b
sw x3, 0(x2) # store 0x455f159b in memory
flw f16, 0(x2) # load 0x455f159b from memory into f16
fadd.s f26, f17, f16 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xb82a666c # load x3 with value 0xb82a666c
sw x3, 0(x2) # store 0xb82a666c in memory
flw f5, 0(x2) # load 0xb82a666c from memory into f5
la x2, scratch
li x3, 0xd88697ba # load x3 with value 0xd88697ba
sw x3, 0(x2) # store 0xd88697ba in memory
flw f18, 0(x2) # load 0xd88697ba from memory into f18
fadd.s f27, f5, f18 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x3834c16d # load x3 with value 0x3834c16d
sw x3, 0(x2) # store 0x3834c16d in memory
flw f20, 0(x2) # load 0x3834c16d from memory into f20
la x2, scratch
li x3, 0x0e9b9e55 # load x3 with value 0x0e9b9e55
sw x3, 0(x2) # store 0x0e9b9e55 in memory
flw f18, 0(x2) # load 0x0e9b9e55 from memory into f18
fadd.s f28, f20, f18 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x3b588ab4 # load x3 with value 0x3b588ab4
sw x3, 0(x2) # store 0x3b588ab4 in memory
flw f12, 0(x2) # load 0x3b588ab4 from memory into f12
la x2, scratch
li x3, 0xf33f0e83 # load x3 with value 0xf33f0e83
sw x3, 0(x2) # store 0xf33f0e83 in memory
flw f17, 0(x2) # load 0xf33f0e83 from memory into f17
fadd.s f29, f12, f17 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x66c9bbd2 # load x3 with value 0x66c9bbd2
sw x3, 0(x2) # store 0x66c9bbd2 in memory
flw f10, 0(x2) # load 0x66c9bbd2 from memory into f10
la x2, scratch
li x3, 0x3543b239 # load x3 with value 0x3543b239
sw x3, 0(x2) # store 0x3543b239 in memory
flw f15, 0(x2) # load 0x3543b239 from memory into f15
fadd.s f30, f10, f15 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0xc0d45db8 # load x3 with value 0xc0d45db8
sw x3, 0(x2) # store 0xc0d45db8 in memory
flw f9, 0(x2) # load 0xc0d45db8 from memory into f9
la x2, scratch
li x3, 0xf0fcf858 # load x3 with value 0xf0fcf858
sw x3, 0(x2) # store 0xf0fcf858 in memory
flw f10, 0(x2) # load 0xf0fcf858 from memory into f10
fadd.s f31, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x124d59d9 # load x3 with value 0x124d59d9
sw x3, 0(x2) # store 0x124d59d9 in memory
flw f15, 0(x2) # load 0x124d59d9 from memory into f15
fadd.s f14, f31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
la x2, scratch
li x3, 0xdce428b6 # load x3 with value 0xdce428b6
sw x3, 0(x2) # store 0xdce428b6 in memory
flw f1, 0(x2) # load 0xdce428b6 from memory into f1
fadd.s f6, f20, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0xda9a252b # load x3 with value 0xda9a252b
sw x3, 0(x2) # store 0xda9a252b in memory
flw f5, 0(x2) # load 0xda9a252b from memory into f5
fadd.s f12, f17, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x19ee9f52 # load x3 with value 0x19ee9f52
sw x3, 0(x2) # store 0x19ee9f52 in memory
flw f13, 0(x2) # load 0x19ee9f52 from memory into f13
fadd.s f25, f23, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x774c5867 # load x3 with value 0x774c5867
sw x3, 0(x2) # store 0x774c5867 in memory
flw f28, 0(x2) # load 0x774c5867 from memory into f28
fadd.s f23, f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0xe96a7ef8 # load x3 with value 0xe96a7ef8
sw x3, 0(x2) # store 0xe96a7ef8 in memory
flw f2, 0(x2) # load 0xe96a7ef8 from memory into f2
fadd.s f31, f27, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x4c2c6bde # load x3 with value 0x4c2c6bde
sw x3, 0(x2) # store 0x4c2c6bde in memory
flw f14, 0(x2) # load 0x4c2c6bde from memory into f14
fadd.s f15, f30, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x6c5c45ca # load x3 with value 0x6c5c45ca
sw x3, 0(x2) # store 0x6c5c45ca in memory
flw f2, 0(x2) # load 0x6c5c45ca from memory into f2
fadd.s f11, f21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x2d2ccd3a # load x3 with value 0x2d2ccd3a
sw x3, 0(x2) # store 0x2d2ccd3a in memory
flw f13, 0(x2) # load 0x2d2ccd3a from memory into f13
fadd.s f5, f6, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0x67a5690e # load x3 with value 0x67a5690e
sw x3, 0(x2) # store 0x67a5690e in memory
flw f21, 0(x2) # load 0x67a5690e from memory into f21
fadd.s f27, f17, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0xc1dad17c # load x3 with value 0xc1dad17c
sw x3, 0(x2) # store 0xc1dad17c in memory
flw f14, 0(x2) # load 0xc1dad17c from memory into f14
fadd.s f5, f28, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
la x2, scratch
li x3, 0x9a5f8ed2 # load x3 with value 0x9a5f8ed2
sw x3, 0(x2) # store 0x9a5f8ed2 in memory
flw f20, 0(x2) # load 0x9a5f8ed2 from memory into f20
fadd.s f21, f10, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x0962cc7f # load x3 with value 0x0962cc7f
sw x3, 0(x2) # store 0x0962cc7f in memory
flw f8, 0(x2) # load 0x0962cc7f from memory into f8
fadd.s f7, f29, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
la x2, scratch
li x3, 0xc492c9a2 # load x3 with value 0xc492c9a2
sw x3, 0(x2) # store 0xc492c9a2 in memory
flw f15, 0(x2) # load 0xc492c9a2 from memory into f15
fadd.s f6, f11, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
la x2, scratch
li x3, 0x58370930 # load x3 with value 0x58370930
sw x3, 0(x2) # store 0x58370930 in memory
flw f31, 0(x2) # load 0x58370930 from memory into f31
fadd.s f24, f8, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0xc36cfe3f # load x3 with value 0xc36cfe3f
sw x3, 0(x2) # store 0xc36cfe3f in memory
flw f31, 0(x2) # load 0xc36cfe3f from memory into f31
fadd.s f18, f17, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x5f75d8cd # load x3 with value 0x5f75d8cd
sw x3, 0(x2) # store 0x5f75d8cd in memory
flw f29, 0(x2) # load 0x5f75d8cd from memory into f29
fadd.s f8, f5, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
la x2, scratch
li x3, 0xa53ee5ff # load x3 with value 0xa53ee5ff
sw x3, 0(x2) # store 0xa53ee5ff in memory
flw f11, 0(x2) # load 0xa53ee5ff from memory into f11
fadd.s f14, f13, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0xb95196f7 # load x3 with value 0xb95196f7
sw x3, 0(x2) # store 0xb95196f7 in memory
flw f25, 0(x2) # load 0xb95196f7 from memory into f25
fadd.s f22, f23, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0xaada1341 # load x3 with value 0xaada1341
sw x3, 0(x2) # store 0xaada1341 in memory
flw f19, 0(x2) # load 0xaada1341 from memory into f19
fadd.s f9, f29, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0xd431a329 # load x3 with value 0xd431a329
sw x3, 0(x2) # store 0xd431a329 in memory
flw f28, 0(x2) # load 0xd431a329 from memory into f28
fadd.s f15, f1, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0x084324e4 # load x3 with value 0x084324e4
sw x3, 0(x2) # store 0x084324e4 in memory
flw f30, 0(x2) # load 0x084324e4 from memory into f30
fadd.s f22, f27, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0xc2422800 # load x3 with value 0xc2422800
sw x3, 0(x2) # store 0xc2422800 in memory
flw f17, 0(x2) # load 0xc2422800 from memory into f17
fadd.s f7, f26, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0xd6aefa9e # load x3 with value 0xd6aefa9e
sw x3, 0(x2) # store 0xd6aefa9e in memory
flw f27, 0(x2) # load 0xd6aefa9e from memory into f27
fadd.s f6, f29, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x004dfd72 # load x3 with value 0x004dfd72
sw x3, 0(x2) # store 0x004dfd72 in memory
flw f26, 0(x2) # load 0x004dfd72 from memory into f26
fadd.s f11, f3, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0xcc4d637f # load x3 with value 0xcc4d637f
sw x3, 0(x2) # store 0xcc4d637f in memory
flw f17, 0(x2) # load 0xcc4d637f from memory into f17
fadd.s f11, f3, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x143db56f # load x3 with value 0x143db56f
sw x3, 0(x2) # store 0x143db56f in memory
flw f3, 0(x2) # load 0x143db56f from memory into f3
fadd.s f20, f13, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
la x2, scratch
li x3, 0xb4b72902 # load x3 with value 0xb4b72902
sw x3, 0(x2) # store 0xb4b72902 in memory
flw f3, 0(x2) # load 0xb4b72902 from memory into f3
fadd.s f8, f16, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xd2bd80b6 # load x3 with value 0xd2bd80b6
sw x3, 0(x2) # store 0xd2bd80b6 in memory
flw f11, 0(x2) # load 0xd2bd80b6 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f19, f11, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x71b9d383 # load x3 with value 0x71b9d383
sw x3, 0(x2) # store 0x71b9d383 in memory
flw f13, 0(x2) # load 0x71b9d383 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fadd.s f23, f13, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x4ad089b1 # load x3 with value 0x4ad089b1
sw x3, 0(x2) # store 0x4ad089b1 in memory
flw f27, 0(x2) # load 0x4ad089b1 from memory into f27
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fadd.s f18, f27, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0xb30b4dea # load x3 with value 0xb30b4dea
sw x3, 0(x2) # store 0xb30b4dea in memory
flw f2, 0(x2) # load 0xb30b4dea from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fadd.s f31, f2, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x3d57da5a # load x3 with value 0x3d57da5a
sw x3, 0(x2) # store 0x3d57da5a in memory
flw f22, 0(x2) # load 0x3d57da5a from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fadd.s f23, f22, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0x5e62a40d # load x3 with value 0x5e62a40d
sw x3, 0(x2) # store 0x5e62a40d in memory
flw f23, 0(x2) # load 0x5e62a40d from memory into f23
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fadd.s f11, f23, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x1f96eb79 # load x3 with value 0x1f96eb79
sw x3, 0(x2) # store 0x1f96eb79 in memory
flw f9, 0(x2) # load 0x1f96eb79 from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fadd.s f23, f9, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x13c2ab21 # load x3 with value 0x13c2ab21
sw x3, 0(x2) # store 0x13c2ab21 in memory
flw f6, 0(x2) # load 0x13c2ab21 from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fadd.s f25, f6, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x9ed3ece6 # load x3 with value 0x9ed3ece6
sw x3, 0(x2) # store 0x9ed3ece6 in memory
flw f2, 0(x2) # load 0x9ed3ece6 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fadd.s f1, f2, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x9bd41bce # load x3 with value 0x9bd41bce
sw x3, 0(x2) # store 0x9bd41bce in memory
flw f8, 0(x2) # load 0x9bd41bce from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fadd.s f7, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x5eed8e55 # load x3 with value 0x5eed8e55
sw x3, 0(x2) # store 0x5eed8e55 in memory
flw f29, 0(x2) # load 0x5eed8e55 from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fadd.s f14, f29, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0xdad3898a # load x3 with value 0xdad3898a
sw x3, 0(x2) # store 0xdad3898a in memory
flw f31, 0(x2) # load 0xdad3898a from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fadd.s f19, f31, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x6c0b1167 # load x3 with value 0x6c0b1167
sw x3, 0(x2) # store 0x6c0b1167 in memory
flw f2, 0(x2) # load 0x6c0b1167 from memory into f2
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fadd.s f20, f2, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x895c9403 # load x3 with value 0x895c9403
sw x3, 0(x2) # store 0x895c9403 in memory
flw f18, 0(x2) # load 0x895c9403 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fadd.s f2, f18, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x945604f0 # load x3 with value 0x945604f0
sw x3, 0(x2) # store 0x945604f0 in memory
flw f20, 0(x2) # load 0x945604f0 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fadd.s f1, f20, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x66d10598 # load x3 with value 0x66d10598
sw x3, 0(x2) # store 0x66d10598 in memory
flw f18, 0(x2) # load 0x66d10598 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fadd.s f3, f18, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x6dd072f2 # load x3 with value 0x6dd072f2
sw x3, 0(x2) # store 0x6dd072f2 in memory
flw f26, 0(x2) # load 0x6dd072f2 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fadd.s f28, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x4a069b77 # load x3 with value 0x4a069b77
sw x3, 0(x2) # store 0x4a069b77 in memory
flw f19, 0(x2) # load 0x4a069b77 from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fadd.s f25, f19, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x30a66233 # load x3 with value 0x30a66233
sw x3, 0(x2) # store 0x30a66233 in memory
flw f24, 0(x2) # load 0x30a66233 from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fadd.s f9, f24, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xea2222a0 # load x3 with value 0xea2222a0
sw x3, 0(x2) # store 0xea2222a0 in memory
flw f13, 0(x2) # load 0xea2222a0 from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fadd.s f3, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x702ba4b0 # load x3 with value 0x702ba4b0
sw x3, 0(x2) # store 0x702ba4b0 in memory
flw f27, 0(x2) # load 0x702ba4b0 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fadd.s f19, f27, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0xca75d901 # load x3 with value 0xca75d901
sw x3, 0(x2) # store 0xca75d901 in memory
flw f23, 0(x2) # load 0xca75d901 from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fadd.s f12, f23, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0x9e4ee41c # load x3 with value 0x9e4ee41c
sw x3, 0(x2) # store 0x9e4ee41c in memory
flw f3, 0(x2) # load 0x9e4ee41c from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
fadd.s f13, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x7be0c17f # load x3 with value 0x7be0c17f
sw x3, 0(x2) # store 0x7be0c17f in memory
flw f20, 0(x2) # load 0x7be0c17f from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f6, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x7a63a5ce # load x3 with value 0x7a63a5ce
sw x3, 0(x2) # store 0x7a63a5ce in memory
flw f13, 0(x2) # load 0x7a63a5ce from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f21, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0x6a7ad220 # load x3 with value 0x6a7ad220
sw x3, 0(x2) # store 0x6a7ad220 in memory
flw f1, 0(x2) # load 0x6a7ad220 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fadd.s f9, f1, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x5d0ca4ed # load x3 with value 0x5d0ca4ed
sw x3, 0(x2) # store 0x5d0ca4ed in memory
flw f6, 0(x2) # load 0x5d0ca4ed from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fadd.s f30, f6, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0xbfa2c4e9 # load x3 with value 0xbfa2c4e9
sw x3, 0(x2) # store 0xbfa2c4e9 in memory
flw f9, 0(x2) # load 0xbfa2c4e9 from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f25, f9, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xaf685e30 # load x3 with value 0xaf685e30
sw x3, 0(x2) # store 0xaf685e30 in memory
flw f0, 0(x2) # load 0xaf685e30 from memory into f0
la x2, scratch
li x3, 0xd9c3c026 # load x3 with value 0xd9c3c026
sw x3, 0(x2) # store 0xd9c3c026 in memory
flw f31, 0(x2) # load 0xd9c3c026 from memory into f31
fadd.s f0, f0, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x96ca19db # load x3 with value 0x96ca19db
sw x3, 0(x2) # store 0x96ca19db in memory
flw f1, 0(x2) # load 0x96ca19db from memory into f1
la x2, scratch
li x3, 0x1b1b48ad # load x3 with value 0x1b1b48ad
sw x3, 0(x2) # store 0x1b1b48ad in memory
flw f6, 0(x2) # load 0x1b1b48ad from memory into f6
fadd.s f1, f1, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xab8d7a7a # load x3 with value 0xab8d7a7a
sw x3, 0(x2) # store 0xab8d7a7a in memory
flw f2, 0(x2) # load 0xab8d7a7a from memory into f2
la x2, scratch
li x3, 0x1a2bc6f8 # load x3 with value 0x1a2bc6f8
sw x3, 0(x2) # store 0x1a2bc6f8 in memory
flw f5, 0(x2) # load 0x1a2bc6f8 from memory into f5
fadd.s f2, f2, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x327bd3ae # load x3 with value 0x327bd3ae
sw x3, 0(x2) # store 0x327bd3ae in memory
flw f3, 0(x2) # load 0x327bd3ae from memory into f3
la x2, scratch
li x3, 0xd06ee5c1 # load x3 with value 0xd06ee5c1
sw x3, 0(x2) # store 0xd06ee5c1 in memory
flw f21, 0(x2) # load 0xd06ee5c1 from memory into f21
fadd.s f3, f3, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7cbcf503 # load x3 with value 0x7cbcf503
sw x3, 0(x2) # store 0x7cbcf503 in memory
flw f4, 0(x2) # load 0x7cbcf503 from memory into f4
la x2, scratch
li x3, 0x40193b74 # load x3 with value 0x40193b74
sw x3, 0(x2) # store 0x40193b74 in memory
flw f11, 0(x2) # load 0x40193b74 from memory into f11
fadd.s f4, f4, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x78d1159a # load x3 with value 0x78d1159a
sw x3, 0(x2) # store 0x78d1159a in memory
flw f5, 0(x2) # load 0x78d1159a from memory into f5
la x2, scratch
li x3, 0x26fd6ee9 # load x3 with value 0x26fd6ee9
sw x3, 0(x2) # store 0x26fd6ee9 in memory
flw f20, 0(x2) # load 0x26fd6ee9 from memory into f20
fadd.s f5, f5, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7d43f9c7 # load x3 with value 0x7d43f9c7
sw x3, 0(x2) # store 0x7d43f9c7 in memory
flw f6, 0(x2) # load 0x7d43f9c7 from memory into f6
la x2, scratch
li x3, 0x7b6dd1a6 # load x3 with value 0x7b6dd1a6
sw x3, 0(x2) # store 0x7b6dd1a6 in memory
flw f25, 0(x2) # load 0x7b6dd1a6 from memory into f25
fadd.s f6, f6, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6376d4a7 # load x3 with value 0x6376d4a7
sw x3, 0(x2) # store 0x6376d4a7 in memory
flw f7, 0(x2) # load 0x6376d4a7 from memory into f7
la x2, scratch
li x3, 0x09d50ef1 # load x3 with value 0x09d50ef1
sw x3, 0(x2) # store 0x09d50ef1 in memory
flw f23, 0(x2) # load 0x09d50ef1 from memory into f23
fadd.s f7, f7, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xe57bd27c # load x3 with value 0xe57bd27c
sw x3, 0(x2) # store 0xe57bd27c in memory
flw f8, 0(x2) # load 0xe57bd27c from memory into f8
la x2, scratch
li x3, 0xbbb81183 # load x3 with value 0xbbb81183
sw x3, 0(x2) # store 0xbbb81183 in memory
flw f3, 0(x2) # load 0xbbb81183 from memory into f3
fadd.s f8, f8, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x7a6ac1c2 # load x3 with value 0x7a6ac1c2
sw x3, 0(x2) # store 0x7a6ac1c2 in memory
flw f9, 0(x2) # load 0x7a6ac1c2 from memory into f9
la x2, scratch
li x3, 0xdba42a85 # load x3 with value 0xdba42a85
sw x3, 0(x2) # store 0xdba42a85 in memory
flw f26, 0(x2) # load 0xdba42a85 from memory into f26
fadd.s f9, f9, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xbd552503 # load x3 with value 0xbd552503
sw x3, 0(x2) # store 0xbd552503 in memory
flw f10, 0(x2) # load 0xbd552503 from memory into f10
la x2, scratch
li x3, 0xd85fdace # load x3 with value 0xd85fdace
sw x3, 0(x2) # store 0xd85fdace in memory
flw f22, 0(x2) # load 0xd85fdace from memory into f22
fadd.s f10, f10, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x7197cc7d # load x3 with value 0x7197cc7d
sw x3, 0(x2) # store 0x7197cc7d in memory
flw f11, 0(x2) # load 0x7197cc7d from memory into f11
la x2, scratch
li x3, 0x6d0586ff # load x3 with value 0x6d0586ff
sw x3, 0(x2) # store 0x6d0586ff in memory
flw f23, 0(x2) # load 0x6d0586ff from memory into f23
fadd.s f11, f11, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xe6abe619 # load x3 with value 0xe6abe619
sw x3, 0(x2) # store 0xe6abe619 in memory
flw f12, 0(x2) # load 0xe6abe619 from memory into f12
la x2, scratch
li x3, 0x6ad60c99 # load x3 with value 0x6ad60c99
sw x3, 0(x2) # store 0x6ad60c99 in memory
flw f16, 0(x2) # load 0x6ad60c99 from memory into f16
fadd.s f12, f12, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xb0a51708 # load x3 with value 0xb0a51708
sw x3, 0(x2) # store 0xb0a51708 in memory
flw f13, 0(x2) # load 0xb0a51708 from memory into f13
la x2, scratch
li x3, 0x0751b666 # load x3 with value 0x0751b666
sw x3, 0(x2) # store 0x0751b666 in memory
flw f6, 0(x2) # load 0x0751b666 from memory into f6
fadd.s f13, f13, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xb6c390f1 # load x3 with value 0xb6c390f1
sw x3, 0(x2) # store 0xb6c390f1 in memory
flw f14, 0(x2) # load 0xb6c390f1 from memory into f14
la x2, scratch
li x3, 0x07b82c08 # load x3 with value 0x07b82c08
sw x3, 0(x2) # store 0x07b82c08 in memory
flw f18, 0(x2) # load 0x07b82c08 from memory into f18
fadd.s f14, f14, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x07de448a # load x3 with value 0x07de448a
sw x3, 0(x2) # store 0x07de448a in memory
flw f15, 0(x2) # load 0x07de448a from memory into f15
la x2, scratch
li x3, 0x4bb1b5d4 # load x3 with value 0x4bb1b5d4
sw x3, 0(x2) # store 0x4bb1b5d4 in memory
flw f9, 0(x2) # load 0x4bb1b5d4 from memory into f9
fadd.s f15, f15, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xd6f94d92 # load x3 with value 0xd6f94d92
sw x3, 0(x2) # store 0xd6f94d92 in memory
flw f16, 0(x2) # load 0xd6f94d92 from memory into f16
la x2, scratch
li x3, 0xe75934b8 # load x3 with value 0xe75934b8
sw x3, 0(x2) # store 0xe75934b8 in memory
flw f17, 0(x2) # load 0xe75934b8 from memory into f17
fadd.s f16, f16, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x5ce79df0 # load x3 with value 0x5ce79df0
sw x3, 0(x2) # store 0x5ce79df0 in memory
flw f17, 0(x2) # load 0x5ce79df0 from memory into f17
la x2, scratch
li x3, 0xb05ea886 # load x3 with value 0xb05ea886
sw x3, 0(x2) # store 0xb05ea886 in memory
flw f26, 0(x2) # load 0xb05ea886 from memory into f26
fadd.s f17, f17, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xf0415e92 # load x3 with value 0xf0415e92
sw x3, 0(x2) # store 0xf0415e92 in memory
flw f18, 0(x2) # load 0xf0415e92 from memory into f18
la x2, scratch
li x3, 0xbbcf2187 # load x3 with value 0xbbcf2187
sw x3, 0(x2) # store 0xbbcf2187 in memory
flw f6, 0(x2) # load 0xbbcf2187 from memory into f6
fadd.s f18, f18, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x4a4f5228 # load x3 with value 0x4a4f5228
sw x3, 0(x2) # store 0x4a4f5228 in memory
flw f19, 0(x2) # load 0x4a4f5228 from memory into f19
la x2, scratch
li x3, 0x85d1d6f8 # load x3 with value 0x85d1d6f8
sw x3, 0(x2) # store 0x85d1d6f8 in memory
flw f19, 0(x2) # load 0x85d1d6f8 from memory into f19
fadd.s f19, f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x87f5e5e9 # load x3 with value 0x87f5e5e9
sw x3, 0(x2) # store 0x87f5e5e9 in memory
flw f20, 0(x2) # load 0x87f5e5e9 from memory into f20
la x2, scratch
li x3, 0x6414b153 # load x3 with value 0x6414b153
sw x3, 0(x2) # store 0x6414b153 in memory
flw f30, 0(x2) # load 0x6414b153 from memory into f30
fadd.s f20, f20, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x87624b3c # load x3 with value 0x87624b3c
sw x3, 0(x2) # store 0x87624b3c in memory
flw f21, 0(x2) # load 0x87624b3c from memory into f21
la x2, scratch
li x3, 0xd6db8cd2 # load x3 with value 0xd6db8cd2
sw x3, 0(x2) # store 0xd6db8cd2 in memory
flw f16, 0(x2) # load 0xd6db8cd2 from memory into f16
fadd.s f21, f21, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x64cefcd9 # load x3 with value 0x64cefcd9
sw x3, 0(x2) # store 0x64cefcd9 in memory
flw f22, 0(x2) # load 0x64cefcd9 from memory into f22
la x2, scratch
li x3, 0x034e3e57 # load x3 with value 0x034e3e57
sw x3, 0(x2) # store 0x034e3e57 in memory
flw f29, 0(x2) # load 0x034e3e57 from memory into f29
fadd.s f22, f22, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x2d893bec # load x3 with value 0x2d893bec
sw x3, 0(x2) # store 0x2d893bec in memory
flw f23, 0(x2) # load 0x2d893bec from memory into f23
la x2, scratch
li x3, 0x3eb5f58c # load x3 with value 0x3eb5f58c
sw x3, 0(x2) # store 0x3eb5f58c in memory
flw f20, 0(x2) # load 0x3eb5f58c from memory into f20
fadd.s f23, f23, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xdf8b16f1 # load x3 with value 0xdf8b16f1
sw x3, 0(x2) # store 0xdf8b16f1 in memory
flw f24, 0(x2) # load 0xdf8b16f1 from memory into f24
la x2, scratch
li x3, 0xf7372325 # load x3 with value 0xf7372325
sw x3, 0(x2) # store 0xf7372325 in memory
flw f6, 0(x2) # load 0xf7372325 from memory into f6
fadd.s f24, f24, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0xef1b5af8 # load x3 with value 0xef1b5af8
sw x3, 0(x2) # store 0xef1b5af8 in memory
flw f25, 0(x2) # load 0xef1b5af8 from memory into f25
la x2, scratch
li x3, 0x58b710a7 # load x3 with value 0x58b710a7
sw x3, 0(x2) # store 0x58b710a7 in memory
flw f26, 0(x2) # load 0x58b710a7 from memory into f26
fadd.s f25, f25, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xd04b5772 # load x3 with value 0xd04b5772
sw x3, 0(x2) # store 0xd04b5772 in memory
flw f26, 0(x2) # load 0xd04b5772 from memory into f26
la x2, scratch
li x3, 0x31f2722b # load x3 with value 0x31f2722b
sw x3, 0(x2) # store 0x31f2722b in memory
flw f14, 0(x2) # load 0x31f2722b from memory into f14
fadd.s f26, f26, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x0989ee1b # load x3 with value 0x0989ee1b
sw x3, 0(x2) # store 0x0989ee1b in memory
flw f27, 0(x2) # load 0x0989ee1b from memory into f27
la x2, scratch
li x3, 0x525483d4 # load x3 with value 0x525483d4
sw x3, 0(x2) # store 0x525483d4 in memory
flw f5, 0(x2) # load 0x525483d4 from memory into f5
fadd.s f27, f27, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x56990af3 # load x3 with value 0x56990af3
sw x3, 0(x2) # store 0x56990af3 in memory
flw f28, 0(x2) # load 0x56990af3 from memory into f28
la x2, scratch
li x3, 0x08e9d9be # load x3 with value 0x08e9d9be
sw x3, 0(x2) # store 0x08e9d9be in memory
flw f25, 0(x2) # load 0x08e9d9be from memory into f25
fadd.s f28, f28, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xe8cb1ffa # load x3 with value 0xe8cb1ffa
sw x3, 0(x2) # store 0xe8cb1ffa in memory
flw f29, 0(x2) # load 0xe8cb1ffa from memory into f29
la x2, scratch
li x3, 0x51d6ee0b # load x3 with value 0x51d6ee0b
sw x3, 0(x2) # store 0x51d6ee0b in memory
flw f29, 0(x2) # load 0x51d6ee0b from memory into f29
fadd.s f29, f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x867282ed # load x3 with value 0x867282ed
sw x3, 0(x2) # store 0x867282ed in memory
flw f30, 0(x2) # load 0x867282ed from memory into f30
la x2, scratch
li x3, 0x4af14058 # load x3 with value 0x4af14058
sw x3, 0(x2) # store 0x4af14058 in memory
flw f21, 0(x2) # load 0x4af14058 from memory into f21
fadd.s f30, f30, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0xa55b2ab6 # load x3 with value 0xa55b2ab6
sw x3, 0(x2) # store 0xa55b2ab6 in memory
flw f31, 0(x2) # load 0xa55b2ab6 from memory into f31
la x2, scratch
li x3, 0xf697ab60 # load x3 with value 0xf697ab60
sw x3, 0(x2) # store 0xf697ab60 in memory
flw f23, 0(x2) # load 0xf697ab60 from memory into f23
fadd.s f31, f31, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x693aae1f # load x3 with value 0x693aae1f
sw x3, 0(x2) # store 0x693aae1f in memory
flw f14, 0(x2) # load 0x693aae1f from memory into f14
la x2, scratch
li x3, 0x9797c584 # load x3 with value 0x9797c584
sw x3, 0(x2) # store 0x9797c584 in memory
flw f0, 0(x2) # load 0x9797c584 from memory into f0
fadd.s f0, f14, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x2c2c6a27 # load x3 with value 0x2c2c6a27
sw x3, 0(x2) # store 0x2c2c6a27 in memory
flw f27, 0(x2) # load 0x2c2c6a27 from memory into f27
la x2, scratch
li x3, 0xdd5caec7 # load x3 with value 0xdd5caec7
sw x3, 0(x2) # store 0xdd5caec7 in memory
flw f1, 0(x2) # load 0xdd5caec7 from memory into f1
fadd.s f1, f27, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x35a89154 # load x3 with value 0x35a89154
sw x3, 0(x2) # store 0x35a89154 in memory
flw f8, 0(x2) # load 0x35a89154 from memory into f8
la x2, scratch
li x3, 0x1a5852cf # load x3 with value 0x1a5852cf
sw x3, 0(x2) # store 0x1a5852cf in memory
flw f2, 0(x2) # load 0x1a5852cf from memory into f2
fadd.s f2, f8, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x3fe9ab32 # load x3 with value 0x3fe9ab32
sw x3, 0(x2) # store 0x3fe9ab32 in memory
flw f19, 0(x2) # load 0x3fe9ab32 from memory into f19
la x2, scratch
li x3, 0xa6871ea0 # load x3 with value 0xa6871ea0
sw x3, 0(x2) # store 0xa6871ea0 in memory
flw f3, 0(x2) # load 0xa6871ea0 from memory into f3
fadd.s f3, f19, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x906e5a9d # load x3 with value 0x906e5a9d
sw x3, 0(x2) # store 0x906e5a9d in memory
flw f20, 0(x2) # load 0x906e5a9d from memory into f20
la x2, scratch
li x3, 0x1851e9a4 # load x3 with value 0x1851e9a4
sw x3, 0(x2) # store 0x1851e9a4 in memory
flw f4, 0(x2) # load 0x1851e9a4 from memory into f4
fadd.s f4, f20, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6aabaa1a # load x3 with value 0x6aabaa1a
sw x3, 0(x2) # store 0x6aabaa1a in memory
flw f21, 0(x2) # load 0x6aabaa1a from memory into f21
la x2, scratch
li x3, 0x20febc1c # load x3 with value 0x20febc1c
sw x3, 0(x2) # store 0x20febc1c in memory
flw f5, 0(x2) # load 0x20febc1c from memory into f5
fadd.s f5, f21, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc5d76735 # load x3 with value 0xc5d76735
sw x3, 0(x2) # store 0xc5d76735 in memory
flw f17, 0(x2) # load 0xc5d76735 from memory into f17
la x2, scratch
li x3, 0x4365e88b # load x3 with value 0x4365e88b
sw x3, 0(x2) # store 0x4365e88b in memory
flw f6, 0(x2) # load 0x4365e88b from memory into f6
fadd.s f6, f17, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3411b2fe # load x3 with value 0x3411b2fe
sw x3, 0(x2) # store 0x3411b2fe in memory
flw f4, 0(x2) # load 0x3411b2fe from memory into f4
la x2, scratch
li x3, 0x8f8ec223 # load x3 with value 0x8f8ec223
sw x3, 0(x2) # store 0x8f8ec223 in memory
flw f7, 0(x2) # load 0x8f8ec223 from memory into f7
fadd.s f7, f4, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xac635f49 # load x3 with value 0xac635f49
sw x3, 0(x2) # store 0xac635f49 in memory
flw f31, 0(x2) # load 0xac635f49 from memory into f31
la x2, scratch
li x3, 0xe5907aa5 # load x3 with value 0xe5907aa5
sw x3, 0(x2) # store 0xe5907aa5 in memory
flw f8, 0(x2) # load 0xe5907aa5 from memory into f8
fadd.s f8, f31, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x01e39057 # load x3 with value 0x01e39057
sw x3, 0(x2) # store 0x01e39057 in memory
flw f13, 0(x2) # load 0x01e39057 from memory into f13
la x2, scratch
li x3, 0x35c34e93 # load x3 with value 0x35c34e93
sw x3, 0(x2) # store 0x35c34e93 in memory
flw f9, 0(x2) # load 0x35c34e93 from memory into f9
fadd.s f9, f13, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x719c8bba # load x3 with value 0x719c8bba
sw x3, 0(x2) # store 0x719c8bba in memory
flw f16, 0(x2) # load 0x719c8bba from memory into f16
la x2, scratch
li x3, 0xd520749e # load x3 with value 0xd520749e
sw x3, 0(x2) # store 0xd520749e in memory
flw f10, 0(x2) # load 0xd520749e from memory into f10
fadd.s f10, f16, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x203663b3 # load x3 with value 0x203663b3
sw x3, 0(x2) # store 0x203663b3 in memory
flw f26, 0(x2) # load 0x203663b3 from memory into f26
la x2, scratch
li x3, 0x574c19f6 # load x3 with value 0x574c19f6
sw x3, 0(x2) # store 0x574c19f6 in memory
flw f11, 0(x2) # load 0x574c19f6 from memory into f11
fadd.s f11, f26, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x506d2d03 # load x3 with value 0x506d2d03
sw x3, 0(x2) # store 0x506d2d03 in memory
flw f17, 0(x2) # load 0x506d2d03 from memory into f17
la x2, scratch
li x3, 0x378cf948 # load x3 with value 0x378cf948
sw x3, 0(x2) # store 0x378cf948 in memory
flw f12, 0(x2) # load 0x378cf948 from memory into f12
fadd.s f12, f17, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xf3a32140 # load x3 with value 0xf3a32140
sw x3, 0(x2) # store 0xf3a32140 in memory
flw f27, 0(x2) # load 0xf3a32140 from memory into f27
la x2, scratch
li x3, 0xf9e81122 # load x3 with value 0xf9e81122
sw x3, 0(x2) # store 0xf9e81122 in memory
flw f13, 0(x2) # load 0xf9e81122 from memory into f13
fadd.s f13, f27, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xc85b2c91 # load x3 with value 0xc85b2c91
sw x3, 0(x2) # store 0xc85b2c91 in memory
flw f15, 0(x2) # load 0xc85b2c91 from memory into f15
la x2, scratch
li x3, 0x50d32acf # load x3 with value 0x50d32acf
sw x3, 0(x2) # store 0x50d32acf in memory
flw f14, 0(x2) # load 0x50d32acf from memory into f14
fadd.s f14, f15, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x59b3e1f5 # load x3 with value 0x59b3e1f5
sw x3, 0(x2) # store 0x59b3e1f5 in memory
flw f20, 0(x2) # load 0x59b3e1f5 from memory into f20
la x2, scratch
li x3, 0x0cce5d9b # load x3 with value 0x0cce5d9b
sw x3, 0(x2) # store 0x0cce5d9b in memory
flw f15, 0(x2) # load 0x0cce5d9b from memory into f15
fadd.s f15, f20, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x05078af3 # load x3 with value 0x05078af3
sw x3, 0(x2) # store 0x05078af3 in memory
flw f19, 0(x2) # load 0x05078af3 from memory into f19
la x2, scratch
li x3, 0x0aa08cbb # load x3 with value 0x0aa08cbb
sw x3, 0(x2) # store 0x0aa08cbb in memory
flw f16, 0(x2) # load 0x0aa08cbb from memory into f16
fadd.s f16, f19, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xdcb4fc33 # load x3 with value 0xdcb4fc33
sw x3, 0(x2) # store 0xdcb4fc33 in memory
flw f14, 0(x2) # load 0xdcb4fc33 from memory into f14
la x2, scratch
li x3, 0xd82d7deb # load x3 with value 0xd82d7deb
sw x3, 0(x2) # store 0xd82d7deb in memory
flw f17, 0(x2) # load 0xd82d7deb from memory into f17
fadd.s f17, f14, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x0eeed8ef # load x3 with value 0x0eeed8ef
sw x3, 0(x2) # store 0x0eeed8ef in memory
flw f23, 0(x2) # load 0x0eeed8ef from memory into f23
la x2, scratch
li x3, 0x30c7fc27 # load x3 with value 0x30c7fc27
sw x3, 0(x2) # store 0x30c7fc27 in memory
flw f18, 0(x2) # load 0x30c7fc27 from memory into f18
fadd.s f18, f23, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x04aaac40 # load x3 with value 0x04aaac40
sw x3, 0(x2) # store 0x04aaac40 in memory
flw f17, 0(x2) # load 0x04aaac40 from memory into f17
la x2, scratch
li x3, 0x2d0980e9 # load x3 with value 0x2d0980e9
sw x3, 0(x2) # store 0x2d0980e9 in memory
flw f19, 0(x2) # load 0x2d0980e9 from memory into f19
fadd.s f19, f17, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x7db34965 # load x3 with value 0x7db34965
sw x3, 0(x2) # store 0x7db34965 in memory
flw f6, 0(x2) # load 0x7db34965 from memory into f6
la x2, scratch
li x3, 0x515072fe # load x3 with value 0x515072fe
sw x3, 0(x2) # store 0x515072fe in memory
flw f20, 0(x2) # load 0x515072fe from memory into f20
fadd.s f20, f6, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x8b2109bc # load x3 with value 0x8b2109bc
sw x3, 0(x2) # store 0x8b2109bc in memory
flw f19, 0(x2) # load 0x8b2109bc from memory into f19
la x2, scratch
li x3, 0x9f2c2ae1 # load x3 with value 0x9f2c2ae1
sw x3, 0(x2) # store 0x9f2c2ae1 in memory
flw f21, 0(x2) # load 0x9f2c2ae1 from memory into f21
fadd.s f21, f19, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x6d42f2fb # load x3 with value 0x6d42f2fb
sw x3, 0(x2) # store 0x6d42f2fb in memory
flw f19, 0(x2) # load 0x6d42f2fb from memory into f19
la x2, scratch
li x3, 0xa92d88d6 # load x3 with value 0xa92d88d6
sw x3, 0(x2) # store 0xa92d88d6 in memory
flw f22, 0(x2) # load 0xa92d88d6 from memory into f22
fadd.s f22, f19, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x3a70c748 # load x3 with value 0x3a70c748
sw x3, 0(x2) # store 0x3a70c748 in memory
flw f21, 0(x2) # load 0x3a70c748 from memory into f21
la x2, scratch
li x3, 0x5fa251fe # load x3 with value 0x5fa251fe
sw x3, 0(x2) # store 0x5fa251fe in memory
flw f23, 0(x2) # load 0x5fa251fe from memory into f23
fadd.s f23, f21, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x83b177f4 # load x3 with value 0x83b177f4
sw x3, 0(x2) # store 0x83b177f4 in memory
flw f31, 0(x2) # load 0x83b177f4 from memory into f31
la x2, scratch
li x3, 0x3cdec925 # load x3 with value 0x3cdec925
sw x3, 0(x2) # store 0x3cdec925 in memory
flw f24, 0(x2) # load 0x3cdec925 from memory into f24
fadd.s f24, f31, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xf9abac6b # load x3 with value 0xf9abac6b
sw x3, 0(x2) # store 0xf9abac6b in memory
flw f19, 0(x2) # load 0xf9abac6b from memory into f19
la x2, scratch
li x3, 0x9523a669 # load x3 with value 0x9523a669
sw x3, 0(x2) # store 0x9523a669 in memory
flw f25, 0(x2) # load 0x9523a669 from memory into f25
fadd.s f25, f19, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x8612b66c # load x3 with value 0x8612b66c
sw x3, 0(x2) # store 0x8612b66c in memory
flw f4, 0(x2) # load 0x8612b66c from memory into f4
la x2, scratch
li x3, 0x6bc80d88 # load x3 with value 0x6bc80d88
sw x3, 0(x2) # store 0x6bc80d88 in memory
flw f26, 0(x2) # load 0x6bc80d88 from memory into f26
fadd.s f26, f4, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x2083b99d # load x3 with value 0x2083b99d
sw x3, 0(x2) # store 0x2083b99d in memory
flw f31, 0(x2) # load 0x2083b99d from memory into f31
la x2, scratch
li x3, 0xdca4b94f # load x3 with value 0xdca4b94f
sw x3, 0(x2) # store 0xdca4b94f in memory
flw f27, 0(x2) # load 0xdca4b94f from memory into f27
fadd.s f27, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x833eabae # load x3 with value 0x833eabae
sw x3, 0(x2) # store 0x833eabae in memory
flw f8, 0(x2) # load 0x833eabae from memory into f8
la x2, scratch
li x3, 0xbf1f281b # load x3 with value 0xbf1f281b
sw x3, 0(x2) # store 0xbf1f281b in memory
flw f28, 0(x2) # load 0xbf1f281b from memory into f28
fadd.s f28, f8, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x52334d99 # load x3 with value 0x52334d99
sw x3, 0(x2) # store 0x52334d99 in memory
flw f12, 0(x2) # load 0x52334d99 from memory into f12
la x2, scratch
li x3, 0x0d23a1b7 # load x3 with value 0x0d23a1b7
sw x3, 0(x2) # store 0x0d23a1b7 in memory
flw f29, 0(x2) # load 0x0d23a1b7 from memory into f29
fadd.s f29, f12, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0xb30b618d # load x3 with value 0xb30b618d
sw x3, 0(x2) # store 0xb30b618d in memory
flw f16, 0(x2) # load 0xb30b618d from memory into f16
la x2, scratch
li x3, 0xe3c8f90e # load x3 with value 0xe3c8f90e
sw x3, 0(x2) # store 0xe3c8f90e in memory
flw f30, 0(x2) # load 0xe3c8f90e from memory into f30
fadd.s f30, f16, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0xccb3caa2 # load x3 with value 0xccb3caa2
sw x3, 0(x2) # store 0xccb3caa2 in memory
flw f24, 0(x2) # load 0xccb3caa2 from memory into f24
la x2, scratch
li x3, 0x8929cadd # load x3 with value 0x8929cadd
sw x3, 0(x2) # store 0x8929cadd in memory
flw f31, 0(x2) # load 0x8929cadd from memory into f31
fadd.s f31, f24, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xddc732fa # load x3 with value 0xddc732fa
sw x3, 0(x2) # store 0xddc732fa in memory
flw f14, 0(x2) # load 0xddc732fa from memory into f14
la x2, scratch
li x3, 0xa2c64da2 # load x3 with value 0xa2c64da2
sw x3, 0(x2) # store 0xa2c64da2 in memory
flw f20, 0(x2) # load 0xa2c64da2 from memory into f20
fadd.s f22, f14, f20, dyn # perform operation
fadd.s f22, f14, f20, rdn # perform operation
fadd.s f22, f14, f20, rmm # perform operation
fadd.s f22, f14, f20, rne # perform operation
fadd.s f22, f14, f20, rtz # perform operation
fadd.s f22, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fadd.s f17, f9, f29, dyn # perform operation
fadd.s f17, f9, f29, rdn # perform operation
fadd.s f17, f9, f29, rmm # perform operation
fadd.s f17, f9, f29, rne # perform operation
fadd.s f17, f9, f29, rtz # perform operation
fadd.s f17, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fadd.s f29, f16, f17, dyn # perform operation
fadd.s f29, f16, f17, rdn # perform operation
fadd.s f29, f16, f17, rmm # perform operation
fadd.s f29, f16, f17, rne # perform operation
fadd.s f29, f16, f17, rtz # perform operation
fadd.s f29, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f7, f20, f1, dyn # perform operation
fadd.s f7, f20, f1, rdn # perform operation
fadd.s f7, f20, f1, rmm # perform operation
fadd.s f7, f20, f1, rne # perform operation
fadd.s f7, f20, f1, rtz # perform operation
fadd.s f7, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fadd.s f20, f13, f17, dyn # perform operation
fadd.s f20, f13, f17, rdn # perform operation
fadd.s f20, f13, f17, rmm # perform operation
fadd.s f20, f13, f17, rne # perform operation
fadd.s f20, f13, f17, rtz # perform operation
fadd.s f20, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f27, f16, f1, dyn # perform operation
fadd.s f27, f16, f1, rdn # perform operation
fadd.s f27, f16, f1, rmm # perform operation
fadd.s f27, f16, f1, rne # perform operation
fadd.s f27, f16, f1, rtz # perform operation
fadd.s f27, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f17, f29, f28, dyn # perform operation
fadd.s f17, f29, f28, rdn # perform operation
fadd.s f17, f29, f28, rmm # perform operation
fadd.s f17, f29, f28, rne # perform operation
fadd.s f17, f29, f28, rtz # perform operation
fadd.s f17, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fadd.s f10, f25, f12, dyn # perform operation
fadd.s f10, f25, f12, rdn # perform operation
fadd.s f10, f25, f12, rmm # perform operation
fadd.s f10, f25, f12, rne # perform operation
fadd.s f10, f25, f12, rtz # perform operation
fadd.s f10, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fadd.s f20, f14, f16, dyn # perform operation
fadd.s f20, f14, f16, rdn # perform operation
fadd.s f20, f14, f16, rmm # perform operation
fadd.s f20, f14, f16, rne # perform operation
fadd.s f20, f14, f16, rtz # perform operation
fadd.s f20, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fadd.s f27, f6, f4, dyn # perform operation
fadd.s f27, f6, f4, rdn # perform operation
fadd.s f27, f6, f4, rmm # perform operation
fadd.s f27, f6, f4, rne # perform operation
fadd.s f27, f6, f4, rtz # perform operation
fadd.s f27, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f6, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fadd.s f12, f24, f7, dyn # perform operation
fadd.s f12, f24, f7, rdn # perform operation
fadd.s f12, f24, f7, rmm # perform operation
fadd.s f12, f24, f7, rne # perform operation
fadd.s f12, f24, f7, rtz # perform operation
fadd.s f12, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fadd.s f10, f26, f30, dyn # perform operation
fadd.s f10, f26, f30, rdn # perform operation
fadd.s f10, f26, f30, rmm # perform operation
fadd.s f10, f26, f30, rne # perform operation
fadd.s f10, f26, f30, rtz # perform operation
fadd.s f10, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fadd.s f1, f4, f3, dyn # perform operation
fadd.s f1, f4, f3, rdn # perform operation
fadd.s f1, f4, f3, rmm # perform operation
fadd.s f1, f4, f3, rne # perform operation
fadd.s f1, f4, f3, rtz # perform operation
fadd.s f1, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f4, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fadd.s f25, f4, f8, dyn # perform operation
fadd.s f25, f4, f8, rdn # perform operation
fadd.s f25, f4, f8, rmm # perform operation
fadd.s f25, f4, f8, rne # perform operation
fadd.s f25, f4, f8, rtz # perform operation
fadd.s f25, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f4, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fadd.s f9, f14, f11, dyn # perform operation
fadd.s f9, f14, f11, rdn # perform operation
fadd.s f9, f14, f11, rmm # perform operation
fadd.s f9, f14, f11, rne # perform operation
fadd.s f9, f14, f11, rtz # perform operation
fadd.s f9, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fadd.s f30, f10, f17, dyn # perform operation
fadd.s f30, f10, f17, rdn # perform operation
fadd.s f30, f10, f17, rmm # perform operation
fadd.s f30, f10, f17, rne # perform operation
fadd.s f30, f10, f17, rtz # perform operation
fadd.s f30, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fadd.s f18, f6, f24, dyn # perform operation
fadd.s f18, f6, f24, rdn # perform operation
fadd.s f18, f6, f24, rmm # perform operation
fadd.s f18, f6, f24, rne # perform operation
fadd.s f18, f6, f24, rtz # perform operation
fadd.s f18, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fadd.s f31, f2, f11, dyn # perform operation
fadd.s f31, f2, f11, rdn # perform operation
fadd.s f31, f2, f11, rmm # perform operation
fadd.s f31, f2, f11, rne # perform operation
fadd.s f31, f2, f11, rtz # perform operation
fadd.s f31, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fadd.s f6, f27, f10, dyn # perform operation
fadd.s f6, f27, f10, rdn # perform operation
fadd.s f6, f27, f10, rmm # perform operation
fadd.s f6, f27, f10, rne # perform operation
fadd.s f6, f27, f10, rtz # perform operation
fadd.s f6, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fadd.s f18, f21, f31, dyn # perform operation
fadd.s f18, f21, f31, rdn # perform operation
fadd.s f18, f21, f31, rmm # perform operation
fadd.s f18, f21, f31, rne # perform operation
fadd.s f18, f21, f31, rtz # perform operation
fadd.s f18, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fadd.s f15, f16, f25, dyn # perform operation
fadd.s f15, f16, f25, rdn # perform operation
fadd.s f15, f16, f25, rmm # perform operation
fadd.s f15, f16, f25, rne # perform operation
fadd.s f15, f16, f25, rtz # perform operation
fadd.s f15, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fadd.s f6, f10, f20, dyn # perform operation
fadd.s f6, f10, f20, rdn # perform operation
fadd.s f6, f10, f20, rmm # perform operation
fadd.s f6, f10, f20, rne # perform operation
fadd.s f6, f10, f20, rtz # perform operation
fadd.s f6, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fadd.s f7, f29, f24, dyn # perform operation
fadd.s f7, f29, f24, rdn # perform operation
fadd.s f7, f29, f24, rmm # perform operation
fadd.s f7, f29, f24, rne # perform operation
fadd.s f7, f29, f24, rtz # perform operation
fadd.s f7, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fadd.s f13, f23, f17, dyn # perform operation
fadd.s f13, f23, f17, rdn # perform operation
fadd.s f13, f23, f17, rmm # perform operation
fadd.s f13, f23, f17, rne # perform operation
fadd.s f13, f23, f17, rtz # perform operation
fadd.s f13, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fadd.s f7, f10, f2, dyn # perform operation
fadd.s f7, f10, f2, rdn # perform operation
fadd.s f7, f10, f2, rmm # perform operation
fadd.s f7, f10, f2, rne # perform operation
fadd.s f7, f10, f2, rtz # perform operation
fadd.s f7, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fadd.s f15, f31, f28, dyn # perform operation
fadd.s f15, f31, f28, rdn # perform operation
fadd.s f15, f31, f28, rmm # perform operation
fadd.s f15, f31, f28, rne # perform operation
fadd.s f15, f31, f28, rtz # perform operation
fadd.s f15, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fadd.s f18, f3, f12, dyn # perform operation
fadd.s f18, f3, f12, rdn # perform operation
fadd.s f18, f3, f12, rmm # perform operation
fadd.s f18, f3, f12, rne # perform operation
fadd.s f18, f3, f12, rtz # perform operation
fadd.s f18, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fadd.s f25, f6, f19, dyn # perform operation
fadd.s f25, f6, f19, rdn # perform operation
fadd.s f25, f6, f19, rmm # perform operation
fadd.s f25, f6, f19, rne # perform operation
fadd.s f25, f6, f19, rtz # perform operation
fadd.s f25, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fadd.s f21, f15, f29, dyn # perform operation
fadd.s f21, f15, f29, rdn # perform operation
fadd.s f21, f15, f29, rmm # perform operation
fadd.s f21, f15, f29, rne # perform operation
fadd.s f21, f15, f29, rtz # perform operation
fadd.s f21, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fadd.s f8, f24, f16, dyn # perform operation
fadd.s f8, f24, f16, rdn # perform operation
fadd.s f8, f24, f16, rmm # perform operation
fadd.s f8, f24, f16, rne # perform operation
fadd.s f8, f24, f16, rtz # perform operation
fadd.s f8, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fadd.s f29, f4, f14, dyn # perform operation
fadd.s f29, f4, f14, rdn # perform operation
fadd.s f29, f4, f14, rmm # perform operation
fadd.s f29, f4, f14, rne # perform operation
fadd.s f29, f4, f14, rtz # perform operation
fadd.s f29, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f4, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fadd.s f13, f31, f23, dyn # perform operation
fadd.s f13, f31, f23, rdn # perform operation
fadd.s f13, f31, f23, rmm # perform operation
fadd.s f13, f31, f23, rne # perform operation
fadd.s f13, f31, f23, rtz # perform operation
fadd.s f13, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fadd.s f7, f2, f19, dyn # perform operation
fadd.s f7, f2, f19, rdn # perform operation
fadd.s f7, f2, f19, rmm # perform operation
fadd.s f7, f2, f19, rne # perform operation
fadd.s f7, f2, f19, rtz # perform operation
fadd.s f7, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f17, f16, f30, dyn # perform operation
fadd.s f17, f16, f30, rdn # perform operation
fadd.s f17, f16, f30, rmm # perform operation
fadd.s f17, f16, f30, rne # perform operation
fadd.s f17, f16, f30, rtz # perform operation
fadd.s f17, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fadd.s f26, f13, f21, dyn # perform operation
fadd.s f26, f13, f21, rdn # perform operation
fadd.s f26, f13, f21, rmm # perform operation
fadd.s f26, f13, f21, rne # perform operation
fadd.s f26, f13, f21, rtz # perform operation
fadd.s f26, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fadd.s f13, f29, f20, dyn # perform operation
fadd.s f13, f29, f20, rdn # perform operation
fadd.s f13, f29, f20, rmm # perform operation
fadd.s f13, f29, f20, rne # perform operation
fadd.s f13, f29, f20, rtz # perform operation
fadd.s f13, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fadd.s f6, f4, f14, dyn # perform operation
fadd.s f6, f4, f14, rdn # perform operation
fadd.s f6, f4, f14, rmm # perform operation
fadd.s f6, f4, f14, rne # perform operation
fadd.s f6, f4, f14, rtz # perform operation
fadd.s f6, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f4, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fadd.s f17, f18, f7, dyn # perform operation
fadd.s f17, f18, f7, rdn # perform operation
fadd.s f17, f18, f7, rmm # perform operation
fadd.s f17, f18, f7, rne # perform operation
fadd.s f17, f18, f7, rtz # perform operation
fadd.s f17, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fadd.s f25, f6, f18, dyn # perform operation
fadd.s f25, f6, f18, rdn # perform operation
fadd.s f25, f6, f18, rmm # perform operation
fadd.s f25, f6, f18, rne # perform operation
fadd.s f25, f6, f18, rtz # perform operation
fadd.s f25, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fadd.s f26, f3, f29, dyn # perform operation
fadd.s f26, f3, f29, rdn # perform operation
fadd.s f26, f3, f29, rmm # perform operation
fadd.s f26, f3, f29, rne # perform operation
fadd.s f26, f3, f29, rtz # perform operation
fadd.s f26, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fadd.s f26, f2, f29, dyn # perform operation
fadd.s f26, f2, f29, rdn # perform operation
fadd.s f26, f2, f29, rmm # perform operation
fadd.s f26, f2, f29, rne # perform operation
fadd.s f26, f2, f29, rtz # perform operation
fadd.s f26, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fadd.s f7, f24, f3, dyn # perform operation
fadd.s f7, f24, f3, rdn # perform operation
fadd.s f7, f24, f3, rmm # perform operation
fadd.s f7, f24, f3, rne # perform operation
fadd.s f7, f24, f3, rtz # perform operation
fadd.s f7, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fadd.s f29, f25, f27, dyn # perform operation
fadd.s f29, f25, f27, rdn # perform operation
fadd.s f29, f25, f27, rmm # perform operation
fadd.s f29, f25, f27, rne # perform operation
fadd.s f29, f25, f27, rtz # perform operation
fadd.s f29, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fadd.s f27, f14, f31, dyn # perform operation
fadd.s f27, f14, f31, rdn # perform operation
fadd.s f27, f14, f31, rmm # perform operation
fadd.s f27, f14, f31, rne # perform operation
fadd.s f27, f14, f31, rtz # perform operation
fadd.s f27, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fadd.s f31, f8, f26, dyn # perform operation
fadd.s f31, f8, f26, rdn # perform operation
fadd.s f31, f8, f26, rmm # perform operation
fadd.s f31, f8, f26, rne # perform operation
fadd.s f31, f8, f26, rtz # perform operation
fadd.s f31, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fadd.s f10, f23, f28, dyn # perform operation
fadd.s f10, f23, f28, rdn # perform operation
fadd.s f10, f23, f28, rmm # perform operation
fadd.s f10, f23, f28, rne # perform operation
fadd.s f10, f23, f28, rtz # perform operation
fadd.s f10, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fadd.s f26, f2, f29, dyn # perform operation
fadd.s f26, f2, f29, rdn # perform operation
fadd.s f26, f2, f29, rmm # perform operation
fadd.s f26, f2, f29, rne # perform operation
fadd.s f26, f2, f29, rtz # perform operation
fadd.s f26, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fadd.s f27, f22, f2, dyn # perform operation
fadd.s f27, f22, f2, rdn # perform operation
fadd.s f27, f22, f2, rmm # perform operation
fadd.s f27, f22, f2, rne # perform operation
fadd.s f27, f22, f2, rtz # perform operation
fadd.s f27, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fadd.s f17, f7, f12, dyn # perform operation
fadd.s f17, f7, f12, rdn # perform operation
fadd.s f17, f7, f12, rmm # perform operation
fadd.s f17, f7, f12, rne # perform operation
fadd.s f17, f7, f12, rtz # perform operation
fadd.s f17, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fadd.s f4, f21, f10, dyn # perform operation
fadd.s f4, f21, f10, rdn # perform operation
fadd.s f4, f21, f10, rmm # perform operation
fadd.s f4, f21, f10, rne # perform operation
fadd.s f4, f21, f10, rtz # perform operation
fadd.s f4, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fadd.s f8, f25, f6, dyn # perform operation
fadd.s f8, f25, f6, rdn # perform operation
fadd.s f8, f25, f6, rmm # perform operation
fadd.s f8, f25, f6, rne # perform operation
fadd.s f8, f25, f6, rtz # perform operation
fadd.s f8, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
fadd.s f11, f21, f20, dyn # perform operation
fadd.s f11, f21, f20, rdn # perform operation
fadd.s f11, f21, f20, rmm # perform operation
fadd.s f11, f21, f20, rne # perform operation
fadd.s f11, f21, f20, rtz # perform operation
fadd.s f11, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fadd.s f7, f1, f22, dyn # perform operation
fadd.s f7, f1, f22, rdn # perform operation
fadd.s f7, f1, f22, rmm # perform operation
fadd.s f7, f1, f22, rne # perform operation
fadd.s f7, f1, f22, rtz # perform operation
fadd.s f7, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fadd.s f24, f30, f23, dyn # perform operation
fadd.s f24, f30, f23, rdn # perform operation
fadd.s f24, f30, f23, rmm # perform operation
fadd.s f24, f30, f23, rne # perform operation
fadd.s f24, f30, f23, rtz # perform operation
fadd.s f24, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fadd.s f12, f23, f14, dyn # perform operation
fadd.s f12, f23, f14, rdn # perform operation
fadd.s f12, f23, f14, rmm # perform operation
fadd.s f12, f23, f14, rne # perform operation
fadd.s f12, f23, f14, rtz # perform operation
fadd.s f12, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f12, f13, f15, dyn # perform operation
fadd.s f12, f13, f15, rdn # perform operation
fadd.s f12, f13, f15, rmm # perform operation
fadd.s f12, f13, f15, rne # perform operation
fadd.s f12, f13, f15, rtz # perform operation
fadd.s f12, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fadd.s f24, f22, f7, dyn # perform operation
fadd.s f24, f22, f7, rdn # perform operation
fadd.s f24, f22, f7, rmm # perform operation
fadd.s f24, f22, f7, rne # perform operation
fadd.s f24, f22, f7, rtz # perform operation
fadd.s f24, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fadd.s f26, f20, f16, dyn # perform operation
fadd.s f26, f20, f16, rdn # perform operation
fadd.s f26, f20, f16, rmm # perform operation
fadd.s f26, f20, f16, rne # perform operation
fadd.s f26, f20, f16, rtz # perform operation
fadd.s f26, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f31, f16, f18, dyn # perform operation
fadd.s f31, f16, f18, rdn # perform operation
fadd.s f31, f16, f18, rmm # perform operation
fadd.s f31, f16, f18, rne # perform operation
fadd.s f31, f16, f18, rtz # perform operation
fadd.s f31, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f21, f19, f29, dyn # perform operation
fadd.s f21, f19, f29, rdn # perform operation
fadd.s f21, f19, f29, rmm # perform operation
fadd.s f21, f19, f29, rne # perform operation
fadd.s f21, f19, f29, rtz # perform operation
fadd.s f21, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fadd.s f3, f30, f29, dyn # perform operation
fadd.s f3, f30, f29, rdn # perform operation
fadd.s f3, f30, f29, rmm # perform operation
fadd.s f3, f30, f29, rne # perform operation
fadd.s f3, f30, f29, rtz # perform operation
fadd.s f3, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fadd.s f28, f25, f23, dyn # perform operation
fadd.s f28, f25, f23, rdn # perform operation
fadd.s f28, f25, f23, rmm # perform operation
fadd.s f28, f25, f23, rne # perform operation
fadd.s f28, f25, f23, rtz # perform operation
fadd.s f28, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fadd.s f14, f7, f21, dyn # perform operation
fadd.s f14, f7, f21, rdn # perform operation
fadd.s f14, f7, f21, rmm # perform operation
fadd.s f14, f7, f21, rne # perform operation
fadd.s f14, f7, f21, rtz # perform operation
fadd.s f14, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fadd.s f9, f13, f29, dyn # perform operation
fadd.s f9, f13, f29, rdn # perform operation
fadd.s f9, f13, f29, rmm # perform operation
fadd.s f9, f13, f29, rne # perform operation
fadd.s f9, f13, f29, rtz # perform operation
fadd.s f9, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fadd.s f11, f1, f6, dyn # perform operation
fadd.s f11, f1, f6, rdn # perform operation
fadd.s f11, f1, f6, rmm # perform operation
fadd.s f11, f1, f6, rne # perform operation
fadd.s f11, f1, f6, rtz # perform operation
fadd.s f11, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fadd.s f1, f19, f28, dyn # perform operation
fadd.s f1, f19, f28, rdn # perform operation
fadd.s f1, f19, f28, rmm # perform operation
fadd.s f1, f19, f28, rne # perform operation
fadd.s f1, f19, f28, rtz # perform operation
fadd.s f1, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fadd.s f8, f31, f26, dyn # perform operation
fadd.s f8, f31, f26, rdn # perform operation
fadd.s f8, f31, f26, rmm # perform operation
fadd.s f8, f31, f26, rne # perform operation
fadd.s f8, f31, f26, rtz # perform operation
fadd.s f8, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fadd.s f6, f29, f17, dyn # perform operation
fadd.s f6, f29, f17, rdn # perform operation
fadd.s f6, f29, f17, rmm # perform operation
fadd.s f6, f29, f17, rne # perform operation
fadd.s f6, f29, f17, rtz # perform operation
fadd.s f6, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fadd.s f23, f29, f14, dyn # perform operation
fadd.s f23, f29, f14, rdn # perform operation
fadd.s f23, f29, f14, rmm # perform operation
fadd.s f23, f29, f14, rne # perform operation
fadd.s f23, f29, f14, rtz # perform operation
fadd.s f23, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fadd.s f21, f12, f8, dyn # perform operation
fadd.s f21, f12, f8, rdn # perform operation
fadd.s f21, f12, f8, rmm # perform operation
fadd.s f21, f12, f8, rne # perform operation
fadd.s f21, f12, f8, rtz # perform operation
fadd.s f21, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fadd.s f27, f12, f4, dyn # perform operation
fadd.s f27, f12, f4, rdn # perform operation
fadd.s f27, f12, f4, rmm # perform operation
fadd.s f27, f12, f4, rne # perform operation
fadd.s f27, f12, f4, rtz # perform operation
fadd.s f27, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f12, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fadd.s f25, f17, f14, dyn # perform operation
fadd.s f25, f17, f14, rdn # perform operation
fadd.s f25, f17, f14, rmm # perform operation
fadd.s f25, f17, f14, rne # perform operation
fadd.s f25, f17, f14, rtz # perform operation
fadd.s f25, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fadd.s f17, f7, f30, dyn # perform operation
fadd.s f17, f7, f30, rdn # perform operation
fadd.s f17, f7, f30, rmm # perform operation
fadd.s f17, f7, f30, rne # perform operation
fadd.s f17, f7, f30, rtz # perform operation
fadd.s f17, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fadd.s f11, f27, f15, dyn # perform operation
fadd.s f11, f27, f15, rdn # perform operation
fadd.s f11, f27, f15, rmm # perform operation
fadd.s f11, f27, f15, rne # perform operation
fadd.s f11, f27, f15, rtz # perform operation
fadd.s f11, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fadd.s f10, f27, f28, dyn # perform operation
fadd.s f10, f27, f28, rdn # perform operation
fadd.s f10, f27, f28, rmm # perform operation
fadd.s f10, f27, f28, rne # perform operation
fadd.s f10, f27, f28, rtz # perform operation
fadd.s f10, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fadd.s f19, f6, f13, dyn # perform operation
fadd.s f19, f6, f13, rdn # perform operation
fadd.s f19, f6, f13, rmm # perform operation
fadd.s f19, f6, f13, rne # perform operation
fadd.s f19, f6, f13, rtz # perform operation
fadd.s f19, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fadd.s f15, f26, f14, dyn # perform operation
fadd.s f15, f26, f14, rdn # perform operation
fadd.s f15, f26, f14, rmm # perform operation
fadd.s f15, f26, f14, rne # perform operation
fadd.s f15, f26, f14, rtz # perform operation
fadd.s f15, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fadd.s f30, f23, f28, dyn # perform operation
fadd.s f30, f23, f28, rdn # perform operation
fadd.s f30, f23, f28, rmm # perform operation
fadd.s f30, f23, f28, rne # perform operation
fadd.s f30, f23, f28, rtz # perform operation
fadd.s f30, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fadd.s f15, f4, f25, dyn # perform operation
fadd.s f15, f4, f25, rdn # perform operation
fadd.s f15, f4, f25, rmm # perform operation
fadd.s f15, f4, f25, rne # perform operation
fadd.s f15, f4, f25, rtz # perform operation
fadd.s f15, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f4, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fadd.s f26, f18, f14, dyn # perform operation
fadd.s f26, f18, f14, rdn # perform operation
fadd.s f26, f18, f14, rmm # perform operation
fadd.s f26, f18, f14, rne # perform operation
fadd.s f26, f18, f14, rtz # perform operation
fadd.s f26, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fadd.s f2, f3, f13, dyn # perform operation
fadd.s f2, f3, f13, rdn # perform operation
fadd.s f2, f3, f13, rmm # perform operation
fadd.s f2, f3, f13, rne # perform operation
fadd.s f2, f3, f13, rtz # perform operation
fadd.s f2, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fadd.s f30, f26, f28, dyn # perform operation
fadd.s f30, f26, f28, rdn # perform operation
fadd.s f30, f26, f28, rmm # perform operation
fadd.s f30, f26, f28, rne # perform operation
fadd.s f30, f26, f28, rtz # perform operation
fadd.s f30, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fadd.s f13, f31, f14, dyn # perform operation
fadd.s f13, f31, f14, rdn # perform operation
fadd.s f13, f31, f14, rmm # perform operation
fadd.s f13, f31, f14, rne # perform operation
fadd.s f13, f31, f14, rtz # perform operation
fadd.s f13, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fadd.s f7, f8, f28, dyn # perform operation
fadd.s f7, f8, f28, rdn # perform operation
fadd.s f7, f8, f28, rmm # perform operation
fadd.s f7, f8, f28, rne # perform operation
fadd.s f7, f8, f28, rtz # perform operation
fadd.s f7, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fadd.s f14, f23, f21, dyn # perform operation
fadd.s f14, f23, f21, rdn # perform operation
fadd.s f14, f23, f21, rmm # perform operation
fadd.s f14, f23, f21, rne # perform operation
fadd.s f14, f23, f21, rtz # perform operation
fadd.s f14, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fadd.s f14, f29, f16, dyn # perform operation
fadd.s f14, f29, f16, rdn # perform operation
fadd.s f14, f29, f16, rmm # perform operation
fadd.s f14, f29, f16, rne # perform operation
fadd.s f14, f29, f16, rtz # perform operation
fadd.s f14, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fadd.s f30, f28, f13, dyn # perform operation
fadd.s f30, f28, f13, rdn # perform operation
fadd.s f30, f28, f13, rmm # perform operation
fadd.s f30, f28, f13, rne # perform operation
fadd.s f30, f28, f13, rtz # perform operation
fadd.s f30, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fadd.s f10, f11, f15, dyn # perform operation
fadd.s f10, f11, f15, rdn # perform operation
fadd.s f10, f11, f15, rmm # perform operation
fadd.s f10, f11, f15, rne # perform operation
fadd.s f10, f11, f15, rtz # perform operation
fadd.s f10, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fadd.s f17, f30, f4, dyn # perform operation
fadd.s f17, f30, f4, rdn # perform operation
fadd.s f17, f30, f4, rmm # perform operation
fadd.s f17, f30, f4, rne # perform operation
fadd.s f17, f30, f4, rtz # perform operation
fadd.s f17, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f30, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fadd.s f18, f4, f23, dyn # perform operation
fadd.s f18, f4, f23, rdn # perform operation
fadd.s f18, f4, f23, rmm # perform operation
fadd.s f18, f4, f23, rne # perform operation
fadd.s f18, f4, f23, rtz # perform operation
fadd.s f18, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f4, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fadd.s f24, f30, f22, dyn # perform operation
fadd.s f24, f30, f22, rdn # perform operation
fadd.s f24, f30, f22, rmm # perform operation
fadd.s f24, f30, f22, rne # perform operation
fadd.s f24, f30, f22, rtz # perform operation
fadd.s f24, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fadd.s f26, f31, f1, dyn # perform operation
fadd.s f26, f31, f1, rdn # perform operation
fadd.s f26, f31, f1, rmm # perform operation
fadd.s f26, f31, f1, rne # perform operation
fadd.s f26, f31, f1, rtz # perform operation
fadd.s f26, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fadd.s f9, f11, f2, dyn # perform operation
fadd.s f9, f11, f2, rdn # perform operation
fadd.s f9, f11, f2, rmm # perform operation
fadd.s f9, f11, f2, rne # perform operation
fadd.s f9, f11, f2, rtz # perform operation
fadd.s f9, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fadd.s f26, f3, f2, dyn # perform operation
fadd.s f26, f3, f2, rdn # perform operation
fadd.s f26, f3, f2, rmm # perform operation
fadd.s f26, f3, f2, rne # perform operation
fadd.s f26, f3, f2, rtz # perform operation
fadd.s f26, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fadd.s f30, f6, f21, dyn # perform operation
fadd.s f30, f6, f21, rdn # perform operation
fadd.s f30, f6, f21, rmm # perform operation
fadd.s f30, f6, f21, rne # perform operation
fadd.s f30, f6, f21, rtz # perform operation
fadd.s f30, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fadd.s f15, f17, f4, dyn # perform operation
fadd.s f15, f17, f4, rdn # perform operation
fadd.s f15, f17, f4, rmm # perform operation
fadd.s f15, f17, f4, rne # perform operation
fadd.s f15, f17, f4, rtz # perform operation
fadd.s f15, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f17, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fadd.s f20, f9, f28, dyn # perform operation
fadd.s f20, f9, f28, rdn # perform operation
fadd.s f20, f9, f28, rmm # perform operation
fadd.s f20, f9, f28, rne # perform operation
fadd.s f20, f9, f28, rtz # perform operation
fadd.s f20, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fadd.s f2, f13, f9, dyn # perform operation
fadd.s f2, f13, f9, rdn # perform operation
fadd.s f2, f13, f9, rmm # perform operation
fadd.s f2, f13, f9, rne # perform operation
fadd.s f2, f13, f9, rtz # perform operation
fadd.s f2, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fadd.s f30, f7, f16, dyn # perform operation
fadd.s f30, f7, f16, rdn # perform operation
fadd.s f30, f7, f16, rmm # perform operation
fadd.s f30, f7, f16, rne # perform operation
fadd.s f30, f7, f16, rtz # perform operation
fadd.s f30, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fadd.s f4, f18, f3, dyn # perform operation
fadd.s f4, f18, f3, rdn # perform operation
fadd.s f4, f18, f3, rmm # perform operation
fadd.s f4, f18, f3, rne # perform operation
fadd.s f4, f18, f3, rtz # perform operation
fadd.s f4, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fadd.s f8, f12, f27, dyn # perform operation
fadd.s f8, f12, f27, rdn # perform operation
fadd.s f8, f12, f27, rmm # perform operation
fadd.s f8, f12, f27, rne # perform operation
fadd.s f8, f12, f27, rtz # perform operation
fadd.s f8, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fadd.s f10, f31, f22, dyn # perform operation
fadd.s f10, f31, f22, rdn # perform operation
fadd.s f10, f31, f22, rmm # perform operation
fadd.s f10, f31, f22, rne # perform operation
fadd.s f10, f31, f22, rtz # perform operation
fadd.s f10, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fadd.s f28, f15, f31, dyn # perform operation
fadd.s f28, f15, f31, rdn # perform operation
fadd.s f28, f15, f31, rmm # perform operation
fadd.s f28, f15, f31, rne # perform operation
fadd.s f28, f15, f31, rtz # perform operation
fadd.s f28, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fadd.s f25, f12, f24, dyn # perform operation
fadd.s f25, f12, f24, rdn # perform operation
fadd.s f25, f12, f24, rmm # perform operation
fadd.s f25, f12, f24, rne # perform operation
fadd.s f25, f12, f24, rtz # perform operation
fadd.s f25, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fadd.s f12, f27, f9, dyn # perform operation
fadd.s f12, f27, f9, rdn # perform operation
fadd.s f12, f27, f9, rmm # perform operation
fadd.s f12, f27, f9, rne # perform operation
fadd.s f12, f27, f9, rtz # perform operation
fadd.s f12, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fadd.s f29, f17, f18, dyn # perform operation
fadd.s f29, f17, f18, rdn # perform operation
fadd.s f29, f17, f18, rmm # perform operation
fadd.s f29, f17, f18, rne # perform operation
fadd.s f29, f17, f18, rtz # perform operation
fadd.s f29, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fadd.s f19, f30, f22, dyn # perform operation
fadd.s f19, f30, f22, rdn # perform operation
fadd.s f19, f30, f22, rmm # perform operation
fadd.s f19, f30, f22, rne # perform operation
fadd.s f19, f30, f22, rtz # perform operation
fadd.s f19, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fadd.s f16, f9, f18, dyn # perform operation
fadd.s f16, f9, f18, rdn # perform operation
fadd.s f16, f9, f18, rmm # perform operation
fadd.s f16, f9, f18, rne # perform operation
fadd.s f16, f9, f18, rtz # perform operation
fadd.s f16, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fadd.s f19, f10, f28, dyn # perform operation
fadd.s f19, f10, f28, rdn # perform operation
fadd.s f19, f10, f28, rmm # perform operation
fadd.s f19, f10, f28, rne # perform operation
fadd.s f19, f10, f28, rtz # perform operation
fadd.s f19, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f12, f24, f31, dyn # perform operation
fadd.s f12, f24, f31, rdn # perform operation
fadd.s f12, f24, f31, rmm # perform operation
fadd.s f12, f24, f31, rne # perform operation
fadd.s f12, f24, f31, rtz # perform operation
fadd.s f12, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fadd.s f21, f1, f15, dyn # perform operation
fadd.s f21, f1, f15, rdn # perform operation
fadd.s f21, f1, f15, rmm # perform operation
fadd.s f21, f1, f15, rne # perform operation
fadd.s f21, f1, f15, rtz # perform operation
fadd.s f21, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fadd.s f2, f14, f18, dyn # perform operation
fadd.s f2, f14, f18, rdn # perform operation
fadd.s f2, f14, f18, rmm # perform operation
fadd.s f2, f14, f18, rne # perform operation
fadd.s f2, f14, f18, rtz # perform operation
fadd.s f2, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fadd.s f12, f1, f6, dyn # perform operation
fadd.s f12, f1, f6, rdn # perform operation
fadd.s f12, f1, f6, rmm # perform operation
fadd.s f12, f1, f6, rne # perform operation
fadd.s f12, f1, f6, rtz # perform operation
fadd.s f12, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fadd.s f21, f9, f1, dyn # perform operation
fadd.s f21, f9, f1, rdn # perform operation
fadd.s f21, f9, f1, rmm # perform operation
fadd.s f21, f9, f1, rne # perform operation
fadd.s f21, f9, f1, rtz # perform operation
fadd.s f21, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fadd.s f11, f15, f19, dyn # perform operation
fadd.s f11, f15, f19, rdn # perform operation
fadd.s f11, f15, f19, rmm # perform operation
fadd.s f11, f15, f19, rne # perform operation
fadd.s f11, f15, f19, rtz # perform operation
fadd.s f11, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fadd.s f23, f4, f28, dyn # perform operation
fadd.s f23, f4, f28, rdn # perform operation
fadd.s f23, f4, f28, rmm # perform operation
fadd.s f23, f4, f28, rne # perform operation
fadd.s f23, f4, f28, rtz # perform operation
fadd.s f23, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f4, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fadd.s f6, f22, f2, dyn # perform operation
fadd.s f6, f22, f2, rdn # perform operation
fadd.s f6, f22, f2, rmm # perform operation
fadd.s f6, f22, f2, rne # perform operation
fadd.s f6, f22, f2, rtz # perform operation
fadd.s f6, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fadd.s f24, f21, f4, dyn # perform operation
fadd.s f24, f21, f4, rdn # perform operation
fadd.s f24, f21, f4, rmm # perform operation
fadd.s f24, f21, f4, rne # perform operation
fadd.s f24, f21, f4, rtz # perform operation
fadd.s f24, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f21, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fadd.s f8, f1, f13, dyn # perform operation
fadd.s f8, f1, f13, rdn # perform operation
fadd.s f8, f1, f13, rmm # perform operation
fadd.s f8, f1, f13, rne # perform operation
fadd.s f8, f1, f13, rtz # perform operation
fadd.s f8, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fadd.s f11, f26, f28, dyn # perform operation
fadd.s f11, f26, f28, rdn # perform operation
fadd.s f11, f26, f28, rmm # perform operation
fadd.s f11, f26, f28, rne # perform operation
fadd.s f11, f26, f28, rtz # perform operation
fadd.s f11, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fadd.s f21, f22, f15, dyn # perform operation
fadd.s f21, f22, f15, rdn # perform operation
fadd.s f21, f22, f15, rmm # perform operation
fadd.s f21, f22, f15, rne # perform operation
fadd.s f21, f22, f15, rtz # perform operation
fadd.s f21, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fadd.s f3, f26, f2, dyn # perform operation
fadd.s f3, f26, f2, rdn # perform operation
fadd.s f3, f26, f2, rmm # perform operation
fadd.s f3, f26, f2, rne # perform operation
fadd.s f3, f26, f2, rtz # perform operation
fadd.s f3, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fadd.s f27, f2, f7, dyn # perform operation
fadd.s f27, f2, f7, rdn # perform operation
fadd.s f27, f2, f7, rmm # perform operation
fadd.s f27, f2, f7, rne # perform operation
fadd.s f27, f2, f7, rtz # perform operation
fadd.s f27, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fadd.s f2, f8, f26, dyn # perform operation
fadd.s f2, f8, f26, rdn # perform operation
fadd.s f2, f8, f26, rmm # perform operation
fadd.s f2, f8, f26, rne # perform operation
fadd.s f2, f8, f26, rtz # perform operation
fadd.s f2, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fadd.s f24, f31, f23, dyn # perform operation
fadd.s f24, f31, f23, rdn # perform operation
fadd.s f24, f31, f23, rmm # perform operation
fadd.s f24, f31, f23, rne # perform operation
fadd.s f24, f31, f23, rtz # perform operation
fadd.s f24, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fadd.s f4, f14, f2, dyn # perform operation
fadd.s f4, f14, f2, rdn # perform operation
fadd.s f4, f14, f2, rmm # perform operation
fadd.s f4, f14, f2, rne # perform operation
fadd.s f4, f14, f2, rtz # perform operation
fadd.s f4, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fadd.s f11, f6, f21, dyn # perform operation
fadd.s f11, f6, f21, rdn # perform operation
fadd.s f11, f6, f21, rmm # perform operation
fadd.s f11, f6, f21, rne # perform operation
fadd.s f11, f6, f21, rtz # perform operation
fadd.s f11, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f15, f24, f2, dyn # perform operation
fadd.s f15, f24, f2, rdn # perform operation
fadd.s f15, f24, f2, rmm # perform operation
fadd.s f15, f24, f2, rne # perform operation
fadd.s f15, f24, f2, rtz # perform operation
fadd.s f15, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fadd.s f15, f25, f30, dyn # perform operation
fadd.s f15, f25, f30, rdn # perform operation
fadd.s f15, f25, f30, rmm # perform operation
fadd.s f15, f25, f30, rne # perform operation
fadd.s f15, f25, f30, rtz # perform operation
fadd.s f15, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fadd.s f29, f4, f30, dyn # perform operation
fadd.s f29, f4, f30, rdn # perform operation
fadd.s f29, f4, f30, rmm # perform operation
fadd.s f29, f4, f30, rne # perform operation
fadd.s f29, f4, f30, rtz # perform operation
fadd.s f29, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f4, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fadd.s f3, f28, f23, dyn # perform operation
fadd.s f3, f28, f23, rdn # perform operation
fadd.s f3, f28, f23, rmm # perform operation
fadd.s f3, f28, f23, rne # perform operation
fadd.s f3, f28, f23, rtz # perform operation
fadd.s f3, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f13, f23, f15, dyn # perform operation
fadd.s f13, f23, f15, rdn # perform operation
fadd.s f13, f23, f15, rmm # perform operation
fadd.s f13, f23, f15, rne # perform operation
fadd.s f13, f23, f15, rtz # perform operation
fadd.s f13, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f31, f24, f21, dyn # perform operation
fadd.s f31, f24, f21, rdn # perform operation
fadd.s f31, f24, f21, rmm # perform operation
fadd.s f31, f24, f21, rne # perform operation
fadd.s f31, f24, f21, rtz # perform operation
fadd.s f31, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fadd.s f2, f4, f1, dyn # perform operation
fadd.s f2, f4, f1, rdn # perform operation
fadd.s f2, f4, f1, rmm # perform operation
fadd.s f2, f4, f1, rne # perform operation
fadd.s f2, f4, f1, rtz # perform operation
fadd.s f2, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f4, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fadd.s f9, f29, f2, dyn # perform operation
fadd.s f9, f29, f2, rdn # perform operation
fadd.s f9, f29, f2, rmm # perform operation
fadd.s f9, f29, f2, rne # perform operation
fadd.s f9, f29, f2, rtz # perform operation
fadd.s f9, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fadd.s f11, f13, f28, dyn # perform operation
fadd.s f11, f13, f28, rdn # perform operation
fadd.s f11, f13, f28, rmm # perform operation
fadd.s f11, f13, f28, rne # perform operation
fadd.s f11, f13, f28, rtz # perform operation
fadd.s f11, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fadd.s f11, f17, f9, dyn # perform operation
fadd.s f11, f17, f9, rdn # perform operation
fadd.s f11, f17, f9, rmm # perform operation
fadd.s f11, f17, f9, rne # perform operation
fadd.s f11, f17, f9, rtz # perform operation
fadd.s f11, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f15, f10, f18, dyn # perform operation
fadd.s f15, f10, f18, rdn # perform operation
fadd.s f15, f10, f18, rmm # perform operation
fadd.s f15, f10, f18, rne # perform operation
fadd.s f15, f10, f18, rtz # perform operation
fadd.s f15, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fadd.s f29, f25, f6, dyn # perform operation
fadd.s f29, f25, f6, rdn # perform operation
fadd.s f29, f25, f6, rmm # perform operation
fadd.s f29, f25, f6, rne # perform operation
fadd.s f29, f25, f6, rtz # perform operation
fadd.s f29, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fadd.s f4, f15, f6, dyn # perform operation
fadd.s f4, f15, f6, rdn # perform operation
fadd.s f4, f15, f6, rmm # perform operation
fadd.s f4, f15, f6, rne # perform operation
fadd.s f4, f15, f6, rtz # perform operation
fadd.s f4, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fadd.s f26, f23, f25, dyn # perform operation
fadd.s f26, f23, f25, rdn # perform operation
fadd.s f26, f23, f25, rmm # perform operation
fadd.s f26, f23, f25, rne # perform operation
fadd.s f26, f23, f25, rtz # perform operation
fadd.s f26, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fadd.s f27, f2, f12, dyn # perform operation
fadd.s f27, f2, f12, rdn # perform operation
fadd.s f27, f2, f12, rmm # perform operation
fadd.s f27, f2, f12, rne # perform operation
fadd.s f27, f2, f12, rtz # perform operation
fadd.s f27, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fadd.s f28, f9, f25, dyn # perform operation
fadd.s f28, f9, f25, rdn # perform operation
fadd.s f28, f9, f25, rmm # perform operation
fadd.s f28, f9, f25, rne # perform operation
fadd.s f28, f9, f25, rtz # perform operation
fadd.s f28, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fadd.s f21, f6, f24, dyn # perform operation
fadd.s f21, f6, f24, rdn # perform operation
fadd.s f21, f6, f24, rmm # perform operation
fadd.s f21, f6, f24, rne # perform operation
fadd.s f21, f6, f24, rtz # perform operation
fadd.s f21, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fadd.s f1, f27, f21, dyn # perform operation
fadd.s f1, f27, f21, rdn # perform operation
fadd.s f1, f27, f21, rmm # perform operation
fadd.s f1, f27, f21, rne # perform operation
fadd.s f1, f27, f21, rtz # perform operation
fadd.s f1, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fadd.s f30, f26, f22, dyn # perform operation
fadd.s f30, f26, f22, rdn # perform operation
fadd.s f30, f26, f22, rmm # perform operation
fadd.s f30, f26, f22, rne # perform operation
fadd.s f30, f26, f22, rtz # perform operation
fadd.s f30, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fadd.s f13, f8, f27, dyn # perform operation
fadd.s f13, f8, f27, rdn # perform operation
fadd.s f13, f8, f27, rmm # perform operation
fadd.s f13, f8, f27, rne # perform operation
fadd.s f13, f8, f27, rtz # perform operation
fadd.s f13, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fadd.s f11, f18, f26, dyn # perform operation
fadd.s f11, f18, f26, rdn # perform operation
fadd.s f11, f18, f26, rmm # perform operation
fadd.s f11, f18, f26, rne # perform operation
fadd.s f11, f18, f26, rtz # perform operation
fadd.s f11, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fadd.s f11, f17, f3, dyn # perform operation
fadd.s f11, f17, f3, rdn # perform operation
fadd.s f11, f17, f3, rmm # perform operation
fadd.s f11, f17, f3, rne # perform operation
fadd.s f11, f17, f3, rtz # perform operation
fadd.s f11, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fadd.s f4, f11, f28, dyn # perform operation
fadd.s f4, f11, f28, rdn # perform operation
fadd.s f4, f11, f28, rmm # perform operation
fadd.s f4, f11, f28, rne # perform operation
fadd.s f4, f11, f28, rtz # perform operation
fadd.s f4, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f22, f2, f20, dyn # perform operation
fadd.s f22, f2, f20, rdn # perform operation
fadd.s f22, f2, f20, rmm # perform operation
fadd.s f22, f2, f20, rne # perform operation
fadd.s f22, f2, f20, rtz # perform operation
fadd.s f22, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fadd.s f3, f2, f14, dyn # perform operation
fadd.s f3, f2, f14, rdn # perform operation
fadd.s f3, f2, f14, rmm # perform operation
fadd.s f3, f2, f14, rne # perform operation
fadd.s f3, f2, f14, rtz # perform operation
fadd.s f3, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fadd.s f26, f11, f24, dyn # perform operation
fadd.s f26, f11, f24, rdn # perform operation
fadd.s f26, f11, f24, rmm # perform operation
fadd.s f26, f11, f24, rne # perform operation
fadd.s f26, f11, f24, rtz # perform operation
fadd.s f26, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fadd.s f12, f4, f17, dyn # perform operation
fadd.s f12, f4, f17, rdn # perform operation
fadd.s f12, f4, f17, rmm # perform operation
fadd.s f12, f4, f17, rne # perform operation
fadd.s f12, f4, f17, rtz # perform operation
fadd.s f12, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f4, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fadd.s f26, f12, f31, dyn # perform operation
fadd.s f26, f12, f31, rdn # perform operation
fadd.s f26, f12, f31, rmm # perform operation
fadd.s f26, f12, f31, rne # perform operation
fadd.s f26, f12, f31, rtz # perform operation
fadd.s f26, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fadd.s f24, f2, f29, dyn # perform operation
fadd.s f24, f2, f29, rdn # perform operation
fadd.s f24, f2, f29, rmm # perform operation
fadd.s f24, f2, f29, rne # perform operation
fadd.s f24, f2, f29, rtz # perform operation
fadd.s f24, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fadd.s f28, f12, f13, dyn # perform operation
fadd.s f28, f12, f13, rdn # perform operation
fadd.s f28, f12, f13, rmm # perform operation
fadd.s f28, f12, f13, rne # perform operation
fadd.s f28, f12, f13, rtz # perform operation
fadd.s f28, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fadd.s f19, f20, f11, dyn # perform operation
fadd.s f19, f20, f11, rdn # perform operation
fadd.s f19, f20, f11, rmm # perform operation
fadd.s f19, f20, f11, rne # perform operation
fadd.s f19, f20, f11, rtz # perform operation
fadd.s f19, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fadd.s f12, f2, f8, dyn # perform operation
fadd.s f12, f2, f8, rdn # perform operation
fadd.s f12, f2, f8, rmm # perform operation
fadd.s f12, f2, f8, rne # perform operation
fadd.s f12, f2, f8, rtz # perform operation
fadd.s f12, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fadd.s f23, f10, f19, dyn # perform operation
fadd.s f23, f10, f19, rdn # perform operation
fadd.s f23, f10, f19, rmm # perform operation
fadd.s f23, f10, f19, rne # perform operation
fadd.s f23, f10, f19, rtz # perform operation
fadd.s f23, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fadd.s f15, f11, f28, dyn # perform operation
fadd.s f15, f11, f28, rdn # perform operation
fadd.s f15, f11, f28, rmm # perform operation
fadd.s f15, f11, f28, rne # perform operation
fadd.s f15, f11, f28, rtz # perform operation
fadd.s f15, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fadd.s f7, f21, f2, dyn # perform operation
fadd.s f7, f21, f2, rdn # perform operation
fadd.s f7, f21, f2, rmm # perform operation
fadd.s f7, f21, f2, rne # perform operation
fadd.s f7, f21, f2, rtz # perform operation
fadd.s f7, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fadd.s f23, f30, f13, dyn # perform operation
fadd.s f23, f30, f13, rdn # perform operation
fadd.s f23, f30, f13, rmm # perform operation
fadd.s f23, f30, f13, rne # perform operation
fadd.s f23, f30, f13, rtz # perform operation
fadd.s f23, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fadd.s f28, f10, f7, dyn # perform operation
fadd.s f28, f10, f7, rdn # perform operation
fadd.s f28, f10, f7, rmm # perform operation
fadd.s f28, f10, f7, rne # perform operation
fadd.s f28, f10, f7, rtz # perform operation
fadd.s f28, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f28, f3, f30, dyn # perform operation
fadd.s f28, f3, f30, rdn # perform operation
fadd.s f28, f3, f30, rmm # perform operation
fadd.s f28, f3, f30, rne # perform operation
fadd.s f28, f3, f30, rtz # perform operation
fadd.s f28, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fadd.s f9, f16, f22, dyn # perform operation
fadd.s f9, f16, f22, rdn # perform operation
fadd.s f9, f16, f22, rmm # perform operation
fadd.s f9, f16, f22, rne # perform operation
fadd.s f9, f16, f22, rtz # perform operation
fadd.s f9, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fadd.s f19, f27, f30, dyn # perform operation
fadd.s f19, f27, f30, rdn # perform operation
fadd.s f19, f27, f30, rmm # perform operation
fadd.s f19, f27, f30, rne # perform operation
fadd.s f19, f27, f30, rtz # perform operation
fadd.s f19, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fadd.s f3, f11, f24, dyn # perform operation
fadd.s f3, f11, f24, rdn # perform operation
fadd.s f3, f11, f24, rmm # perform operation
fadd.s f3, f11, f24, rne # perform operation
fadd.s f3, f11, f24, rtz # perform operation
fadd.s f3, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fadd.s f19, f26, f23, dyn # perform operation
fadd.s f19, f26, f23, rdn # perform operation
fadd.s f19, f26, f23, rmm # perform operation
fadd.s f19, f26, f23, rne # perform operation
fadd.s f19, f26, f23, rtz # perform operation
fadd.s f19, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f8, f12, f9, dyn # perform operation
fadd.s f8, f12, f9, rdn # perform operation
fadd.s f8, f12, f9, rmm # perform operation
fadd.s f8, f12, f9, rne # perform operation
fadd.s f8, f12, f9, rtz # perform operation
fadd.s f8, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fadd.s f29, f22, f12, dyn # perform operation
fadd.s f29, f22, f12, rdn # perform operation
fadd.s f29, f22, f12, rmm # perform operation
fadd.s f29, f22, f12, rne # perform operation
fadd.s f29, f22, f12, rtz # perform operation
fadd.s f29, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fadd.s f2, f13, f11, dyn # perform operation
fadd.s f2, f13, f11, rdn # perform operation
fadd.s f2, f13, f11, rmm # perform operation
fadd.s f2, f13, f11, rne # perform operation
fadd.s f2, f13, f11, rtz # perform operation
fadd.s f2, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fadd.s f9, f13, f22, dyn # perform operation
fadd.s f9, f13, f22, rdn # perform operation
fadd.s f9, f13, f22, rmm # perform operation
fadd.s f9, f13, f22, rne # perform operation
fadd.s f9, f13, f22, rtz # perform operation
fadd.s f9, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f12, f2, f1, dyn # perform operation
fadd.s f12, f2, f1, rdn # perform operation
fadd.s f12, f2, f1, rmm # perform operation
fadd.s f12, f2, f1, rne # perform operation
fadd.s f12, f2, f1, rtz # perform operation
fadd.s f12, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fadd.s f28, f27, f14, dyn # perform operation
fadd.s f28, f27, f14, rdn # perform operation
fadd.s f28, f27, f14, rmm # perform operation
fadd.s f28, f27, f14, rne # perform operation
fadd.s f28, f27, f14, rtz # perform operation
fadd.s f28, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fadd.s f8, f13, f14, dyn # perform operation
fadd.s f8, f13, f14, rdn # perform operation
fadd.s f8, f13, f14, rmm # perform operation
fadd.s f8, f13, f14, rne # perform operation
fadd.s f8, f13, f14, rtz # perform operation
fadd.s f8, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fadd.s f2, f20, f30, dyn # perform operation
fadd.s f2, f20, f30, rdn # perform operation
fadd.s f2, f20, f30, rmm # perform operation
fadd.s f2, f20, f30, rne # perform operation
fadd.s f2, f20, f30, rtz # perform operation
fadd.s f2, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fadd.s f4, f6, f29, dyn # perform operation
fadd.s f4, f6, f29, rdn # perform operation
fadd.s f4, f6, f29, rmm # perform operation
fadd.s f4, f6, f29, rne # perform operation
fadd.s f4, f6, f29, rtz # perform operation
fadd.s f4, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fadd.s f27, f1, f26, dyn # perform operation
fadd.s f27, f1, f26, rdn # perform operation
fadd.s f27, f1, f26, rmm # perform operation
fadd.s f27, f1, f26, rne # perform operation
fadd.s f27, f1, f26, rtz # perform operation
fadd.s f27, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fadd.s f28, f22, f31, dyn # perform operation
fadd.s f28, f22, f31, rdn # perform operation
fadd.s f28, f22, f31, rmm # perform operation
fadd.s f28, f22, f31, rne # perform operation
fadd.s f28, f22, f31, rtz # perform operation
fadd.s f28, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fadd.s f15, f2, f14, dyn # perform operation
fadd.s f15, f2, f14, rdn # perform operation
fadd.s f15, f2, f14, rmm # perform operation
fadd.s f15, f2, f14, rne # perform operation
fadd.s f15, f2, f14, rtz # perform operation
fadd.s f15, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fadd.s f13, f20, f10, dyn # perform operation
fadd.s f13, f20, f10, rdn # perform operation
fadd.s f13, f20, f10, rmm # perform operation
fadd.s f13, f20, f10, rne # perform operation
fadd.s f13, f20, f10, rtz # perform operation
fadd.s f13, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fadd.s f1, f24, f23, dyn # perform operation
fadd.s f1, f24, f23, rdn # perform operation
fadd.s f1, f24, f23, rmm # perform operation
fadd.s f1, f24, f23, rne # perform operation
fadd.s f1, f24, f23, rtz # perform operation
fadd.s f1, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fadd.s f14, f29, f6, dyn # perform operation
fadd.s f14, f29, f6, rdn # perform operation
fadd.s f14, f29, f6, rmm # perform operation
fadd.s f14, f29, f6, rne # perform operation
fadd.s f14, f29, f6, rtz # perform operation
fadd.s f14, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f17, f26, f25, dyn # perform operation
fadd.s f17, f26, f25, rdn # perform operation
fadd.s f17, f26, f25, rmm # perform operation
fadd.s f17, f26, f25, rne # perform operation
fadd.s f17, f26, f25, rtz # perform operation
fadd.s f17, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fadd.s f22, f7, f14, dyn # perform operation
fadd.s f22, f7, f14, rdn # perform operation
fadd.s f22, f7, f14, rmm # perform operation
fadd.s f22, f7, f14, rne # perform operation
fadd.s f22, f7, f14, rtz # perform operation
fadd.s f22, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fadd.s f24, f9, f14, dyn # perform operation
fadd.s f24, f9, f14, rdn # perform operation
fadd.s f24, f9, f14, rmm # perform operation
fadd.s f24, f9, f14, rne # perform operation
fadd.s f24, f9, f14, rtz # perform operation
fadd.s f24, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fadd.s f12, f25, f11, dyn # perform operation
fadd.s f12, f25, f11, rdn # perform operation
fadd.s f12, f25, f11, rmm # perform operation
fadd.s f12, f25, f11, rne # perform operation
fadd.s f12, f25, f11, rtz # perform operation
fadd.s f12, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fadd.s f26, f9, f23, dyn # perform operation
fadd.s f26, f9, f23, rdn # perform operation
fadd.s f26, f9, f23, rmm # perform operation
fadd.s f26, f9, f23, rne # perform operation
fadd.s f26, f9, f23, rtz # perform operation
fadd.s f26, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fadd.s f2, f13, f21, dyn # perform operation
fadd.s f2, f13, f21, rdn # perform operation
fadd.s f2, f13, f21, rmm # perform operation
fadd.s f2, f13, f21, rne # perform operation
fadd.s f2, f13, f21, rtz # perform operation
fadd.s f2, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fadd.s f7, f30, f26, dyn # perform operation
fadd.s f7, f30, f26, rdn # perform operation
fadd.s f7, f30, f26, rmm # perform operation
fadd.s f7, f30, f26, rne # perform operation
fadd.s f7, f30, f26, rtz # perform operation
fadd.s f7, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
fadd.s f24, f13, f29, dyn # perform operation
fadd.s f24, f13, f29, rdn # perform operation
fadd.s f24, f13, f29, rmm # perform operation
fadd.s f24, f13, f29, rne # perform operation
fadd.s f24, f13, f29, rtz # perform operation
fadd.s f24, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f12, f10, f18, dyn # perform operation
fadd.s f12, f10, f18, rdn # perform operation
fadd.s f12, f10, f18, rmm # perform operation
fadd.s f12, f10, f18, rne # perform operation
fadd.s f12, f10, f18, rtz # perform operation
fadd.s f12, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f12, f24, f31, dyn # perform operation
fadd.s f12, f24, f31, rdn # perform operation
fadd.s f12, f24, f31, rmm # perform operation
fadd.s f12, f24, f31, rne # perform operation
fadd.s f12, f24, f31, rtz # perform operation
fadd.s f12, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fadd.s f20, f13, f19, dyn # perform operation
fadd.s f20, f13, f19, rdn # perform operation
fadd.s f20, f13, f19, rmm # perform operation
fadd.s f20, f13, f19, rne # perform operation
fadd.s f20, f13, f19, rtz # perform operation
fadd.s f20, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fadd.s f27, f11, f10, dyn # perform operation
fadd.s f27, f11, f10, rdn # perform operation
fadd.s f27, f11, f10, rmm # perform operation
fadd.s f27, f11, f10, rne # perform operation
fadd.s f27, f11, f10, rtz # perform operation
fadd.s f27, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fadd.s f17, f24, f21, dyn # perform operation
fadd.s f17, f24, f21, rdn # perform operation
fadd.s f17, f24, f21, rmm # perform operation
fadd.s f17, f24, f21, rne # perform operation
fadd.s f17, f24, f21, rtz # perform operation
fadd.s f17, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fadd.s f30, f6, f3, dyn # perform operation
fadd.s f30, f6, f3, rdn # perform operation
fadd.s f30, f6, f3, rmm # perform operation
fadd.s f30, f6, f3, rne # perform operation
fadd.s f30, f6, f3, rtz # perform operation
fadd.s f30, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fadd.s f20, f29, f7, dyn # perform operation
fadd.s f20, f29, f7, rdn # perform operation
fadd.s f20, f29, f7, rmm # perform operation
fadd.s f20, f29, f7, rne # perform operation
fadd.s f20, f29, f7, rtz # perform operation
fadd.s f20, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fadd.s f15, f6, f21, dyn # perform operation
fadd.s f15, f6, f21, rdn # perform operation
fadd.s f15, f6, f21, rmm # perform operation
fadd.s f15, f6, f21, rne # perform operation
fadd.s f15, f6, f21, rtz # perform operation
fadd.s f15, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fadd.s f21, f10, f1, dyn # perform operation
fadd.s f21, f10, f1, rdn # perform operation
fadd.s f21, f10, f1, rmm # perform operation
fadd.s f21, f10, f1, rne # perform operation
fadd.s f21, f10, f1, rtz # perform operation
fadd.s f21, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fadd.s f1, f16, f19, dyn # perform operation
fadd.s f1, f16, f19, rdn # perform operation
fadd.s f1, f16, f19, rmm # perform operation
fadd.s f1, f16, f19, rne # perform operation
fadd.s f1, f16, f19, rtz # perform operation
fadd.s f1, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fadd.s f8, f11, f16, dyn # perform operation
fadd.s f8, f11, f16, rdn # perform operation
fadd.s f8, f11, f16, rmm # perform operation
fadd.s f8, f11, f16, rne # perform operation
fadd.s f8, f11, f16, rtz # perform operation
fadd.s f8, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fadd.s f28, f4, f11, dyn # perform operation
fadd.s f28, f4, f11, rdn # perform operation
fadd.s f28, f4, f11, rmm # perform operation
fadd.s f28, f4, f11, rne # perform operation
fadd.s f28, f4, f11, rtz # perform operation
fadd.s f28, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f4, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fadd.s f21, f18, f12, dyn # perform operation
fadd.s f21, f18, f12, rdn # perform operation
fadd.s f21, f18, f12, rmm # perform operation
fadd.s f21, f18, f12, rne # perform operation
fadd.s f21, f18, f12, rtz # perform operation
fadd.s f21, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fadd.s f31, f9, f8, dyn # perform operation
fadd.s f31, f9, f8, rdn # perform operation
fadd.s f31, f9, f8, rmm # perform operation
fadd.s f31, f9, f8, rne # perform operation
fadd.s f31, f9, f8, rtz # perform operation
fadd.s f31, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fadd.s f4, f23, f7, dyn # perform operation
fadd.s f4, f23, f7, rdn # perform operation
fadd.s f4, f23, f7, rmm # perform operation
fadd.s f4, f23, f7, rne # perform operation
fadd.s f4, f23, f7, rtz # perform operation
fadd.s f4, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fadd.s f14, f10, f27, dyn # perform operation
fadd.s f14, f10, f27, rdn # perform operation
fadd.s f14, f10, f27, rmm # perform operation
fadd.s f14, f10, f27, rne # perform operation
fadd.s f14, f10, f27, rtz # perform operation
fadd.s f14, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fadd.s f26, f17, f14, dyn # perform operation
fadd.s f26, f17, f14, rdn # perform operation
fadd.s f26, f17, f14, rmm # perform operation
fadd.s f26, f17, f14, rne # perform operation
fadd.s f26, f17, f14, rtz # perform operation
fadd.s f26, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fadd.s f25, f22, f30, dyn # perform operation
fadd.s f25, f22, f30, rdn # perform operation
fadd.s f25, f22, f30, rmm # perform operation
fadd.s f25, f22, f30, rne # perform operation
fadd.s f25, f22, f30, rtz # perform operation
fadd.s f25, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fadd.s f10, f30, f24, dyn # perform operation
fadd.s f10, f30, f24, rdn # perform operation
fadd.s f10, f30, f24, rmm # perform operation
fadd.s f10, f30, f24, rne # perform operation
fadd.s f10, f30, f24, rtz # perform operation
fadd.s f10, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fadd.s f9, f18, f17, dyn # perform operation
fadd.s f9, f18, f17, rdn # perform operation
fadd.s f9, f18, f17, rmm # perform operation
fadd.s f9, f18, f17, rne # perform operation
fadd.s f9, f18, f17, rtz # perform operation
fadd.s f9, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fadd.s f25, f31, f22, dyn # perform operation
fadd.s f25, f31, f22, rdn # perform operation
fadd.s f25, f31, f22, rmm # perform operation
fadd.s f25, f31, f22, rne # perform operation
fadd.s f25, f31, f22, rtz # perform operation
fadd.s f25, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fadd.s f30, f16, f17, dyn # perform operation
fadd.s f30, f16, f17, rdn # perform operation
fadd.s f30, f16, f17, rmm # perform operation
fadd.s f30, f16, f17, rne # perform operation
fadd.s f30, f16, f17, rtz # perform operation
fadd.s f30, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fadd.s f19, f17, f20, dyn # perform operation
fadd.s f19, f17, f20, rdn # perform operation
fadd.s f19, f17, f20, rmm # perform operation
fadd.s f19, f17, f20, rne # perform operation
fadd.s f19, f17, f20, rtz # perform operation
fadd.s f19, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fadd.s f31, f6, f1, dyn # perform operation
fadd.s f31, f6, f1, rdn # perform operation
fadd.s f31, f6, f1, rmm # perform operation
fadd.s f31, f6, f1, rne # perform operation
fadd.s f31, f6, f1, rtz # perform operation
fadd.s f31, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fadd.s f3, f1, f10, dyn # perform operation
fadd.s f3, f1, f10, rdn # perform operation
fadd.s f3, f1, f10, rmm # perform operation
fadd.s f3, f1, f10, rne # perform operation
fadd.s f3, f1, f10, rtz # perform operation
fadd.s f3, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fadd.s f11, f29, f20, dyn # perform operation
fadd.s f11, f29, f20, rdn # perform operation
fadd.s f11, f29, f20, rmm # perform operation
fadd.s f11, f29, f20, rne # perform operation
fadd.s f11, f29, f20, rtz # perform operation
fadd.s f11, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f7, f11, f3, dyn # perform operation
fadd.s f7, f11, f3, rdn # perform operation
fadd.s f7, f11, f3, rmm # perform operation
fadd.s f7, f11, f3, rne # perform operation
fadd.s f7, f11, f3, rtz # perform operation
fadd.s f7, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fadd.s f1, f21, f3, dyn # perform operation
fadd.s f1, f21, f3, rdn # perform operation
fadd.s f1, f21, f3, rmm # perform operation
fadd.s f1, f21, f3, rne # perform operation
fadd.s f1, f21, f3, rtz # perform operation
fadd.s f1, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fadd.s f7, f31, f17, dyn # perform operation
fadd.s f7, f31, f17, rdn # perform operation
fadd.s f7, f31, f17, rmm # perform operation
fadd.s f7, f31, f17, rne # perform operation
fadd.s f7, f31, f17, rtz # perform operation
fadd.s f7, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fadd.s f20, f19, f23, dyn # perform operation
fadd.s f20, f19, f23, rdn # perform operation
fadd.s f20, f19, f23, rmm # perform operation
fadd.s f20, f19, f23, rne # perform operation
fadd.s f20, f19, f23, rtz # perform operation
fadd.s f20, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fadd.s f7, f28, f2, dyn # perform operation
fadd.s f7, f28, f2, rdn # perform operation
fadd.s f7, f28, f2, rmm # perform operation
fadd.s f7, f28, f2, rne # perform operation
fadd.s f7, f28, f2, rtz # perform operation
fadd.s f7, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fadd.s f25, f13, f14, dyn # perform operation
fadd.s f25, f13, f14, rdn # perform operation
fadd.s f25, f13, f14, rmm # perform operation
fadd.s f25, f13, f14, rne # perform operation
fadd.s f25, f13, f14, rtz # perform operation
fadd.s f25, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fadd.s f4, f14, f15, dyn # perform operation
fadd.s f4, f14, f15, rdn # perform operation
fadd.s f4, f14, f15, rmm # perform operation
fadd.s f4, f14, f15, rne # perform operation
fadd.s f4, f14, f15, rtz # perform operation
fadd.s f4, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fadd.s f13, f10, f24, dyn # perform operation
fadd.s f13, f10, f24, rdn # perform operation
fadd.s f13, f10, f24, rmm # perform operation
fadd.s f13, f10, f24, rne # perform operation
fadd.s f13, f10, f24, rtz # perform operation
fadd.s f13, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fadd.s f28, f8, f12, dyn # perform operation
fadd.s f28, f8, f12, rdn # perform operation
fadd.s f28, f8, f12, rmm # perform operation
fadd.s f28, f8, f12, rne # perform operation
fadd.s f28, f8, f12, rtz # perform operation
fadd.s f28, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fadd.s f29, f1, f26, dyn # perform operation
fadd.s f29, f1, f26, rdn # perform operation
fadd.s f29, f1, f26, rmm # perform operation
fadd.s f29, f1, f26, rne # perform operation
fadd.s f29, f1, f26, rtz # perform operation
fadd.s f29, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fadd.s f6, f22, f19, dyn # perform operation
fadd.s f6, f22, f19, rdn # perform operation
fadd.s f6, f22, f19, rmm # perform operation
fadd.s f6, f22, f19, rne # perform operation
fadd.s f6, f22, f19, rtz # perform operation
fadd.s f6, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fadd.s f19, f29, f25, dyn # perform operation
fadd.s f19, f29, f25, rdn # perform operation
fadd.s f19, f29, f25, rmm # perform operation
fadd.s f19, f29, f25, rne # perform operation
fadd.s f19, f29, f25, rtz # perform operation
fadd.s f19, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fadd.s f18, f15, f1, dyn # perform operation
fadd.s f18, f15, f1, rdn # perform operation
fadd.s f18, f15, f1, rmm # perform operation
fadd.s f18, f15, f1, rne # perform operation
fadd.s f18, f15, f1, rtz # perform operation
fadd.s f18, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fadd.s f18, f24, f19, dyn # perform operation
fadd.s f18, f24, f19, rdn # perform operation
fadd.s f18, f24, f19, rmm # perform operation
fadd.s f18, f24, f19, rne # perform operation
fadd.s f18, f24, f19, rtz # perform operation
fadd.s f18, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fadd.s f7, f6, f18, dyn # perform operation
fadd.s f7, f6, f18, rdn # perform operation
fadd.s f7, f6, f18, rmm # perform operation
fadd.s f7, f6, f18, rne # perform operation
fadd.s f7, f6, f18, rtz # perform operation
fadd.s f7, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fadd.s f27, f20, f7, dyn # perform operation
fadd.s f27, f20, f7, rdn # perform operation
fadd.s f27, f20, f7, rmm # perform operation
fadd.s f27, f20, f7, rne # perform operation
fadd.s f27, f20, f7, rtz # perform operation
fadd.s f27, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fadd.s f29, f18, f11, dyn # perform operation
fadd.s f29, f18, f11, rdn # perform operation
fadd.s f29, f18, f11, rmm # perform operation
fadd.s f29, f18, f11, rne # perform operation
fadd.s f29, f18, f11, rtz # perform operation
fadd.s f29, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fadd.s f27, f22, f6, dyn # perform operation
fadd.s f27, f22, f6, rdn # perform operation
fadd.s f27, f22, f6, rmm # perform operation
fadd.s f27, f22, f6, rne # perform operation
fadd.s f27, f22, f6, rtz # perform operation
fadd.s f27, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f11, f24, f9, dyn # perform operation
fadd.s f11, f24, f9, rdn # perform operation
fadd.s f11, f24, f9, rmm # perform operation
fadd.s f11, f24, f9, rne # perform operation
fadd.s f11, f24, f9, rtz # perform operation
fadd.s f11, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fadd.s f15, f3, f19, dyn # perform operation
fadd.s f15, f3, f19, rdn # perform operation
fadd.s f15, f3, f19, rmm # perform operation
fadd.s f15, f3, f19, rne # perform operation
fadd.s f15, f3, f19, rtz # perform operation
fadd.s f15, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fadd.s f9, f31, f17, dyn # perform operation
fadd.s f9, f31, f17, rdn # perform operation
fadd.s f9, f31, f17, rmm # perform operation
fadd.s f9, f31, f17, rne # perform operation
fadd.s f9, f31, f17, rtz # perform operation
fadd.s f9, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fadd.s f17, f21, f15, dyn # perform operation
fadd.s f17, f21, f15, rdn # perform operation
fadd.s f17, f21, f15, rmm # perform operation
fadd.s f17, f21, f15, rne # perform operation
fadd.s f17, f21, f15, rtz # perform operation
fadd.s f17, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fadd.s f6, f25, f1, dyn # perform operation
fadd.s f6, f25, f1, rdn # perform operation
fadd.s f6, f25, f1, rmm # perform operation
fadd.s f6, f25, f1, rne # perform operation
fadd.s f6, f25, f1, rtz # perform operation
fadd.s f6, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fadd.s f2, f12, f8, dyn # perform operation
fadd.s f2, f12, f8, rdn # perform operation
fadd.s f2, f12, f8, rmm # perform operation
fadd.s f2, f12, f8, rne # perform operation
fadd.s f2, f12, f8, rtz # perform operation
fadd.s f2, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fadd.s f20, f17, f8, dyn # perform operation
fadd.s f20, f17, f8, rdn # perform operation
fadd.s f20, f17, f8, rmm # perform operation
fadd.s f20, f17, f8, rne # perform operation
fadd.s f20, f17, f8, rtz # perform operation
fadd.s f20, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fadd.s f27, f22, f11, dyn # perform operation
fadd.s f27, f22, f11, rdn # perform operation
fadd.s f27, f22, f11, rmm # perform operation
fadd.s f27, f22, f11, rne # perform operation
fadd.s f27, f22, f11, rtz # perform operation
fadd.s f27, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fadd.s f21, f1, f24, dyn # perform operation
fadd.s f21, f1, f24, rdn # perform operation
fadd.s f21, f1, f24, rmm # perform operation
fadd.s f21, f1, f24, rne # perform operation
fadd.s f21, f1, f24, rtz # perform operation
fadd.s f21, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fadd.s f17, f30, f29, dyn # perform operation
fadd.s f17, f30, f29, rdn # perform operation
fadd.s f17, f30, f29, rmm # perform operation
fadd.s f17, f30, f29, rne # perform operation
fadd.s f17, f30, f29, rtz # perform operation
fadd.s f17, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fadd.s f10, f29, f23, dyn # perform operation
fadd.s f10, f29, f23, rdn # perform operation
fadd.s f10, f29, f23, rmm # perform operation
fadd.s f10, f29, f23, rne # perform operation
fadd.s f10, f29, f23, rtz # perform operation
fadd.s f10, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fadd.s f6, f15, f24, dyn # perform operation
fadd.s f6, f15, f24, rdn # perform operation
fadd.s f6, f15, f24, rmm # perform operation
fadd.s f6, f15, f24, rne # perform operation
fadd.s f6, f15, f24, rtz # perform operation
fadd.s f6, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fadd.s f12, f10, f3, dyn # perform operation
fadd.s f12, f10, f3, rdn # perform operation
fadd.s f12, f10, f3, rmm # perform operation
fadd.s f12, f10, f3, rne # perform operation
fadd.s f12, f10, f3, rtz # perform operation
fadd.s f12, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fadd.s f17, f6, f3, dyn # perform operation
fadd.s f17, f6, f3, rdn # perform operation
fadd.s f17, f6, f3, rmm # perform operation
fadd.s f17, f6, f3, rne # perform operation
fadd.s f17, f6, f3, rtz # perform operation
fadd.s f17, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fadd.s f17, f11, f10, dyn # perform operation
fadd.s f17, f11, f10, rdn # perform operation
fadd.s f17, f11, f10, rmm # perform operation
fadd.s f17, f11, f10, rne # perform operation
fadd.s f17, f11, f10, rtz # perform operation
fadd.s f17, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fadd.s f24, f14, f1, dyn # perform operation
fadd.s f24, f14, f1, rdn # perform operation
fadd.s f24, f14, f1, rmm # perform operation
fadd.s f24, f14, f1, rne # perform operation
fadd.s f24, f14, f1, rtz # perform operation
fadd.s f24, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fadd.s f25, f28, f4, dyn # perform operation
fadd.s f25, f28, f4, rdn # perform operation
fadd.s f25, f28, f4, rmm # perform operation
fadd.s f25, f28, f4, rne # perform operation
fadd.s f25, f28, f4, rtz # perform operation
fadd.s f25, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f28, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fadd.s f18, f1, f16, dyn # perform operation
fadd.s f18, f1, f16, rdn # perform operation
fadd.s f18, f1, f16, rmm # perform operation
fadd.s f18, f1, f16, rne # perform operation
fadd.s f18, f1, f16, rtz # perform operation
fadd.s f18, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fadd.s f13, f1, f27, dyn # perform operation
fadd.s f13, f1, f27, rdn # perform operation
fadd.s f13, f1, f27, rmm # perform operation
fadd.s f13, f1, f27, rne # perform operation
fadd.s f13, f1, f27, rtz # perform operation
fadd.s f13, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f17, f22, f4, dyn # perform operation
fadd.s f17, f22, f4, rdn # perform operation
fadd.s f17, f22, f4, rmm # perform operation
fadd.s f17, f22, f4, rne # perform operation
fadd.s f17, f22, f4, rtz # perform operation
fadd.s f17, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f22, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fadd.s f27, f31, f28, dyn # perform operation
fadd.s f27, f31, f28, rdn # perform operation
fadd.s f27, f31, f28, rmm # perform operation
fadd.s f27, f31, f28, rne # perform operation
fadd.s f27, f31, f28, rtz # perform operation
fadd.s f27, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fadd.s f30, f31, f15, dyn # perform operation
fadd.s f30, f31, f15, rdn # perform operation
fadd.s f30, f31, f15, rmm # perform operation
fadd.s f30, f31, f15, rne # perform operation
fadd.s f30, f31, f15, rtz # perform operation
fadd.s f30, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fadd.s f11, f20, f9, dyn # perform operation
fadd.s f11, f20, f9, rdn # perform operation
fadd.s f11, f20, f9, rmm # perform operation
fadd.s f11, f20, f9, rne # perform operation
fadd.s f11, f20, f9, rtz # perform operation
fadd.s f11, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fadd.s f9, f11, f31, dyn # perform operation
fadd.s f9, f11, f31, rdn # perform operation
fadd.s f9, f11, f31, rmm # perform operation
fadd.s f9, f11, f31, rne # perform operation
fadd.s f9, f11, f31, rtz # perform operation
fadd.s f9, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fadd.s f12, f8, f1, dyn # perform operation
fadd.s f12, f8, f1, rdn # perform operation
fadd.s f12, f8, f1, rmm # perform operation
fadd.s f12, f8, f1, rne # perform operation
fadd.s f12, f8, f1, rtz # perform operation
fadd.s f12, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fadd.s f23, f31, f14, dyn # perform operation
fadd.s f23, f31, f14, rdn # perform operation
fadd.s f23, f31, f14, rmm # perform operation
fadd.s f23, f31, f14, rne # perform operation
fadd.s f23, f31, f14, rtz # perform operation
fadd.s f23, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fadd.s f16, f17, f15, dyn # perform operation
fadd.s f16, f17, f15, rdn # perform operation
fadd.s f16, f17, f15, rmm # perform operation
fadd.s f16, f17, f15, rne # perform operation
fadd.s f16, f17, f15, rtz # perform operation
fadd.s f16, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fadd.s f23, f22, f2, dyn # perform operation
fadd.s f23, f22, f2, rdn # perform operation
fadd.s f23, f22, f2, rmm # perform operation
fadd.s f23, f22, f2, rne # perform operation
fadd.s f23, f22, f2, rtz # perform operation
fadd.s f23, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f24, f6, f9, dyn # perform operation
fadd.s f24, f6, f9, rdn # perform operation
fadd.s f24, f6, f9, rmm # perform operation
fadd.s f24, f6, f9, rne # perform operation
fadd.s f24, f6, f9, rtz # perform operation
fadd.s f24, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fadd.s f22, f28, f18, dyn # perform operation
fadd.s f22, f28, f18, rdn # perform operation
fadd.s f22, f28, f18, rmm # perform operation
fadd.s f22, f28, f18, rne # perform operation
fadd.s f22, f28, f18, rtz # perform operation
fadd.s f22, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fadd.s f27, f23, f2, dyn # perform operation
fadd.s f27, f23, f2, rdn # perform operation
fadd.s f27, f23, f2, rmm # perform operation
fadd.s f27, f23, f2, rne # perform operation
fadd.s f27, f23, f2, rtz # perform operation
fadd.s f27, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fadd.s f30, f2, f16, dyn # perform operation
fadd.s f30, f2, f16, rdn # perform operation
fadd.s f30, f2, f16, rmm # perform operation
fadd.s f30, f2, f16, rne # perform operation
fadd.s f30, f2, f16, rtz # perform operation
fadd.s f30, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fadd.s f14, f28, f23, dyn # perform operation
fadd.s f14, f28, f23, rdn # perform operation
fadd.s f14, f28, f23, rmm # perform operation
fadd.s f14, f28, f23, rne # perform operation
fadd.s f14, f28, f23, rtz # perform operation
fadd.s f14, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fadd.s f10, f16, f21, dyn # perform operation
fadd.s f10, f16, f21, rdn # perform operation
fadd.s f10, f16, f21, rmm # perform operation
fadd.s f10, f16, f21, rne # perform operation
fadd.s f10, f16, f21, rtz # perform operation
fadd.s f10, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fadd.s f28, f30, f1, dyn # perform operation
fadd.s f28, f30, f1, rdn # perform operation
fadd.s f28, f30, f1, rmm # perform operation
fadd.s f28, f30, f1, rne # perform operation
fadd.s f28, f30, f1, rtz # perform operation
fadd.s f28, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fadd.s f16, f8, f24, dyn # perform operation
fadd.s f16, f8, f24, rdn # perform operation
fadd.s f16, f8, f24, rmm # perform operation
fadd.s f16, f8, f24, rne # perform operation
fadd.s f16, f8, f24, rtz # perform operation
fadd.s f16, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fadd.s f4, f19, f17, dyn # perform operation
fadd.s f4, f19, f17, rdn # perform operation
fadd.s f4, f19, f17, rmm # perform operation
fadd.s f4, f19, f17, rne # perform operation
fadd.s f4, f19, f17, rtz # perform operation
fadd.s f4, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f31, f18, f16, dyn # perform operation
fadd.s f31, f18, f16, rdn # perform operation
fadd.s f31, f18, f16, rmm # perform operation
fadd.s f31, f18, f16, rne # perform operation
fadd.s f31, f18, f16, rtz # perform operation
fadd.s f31, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fadd.s f29, f25, f17, dyn # perform operation
fadd.s f29, f25, f17, rdn # perform operation
fadd.s f29, f25, f17, rmm # perform operation
fadd.s f29, f25, f17, rne # perform operation
fadd.s f29, f25, f17, rtz # perform operation
fadd.s f29, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fadd.s f31, f20, f16, dyn # perform operation
fadd.s f31, f20, f16, rdn # perform operation
fadd.s f31, f20, f16, rmm # perform operation
fadd.s f31, f20, f16, rne # perform operation
fadd.s f31, f20, f16, rtz # perform operation
fadd.s f31, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fadd.s f9, f15, f12, dyn # perform operation
fadd.s f9, f15, f12, rdn # perform operation
fadd.s f9, f15, f12, rmm # perform operation
fadd.s f9, f15, f12, rne # perform operation
fadd.s f9, f15, f12, rtz # perform operation
fadd.s f9, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f7, f17, f20, dyn # perform operation
fadd.s f7, f17, f20, rdn # perform operation
fadd.s f7, f17, f20, rmm # perform operation
fadd.s f7, f17, f20, rne # perform operation
fadd.s f7, f17, f20, rtz # perform operation
fadd.s f7, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fadd.s f26, f12, f3, dyn # perform operation
fadd.s f26, f12, f3, rdn # perform operation
fadd.s f26, f12, f3, rmm # perform operation
fadd.s f26, f12, f3, rne # perform operation
fadd.s f26, f12, f3, rtz # perform operation
fadd.s f26, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fadd.s f7, f19, f11, dyn # perform operation
fadd.s f7, f19, f11, rdn # perform operation
fadd.s f7, f19, f11, rmm # perform operation
fadd.s f7, f19, f11, rne # perform operation
fadd.s f7, f19, f11, rtz # perform operation
fadd.s f7, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f11, f23, f19, dyn # perform operation
fadd.s f11, f23, f19, rdn # perform operation
fadd.s f11, f23, f19, rmm # perform operation
fadd.s f11, f23, f19, rne # perform operation
fadd.s f11, f23, f19, rtz # perform operation
fadd.s f11, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fadd.s f6, f19, f24, dyn # perform operation
fadd.s f6, f19, f24, rdn # perform operation
fadd.s f6, f19, f24, rmm # perform operation
fadd.s f6, f19, f24, rne # perform operation
fadd.s f6, f19, f24, rtz # perform operation
fadd.s f6, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fadd.s f18, f21, f2, dyn # perform operation
fadd.s f18, f21, f2, rdn # perform operation
fadd.s f18, f21, f2, rmm # perform operation
fadd.s f18, f21, f2, rne # perform operation
fadd.s f18, f21, f2, rtz # perform operation
fadd.s f18, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fadd.s f17, f10, f3, dyn # perform operation
fadd.s f17, f10, f3, rdn # perform operation
fadd.s f17, f10, f3, rmm # perform operation
fadd.s f17, f10, f3, rne # perform operation
fadd.s f17, f10, f3, rtz # perform operation
fadd.s f17, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fadd.s f26, f25, f27, dyn # perform operation
fadd.s f26, f25, f27, rdn # perform operation
fadd.s f26, f25, f27, rmm # perform operation
fadd.s f26, f25, f27, rne # perform operation
fadd.s f26, f25, f27, rtz # perform operation
fadd.s f26, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fadd.s f14, f3, f20, dyn # perform operation
fadd.s f14, f3, f20, rdn # perform operation
fadd.s f14, f3, f20, rmm # perform operation
fadd.s f14, f3, f20, rne # perform operation
fadd.s f14, f3, f20, rtz # perform operation
fadd.s f14, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f25, f14, f28, dyn # perform operation
fadd.s f25, f14, f28, rdn # perform operation
fadd.s f25, f14, f28, rmm # perform operation
fadd.s f25, f14, f28, rne # perform operation
fadd.s f25, f14, f28, rtz # perform operation
fadd.s f25, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fadd.s f23, f6, f25, dyn # perform operation
fadd.s f23, f6, f25, rdn # perform operation
fadd.s f23, f6, f25, rmm # perform operation
fadd.s f23, f6, f25, rne # perform operation
fadd.s f23, f6, f25, rtz # perform operation
fadd.s f23, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fadd.s f30, f1, f6, dyn # perform operation
fadd.s f30, f1, f6, rdn # perform operation
fadd.s f30, f1, f6, rmm # perform operation
fadd.s f30, f1, f6, rne # perform operation
fadd.s f30, f1, f6, rtz # perform operation
fadd.s f30, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fadd.s f25, f18, f20, dyn # perform operation
fadd.s f25, f18, f20, rdn # perform operation
fadd.s f25, f18, f20, rmm # perform operation
fadd.s f25, f18, f20, rne # perform operation
fadd.s f25, f18, f20, rtz # perform operation
fadd.s f25, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fadd.s f26, f23, f14, dyn # perform operation
fadd.s f26, f23, f14, rdn # perform operation
fadd.s f26, f23, f14, rmm # perform operation
fadd.s f26, f23, f14, rne # perform operation
fadd.s f26, f23, f14, rtz # perform operation
fadd.s f26, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fadd.s f20, f4, f22, dyn # perform operation
fadd.s f20, f4, f22, rdn # perform operation
fadd.s f20, f4, f22, rmm # perform operation
fadd.s f20, f4, f22, rne # perform operation
fadd.s f20, f4, f22, rtz # perform operation
fadd.s f20, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f4, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fadd.s f26, f12, f22, dyn # perform operation
fadd.s f26, f12, f22, rdn # perform operation
fadd.s f26, f12, f22, rmm # perform operation
fadd.s f26, f12, f22, rne # perform operation
fadd.s f26, f12, f22, rtz # perform operation
fadd.s f26, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fadd.s f16, f7, f1, dyn # perform operation
fadd.s f16, f7, f1, rdn # perform operation
fadd.s f16, f7, f1, rmm # perform operation
fadd.s f16, f7, f1, rne # perform operation
fadd.s f16, f7, f1, rtz # perform operation
fadd.s f16, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fadd.s f28, f4, f2, dyn # perform operation
fadd.s f28, f4, f2, rdn # perform operation
fadd.s f28, f4, f2, rmm # perform operation
fadd.s f28, f4, f2, rne # perform operation
fadd.s f28, f4, f2, rtz # perform operation
fadd.s f28, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f4, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fadd.s f31, f16, f6, dyn # perform operation
fadd.s f31, f16, f6, rdn # perform operation
fadd.s f31, f16, f6, rmm # perform operation
fadd.s f31, f16, f6, rne # perform operation
fadd.s f31, f16, f6, rtz # perform operation
fadd.s f31, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fadd.s f8, f27, f22, dyn # perform operation
fadd.s f8, f27, f22, rdn # perform operation
fadd.s f8, f27, f22, rmm # perform operation
fadd.s f8, f27, f22, rne # perform operation
fadd.s f8, f27, f22, rtz # perform operation
fadd.s f8, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fadd.s f30, f22, f10, dyn # perform operation
fadd.s f30, f22, f10, rdn # perform operation
fadd.s f30, f22, f10, rmm # perform operation
fadd.s f30, f22, f10, rne # perform operation
fadd.s f30, f22, f10, rtz # perform operation
fadd.s f30, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fadd.s f9, f11, f3, dyn # perform operation
fadd.s f9, f11, f3, rdn # perform operation
fadd.s f9, f11, f3, rmm # perform operation
fadd.s f9, f11, f3, rne # perform operation
fadd.s f9, f11, f3, rtz # perform operation
fadd.s f9, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f25, f28, f15, dyn # perform operation
fadd.s f25, f28, f15, rdn # perform operation
fadd.s f25, f28, f15, rmm # perform operation
fadd.s f25, f28, f15, rne # perform operation
fadd.s f25, f28, f15, rtz # perform operation
fadd.s f25, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fadd.s f18, f27, f30, dyn # perform operation
fadd.s f18, f27, f30, rdn # perform operation
fadd.s f18, f27, f30, rmm # perform operation
fadd.s f18, f27, f30, rne # perform operation
fadd.s f18, f27, f30, rtz # perform operation
fadd.s f18, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fadd.s f18, f27, f4, dyn # perform operation
fadd.s f18, f27, f4, rdn # perform operation
fadd.s f18, f27, f4, rmm # perform operation
fadd.s f18, f27, f4, rne # perform operation
fadd.s f18, f27, f4, rtz # perform operation
fadd.s f18, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f27, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fadd.s f9, f16, f24, dyn # perform operation
fadd.s f9, f16, f24, rdn # perform operation
fadd.s f9, f16, f24, rmm # perform operation
fadd.s f9, f16, f24, rne # perform operation
fadd.s f9, f16, f24, rtz # perform operation
fadd.s f9, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fadd.s f3, f14, f17, dyn # perform operation
fadd.s f3, f14, f17, rdn # perform operation
fadd.s f3, f14, f17, rmm # perform operation
fadd.s f3, f14, f17, rne # perform operation
fadd.s f3, f14, f17, rtz # perform operation
fadd.s f3, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fadd.s f31, f15, f20, dyn # perform operation
fadd.s f31, f15, f20, rdn # perform operation
fadd.s f31, f15, f20, rmm # perform operation
fadd.s f31, f15, f20, rne # perform operation
fadd.s f31, f15, f20, rtz # perform operation
fadd.s f31, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fadd.s f11, f22, f2, dyn # perform operation
fadd.s f11, f22, f2, rdn # perform operation
fadd.s f11, f22, f2, rmm # perform operation
fadd.s f11, f22, f2, rne # perform operation
fadd.s f11, f22, f2, rtz # perform operation
fadd.s f11, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fadd.s f6, f25, f21, dyn # perform operation
fadd.s f6, f25, f21, rdn # perform operation
fadd.s f6, f25, f21, rmm # perform operation
fadd.s f6, f25, f21, rne # perform operation
fadd.s f6, f25, f21, rtz # perform operation
fadd.s f6, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fadd.s f11, f4, f18, dyn # perform operation
fadd.s f11, f4, f18, rdn # perform operation
fadd.s f11, f4, f18, rmm # perform operation
fadd.s f11, f4, f18, rne # perform operation
fadd.s f11, f4, f18, rtz # perform operation
fadd.s f11, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f4, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fadd.s f18, f17, f2, dyn # perform operation
fadd.s f18, f17, f2, rdn # perform operation
fadd.s f18, f17, f2, rmm # perform operation
fadd.s f18, f17, f2, rne # perform operation
fadd.s f18, f17, f2, rtz # perform operation
fadd.s f18, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fadd.s f19, f18, f23, dyn # perform operation
fadd.s f19, f18, f23, rdn # perform operation
fadd.s f19, f18, f23, rmm # perform operation
fadd.s f19, f18, f23, rne # perform operation
fadd.s f19, f18, f23, rtz # perform operation
fadd.s f19, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f31, f30, f8, dyn # perform operation
fadd.s f31, f30, f8, rdn # perform operation
fadd.s f31, f30, f8, rmm # perform operation
fadd.s f31, f30, f8, rne # perform operation
fadd.s f31, f30, f8, rtz # perform operation
fadd.s f31, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fadd.s f9, f3, f20, dyn # perform operation
fadd.s f9, f3, f20, rdn # perform operation
fadd.s f9, f3, f20, rmm # perform operation
fadd.s f9, f3, f20, rne # perform operation
fadd.s f9, f3, f20, rtz # perform operation
fadd.s f9, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fadd.s f8, f28, f4, dyn # perform operation
fadd.s f8, f28, f4, rdn # perform operation
fadd.s f8, f28, f4, rmm # perform operation
fadd.s f8, f28, f4, rne # perform operation
fadd.s f8, f28, f4, rtz # perform operation
fadd.s f8, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f28, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f15, f16, f30, dyn # perform operation
fadd.s f15, f16, f30, rdn # perform operation
fadd.s f15, f16, f30, rmm # perform operation
fadd.s f15, f16, f30, rne # perform operation
fadd.s f15, f16, f30, rtz # perform operation
fadd.s f15, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fadd.s f25, f28, f18, dyn # perform operation
fadd.s f25, f28, f18, rdn # perform operation
fadd.s f25, f28, f18, rmm # perform operation
fadd.s f25, f28, f18, rne # perform operation
fadd.s f25, f28, f18, rtz # perform operation
fadd.s f25, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fadd.s f15, f12, f19, dyn # perform operation
fadd.s f15, f12, f19, rdn # perform operation
fadd.s f15, f12, f19, rmm # perform operation
fadd.s f15, f12, f19, rne # perform operation
fadd.s f15, f12, f19, rtz # perform operation
fadd.s f15, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fadd.s f12, f28, f26, dyn # perform operation
fadd.s f12, f28, f26, rdn # perform operation
fadd.s f12, f28, f26, rmm # perform operation
fadd.s f12, f28, f26, rne # perform operation
fadd.s f12, f28, f26, rtz # perform operation
fadd.s f12, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fadd.s f2, f12, f24, dyn # perform operation
fadd.s f2, f12, f24, rdn # perform operation
fadd.s f2, f12, f24, rmm # perform operation
fadd.s f2, f12, f24, rne # perform operation
fadd.s f2, f12, f24, rtz # perform operation
fadd.s f2, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f8, f13, f28, dyn # perform operation
fadd.s f8, f13, f28, rdn # perform operation
fadd.s f8, f13, f28, rmm # perform operation
fadd.s f8, f13, f28, rne # perform operation
fadd.s f8, f13, f28, rtz # perform operation
fadd.s f8, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fadd.s f15, f4, f16, dyn # perform operation
fadd.s f15, f4, f16, rdn # perform operation
fadd.s f15, f4, f16, rmm # perform operation
fadd.s f15, f4, f16, rne # perform operation
fadd.s f15, f4, f16, rtz # perform operation
fadd.s f15, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f4, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fadd.s f20, f30, f26, dyn # perform operation
fadd.s f20, f30, f26, rdn # perform operation
fadd.s f20, f30, f26, rmm # perform operation
fadd.s f20, f30, f26, rne # perform operation
fadd.s f20, f30, f26, rtz # perform operation
fadd.s f20, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fadd.s f12, f29, f3, dyn # perform operation
fadd.s f12, f29, f3, rdn # perform operation
fadd.s f12, f29, f3, rmm # perform operation
fadd.s f12, f29, f3, rne # perform operation
fadd.s f12, f29, f3, rtz # perform operation
fadd.s f12, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fadd.s f21, f15, f22, dyn # perform operation
fadd.s f21, f15, f22, rdn # perform operation
fadd.s f21, f15, f22, rmm # perform operation
fadd.s f21, f15, f22, rne # perform operation
fadd.s f21, f15, f22, rtz # perform operation
fadd.s f21, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fadd.s f28, f8, f15, dyn # perform operation
fadd.s f28, f8, f15, rdn # perform operation
fadd.s f28, f8, f15, rmm # perform operation
fadd.s f28, f8, f15, rne # perform operation
fadd.s f28, f8, f15, rtz # perform operation
fadd.s f28, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f8, f13, f6, dyn # perform operation
fadd.s f8, f13, f6, rdn # perform operation
fadd.s f8, f13, f6, rmm # perform operation
fadd.s f8, f13, f6, rne # perform operation
fadd.s f8, f13, f6, rtz # perform operation
fadd.s f8, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fadd.s f28, f1, f4, dyn # perform operation
fadd.s f28, f1, f4, rdn # perform operation
fadd.s f28, f1, f4, rmm # perform operation
fadd.s f28, f1, f4, rne # perform operation
fadd.s f28, f1, f4, rtz # perform operation
fadd.s f28, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f1, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f10, f7, f18, dyn # perform operation
fadd.s f10, f7, f18, rdn # perform operation
fadd.s f10, f7, f18, rmm # perform operation
fadd.s f10, f7, f18, rne # perform operation
fadd.s f10, f7, f18, rtz # perform operation
fadd.s f10, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fadd.s f31, f10, f18, dyn # perform operation
fadd.s f31, f10, f18, rdn # perform operation
fadd.s f31, f10, f18, rmm # perform operation
fadd.s f31, f10, f18, rne # perform operation
fadd.s f31, f10, f18, rtz # perform operation
fadd.s f31, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fadd.s f19, f1, f11, dyn # perform operation
fadd.s f19, f1, f11, rdn # perform operation
fadd.s f19, f1, f11, rmm # perform operation
fadd.s f19, f1, f11, rne # perform operation
fadd.s f19, f1, f11, rtz # perform operation
fadd.s f19, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fadd.s f6, f13, f31, dyn # perform operation
fadd.s f6, f13, f31, rdn # perform operation
fadd.s f6, f13, f31, rmm # perform operation
fadd.s f6, f13, f31, rne # perform operation
fadd.s f6, f13, f31, rtz # perform operation
fadd.s f6, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fadd.s f31, f7, f25, dyn # perform operation
fadd.s f31, f7, f25, rdn # perform operation
fadd.s f31, f7, f25, rmm # perform operation
fadd.s f31, f7, f25, rne # perform operation
fadd.s f31, f7, f25, rtz # perform operation
fadd.s f31, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fadd.s f23, f31, f9, dyn # perform operation
fadd.s f23, f31, f9, rdn # perform operation
fadd.s f23, f31, f9, rmm # perform operation
fadd.s f23, f31, f9, rne # perform operation
fadd.s f23, f31, f9, rtz # perform operation
fadd.s f23, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fadd.s f6, f1, f27, dyn # perform operation
fadd.s f6, f1, f27, rdn # perform operation
fadd.s f6, f1, f27, rmm # perform operation
fadd.s f6, f1, f27, rne # perform operation
fadd.s f6, f1, f27, rtz # perform operation
fadd.s f6, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fadd.s f31, f2, f28, dyn # perform operation
fadd.s f31, f2, f28, rdn # perform operation
fadd.s f31, f2, f28, rmm # perform operation
fadd.s f31, f2, f28, rne # perform operation
fadd.s f31, f2, f28, rtz # perform operation
fadd.s f31, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fadd.s f7, f15, f23, dyn # perform operation
fadd.s f7, f15, f23, rdn # perform operation
fadd.s f7, f15, f23, rmm # perform operation
fadd.s f7, f15, f23, rne # perform operation
fadd.s f7, f15, f23, rtz # perform operation
fadd.s f7, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fadd.s f3, f9, f29, dyn # perform operation
fadd.s f3, f9, f29, rdn # perform operation
fadd.s f3, f9, f29, rmm # perform operation
fadd.s f3, f9, f29, rne # perform operation
fadd.s f3, f9, f29, rtz # perform operation
fadd.s f3, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f30, f13, f20, dyn # perform operation
fadd.s f30, f13, f20, rdn # perform operation
fadd.s f30, f13, f20, rmm # perform operation
fadd.s f30, f13, f20, rne # perform operation
fadd.s f30, f13, f20, rtz # perform operation
fadd.s f30, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fadd.s f19, f22, f1, dyn # perform operation
fadd.s f19, f22, f1, rdn # perform operation
fadd.s f19, f22, f1, rmm # perform operation
fadd.s f19, f22, f1, rne # perform operation
fadd.s f19, f22, f1, rtz # perform operation
fadd.s f19, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f31, f16, f8, dyn # perform operation
fadd.s f31, f16, f8, rdn # perform operation
fadd.s f31, f16, f8, rmm # perform operation
fadd.s f31, f16, f8, rne # perform operation
fadd.s f31, f16, f8, rtz # perform operation
fadd.s f31, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fadd.s f14, f22, f15, dyn # perform operation
fadd.s f14, f22, f15, rdn # perform operation
fadd.s f14, f22, f15, rmm # perform operation
fadd.s f14, f22, f15, rne # perform operation
fadd.s f14, f22, f15, rtz # perform operation
fadd.s f14, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f25, f2, f18, dyn # perform operation
fadd.s f25, f2, f18, rdn # perform operation
fadd.s f25, f2, f18, rmm # perform operation
fadd.s f25, f2, f18, rne # perform operation
fadd.s f25, f2, f18, rtz # perform operation
fadd.s f25, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fadd.s f1, f29, f10, dyn # perform operation
fadd.s f1, f29, f10, rdn # perform operation
fadd.s f1, f29, f10, rmm # perform operation
fadd.s f1, f29, f10, rne # perform operation
fadd.s f1, f29, f10, rtz # perform operation
fadd.s f1, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fadd.s f12, f18, f24, dyn # perform operation
fadd.s f12, f18, f24, rdn # perform operation
fadd.s f12, f18, f24, rmm # perform operation
fadd.s f12, f18, f24, rne # perform operation
fadd.s f12, f18, f24, rtz # perform operation
fadd.s f12, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fadd.s f4, f30, f18, dyn # perform operation
fadd.s f4, f30, f18, rdn # perform operation
fadd.s f4, f30, f18, rmm # perform operation
fadd.s f4, f30, f18, rne # perform operation
fadd.s f4, f30, f18, rtz # perform operation
fadd.s f4, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fadd.s f7, f17, f20, dyn # perform operation
fadd.s f7, f17, f20, rdn # perform operation
fadd.s f7, f17, f20, rmm # perform operation
fadd.s f7, f17, f20, rne # perform operation
fadd.s f7, f17, f20, rtz # perform operation
fadd.s f7, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fadd.s f28, f16, f24, dyn # perform operation
fadd.s f28, f16, f24, rdn # perform operation
fadd.s f28, f16, f24, rmm # perform operation
fadd.s f28, f16, f24, rne # perform operation
fadd.s f28, f16, f24, rtz # perform operation
fadd.s f28, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fadd.s f3, f31, f14, dyn # perform operation
fadd.s f3, f31, f14, rdn # perform operation
fadd.s f3, f31, f14, rmm # perform operation
fadd.s f3, f31, f14, rne # perform operation
fadd.s f3, f31, f14, rtz # perform operation
fadd.s f3, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fadd.s f13, f12, f3, dyn # perform operation
fadd.s f13, f12, f3, rdn # perform operation
fadd.s f13, f12, f3, rmm # perform operation
fadd.s f13, f12, f3, rne # perform operation
fadd.s f13, f12, f3, rtz # perform operation
fadd.s f13, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f20, f31, f9, dyn # perform operation
fadd.s f20, f31, f9, rdn # perform operation
fadd.s f20, f31, f9, rmm # perform operation
fadd.s f20, f31, f9, rne # perform operation
fadd.s f20, f31, f9, rtz # perform operation
fadd.s f20, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fadd.s f2, f15, f16, dyn # perform operation
fadd.s f2, f15, f16, rdn # perform operation
fadd.s f2, f15, f16, rmm # perform operation
fadd.s f2, f15, f16, rne # perform operation
fadd.s f2, f15, f16, rtz # perform operation
fadd.s f2, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fadd.s f16, f21, f31, dyn # perform operation
fadd.s f16, f21, f31, rdn # perform operation
fadd.s f16, f21, f31, rmm # perform operation
fadd.s f16, f21, f31, rne # perform operation
fadd.s f16, f21, f31, rtz # perform operation
fadd.s f16, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fadd.s f6, f8, f10, dyn # perform operation
fadd.s f6, f8, f10, rdn # perform operation
fadd.s f6, f8, f10, rmm # perform operation
fadd.s f6, f8, f10, rne # perform operation
fadd.s f6, f8, f10, rtz # perform operation
fadd.s f6, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f13, f6, f25, dyn # perform operation
fadd.s f13, f6, f25, rdn # perform operation
fadd.s f13, f6, f25, rmm # perform operation
fadd.s f13, f6, f25, rne # perform operation
fadd.s f13, f6, f25, rtz # perform operation
fadd.s f13, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fadd.s f13, f25, f11, dyn # perform operation
fadd.s f13, f25, f11, rdn # perform operation
fadd.s f13, f25, f11, rmm # perform operation
fadd.s f13, f25, f11, rne # perform operation
fadd.s f13, f25, f11, rtz # perform operation
fadd.s f13, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f2, f23, f21, dyn # perform operation
fadd.s f2, f23, f21, rdn # perform operation
fadd.s f2, f23, f21, rmm # perform operation
fadd.s f2, f23, f21, rne # perform operation
fadd.s f2, f23, f21, rtz # perform operation
fadd.s f2, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fadd.s f21, f31, f9, dyn # perform operation
fadd.s f21, f31, f9, rdn # perform operation
fadd.s f21, f31, f9, rmm # perform operation
fadd.s f21, f31, f9, rne # perform operation
fadd.s f21, f31, f9, rtz # perform operation
fadd.s f21, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fadd.s f29, f16, f7, dyn # perform operation
fadd.s f29, f16, f7, rdn # perform operation
fadd.s f29, f16, f7, rmm # perform operation
fadd.s f29, f16, f7, rne # perform operation
fadd.s f29, f16, f7, rtz # perform operation
fadd.s f29, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f11, f2, f16, dyn # perform operation
fadd.s f11, f2, f16, rdn # perform operation
fadd.s f11, f2, f16, rmm # perform operation
fadd.s f11, f2, f16, rne # perform operation
fadd.s f11, f2, f16, rtz # perform operation
fadd.s f11, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f2, f28, f3, dyn # perform operation
fadd.s f2, f28, f3, rdn # perform operation
fadd.s f2, f28, f3, rmm # perform operation
fadd.s f2, f28, f3, rne # perform operation
fadd.s f2, f28, f3, rtz # perform operation
fadd.s f2, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fadd.s f9, f4, f19, dyn # perform operation
fadd.s f9, f4, f19, rdn # perform operation
fadd.s f9, f4, f19, rmm # perform operation
fadd.s f9, f4, f19, rne # perform operation
fadd.s f9, f4, f19, rtz # perform operation
fadd.s f9, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f4, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fadd.s f23, f29, f7, dyn # perform operation
fadd.s f23, f29, f7, rdn # perform operation
fadd.s f23, f29, f7, rmm # perform operation
fadd.s f23, f29, f7, rne # perform operation
fadd.s f23, f29, f7, rtz # perform operation
fadd.s f23, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fadd.s f16, f12, f1, dyn # perform operation
fadd.s f16, f12, f1, rdn # perform operation
fadd.s f16, f12, f1, rmm # perform operation
fadd.s f16, f12, f1, rne # perform operation
fadd.s f16, f12, f1, rtz # perform operation
fadd.s f16, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fadd.s f1, f12, f9, dyn # perform operation
fadd.s f1, f12, f9, rdn # perform operation
fadd.s f1, f12, f9, rmm # perform operation
fadd.s f1, f12, f9, rne # perform operation
fadd.s f1, f12, f9, rtz # perform operation
fadd.s f1, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fadd.s f13, f3, f2, dyn # perform operation
fadd.s f13, f3, f2, rdn # perform operation
fadd.s f13, f3, f2, rmm # perform operation
fadd.s f13, f3, f2, rne # perform operation
fadd.s f13, f3, f2, rtz # perform operation
fadd.s f13, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fadd.s f3, f7, f21, dyn # perform operation
fadd.s f3, f7, f21, rdn # perform operation
fadd.s f3, f7, f21, rmm # perform operation
fadd.s f3, f7, f21, rne # perform operation
fadd.s f3, f7, f21, rtz # perform operation
fadd.s f3, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fadd.s f8, f16, f1, dyn # perform operation
fadd.s f8, f16, f1, rdn # perform operation
fadd.s f8, f16, f1, rmm # perform operation
fadd.s f8, f16, f1, rne # perform operation
fadd.s f8, f16, f1, rtz # perform operation
fadd.s f8, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fadd.s f3, f17, f15, dyn # perform operation
fadd.s f3, f17, f15, rdn # perform operation
fadd.s f3, f17, f15, rmm # perform operation
fadd.s f3, f17, f15, rne # perform operation
fadd.s f3, f17, f15, rtz # perform operation
fadd.s f3, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fadd.s f25, f30, f7, dyn # perform operation
fadd.s f25, f30, f7, rdn # perform operation
fadd.s f25, f30, f7, rmm # perform operation
fadd.s f25, f30, f7, rne # perform operation
fadd.s f25, f30, f7, rtz # perform operation
fadd.s f25, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f1, f15, f25, dyn # perform operation
fadd.s f1, f15, f25, rdn # perform operation
fadd.s f1, f15, f25, rmm # perform operation
fadd.s f1, f15, f25, rne # perform operation
fadd.s f1, f15, f25, rtz # perform operation
fadd.s f1, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fadd.s f15, f19, f22, dyn # perform operation
fadd.s f15, f19, f22, rdn # perform operation
fadd.s f15, f19, f22, rmm # perform operation
fadd.s f15, f19, f22, rne # perform operation
fadd.s f15, f19, f22, rtz # perform operation
fadd.s f15, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f19, f17, f28, dyn # perform operation
fadd.s f19, f17, f28, rdn # perform operation
fadd.s f19, f17, f28, rmm # perform operation
fadd.s f19, f17, f28, rne # perform operation
fadd.s f19, f17, f28, rtz # perform operation
fadd.s f19, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fadd.s f22, f23, f17, dyn # perform operation
fadd.s f22, f23, f17, rdn # perform operation
fadd.s f22, f23, f17, rmm # perform operation
fadd.s f22, f23, f17, rne # perform operation
fadd.s f22, f23, f17, rtz # perform operation
fadd.s f22, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fadd.s f11, f27, f14, dyn # perform operation
fadd.s f11, f27, f14, rdn # perform operation
fadd.s f11, f27, f14, rmm # perform operation
fadd.s f11, f27, f14, rne # perform operation
fadd.s f11, f27, f14, rtz # perform operation
fadd.s f11, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fadd.s f21, f26, f9, dyn # perform operation
fadd.s f21, f26, f9, rdn # perform operation
fadd.s f21, f26, f9, rmm # perform operation
fadd.s f21, f26, f9, rne # perform operation
fadd.s f21, f26, f9, rtz # perform operation
fadd.s f21, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fadd.s f24, f10, f8, dyn # perform operation
fadd.s f24, f10, f8, rdn # perform operation
fadd.s f24, f10, f8, rmm # perform operation
fadd.s f24, f10, f8, rne # perform operation
fadd.s f24, f10, f8, rtz # perform operation
fadd.s f24, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fadd.s f29, f14, f3, dyn # perform operation
fadd.s f29, f14, f3, rdn # perform operation
fadd.s f29, f14, f3, rmm # perform operation
fadd.s f29, f14, f3, rne # perform operation
fadd.s f29, f14, f3, rtz # perform operation
fadd.s f29, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f14, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fadd.s f1, f20, f12, dyn # perform operation
fadd.s f1, f20, f12, rdn # perform operation
fadd.s f1, f20, f12, rmm # perform operation
fadd.s f1, f20, f12, rne # perform operation
fadd.s f1, f20, f12, rtz # perform operation
fadd.s f1, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fadd.s f8, f18, f6, dyn # perform operation
fadd.s f8, f18, f6, rdn # perform operation
fadd.s f8, f18, f6, rmm # perform operation
fadd.s f8, f18, f6, rne # perform operation
fadd.s f8, f18, f6, rtz # perform operation
fadd.s f8, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fadd.s f19, f29, f21, dyn # perform operation
fadd.s f19, f29, f21, rdn # perform operation
fadd.s f19, f29, f21, rmm # perform operation
fadd.s f19, f29, f21, rne # perform operation
fadd.s f19, f29, f21, rtz # perform operation
fadd.s f19, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fadd.s f12, f3, f26, dyn # perform operation
fadd.s f12, f3, f26, rdn # perform operation
fadd.s f12, f3, f26, rmm # perform operation
fadd.s f12, f3, f26, rne # perform operation
fadd.s f12, f3, f26, rtz # perform operation
fadd.s f12, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fadd.s f26, f4, f15, dyn # perform operation
fadd.s f26, f4, f15, rdn # perform operation
fadd.s f26, f4, f15, rmm # perform operation
fadd.s f26, f4, f15, rne # perform operation
fadd.s f26, f4, f15, rtz # perform operation
fadd.s f26, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f4, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fadd.s f12, f10, f17, dyn # perform operation
fadd.s f12, f10, f17, rdn # perform operation
fadd.s f12, f10, f17, rmm # perform operation
fadd.s f12, f10, f17, rne # perform operation
fadd.s f12, f10, f17, rtz # perform operation
fadd.s f12, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fadd.s f26, f24, f25, dyn # perform operation
fadd.s f26, f24, f25, rdn # perform operation
fadd.s f26, f24, f25, rmm # perform operation
fadd.s f26, f24, f25, rne # perform operation
fadd.s f26, f24, f25, rtz # perform operation
fadd.s f26, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fadd.s f23, f24, f7, dyn # perform operation
fadd.s f23, f24, f7, rdn # perform operation
fadd.s f23, f24, f7, rmm # perform operation
fadd.s f23, f24, f7, rne # perform operation
fadd.s f23, f24, f7, rtz # perform operation
fadd.s f23, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fadd.s f21, f23, f24, dyn # perform operation
fadd.s f21, f23, f24, rdn # perform operation
fadd.s f21, f23, f24, rmm # perform operation
fadd.s f21, f23, f24, rne # perform operation
fadd.s f21, f23, f24, rtz # perform operation
fadd.s f21, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fadd.s f28, f21, f17, dyn # perform operation
fadd.s f28, f21, f17, rdn # perform operation
fadd.s f28, f21, f17, rmm # perform operation
fadd.s f28, f21, f17, rne # perform operation
fadd.s f28, f21, f17, rtz # perform operation
fadd.s f28, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fadd.s f27, f4, f8, dyn # perform operation
fadd.s f27, f4, f8, rdn # perform operation
fadd.s f27, f4, f8, rmm # perform operation
fadd.s f27, f4, f8, rne # perform operation
fadd.s f27, f4, f8, rtz # perform operation
fadd.s f27, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fadd.s f19, f22, f6, dyn # perform operation
fadd.s f19, f22, f6, rdn # perform operation
fadd.s f19, f22, f6, rmm # perform operation
fadd.s f19, f22, f6, rne # perform operation
fadd.s f19, f22, f6, rtz # perform operation
fadd.s f19, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fadd.s f3, f21, f20, dyn # perform operation
fadd.s f3, f21, f20, rdn # perform operation
fadd.s f3, f21, f20, rmm # perform operation
fadd.s f3, f21, f20, rne # perform operation
fadd.s f3, f21, f20, rtz # perform operation
fadd.s f3, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fadd.s f3, f20, f7, dyn # perform operation
fadd.s f3, f20, f7, rdn # perform operation
fadd.s f3, f20, f7, rmm # perform operation
fadd.s f3, f20, f7, rne # perform operation
fadd.s f3, f20, f7, rtz # perform operation
fadd.s f3, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fadd.s f29, f31, f30, dyn # perform operation
fadd.s f29, f31, f30, rdn # perform operation
fadd.s f29, f31, f30, rmm # perform operation
fadd.s f29, f31, f30, rne # perform operation
fadd.s f29, f31, f30, rtz # perform operation
fadd.s f29, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fadd.s f29, f2, f23, dyn # perform operation
fadd.s f29, f2, f23, rdn # perform operation
fadd.s f29, f2, f23, rmm # perform operation
fadd.s f29, f2, f23, rne # perform operation
fadd.s f29, f2, f23, rtz # perform operation
fadd.s f29, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fadd.s f25, f1, f22, dyn # perform operation
fadd.s f25, f1, f22, rdn # perform operation
fadd.s f25, f1, f22, rmm # perform operation
fadd.s f25, f1, f22, rne # perform operation
fadd.s f25, f1, f22, rtz # perform operation
fadd.s f25, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fadd.s f7, f11, f3, dyn # perform operation
fadd.s f7, f11, f3, rdn # perform operation
fadd.s f7, f11, f3, rmm # perform operation
fadd.s f7, f11, f3, rne # perform operation
fadd.s f7, f11, f3, rtz # perform operation
fadd.s f7, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fadd.s f7, f27, f15, dyn # perform operation
fadd.s f7, f27, f15, rdn # perform operation
fadd.s f7, f27, f15, rmm # perform operation
fadd.s f7, f27, f15, rne # perform operation
fadd.s f7, f27, f15, rtz # perform operation
fadd.s f7, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fadd.s f10, f22, f27, dyn # perform operation
fadd.s f10, f22, f27, rdn # perform operation
fadd.s f10, f22, f27, rmm # perform operation
fadd.s f10, f22, f27, rne # perform operation
fadd.s f10, f22, f27, rtz # perform operation
fadd.s f10, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fadd.s f2, f22, f20, dyn # perform operation
fadd.s f2, f22, f20, rdn # perform operation
fadd.s f2, f22, f20, rmm # perform operation
fadd.s f2, f22, f20, rne # perform operation
fadd.s f2, f22, f20, rtz # perform operation
fadd.s f2, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fadd.s f16, f23, f8, dyn # perform operation
fadd.s f16, f23, f8, rdn # perform operation
fadd.s f16, f23, f8, rmm # perform operation
fadd.s f16, f23, f8, rne # perform operation
fadd.s f16, f23, f8, rtz # perform operation
fadd.s f16, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fadd.s f10, f4, f27, dyn # perform operation
fadd.s f10, f4, f27, rdn # perform operation
fadd.s f10, f4, f27, rmm # perform operation
fadd.s f10, f4, f27, rne # perform operation
fadd.s f10, f4, f27, rtz # perform operation
fadd.s f10, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f4, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fadd.s f30, f18, f25, dyn # perform operation
fadd.s f30, f18, f25, rdn # perform operation
fadd.s f30, f18, f25, rmm # perform operation
fadd.s f30, f18, f25, rne # perform operation
fadd.s f30, f18, f25, rtz # perform operation
fadd.s f30, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fadd.s f27, f21, f14, dyn # perform operation
fadd.s f27, f21, f14, rdn # perform operation
fadd.s f27, f21, f14, rmm # perform operation
fadd.s f27, f21, f14, rne # perform operation
fadd.s f27, f21, f14, rtz # perform operation
fadd.s f27, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f22, f7, f3, dyn # perform operation
fadd.s f22, f7, f3, rdn # perform operation
fadd.s f22, f7, f3, rmm # perform operation
fadd.s f22, f7, f3, rne # perform operation
fadd.s f22, f7, f3, rtz # perform operation
fadd.s f22, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f9, f27, f10, dyn # perform operation
fadd.s f9, f27, f10, rdn # perform operation
fadd.s f9, f27, f10, rmm # perform operation
fadd.s f9, f27, f10, rne # perform operation
fadd.s f9, f27, f10, rtz # perform operation
fadd.s f9, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fadd.s f25, f28, f23, dyn # perform operation
fadd.s f25, f28, f23, rdn # perform operation
fadd.s f25, f28, f23, rmm # perform operation
fadd.s f25, f28, f23, rne # perform operation
fadd.s f25, f28, f23, rtz # perform operation
fadd.s f25, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fadd.s f26, f3, f27, dyn # perform operation
fadd.s f26, f3, f27, rdn # perform operation
fadd.s f26, f3, f27, rmm # perform operation
fadd.s f26, f3, f27, rne # perform operation
fadd.s f26, f3, f27, rtz # perform operation
fadd.s f26, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fadd.s f24, f31, f29, dyn # perform operation
fadd.s f24, f31, f29, rdn # perform operation
fadd.s f24, f31, f29, rmm # perform operation
fadd.s f24, f31, f29, rne # perform operation
fadd.s f24, f31, f29, rtz # perform operation
fadd.s f24, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fadd.s f25, f1, f9, dyn # perform operation
fadd.s f25, f1, f9, rdn # perform operation
fadd.s f25, f1, f9, rmm # perform operation
fadd.s f25, f1, f9, rne # perform operation
fadd.s f25, f1, f9, rtz # perform operation
fadd.s f25, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fadd.s f15, f11, f21, dyn # perform operation
fadd.s f15, f11, f21, rdn # perform operation
fadd.s f15, f11, f21, rmm # perform operation
fadd.s f15, f11, f21, rne # perform operation
fadd.s f15, f11, f21, rtz # perform operation
fadd.s f15, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fadd.s f7, f13, f11, dyn # perform operation
fadd.s f7, f13, f11, rdn # perform operation
fadd.s f7, f13, f11, rmm # perform operation
fadd.s f7, f13, f11, rne # perform operation
fadd.s f7, f13, f11, rtz # perform operation
fadd.s f7, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fadd.s f9, f29, f26, dyn # perform operation
fadd.s f9, f29, f26, rdn # perform operation
fadd.s f9, f29, f26, rmm # perform operation
fadd.s f9, f29, f26, rne # perform operation
fadd.s f9, f29, f26, rtz # perform operation
fadd.s f9, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fadd.s f25, f3, f20, dyn # perform operation
fadd.s f25, f3, f20, rdn # perform operation
fadd.s f25, f3, f20, rmm # perform operation
fadd.s f25, f3, f20, rne # perform operation
fadd.s f25, f3, f20, rtz # perform operation
fadd.s f25, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fadd.s f4, f20, f23, dyn # perform operation
fadd.s f4, f20, f23, rdn # perform operation
fadd.s f4, f20, f23, rmm # perform operation
fadd.s f4, f20, f23, rne # perform operation
fadd.s f4, f20, f23, rtz # perform operation
fadd.s f4, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fadd.s f26, f29, f24, dyn # perform operation
fadd.s f26, f29, f24, rdn # perform operation
fadd.s f26, f29, f24, rmm # perform operation
fadd.s f26, f29, f24, rne # perform operation
fadd.s f26, f29, f24, rtz # perform operation
fadd.s f26, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fadd.s f7, f2, f9, dyn # perform operation
fadd.s f7, f2, f9, rdn # perform operation
fadd.s f7, f2, f9, rmm # perform operation
fadd.s f7, f2, f9, rne # perform operation
fadd.s f7, f2, f9, rtz # perform operation
fadd.s f7, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fadd.s f29, f1, f10, dyn # perform operation
fadd.s f29, f1, f10, rdn # perform operation
fadd.s f29, f1, f10, rmm # perform operation
fadd.s f29, f1, f10, rne # perform operation
fadd.s f29, f1, f10, rtz # perform operation
fadd.s f29, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fadd.s f26, f13, f10, dyn # perform operation
fadd.s f26, f13, f10, rdn # perform operation
fadd.s f26, f13, f10, rmm # perform operation
fadd.s f26, f13, f10, rne # perform operation
fadd.s f26, f13, f10, rtz # perform operation
fadd.s f26, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f16, f13, f30, dyn # perform operation
fadd.s f16, f13, f30, rdn # perform operation
fadd.s f16, f13, f30, rmm # perform operation
fadd.s f16, f13, f30, rne # perform operation
fadd.s f16, f13, f30, rtz # perform operation
fadd.s f16, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fadd.s f8, f6, f9, dyn # perform operation
fadd.s f8, f6, f9, rdn # perform operation
fadd.s f8, f6, f9, rmm # perform operation
fadd.s f8, f6, f9, rne # perform operation
fadd.s f8, f6, f9, rtz # perform operation
fadd.s f8, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fadd.s f28, f6, f29, dyn # perform operation
fadd.s f28, f6, f29, rdn # perform operation
fadd.s f28, f6, f29, rmm # perform operation
fadd.s f28, f6, f29, rne # perform operation
fadd.s f28, f6, f29, rtz # perform operation
fadd.s f28, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fadd.s f31, f19, f7, dyn # perform operation
fadd.s f31, f19, f7, rdn # perform operation
fadd.s f31, f19, f7, rmm # perform operation
fadd.s f31, f19, f7, rne # perform operation
fadd.s f31, f19, f7, rtz # perform operation
fadd.s f31, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fadd.s f14, f29, f15, dyn # perform operation
fadd.s f14, f29, f15, rdn # perform operation
fadd.s f14, f29, f15, rmm # perform operation
fadd.s f14, f29, f15, rne # perform operation
fadd.s f14, f29, f15, rtz # perform operation
fadd.s f14, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fadd.s f10, f11, f23, dyn # perform operation
fadd.s f10, f11, f23, rdn # perform operation
fadd.s f10, f11, f23, rmm # perform operation
fadd.s f10, f11, f23, rne # perform operation
fadd.s f10, f11, f23, rtz # perform operation
fadd.s f10, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fadd.s f31, f11, f28, dyn # perform operation
fadd.s f31, f11, f28, rdn # perform operation
fadd.s f31, f11, f28, rmm # perform operation
fadd.s f31, f11, f28, rne # perform operation
fadd.s f31, f11, f28, rtz # perform operation
fadd.s f31, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fadd.s f28, f31, f13, dyn # perform operation
fadd.s f28, f31, f13, rdn # perform operation
fadd.s f28, f31, f13, rmm # perform operation
fadd.s f28, f31, f13, rne # perform operation
fadd.s f28, f31, f13, rtz # perform operation
fadd.s f28, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fadd.s f30, f1, f17, dyn # perform operation
fadd.s f30, f1, f17, rdn # perform operation
fadd.s f30, f1, f17, rmm # perform operation
fadd.s f30, f1, f17, rne # perform operation
fadd.s f30, f1, f17, rtz # perform operation
fadd.s f30, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fadd.s f2, f9, f22, dyn # perform operation
fadd.s f2, f9, f22, rdn # perform operation
fadd.s f2, f9, f22, rmm # perform operation
fadd.s f2, f9, f22, rne # perform operation
fadd.s f2, f9, f22, rtz # perform operation
fadd.s f2, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fadd.s f19, f17, f30, dyn # perform operation
fadd.s f19, f17, f30, rdn # perform operation
fadd.s f19, f17, f30, rmm # perform operation
fadd.s f19, f17, f30, rne # perform operation
fadd.s f19, f17, f30, rtz # perform operation
fadd.s f19, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fadd.s f7, f10, f15, dyn # perform operation
fadd.s f7, f10, f15, rdn # perform operation
fadd.s f7, f10, f15, rmm # perform operation
fadd.s f7, f10, f15, rne # perform operation
fadd.s f7, f10, f15, rtz # perform operation
fadd.s f7, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fadd.s f16, f30, f4, dyn # perform operation
fadd.s f16, f30, f4, rdn # perform operation
fadd.s f16, f30, f4, rmm # perform operation
fadd.s f16, f30, f4, rne # perform operation
fadd.s f16, f30, f4, rtz # perform operation
fadd.s f16, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f30, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f28, f8, f3, dyn # perform operation
fadd.s f28, f8, f3, rdn # perform operation
fadd.s f28, f8, f3, rmm # perform operation
fadd.s f28, f8, f3, rne # perform operation
fadd.s f28, f8, f3, rtz # perform operation
fadd.s f28, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f27, f9, f30, dyn # perform operation
fadd.s f27, f9, f30, rdn # perform operation
fadd.s f27, f9, f30, rmm # perform operation
fadd.s f27, f9, f30, rne # perform operation
fadd.s f27, f9, f30, rtz # perform operation
fadd.s f27, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fadd.s f19, f17, f26, dyn # perform operation
fadd.s f19, f17, f26, rdn # perform operation
fadd.s f19, f17, f26, rmm # perform operation
fadd.s f19, f17, f26, rne # perform operation
fadd.s f19, f17, f26, rtz # perform operation
fadd.s f19, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fadd.s f30, f28, f22, dyn # perform operation
fadd.s f30, f28, f22, rdn # perform operation
fadd.s f30, f28, f22, rmm # perform operation
fadd.s f30, f28, f22, rne # perform operation
fadd.s f30, f28, f22, rtz # perform operation
fadd.s f30, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fadd.s f1, f27, f20, dyn # perform operation
fadd.s f1, f27, f20, rdn # perform operation
fadd.s f1, f27, f20, rmm # perform operation
fadd.s f1, f27, f20, rne # perform operation
fadd.s f1, f27, f20, rtz # perform operation
fadd.s f1, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fadd.s f11, f15, f14, dyn # perform operation
fadd.s f11, f15, f14, rdn # perform operation
fadd.s f11, f15, f14, rmm # perform operation
fadd.s f11, f15, f14, rne # perform operation
fadd.s f11, f15, f14, rtz # perform operation
fadd.s f11, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fadd.s f2, f7, f3, dyn # perform operation
fadd.s f2, f7, f3, rdn # perform operation
fadd.s f2, f7, f3, rmm # perform operation
fadd.s f2, f7, f3, rne # perform operation
fadd.s f2, f7, f3, rtz # perform operation
fadd.s f2, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fadd.s f2, f22, f4, dyn # perform operation
fadd.s f2, f22, f4, rdn # perform operation
fadd.s f2, f22, f4, rmm # perform operation
fadd.s f2, f22, f4, rne # perform operation
fadd.s f2, f22, f4, rtz # perform operation
fadd.s f2, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f22, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fadd.s f29, f8, f22, dyn # perform operation
fadd.s f29, f8, f22, rdn # perform operation
fadd.s f29, f8, f22, rmm # perform operation
fadd.s f29, f8, f22, rne # perform operation
fadd.s f29, f8, f22, rtz # perform operation
fadd.s f29, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f25, f8, f18, dyn # perform operation
fadd.s f25, f8, f18, rdn # perform operation
fadd.s f25, f8, f18, rmm # perform operation
fadd.s f25, f8, f18, rne # perform operation
fadd.s f25, f8, f18, rtz # perform operation
fadd.s f25, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fadd.s f17, f31, f14, dyn # perform operation
fadd.s f17, f31, f14, rdn # perform operation
fadd.s f17, f31, f14, rmm # perform operation
fadd.s f17, f31, f14, rne # perform operation
fadd.s f17, f31, f14, rtz # perform operation
fadd.s f17, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fadd.s f11, f24, f13, dyn # perform operation
fadd.s f11, f24, f13, rdn # perform operation
fadd.s f11, f24, f13, rmm # perform operation
fadd.s f11, f24, f13, rne # perform operation
fadd.s f11, f24, f13, rtz # perform operation
fadd.s f11, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fadd.s f4, f26, f18, dyn # perform operation
fadd.s f4, f26, f18, rdn # perform operation
fadd.s f4, f26, f18, rmm # perform operation
fadd.s f4, f26, f18, rne # perform operation
fadd.s f4, f26, f18, rtz # perform operation
fadd.s f4, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f27, f12, f3, dyn # perform operation
fadd.s f27, f12, f3, rdn # perform operation
fadd.s f27, f12, f3, rmm # perform operation
fadd.s f27, f12, f3, rne # perform operation
fadd.s f27, f12, f3, rtz # perform operation
fadd.s f27, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fadd.s f16, f15, f30, dyn # perform operation
fadd.s f16, f15, f30, rdn # perform operation
fadd.s f16, f15, f30, rmm # perform operation
fadd.s f16, f15, f30, rne # perform operation
fadd.s f16, f15, f30, rtz # perform operation
fadd.s f16, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fadd.s f18, f31, f20, dyn # perform operation
fadd.s f18, f31, f20, rdn # perform operation
fadd.s f18, f31, f20, rmm # perform operation
fadd.s f18, f31, f20, rne # perform operation
fadd.s f18, f31, f20, rtz # perform operation
fadd.s f18, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fadd.s f4, f28, f30, dyn # perform operation
fadd.s f4, f28, f30, rdn # perform operation
fadd.s f4, f28, f30, rmm # perform operation
fadd.s f4, f28, f30, rne # perform operation
fadd.s f4, f28, f30, rtz # perform operation
fadd.s f4, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fadd.s f11, f20, f10, dyn # perform operation
fadd.s f11, f20, f10, rdn # perform operation
fadd.s f11, f20, f10, rmm # perform operation
fadd.s f11, f20, f10, rne # perform operation
fadd.s f11, f20, f10, rtz # perform operation
fadd.s f11, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fadd.s f2, f17, f28, dyn # perform operation
fadd.s f2, f17, f28, rdn # perform operation
fadd.s f2, f17, f28, rmm # perform operation
fadd.s f2, f17, f28, rne # perform operation
fadd.s f2, f17, f28, rtz # perform operation
fadd.s f2, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fadd.s f14, f20, f29, dyn # perform operation
fadd.s f14, f20, f29, rdn # perform operation
fadd.s f14, f20, f29, rmm # perform operation
fadd.s f14, f20, f29, rne # perform operation
fadd.s f14, f20, f29, rtz # perform operation
fadd.s f14, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fadd.s f15, f10, f23, dyn # perform operation
fadd.s f15, f10, f23, rdn # perform operation
fadd.s f15, f10, f23, rmm # perform operation
fadd.s f15, f10, f23, rne # perform operation
fadd.s f15, f10, f23, rtz # perform operation
fadd.s f15, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fadd.s f31, f6, f23, dyn # perform operation
fadd.s f31, f6, f23, rdn # perform operation
fadd.s f31, f6, f23, rmm # perform operation
fadd.s f31, f6, f23, rne # perform operation
fadd.s f31, f6, f23, rtz # perform operation
fadd.s f31, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fadd.s f7, f12, f6, dyn # perform operation
fadd.s f7, f12, f6, rdn # perform operation
fadd.s f7, f12, f6, rmm # perform operation
fadd.s f7, f12, f6, rne # perform operation
fadd.s f7, f12, f6, rtz # perform operation
fadd.s f7, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f12, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fadd.s f15, f9, f6, dyn # perform operation
fadd.s f15, f9, f6, rdn # perform operation
fadd.s f15, f9, f6, rmm # perform operation
fadd.s f15, f9, f6, rne # perform operation
fadd.s f15, f9, f6, rtz # perform operation
fadd.s f15, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fadd.s f16, f27, f20, dyn # perform operation
fadd.s f16, f27, f20, rdn # perform operation
fadd.s f16, f27, f20, rmm # perform operation
fadd.s f16, f27, f20, rne # perform operation
fadd.s f16, f27, f20, rtz # perform operation
fadd.s f16, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f27, f21, f20, dyn # perform operation
fadd.s f27, f21, f20, rdn # perform operation
fadd.s f27, f21, f20, rmm # perform operation
fadd.s f27, f21, f20, rne # perform operation
fadd.s f27, f21, f20, rtz # perform operation
fadd.s f27, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fadd.s f19, f13, f1, dyn # perform operation
fadd.s f19, f13, f1, rdn # perform operation
fadd.s f19, f13, f1, rmm # perform operation
fadd.s f19, f13, f1, rne # perform operation
fadd.s f19, f13, f1, rtz # perform operation
fadd.s f19, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fadd.s f16, f18, f17, dyn # perform operation
fadd.s f16, f18, f17, rdn # perform operation
fadd.s f16, f18, f17, rmm # perform operation
fadd.s f16, f18, f17, rne # perform operation
fadd.s f16, f18, f17, rtz # perform operation
fadd.s f16, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fadd.s f29, f6, f1, dyn # perform operation
fadd.s f29, f6, f1, rdn # perform operation
fadd.s f29, f6, f1, rmm # perform operation
fadd.s f29, f6, f1, rne # perform operation
fadd.s f29, f6, f1, rtz # perform operation
fadd.s f29, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f29, f23, f10, dyn # perform operation
fadd.s f29, f23, f10, rdn # perform operation
fadd.s f29, f23, f10, rmm # perform operation
fadd.s f29, f23, f10, rne # perform operation
fadd.s f29, f23, f10, rtz # perform operation
fadd.s f29, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f31, f4, f7, dyn # perform operation
fadd.s f31, f4, f7, rdn # perform operation
fadd.s f31, f4, f7, rmm # perform operation
fadd.s f31, f4, f7, rne # perform operation
fadd.s f31, f4, f7, rtz # perform operation
fadd.s f31, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f4, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fadd.s f30, f9, f29, dyn # perform operation
fadd.s f30, f9, f29, rdn # perform operation
fadd.s f30, f9, f29, rmm # perform operation
fadd.s f30, f9, f29, rne # perform operation
fadd.s f30, f9, f29, rtz # perform operation
fadd.s f30, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fadd.s f29, f24, f19, dyn # perform operation
fadd.s f29, f24, f19, rdn # perform operation
fadd.s f29, f24, f19, rmm # perform operation
fadd.s f29, f24, f19, rne # perform operation
fadd.s f29, f24, f19, rtz # perform operation
fadd.s f29, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fadd.s f16, f19, f11, dyn # perform operation
fadd.s f16, f19, f11, rdn # perform operation
fadd.s f16, f19, f11, rmm # perform operation
fadd.s f16, f19, f11, rne # perform operation
fadd.s f16, f19, f11, rtz # perform operation
fadd.s f16, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fadd.s f11, f24, f17, dyn # perform operation
fadd.s f11, f24, f17, rdn # perform operation
fadd.s f11, f24, f17, rmm # perform operation
fadd.s f11, f24, f17, rne # perform operation
fadd.s f11, f24, f17, rtz # perform operation
fadd.s f11, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fadd.s f28, f25, f30, dyn # perform operation
fadd.s f28, f25, f30, rdn # perform operation
fadd.s f28, f25, f30, rmm # perform operation
fadd.s f28, f25, f30, rne # perform operation
fadd.s f28, f25, f30, rtz # perform operation
fadd.s f28, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fadd.s f25, f8, f28, dyn # perform operation
fadd.s f25, f8, f28, rdn # perform operation
fadd.s f25, f8, f28, rmm # perform operation
fadd.s f25, f8, f28, rne # perform operation
fadd.s f25, f8, f28, rtz # perform operation
fadd.s f25, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fadd.s f6, f27, f10, dyn # perform operation
fadd.s f6, f27, f10, rdn # perform operation
fadd.s f6, f27, f10, rmm # perform operation
fadd.s f6, f27, f10, rne # perform operation
fadd.s f6, f27, f10, rtz # perform operation
fadd.s f6, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fadd.s f23, f7, f28, dyn # perform operation
fadd.s f23, f7, f28, rdn # perform operation
fadd.s f23, f7, f28, rmm # perform operation
fadd.s f23, f7, f28, rne # perform operation
fadd.s f23, f7, f28, rtz # perform operation
fadd.s f23, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fadd.s f10, f12, f27, dyn # perform operation
fadd.s f10, f12, f27, rdn # perform operation
fadd.s f10, f12, f27, rmm # perform operation
fadd.s f10, f12, f27, rne # perform operation
fadd.s f10, f12, f27, rtz # perform operation
fadd.s f10, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fadd.s f30, f7, f17, dyn # perform operation
fadd.s f30, f7, f17, rdn # perform operation
fadd.s f30, f7, f17, rmm # perform operation
fadd.s f30, f7, f17, rne # perform operation
fadd.s f30, f7, f17, rtz # perform operation
fadd.s f30, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fadd.s f25, f8, f30, dyn # perform operation
fadd.s f25, f8, f30, rdn # perform operation
fadd.s f25, f8, f30, rmm # perform operation
fadd.s f25, f8, f30, rne # perform operation
fadd.s f25, f8, f30, rtz # perform operation
fadd.s f25, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fadd.s f14, f2, f30, dyn # perform operation
fadd.s f14, f2, f30, rdn # perform operation
fadd.s f14, f2, f30, rmm # perform operation
fadd.s f14, f2, f30, rne # perform operation
fadd.s f14, f2, f30, rtz # perform operation
fadd.s f14, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fadd.s f14, f24, f19, dyn # perform operation
fadd.s f14, f24, f19, rdn # perform operation
fadd.s f14, f24, f19, rmm # perform operation
fadd.s f14, f24, f19, rne # perform operation
fadd.s f14, f24, f19, rtz # perform operation
fadd.s f14, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fadd.s f16, f10, f25, dyn # perform operation
fadd.s f16, f10, f25, rdn # perform operation
fadd.s f16, f10, f25, rmm # perform operation
fadd.s f16, f10, f25, rne # perform operation
fadd.s f16, f10, f25, rtz # perform operation
fadd.s f16, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
fadd.s f27, f12, f17, dyn # perform operation
fadd.s f27, f12, f17, rdn # perform operation
fadd.s f27, f12, f17, rmm # perform operation
fadd.s f27, f12, f17, rne # perform operation
fadd.s f27, f12, f17, rtz # perform operation
fadd.s f27, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fadd.s f24, f18, f6, dyn # perform operation
fadd.s f24, f18, f6, rdn # perform operation
fadd.s f24, f18, f6, rmm # perform operation
fadd.s f24, f18, f6, rne # perform operation
fadd.s f24, f18, f6, rtz # perform operation
fadd.s f24, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fadd.s f24, f1, f9, dyn # perform operation
fadd.s f24, f1, f9, rdn # perform operation
fadd.s f24, f1, f9, rmm # perform operation
fadd.s f24, f1, f9, rne # perform operation
fadd.s f24, f1, f9, rtz # perform operation
fadd.s f24, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fadd.s f13, f11, f28, dyn # perform operation
fadd.s f13, f11, f28, rdn # perform operation
fadd.s f13, f11, f28, rmm # perform operation
fadd.s f13, f11, f28, rne # perform operation
fadd.s f13, f11, f28, rtz # perform operation
fadd.s f13, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fadd.s f18, f11, f31, dyn # perform operation
fadd.s f18, f11, f31, rdn # perform operation
fadd.s f18, f11, f31, rmm # perform operation
fadd.s f18, f11, f31, rne # perform operation
fadd.s f18, f11, f31, rtz # perform operation
fadd.s f18, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f16, f17, f29, dyn # perform operation
fadd.s f16, f17, f29, rdn # perform operation
fadd.s f16, f17, f29, rmm # perform operation
fadd.s f16, f17, f29, rne # perform operation
fadd.s f16, f17, f29, rtz # perform operation
fadd.s f16, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f24, f15, f8, dyn # perform operation
fadd.s f24, f15, f8, rdn # perform operation
fadd.s f24, f15, f8, rmm # perform operation
fadd.s f24, f15, f8, rne # perform operation
fadd.s f24, f15, f8, rtz # perform operation
fadd.s f24, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fadd.s f30, f18, f25, dyn # perform operation
fadd.s f30, f18, f25, rdn # perform operation
fadd.s f30, f18, f25, rmm # perform operation
fadd.s f30, f18, f25, rne # perform operation
fadd.s f30, f18, f25, rtz # perform operation
fadd.s f30, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fadd.s f13, f28, f19, dyn # perform operation
fadd.s f13, f28, f19, rdn # perform operation
fadd.s f13, f28, f19, rmm # perform operation
fadd.s f13, f28, f19, rne # perform operation
fadd.s f13, f28, f19, rtz # perform operation
fadd.s f13, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fadd.s f1, f16, f3, dyn # perform operation
fadd.s f1, f16, f3, rdn # perform operation
fadd.s f1, f16, f3, rmm # perform operation
fadd.s f1, f16, f3, rne # perform operation
fadd.s f1, f16, f3, rtz # perform operation
fadd.s f1, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fadd.s f30, f17, f13, dyn # perform operation
fadd.s f30, f17, f13, rdn # perform operation
fadd.s f30, f17, f13, rmm # perform operation
fadd.s f30, f17, f13, rne # perform operation
fadd.s f30, f17, f13, rtz # perform operation
fadd.s f30, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fadd.s f7, f2, f27, dyn # perform operation
fadd.s f7, f2, f27, rdn # perform operation
fadd.s f7, f2, f27, rmm # perform operation
fadd.s f7, f2, f27, rne # perform operation
fadd.s f7, f2, f27, rtz # perform operation
fadd.s f7, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fadd.s f3, f19, f31, dyn # perform operation
fadd.s f3, f19, f31, rdn # perform operation
fadd.s f3, f19, f31, rmm # perform operation
fadd.s f3, f19, f31, rne # perform operation
fadd.s f3, f19, f31, rtz # perform operation
fadd.s f3, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fadd.s f13, f25, f28, dyn # perform operation
fadd.s f13, f25, f28, rdn # perform operation
fadd.s f13, f25, f28, rmm # perform operation
fadd.s f13, f25, f28, rne # perform operation
fadd.s f13, f25, f28, rtz # perform operation
fadd.s f13, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fadd.s f15, f30, f7, dyn # perform operation
fadd.s f15, f30, f7, rdn # perform operation
fadd.s f15, f30, f7, rmm # perform operation
fadd.s f15, f30, f7, rne # perform operation
fadd.s f15, f30, f7, rtz # perform operation
fadd.s f15, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fadd.s f14, f20, f31, dyn # perform operation
fadd.s f14, f20, f31, rdn # perform operation
fadd.s f14, f20, f31, rmm # perform operation
fadd.s f14, f20, f31, rne # perform operation
fadd.s f14, f20, f31, rtz # perform operation
fadd.s f14, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fadd.s f30, f16, f17, dyn # perform operation
fadd.s f30, f16, f17, rdn # perform operation
fadd.s f30, f16, f17, rmm # perform operation
fadd.s f30, f16, f17, rne # perform operation
fadd.s f30, f16, f17, rtz # perform operation
fadd.s f30, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fadd.s f29, f6, f3, dyn # perform operation
fadd.s f29, f6, f3, rdn # perform operation
fadd.s f29, f6, f3, rmm # perform operation
fadd.s f29, f6, f3, rne # perform operation
fadd.s f29, f6, f3, rtz # perform operation
fadd.s f29, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fadd.s f17, f18, f2, dyn # perform operation
fadd.s f17, f18, f2, rdn # perform operation
fadd.s f17, f18, f2, rmm # perform operation
fadd.s f17, f18, f2, rne # perform operation
fadd.s f17, f18, f2, rtz # perform operation
fadd.s f17, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fadd.s f16, f9, f17, dyn # perform operation
fadd.s f16, f9, f17, rdn # perform operation
fadd.s f16, f9, f17, rmm # perform operation
fadd.s f16, f9, f17, rne # perform operation
fadd.s f16, f9, f17, rtz # perform operation
fadd.s f16, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fadd.s f30, f7, f4, dyn # perform operation
fadd.s f30, f7, f4, rdn # perform operation
fadd.s f30, f7, f4, rmm # perform operation
fadd.s f30, f7, f4, rne # perform operation
fadd.s f30, f7, f4, rtz # perform operation
fadd.s f30, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f7, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fadd.s f12, f6, f9, dyn # perform operation
fadd.s f12, f6, f9, rdn # perform operation
fadd.s f12, f6, f9, rmm # perform operation
fadd.s f12, f6, f9, rne # perform operation
fadd.s f12, f6, f9, rtz # perform operation
fadd.s f12, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f6, f27, f21, dyn # perform operation
fadd.s f6, f27, f21, rdn # perform operation
fadd.s f6, f27, f21, rmm # perform operation
fadd.s f6, f27, f21, rne # perform operation
fadd.s f6, f27, f21, rtz # perform operation
fadd.s f6, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fadd.s f13, f24, f18, dyn # perform operation
fadd.s f13, f24, f18, rdn # perform operation
fadd.s f13, f24, f18, rmm # perform operation
fadd.s f13, f24, f18, rne # perform operation
fadd.s f13, f24, f18, rtz # perform operation
fadd.s f13, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f21, f19, f1, dyn # perform operation
fadd.s f21, f19, f1, rdn # perform operation
fadd.s f21, f19, f1, rmm # perform operation
fadd.s f21, f19, f1, rne # perform operation
fadd.s f21, f19, f1, rtz # perform operation
fadd.s f21, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fadd.s f28, f12, f19, dyn # perform operation
fadd.s f28, f12, f19, rdn # perform operation
fadd.s f28, f12, f19, rmm # perform operation
fadd.s f28, f12, f19, rne # perform operation
fadd.s f28, f12, f19, rtz # perform operation
fadd.s f28, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fadd.s f12, f9, f27, dyn # perform operation
fadd.s f12, f9, f27, rdn # perform operation
fadd.s f12, f9, f27, rmm # perform operation
fadd.s f12, f9, f27, rne # perform operation
fadd.s f12, f9, f27, rtz # perform operation
fadd.s f12, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fadd.s f28, f22, f29, dyn # perform operation
fadd.s f28, f22, f29, rdn # perform operation
fadd.s f28, f22, f29, rmm # perform operation
fadd.s f28, f22, f29, rne # perform operation
fadd.s f28, f22, f29, rtz # perform operation
fadd.s f28, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fadd.s f21, f13, f9, dyn # perform operation
fadd.s f21, f13, f9, rdn # perform operation
fadd.s f21, f13, f9, rmm # perform operation
fadd.s f21, f13, f9, rne # perform operation
fadd.s f21, f13, f9, rtz # perform operation
fadd.s f21, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fadd.s f14, f15, f29, dyn # perform operation
fadd.s f14, f15, f29, rdn # perform operation
fadd.s f14, f15, f29, rmm # perform operation
fadd.s f14, f15, f29, rne # perform operation
fadd.s f14, f15, f29, rtz # perform operation
fadd.s f14, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f23, f24, f20, dyn # perform operation
fadd.s f23, f24, f20, rdn # perform operation
fadd.s f23, f24, f20, rmm # perform operation
fadd.s f23, f24, f20, rne # perform operation
fadd.s f23, f24, f20, rtz # perform operation
fadd.s f23, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fadd.s f6, f27, f26, dyn # perform operation
fadd.s f6, f27, f26, rdn # perform operation
fadd.s f6, f27, f26, rmm # perform operation
fadd.s f6, f27, f26, rne # perform operation
fadd.s f6, f27, f26, rtz # perform operation
fadd.s f6, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fadd.s f27, f21, f19, dyn # perform operation
fadd.s f27, f21, f19, rdn # perform operation
fadd.s f27, f21, f19, rmm # perform operation
fadd.s f27, f21, f19, rne # perform operation
fadd.s f27, f21, f19, rtz # perform operation
fadd.s f27, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fadd.s f8, f9, f22, dyn # perform operation
fadd.s f8, f9, f22, rdn # perform operation
fadd.s f8, f9, f22, rmm # perform operation
fadd.s f8, f9, f22, rne # perform operation
fadd.s f8, f9, f22, rtz # perform operation
fadd.s f8, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fadd.s f11, f24, f28, dyn # perform operation
fadd.s f11, f24, f28, rdn # perform operation
fadd.s f11, f24, f28, rmm # perform operation
fadd.s f11, f24, f28, rne # perform operation
fadd.s f11, f24, f28, rtz # perform operation
fadd.s f11, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fadd.s f4, f3, f15, dyn # perform operation
fadd.s f4, f3, f15, rdn # perform operation
fadd.s f4, f3, f15, rmm # perform operation
fadd.s f4, f3, f15, rne # perform operation
fadd.s f4, f3, f15, rtz # perform operation
fadd.s f4, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f30, f19, f28, dyn # perform operation
fadd.s f30, f19, f28, rdn # perform operation
fadd.s f30, f19, f28, rmm # perform operation
fadd.s f30, f19, f28, rne # perform operation
fadd.s f30, f19, f28, rtz # perform operation
fadd.s f30, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fadd.s f1, f8, f4, dyn # perform operation
fadd.s f1, f8, f4, rdn # perform operation
fadd.s f1, f8, f4, rmm # perform operation
fadd.s f1, f8, f4, rne # perform operation
fadd.s f1, f8, f4, rtz # perform operation
fadd.s f1, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f8, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fadd.s f31, f11, f20, dyn # perform operation
fadd.s f31, f11, f20, rdn # perform operation
fadd.s f31, f11, f20, rmm # perform operation
fadd.s f31, f11, f20, rne # perform operation
fadd.s f31, f11, f20, rtz # perform operation
fadd.s f31, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fadd.s f17, f2, f20, dyn # perform operation
fadd.s f17, f2, f20, rdn # perform operation
fadd.s f17, f2, f20, rmm # perform operation
fadd.s f17, f2, f20, rne # perform operation
fadd.s f17, f2, f20, rtz # perform operation
fadd.s f17, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f27, f17, f20, dyn # perform operation
fadd.s f27, f17, f20, rdn # perform operation
fadd.s f27, f17, f20, rmm # perform operation
fadd.s f27, f17, f20, rne # perform operation
fadd.s f27, f17, f20, rtz # perform operation
fadd.s f27, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fadd.s f2, f23, f15, dyn # perform operation
fadd.s f2, f23, f15, rdn # perform operation
fadd.s f2, f23, f15, rmm # perform operation
fadd.s f2, f23, f15, rne # perform operation
fadd.s f2, f23, f15, rtz # perform operation
fadd.s f2, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fadd.s f8, f6, f29, dyn # perform operation
fadd.s f8, f6, f29, rdn # perform operation
fadd.s f8, f6, f29, rmm # perform operation
fadd.s f8, f6, f29, rne # perform operation
fadd.s f8, f6, f29, rtz # perform operation
fadd.s f8, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fadd.s f17, f13, f2, dyn # perform operation
fadd.s f17, f13, f2, rdn # perform operation
fadd.s f17, f13, f2, rmm # perform operation
fadd.s f17, f13, f2, rne # perform operation
fadd.s f17, f13, f2, rtz # perform operation
fadd.s f17, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fadd.s f1, f12, f24, dyn # perform operation
fadd.s f1, f12, f24, rdn # perform operation
fadd.s f1, f12, f24, rmm # perform operation
fadd.s f1, f12, f24, rne # perform operation
fadd.s f1, f12, f24, rtz # perform operation
fadd.s f1, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fadd.s f30, f13, f27, dyn # perform operation
fadd.s f30, f13, f27, rdn # perform operation
fadd.s f30, f13, f27, rmm # perform operation
fadd.s f30, f13, f27, rne # perform operation
fadd.s f30, f13, f27, rtz # perform operation
fadd.s f30, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fadd.s f2, f1, f10, dyn # perform operation
fadd.s f2, f1, f10, rdn # perform operation
fadd.s f2, f1, f10, rmm # perform operation
fadd.s f2, f1, f10, rne # perform operation
fadd.s f2, f1, f10, rtz # perform operation
fadd.s f2, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fadd.s f2, f14, f11, dyn # perform operation
fadd.s f2, f14, f11, rdn # perform operation
fadd.s f2, f14, f11, rmm # perform operation
fadd.s f2, f14, f11, rne # perform operation
fadd.s f2, f14, f11, rtz # perform operation
fadd.s f2, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fadd.s f30, f11, f16, dyn # perform operation
fadd.s f30, f11, f16, rdn # perform operation
fadd.s f30, f11, f16, rmm # perform operation
fadd.s f30, f11, f16, rne # perform operation
fadd.s f30, f11, f16, rtz # perform operation
fadd.s f30, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fadd.s f15, f2, f28, dyn # perform operation
fadd.s f15, f2, f28, rdn # perform operation
fadd.s f15, f2, f28, rmm # perform operation
fadd.s f15, f2, f28, rne # perform operation
fadd.s f15, f2, f28, rtz # perform operation
fadd.s f15, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fadd.s f11, f30, f25, dyn # perform operation
fadd.s f11, f30, f25, rdn # perform operation
fadd.s f11, f30, f25, rmm # perform operation
fadd.s f11, f30, f25, rne # perform operation
fadd.s f11, f30, f25, rtz # perform operation
fadd.s f11, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fadd.s f4, f31, f17, dyn # perform operation
fadd.s f4, f31, f17, rdn # perform operation
fadd.s f4, f31, f17, rmm # perform operation
fadd.s f4, f31, f17, rne # perform operation
fadd.s f4, f31, f17, rtz # perform operation
fadd.s f4, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fadd.s f26, f20, f13, dyn # perform operation
fadd.s f26, f20, f13, rdn # perform operation
fadd.s f26, f20, f13, rmm # perform operation
fadd.s f26, f20, f13, rne # perform operation
fadd.s f26, f20, f13, rtz # perform operation
fadd.s f26, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
fadd.s f4, f28, f21, dyn # perform operation
fadd.s f4, f28, f21, rdn # perform operation
fadd.s f4, f28, f21, rmm # perform operation
fadd.s f4, f28, f21, rne # perform operation
fadd.s f4, f28, f21, rtz # perform operation
fadd.s f4, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f6, f2, f18, dyn # perform operation
fadd.s f6, f2, f18, rdn # perform operation
fadd.s f6, f2, f18, rmm # perform operation
fadd.s f6, f2, f18, rne # perform operation
fadd.s f6, f2, f18, rtz # perform operation
fadd.s f6, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f3, f10, f20, dyn # perform operation
fadd.s f3, f10, f20, rdn # perform operation
fadd.s f3, f10, f20, rmm # perform operation
fadd.s f3, f10, f20, rne # perform operation
fadd.s f3, f10, f20, rtz # perform operation
fadd.s f3, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fadd.s f19, f12, f15, dyn # perform operation
fadd.s f19, f12, f15, rdn # perform operation
fadd.s f19, f12, f15, rmm # perform operation
fadd.s f19, f12, f15, rne # perform operation
fadd.s f19, f12, f15, rtz # perform operation
fadd.s f19, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fadd.s f26, f1, f28, dyn # perform operation
fadd.s f26, f1, f28, rdn # perform operation
fadd.s f26, f1, f28, rmm # perform operation
fadd.s f26, f1, f28, rne # perform operation
fadd.s f26, f1, f28, rtz # perform operation
fadd.s f26, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f17, f23, f20, dyn # perform operation
fadd.s f17, f23, f20, rdn # perform operation
fadd.s f17, f23, f20, rmm # perform operation
fadd.s f17, f23, f20, rne # perform operation
fadd.s f17, f23, f20, rtz # perform operation
fadd.s f17, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fadd.s f28, f19, f7, dyn # perform operation
fadd.s f28, f19, f7, rdn # perform operation
fadd.s f28, f19, f7, rmm # perform operation
fadd.s f28, f19, f7, rne # perform operation
fadd.s f28, f19, f7, rtz # perform operation
fadd.s f28, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fadd.s f17, f1, f26, dyn # perform operation
fadd.s f17, f1, f26, rdn # perform operation
fadd.s f17, f1, f26, rmm # perform operation
fadd.s f17, f1, f26, rne # perform operation
fadd.s f17, f1, f26, rtz # perform operation
fadd.s f17, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fadd.s f20, f3, f28, dyn # perform operation
fadd.s f20, f3, f28, rdn # perform operation
fadd.s f20, f3, f28, rmm # perform operation
fadd.s f20, f3, f28, rne # perform operation
fadd.s f20, f3, f28, rtz # perform operation
fadd.s f20, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f13, f21, f18, dyn # perform operation
fadd.s f13, f21, f18, rdn # perform operation
fadd.s f13, f21, f18, rmm # perform operation
fadd.s f13, f21, f18, rne # perform operation
fadd.s f13, f21, f18, rtz # perform operation
fadd.s f13, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fadd.s f18, f17, f13, dyn # perform operation
fadd.s f18, f17, f13, rdn # perform operation
fadd.s f18, f17, f13, rmm # perform operation
fadd.s f18, f17, f13, rne # perform operation
fadd.s f18, f17, f13, rtz # perform operation
fadd.s f18, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fadd.s f10, f24, f6, dyn # perform operation
fadd.s f10, f24, f6, rdn # perform operation
fadd.s f10, f24, f6, rmm # perform operation
fadd.s f10, f24, f6, rne # perform operation
fadd.s f10, f24, f6, rtz # perform operation
fadd.s f10, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fadd.s f16, f14, f30, dyn # perform operation
fadd.s f16, f14, f30, rdn # perform operation
fadd.s f16, f14, f30, rmm # perform operation
fadd.s f16, f14, f30, rne # perform operation
fadd.s f16, f14, f30, rtz # perform operation
fadd.s f16, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fadd.s f8, f23, f22, dyn # perform operation
fadd.s f8, f23, f22, rdn # perform operation
fadd.s f8, f23, f22, rmm # perform operation
fadd.s f8, f23, f22, rne # perform operation
fadd.s f8, f23, f22, rtz # perform operation
fadd.s f8, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f21, f30, f19, dyn # perform operation
fadd.s f21, f30, f19, rdn # perform operation
fadd.s f21, f30, f19, rmm # perform operation
fadd.s f21, f30, f19, rne # perform operation
fadd.s f21, f30, f19, rtz # perform operation
fadd.s f21, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fadd.s f20, f14, f17, dyn # perform operation
fadd.s f20, f14, f17, rdn # perform operation
fadd.s f20, f14, f17, rmm # perform operation
fadd.s f20, f14, f17, rne # perform operation
fadd.s f20, f14, f17, rtz # perform operation
fadd.s f20, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fadd.s f9, f22, f18, dyn # perform operation
fadd.s f9, f22, f18, rdn # perform operation
fadd.s f9, f22, f18, rmm # perform operation
fadd.s f9, f22, f18, rne # perform operation
fadd.s f9, f22, f18, rtz # perform operation
fadd.s f9, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fadd.s f12, f8, f24, dyn # perform operation
fadd.s f12, f8, f24, rdn # perform operation
fadd.s f12, f8, f24, rmm # perform operation
fadd.s f12, f8, f24, rne # perform operation
fadd.s f12, f8, f24, rtz # perform operation
fadd.s f12, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fadd.s f26, f29, f1, dyn # perform operation
fadd.s f26, f29, f1, rdn # perform operation
fadd.s f26, f29, f1, rmm # perform operation
fadd.s f26, f29, f1, rne # perform operation
fadd.s f26, f29, f1, rtz # perform operation
fadd.s f26, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fadd.s f10, f13, f30, dyn # perform operation
fadd.s f10, f13, f30, rdn # perform operation
fadd.s f10, f13, f30, rmm # perform operation
fadd.s f10, f13, f30, rne # perform operation
fadd.s f10, f13, f30, rtz # perform operation
fadd.s f10, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fadd.s f24, f7, f27, dyn # perform operation
fadd.s f24, f7, f27, rdn # perform operation
fadd.s f24, f7, f27, rmm # perform operation
fadd.s f24, f7, f27, rne # perform operation
fadd.s f24, f7, f27, rtz # perform operation
fadd.s f24, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fadd.s f16, f2, f19, dyn # perform operation
fadd.s f16, f2, f19, rdn # perform operation
fadd.s f16, f2, f19, rmm # perform operation
fadd.s f16, f2, f19, rne # perform operation
fadd.s f16, f2, f19, rtz # perform operation
fadd.s f16, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fadd.s f13, f22, f6, dyn # perform operation
fadd.s f13, f22, f6, rdn # perform operation
fadd.s f13, f22, f6, rmm # perform operation
fadd.s f13, f22, f6, rne # perform operation
fadd.s f13, f22, f6, rtz # perform operation
fadd.s f13, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fadd.s f26, f16, f10, dyn # perform operation
fadd.s f26, f16, f10, rdn # perform operation
fadd.s f26, f16, f10, rmm # perform operation
fadd.s f26, f16, f10, rne # perform operation
fadd.s f26, f16, f10, rtz # perform operation
fadd.s f26, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fadd.s f7, f3, f20, dyn # perform operation
fadd.s f7, f3, f20, rdn # perform operation
fadd.s f7, f3, f20, rmm # perform operation
fadd.s f7, f3, f20, rne # perform operation
fadd.s f7, f3, f20, rtz # perform operation
fadd.s f7, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fadd.s f15, f2, f11, dyn # perform operation
fadd.s f15, f2, f11, rdn # perform operation
fadd.s f15, f2, f11, rmm # perform operation
fadd.s f15, f2, f11, rne # perform operation
fadd.s f15, f2, f11, rtz # perform operation
fadd.s f15, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fadd.s f16, f29, f25, dyn # perform operation
fadd.s f16, f29, f25, rdn # perform operation
fadd.s f16, f29, f25, rmm # perform operation
fadd.s f16, f29, f25, rne # perform operation
fadd.s f16, f29, f25, rtz # perform operation
fadd.s f16, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fadd.s f23, f11, f20, dyn # perform operation
fadd.s f23, f11, f20, rdn # perform operation
fadd.s f23, f11, f20, rmm # perform operation
fadd.s f23, f11, f20, rne # perform operation
fadd.s f23, f11, f20, rtz # perform operation
fadd.s f23, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fadd.s f10, f3, f6, dyn # perform operation
fadd.s f10, f3, f6, rdn # perform operation
fadd.s f10, f3, f6, rmm # perform operation
fadd.s f10, f3, f6, rne # perform operation
fadd.s f10, f3, f6, rtz # perform operation
fadd.s f10, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f15, f17, f1, dyn # perform operation
fadd.s f15, f17, f1, rdn # perform operation
fadd.s f15, f17, f1, rmm # perform operation
fadd.s f15, f17, f1, rne # perform operation
fadd.s f15, f17, f1, rtz # perform operation
fadd.s f15, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fadd.s f31, f9, f25, dyn # perform operation
fadd.s f31, f9, f25, rdn # perform operation
fadd.s f31, f9, f25, rmm # perform operation
fadd.s f31, f9, f25, rne # perform operation
fadd.s f31, f9, f25, rtz # perform operation
fadd.s f31, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fadd.s f4, f30, f21, dyn # perform operation
fadd.s f4, f30, f21, rdn # perform operation
fadd.s f4, f30, f21, rmm # perform operation
fadd.s f4, f30, f21, rne # perform operation
fadd.s f4, f30, f21, rtz # perform operation
fadd.s f4, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fadd.s f24, f21, f1, dyn # perform operation
fadd.s f24, f21, f1, rdn # perform operation
fadd.s f24, f21, f1, rmm # perform operation
fadd.s f24, f21, f1, rne # perform operation
fadd.s f24, f21, f1, rtz # perform operation
fadd.s f24, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fadd.s f17, f4, f16, dyn # perform operation
fadd.s f17, f4, f16, rdn # perform operation
fadd.s f17, f4, f16, rmm # perform operation
fadd.s f17, f4, f16, rne # perform operation
fadd.s f17, f4, f16, rtz # perform operation
fadd.s f17, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f4, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fadd.s f2, f13, f30, dyn # perform operation
fadd.s f2, f13, f30, rdn # perform operation
fadd.s f2, f13, f30, rmm # perform operation
fadd.s f2, f13, f30, rne # perform operation
fadd.s f2, f13, f30, rtz # perform operation
fadd.s f2, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f2, f4, f8, dyn # perform operation
fadd.s f2, f4, f8, rdn # perform operation
fadd.s f2, f4, f8, rmm # perform operation
fadd.s f2, f4, f8, rne # perform operation
fadd.s f2, f4, f8, rtz # perform operation
fadd.s f2, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f4, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f23, f8, f29, dyn # perform operation
fadd.s f23, f8, f29, rdn # perform operation
fadd.s f23, f8, f29, rmm # perform operation
fadd.s f23, f8, f29, rne # perform operation
fadd.s f23, f8, f29, rtz # perform operation
fadd.s f23, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fadd.s f12, f9, f13, dyn # perform operation
fadd.s f12, f9, f13, rdn # perform operation
fadd.s f12, f9, f13, rmm # perform operation
fadd.s f12, f9, f13, rne # perform operation
fadd.s f12, f9, f13, rtz # perform operation
fadd.s f12, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fadd.s f26, f29, f25, dyn # perform operation
fadd.s f26, f29, f25, rdn # perform operation
fadd.s f26, f29, f25, rmm # perform operation
fadd.s f26, f29, f25, rne # perform operation
fadd.s f26, f29, f25, rtz # perform operation
fadd.s f26, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fadd.s f14, f22, f3, dyn # perform operation
fadd.s f14, f22, f3, rdn # perform operation
fadd.s f14, f22, f3, rmm # perform operation
fadd.s f14, f22, f3, rne # perform operation
fadd.s f14, f22, f3, rtz # perform operation
fadd.s f14, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fadd.s f28, f1, f7, dyn # perform operation
fadd.s f28, f1, f7, rdn # perform operation
fadd.s f28, f1, f7, rmm # perform operation
fadd.s f28, f1, f7, rne # perform operation
fadd.s f28, f1, f7, rtz # perform operation
fadd.s f28, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f10, f2, f29, dyn # perform operation
fadd.s f10, f2, f29, rdn # perform operation
fadd.s f10, f2, f29, rmm # perform operation
fadd.s f10, f2, f29, rne # perform operation
fadd.s f10, f2, f29, rtz # perform operation
fadd.s f10, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fadd.s f22, f25, f1, dyn # perform operation
fadd.s f22, f25, f1, rdn # perform operation
fadd.s f22, f25, f1, rmm # perform operation
fadd.s f22, f25, f1, rne # perform operation
fadd.s f22, f25, f1, rtz # perform operation
fadd.s f22, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fadd.s f2, f15, f14, dyn # perform operation
fadd.s f2, f15, f14, rdn # perform operation
fadd.s f2, f15, f14, rmm # perform operation
fadd.s f2, f15, f14, rne # perform operation
fadd.s f2, f15, f14, rtz # perform operation
fadd.s f2, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f4, f7, f24, dyn # perform operation
fadd.s f4, f7, f24, rdn # perform operation
fadd.s f4, f7, f24, rmm # perform operation
fadd.s f4, f7, f24, rne # perform operation
fadd.s f4, f7, f24, rtz # perform operation
fadd.s f4, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fadd.s f13, f15, f4, dyn # perform operation
fadd.s f13, f15, f4, rdn # perform operation
fadd.s f13, f15, f4, rmm # perform operation
fadd.s f13, f15, f4, rne # perform operation
fadd.s f13, f15, f4, rtz # perform operation
fadd.s f13, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fadd.s f17, f24, f30, dyn # perform operation
fadd.s f17, f24, f30, rdn # perform operation
fadd.s f17, f24, f30, rmm # perform operation
fadd.s f17, f24, f30, rne # perform operation
fadd.s f17, f24, f30, rtz # perform operation
fadd.s f17, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fadd.s f29, f11, f26, dyn # perform operation
fadd.s f29, f11, f26, rdn # perform operation
fadd.s f29, f11, f26, rmm # perform operation
fadd.s f29, f11, f26, rne # perform operation
fadd.s f29, f11, f26, rtz # perform operation
fadd.s f29, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fadd.s f19, f8, f31, dyn # perform operation
fadd.s f19, f8, f31, rdn # perform operation
fadd.s f19, f8, f31, rmm # perform operation
fadd.s f19, f8, f31, rne # perform operation
fadd.s f19, f8, f31, rtz # perform operation
fadd.s f19, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fadd.s f8, f3, f14, dyn # perform operation
fadd.s f8, f3, f14, rdn # perform operation
fadd.s f8, f3, f14, rmm # perform operation
fadd.s f8, f3, f14, rne # perform operation
fadd.s f8, f3, f14, rtz # perform operation
fadd.s f8, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fadd.s f27, f4, f31, dyn # perform operation
fadd.s f27, f4, f31, rdn # perform operation
fadd.s f27, f4, f31, rmm # perform operation
fadd.s f27, f4, f31, rne # perform operation
fadd.s f27, f4, f31, rtz # perform operation
fadd.s f27, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fadd.s f10, f26, f31, dyn # perform operation
fadd.s f10, f26, f31, rdn # perform operation
fadd.s f10, f26, f31, rmm # perform operation
fadd.s f10, f26, f31, rne # perform operation
fadd.s f10, f26, f31, rtz # perform operation
fadd.s f10, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f11, f20, f15, dyn # perform operation
fadd.s f11, f20, f15, rdn # perform operation
fadd.s f11, f20, f15, rmm # perform operation
fadd.s f11, f20, f15, rne # perform operation
fadd.s f11, f20, f15, rtz # perform operation
fadd.s f11, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fadd.s f12, f8, f29, dyn # perform operation
fadd.s f12, f8, f29, rdn # perform operation
fadd.s f12, f8, f29, rmm # perform operation
fadd.s f12, f8, f29, rne # perform operation
fadd.s f12, f8, f29, rtz # perform operation
fadd.s f12, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fadd.s f17, f18, f6, dyn # perform operation
fadd.s f17, f18, f6, rdn # perform operation
fadd.s f17, f18, f6, rmm # perform operation
fadd.s f17, f18, f6, rne # perform operation
fadd.s f17, f18, f6, rtz # perform operation
fadd.s f17, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fadd.s f18, f30, f9, dyn # perform operation
fadd.s f18, f30, f9, rdn # perform operation
fadd.s f18, f30, f9, rmm # perform operation
fadd.s f18, f30, f9, rne # perform operation
fadd.s f18, f30, f9, rtz # perform operation
fadd.s f18, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fadd.s f16, f20, f27, dyn # perform operation
fadd.s f16, f20, f27, rdn # perform operation
fadd.s f16, f20, f27, rmm # perform operation
fadd.s f16, f20, f27, rne # perform operation
fadd.s f16, f20, f27, rtz # perform operation
fadd.s f16, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fadd.s f26, f24, f9, dyn # perform operation
fadd.s f26, f24, f9, rdn # perform operation
fadd.s f26, f24, f9, rmm # perform operation
fadd.s f26, f24, f9, rne # perform operation
fadd.s f26, f24, f9, rtz # perform operation
fadd.s f26, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fadd.s f8, f11, f14, dyn # perform operation
fadd.s f8, f11, f14, rdn # perform operation
fadd.s f8, f11, f14, rmm # perform operation
fadd.s f8, f11, f14, rne # perform operation
fadd.s f8, f11, f14, rtz # perform operation
fadd.s f8, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fadd.s f28, f21, f9, dyn # perform operation
fadd.s f28, f21, f9, rdn # perform operation
fadd.s f28, f21, f9, rmm # perform operation
fadd.s f28, f21, f9, rne # perform operation
fadd.s f28, f21, f9, rtz # perform operation
fadd.s f28, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fadd.s f30, f12, f22, dyn # perform operation
fadd.s f30, f12, f22, rdn # perform operation
fadd.s f30, f12, f22, rmm # perform operation
fadd.s f30, f12, f22, rne # perform operation
fadd.s f30, f12, f22, rtz # perform operation
fadd.s f30, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fadd.s f13, f24, f11, dyn # perform operation
fadd.s f13, f24, f11, rdn # perform operation
fadd.s f13, f24, f11, rmm # perform operation
fadd.s f13, f24, f11, rne # perform operation
fadd.s f13, f24, f11, rtz # perform operation
fadd.s f13, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fadd.s f26, f20, f11, dyn # perform operation
fadd.s f26, f20, f11, rdn # perform operation
fadd.s f26, f20, f11, rmm # perform operation
fadd.s f26, f20, f11, rne # perform operation
fadd.s f26, f20, f11, rtz # perform operation
fadd.s f26, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fadd.s f12, f11, f13, dyn # perform operation
fadd.s f12, f11, f13, rdn # perform operation
fadd.s f12, f11, f13, rmm # perform operation
fadd.s f12, f11, f13, rne # perform operation
fadd.s f12, f11, f13, rtz # perform operation
fadd.s f12, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fadd.s f3, f20, f2, dyn # perform operation
fadd.s f3, f20, f2, rdn # perform operation
fadd.s f3, f20, f2, rmm # perform operation
fadd.s f3, f20, f2, rne # perform operation
fadd.s f3, f20, f2, rtz # perform operation
fadd.s f3, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f23, f20, f25, dyn # perform operation
fadd.s f23, f20, f25, rdn # perform operation
fadd.s f23, f20, f25, rmm # perform operation
fadd.s f23, f20, f25, rne # perform operation
fadd.s f23, f20, f25, rtz # perform operation
fadd.s f23, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fadd.s f13, f4, f3, dyn # perform operation
fadd.s f13, f4, f3, rdn # perform operation
fadd.s f13, f4, f3, rmm # perform operation
fadd.s f13, f4, f3, rne # perform operation
fadd.s f13, f4, f3, rtz # perform operation
fadd.s f13, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f4, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fadd.s f26, f9, f10, dyn # perform operation
fadd.s f26, f9, f10, rdn # perform operation
fadd.s f26, f9, f10, rmm # perform operation
fadd.s f26, f9, f10, rne # perform operation
fadd.s f26, f9, f10, rtz # perform operation
fadd.s f26, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fadd.s f27, f9, f4, dyn # perform operation
fadd.s f27, f9, f4, rdn # perform operation
fadd.s f27, f9, f4, rmm # perform operation
fadd.s f27, f9, f4, rne # perform operation
fadd.s f27, f9, f4, rtz # perform operation
fadd.s f27, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f9, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f14, f19, f29, dyn # perform operation
fadd.s f14, f19, f29, rdn # perform operation
fadd.s f14, f19, f29, rmm # perform operation
fadd.s f14, f19, f29, rne # perform operation
fadd.s f14, f19, f29, rtz # perform operation
fadd.s f14, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fadd.s f20, f19, f22, dyn # perform operation
fadd.s f20, f19, f22, rdn # perform operation
fadd.s f20, f19, f22, rmm # perform operation
fadd.s f20, f19, f22, rne # perform operation
fadd.s f20, f19, f22, rtz # perform operation
fadd.s f20, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fadd.s f24, f9, f25, dyn # perform operation
fadd.s f24, f9, f25, rdn # perform operation
fadd.s f24, f9, f25, rmm # perform operation
fadd.s f24, f9, f25, rne # perform operation
fadd.s f24, f9, f25, rtz # perform operation
fadd.s f24, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fadd.s f24, f22, f28, dyn # perform operation
fadd.s f24, f22, f28, rdn # perform operation
fadd.s f24, f22, f28, rmm # perform operation
fadd.s f24, f22, f28, rne # perform operation
fadd.s f24, f22, f28, rtz # perform operation
fadd.s f24, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f23, f22, f9, dyn # perform operation
fadd.s f23, f22, f9, rdn # perform operation
fadd.s f23, f22, f9, rmm # perform operation
fadd.s f23, f22, f9, rne # perform operation
fadd.s f23, f22, f9, rtz # perform operation
fadd.s f23, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fadd.s f31, f18, f17, dyn # perform operation
fadd.s f31, f18, f17, rdn # perform operation
fadd.s f31, f18, f17, rmm # perform operation
fadd.s f31, f18, f17, rne # perform operation
fadd.s f31, f18, f17, rtz # perform operation
fadd.s f31, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fadd.s f6, f24, f17, dyn # perform operation
fadd.s f6, f24, f17, rdn # perform operation
fadd.s f6, f24, f17, rmm # perform operation
fadd.s f6, f24, f17, rne # perform operation
fadd.s f6, f24, f17, rtz # perform operation
fadd.s f6, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fadd.s f22, f2, f21, dyn # perform operation
fadd.s f22, f2, f21, rdn # perform operation
fadd.s f22, f2, f21, rmm # perform operation
fadd.s f22, f2, f21, rne # perform operation
fadd.s f22, f2, f21, rtz # perform operation
fadd.s f22, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fadd.s f7, f12, f29, dyn # perform operation
fadd.s f7, f12, f29, rdn # perform operation
fadd.s f7, f12, f29, rmm # perform operation
fadd.s f7, f12, f29, rne # perform operation
fadd.s f7, f12, f29, rtz # perform operation
fadd.s f7, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fadd.s f20, f2, f18, dyn # perform operation
fadd.s f20, f2, f18, rdn # perform operation
fadd.s f20, f2, f18, rmm # perform operation
fadd.s f20, f2, f18, rne # perform operation
fadd.s f20, f2, f18, rtz # perform operation
fadd.s f20, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f21, f2, f18, dyn # perform operation
fadd.s f21, f2, f18, rdn # perform operation
fadd.s f21, f2, f18, rmm # perform operation
fadd.s f21, f2, f18, rne # perform operation
fadd.s f21, f2, f18, rtz # perform operation
fadd.s f21, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fadd.s f21, f16, f10, dyn # perform operation
fadd.s f21, f16, f10, rdn # perform operation
fadd.s f21, f16, f10, rmm # perform operation
fadd.s f21, f16, f10, rne # perform operation
fadd.s f21, f16, f10, rtz # perform operation
fadd.s f21, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fadd.s f27, f21, f23, dyn # perform operation
fadd.s f27, f21, f23, rdn # perform operation
fadd.s f27, f21, f23, rmm # perform operation
fadd.s f27, f21, f23, rne # perform operation
fadd.s f27, f21, f23, rtz # perform operation
fadd.s f27, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fadd.s f18, f6, f4, dyn # perform operation
fadd.s f18, f6, f4, rdn # perform operation
fadd.s f18, f6, f4, rmm # perform operation
fadd.s f18, f6, f4, rne # perform operation
fadd.s f18, f6, f4, rtz # perform operation
fadd.s f18, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f6, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fadd.s f10, f8, f9, dyn # perform operation
fadd.s f10, f8, f9, rdn # perform operation
fadd.s f10, f8, f9, rmm # perform operation
fadd.s f10, f8, f9, rne # perform operation
fadd.s f10, f8, f9, rtz # perform operation
fadd.s f10, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fadd.s f13, f31, f28, dyn # perform operation
fadd.s f13, f31, f28, rdn # perform operation
fadd.s f13, f31, f28, rmm # perform operation
fadd.s f13, f31, f28, rne # perform operation
fadd.s f13, f31, f28, rtz # perform operation
fadd.s f13, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fadd.s f31, f21, f29, dyn # perform operation
fadd.s f31, f21, f29, rdn # perform operation
fadd.s f31, f21, f29, rmm # perform operation
fadd.s f31, f21, f29, rne # perform operation
fadd.s f31, f21, f29, rtz # perform operation
fadd.s f31, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fadd.s f1, f22, f28, dyn # perform operation
fadd.s f1, f22, f28, rdn # perform operation
fadd.s f1, f22, f28, rmm # perform operation
fadd.s f1, f22, f28, rne # perform operation
fadd.s f1, f22, f28, rtz # perform operation
fadd.s f1, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fadd.s f10, f11, f23, dyn # perform operation
fadd.s f10, f11, f23, rdn # perform operation
fadd.s f10, f11, f23, rmm # perform operation
fadd.s f10, f11, f23, rne # perform operation
fadd.s f10, f11, f23, rtz # perform operation
fadd.s f10, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fadd.s f16, f17, f1, dyn # perform operation
fadd.s f16, f17, f1, rdn # perform operation
fadd.s f16, f17, f1, rmm # perform operation
fadd.s f16, f17, f1, rne # perform operation
fadd.s f16, f17, f1, rtz # perform operation
fadd.s f16, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fadd.s f27, f12, f15, dyn # perform operation
fadd.s f27, f12, f15, rdn # perform operation
fadd.s f27, f12, f15, rmm # perform operation
fadd.s f27, f12, f15, rne # perform operation
fadd.s f27, f12, f15, rtz # perform operation
fadd.s f27, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fadd.s f6, f24, f15, dyn # perform operation
fadd.s f6, f24, f15, rdn # perform operation
fadd.s f6, f24, f15, rmm # perform operation
fadd.s f6, f24, f15, rne # perform operation
fadd.s f6, f24, f15, rtz # perform operation
fadd.s f6, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fadd.s f23, f3, f16, dyn # perform operation
fadd.s f23, f3, f16, rdn # perform operation
fadd.s f23, f3, f16, rmm # perform operation
fadd.s f23, f3, f16, rne # perform operation
fadd.s f23, f3, f16, rtz # perform operation
fadd.s f23, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fadd.s f29, f20, f24, dyn # perform operation
fadd.s f29, f20, f24, rdn # perform operation
fadd.s f29, f20, f24, rmm # perform operation
fadd.s f29, f20, f24, rne # perform operation
fadd.s f29, f20, f24, rtz # perform operation
fadd.s f29, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fadd.s f13, f23, f12, dyn # perform operation
fadd.s f13, f23, f12, rdn # perform operation
fadd.s f13, f23, f12, rmm # perform operation
fadd.s f13, f23, f12, rne # perform operation
fadd.s f13, f23, f12, rtz # perform operation
fadd.s f13, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f4, 0(x2) # load 0xffffffff from memory into f4
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fadd.s f17, f4, f19, dyn # perform operation
fadd.s f17, f4, f19, rdn # perform operation
fadd.s f17, f4, f19, rmm # perform operation
fadd.s f17, f4, f19, rne # perform operation
fadd.s f17, f4, f19, rtz # perform operation
fadd.s f17, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f4, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fadd.s f11, f28, f23, dyn # perform operation
fadd.s f11, f28, f23, rdn # perform operation
fadd.s f11, f28, f23, rmm # perform operation
fadd.s f11, f28, f23, rne # perform operation
fadd.s f11, f28, f23, rtz # perform operation
fadd.s f11, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fadd.s f14, f29, f9, dyn # perform operation
fadd.s f14, f29, f9, rdn # perform operation
fadd.s f14, f29, f9, rmm # perform operation
fadd.s f14, f29, f9, rne # perform operation
fadd.s f14, f29, f9, rtz # perform operation
fadd.s f14, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f24, f31, f29, dyn # perform operation
fadd.s f24, f31, f29, rdn # perform operation
fadd.s f24, f31, f29, rmm # perform operation
fadd.s f24, f31, f29, rne # perform operation
fadd.s f24, f31, f29, rtz # perform operation
fadd.s f24, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fadd.s f3, f28, f29, dyn # perform operation
fadd.s f3, f28, f29, rdn # perform operation
fadd.s f3, f28, f29, rmm # perform operation
fadd.s f3, f28, f29, rne # perform operation
fadd.s f3, f28, f29, rtz # perform operation
fadd.s f3, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fadd.s f2, f19, f17, dyn # perform operation
fadd.s f2, f19, f17, rdn # perform operation
fadd.s f2, f19, f17, rmm # perform operation
fadd.s f2, f19, f17, rne # perform operation
fadd.s f2, f19, f17, rtz # perform operation
fadd.s f2, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f21, f1, f24, dyn # perform operation
fadd.s f21, f1, f24, rdn # perform operation
fadd.s f21, f1, f24, rmm # perform operation
fadd.s f21, f1, f24, rne # perform operation
fadd.s f21, f1, f24, rtz # perform operation
fadd.s f21, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fadd.s f28, f18, f12, dyn # perform operation
fadd.s f28, f18, f12, rdn # perform operation
fadd.s f28, f18, f12, rmm # perform operation
fadd.s f28, f18, f12, rne # perform operation
fadd.s f28, f18, f12, rtz # perform operation
fadd.s f28, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fadd.s f20, f26, f31, dyn # perform operation
fadd.s f20, f26, f31, rdn # perform operation
fadd.s f20, f26, f31, rmm # perform operation
fadd.s f20, f26, f31, rne # perform operation
fadd.s f20, f26, f31, rtz # perform operation
fadd.s f20, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fadd.s f2, f31, f22, dyn # perform operation
fadd.s f2, f31, f22, rdn # perform operation
fadd.s f2, f31, f22, rmm # perform operation
fadd.s f2, f31, f22, rne # perform operation
fadd.s f2, f31, f22, rtz # perform operation
fadd.s f2, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f12, f16, f25, dyn # perform operation
fadd.s f12, f16, f25, rdn # perform operation
fadd.s f12, f16, f25, rmm # perform operation
fadd.s f12, f16, f25, rne # perform operation
fadd.s f12, f16, f25, rtz # perform operation
fadd.s f12, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fadd.s f31, f19, f28, dyn # perform operation
fadd.s f31, f19, f28, rdn # perform operation
fadd.s f31, f19, f28, rmm # perform operation
fadd.s f31, f19, f28, rne # perform operation
fadd.s f31, f19, f28, rtz # perform operation
fadd.s f31, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f4, 0(x2) # load 0xffffffff from memory into f4
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fadd.s f8, f4, f16, dyn # perform operation
fadd.s f8, f4, f16, rdn # perform operation
fadd.s f8, f4, f16, rmm # perform operation
fadd.s f8, f4, f16, rne # perform operation
fadd.s f8, f4, f16, rtz # perform operation
fadd.s f8, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f4, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fadd.s f21, f19, f30, dyn # perform operation
fadd.s f21, f19, f30, rdn # perform operation
fadd.s f21, f19, f30, rmm # perform operation
fadd.s f21, f19, f30, rne # perform operation
fadd.s f21, f19, f30, rtz # perform operation
fadd.s f21, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fadd.s f24, f14, f26, dyn # perform operation
fadd.s f24, f14, f26, rdn # perform operation
fadd.s f24, f14, f26, rmm # perform operation
fadd.s f24, f14, f26, rne # perform operation
fadd.s f24, f14, f26, rtz # perform operation
fadd.s f24, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fadd.s f7, f13, f17, dyn # perform operation
fadd.s f7, f13, f17, rdn # perform operation
fadd.s f7, f13, f17, rmm # perform operation
fadd.s f7, f13, f17, rne # perform operation
fadd.s f7, f13, f17, rtz # perform operation
fadd.s f7, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fadd.s f25, f7, f21, dyn # perform operation
fadd.s f25, f7, f21, rdn # perform operation
fadd.s f25, f7, f21, rmm # perform operation
fadd.s f25, f7, f21, rne # perform operation
fadd.s f25, f7, f21, rtz # perform operation
fadd.s f25, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fadd.s f11, f24, f17, dyn # perform operation
fadd.s f11, f24, f17, rdn # perform operation
fadd.s f11, f24, f17, rmm # perform operation
fadd.s f11, f24, f17, rne # perform operation
fadd.s f11, f24, f17, rtz # perform operation
fadd.s f11, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fadd.s f14, f20, f19, dyn # perform operation
fadd.s f14, f20, f19, rdn # perform operation
fadd.s f14, f20, f19, rmm # perform operation
fadd.s f14, f20, f19, rne # perform operation
fadd.s f14, f20, f19, rtz # perform operation
fadd.s f14, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fadd.s f24, f22, f26, dyn # perform operation
fadd.s f24, f22, f26, rdn # perform operation
fadd.s f24, f22, f26, rmm # perform operation
fadd.s f24, f22, f26, rne # perform operation
fadd.s f24, f22, f26, rtz # perform operation
fadd.s f24, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fadd.s f18, f14, f1, dyn # perform operation
fadd.s f18, f14, f1, rdn # perform operation
fadd.s f18, f14, f1, rmm # perform operation
fadd.s f18, f14, f1, rne # perform operation
fadd.s f18, f14, f1, rtz # perform operation
fadd.s f18, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f4, 0(x2) # load 0xffbfffff from memory into f4
fadd.s f27, f17, f4, dyn # perform operation
fadd.s f27, f17, f4, rdn # perform operation
fadd.s f27, f17, f4, rmm # perform operation
fadd.s f27, f17, f4, rne # perform operation
fadd.s f27, f17, f4, rtz # perform operation
fadd.s f27, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f17, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fadd.s f16, f12, f29, dyn # perform operation
fadd.s f16, f12, f29, rdn # perform operation
fadd.s f16, f12, f29, rmm # perform operation
fadd.s f16, f12, f29, rne # perform operation
fadd.s f16, f12, f29, rtz # perform operation
fadd.s f16, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fadd.s f29, f30, f8, dyn # perform operation
fadd.s f29, f30, f8, rdn # perform operation
fadd.s f29, f30, f8, rmm # perform operation
fadd.s f29, f30, f8, rne # perform operation
fadd.s f29, f30, f8, rtz # perform operation
fadd.s f29, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fadd.s f15, f4, f10, dyn # perform operation
fadd.s f15, f4, f10, rdn # perform operation
fadd.s f15, f4, f10, rmm # perform operation
fadd.s f15, f4, f10, rne # perform operation
fadd.s f15, f4, f10, rtz # perform operation
fadd.s f15, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f4, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fadd.s f12, f29, f2, dyn # perform operation
fadd.s f12, f29, f2, rdn # perform operation
fadd.s f12, f29, f2, rmm # perform operation
fadd.s f12, f29, f2, rne # perform operation
fadd.s f12, f29, f2, rtz # perform operation
fadd.s f12, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fadd.s f20, f30, f31, dyn # perform operation
fadd.s f20, f30, f31, rdn # perform operation
fadd.s f20, f30, f31, rmm # perform operation
fadd.s f20, f30, f31, rne # perform operation
fadd.s f20, f30, f31, rtz # perform operation
fadd.s f20, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fadd.s f26, f9, f13, dyn # perform operation
fadd.s f26, f9, f13, rdn # perform operation
fadd.s f26, f9, f13, rmm # perform operation
fadd.s f26, f9, f13, rne # perform operation
fadd.s f26, f9, f13, rtz # perform operation
fadd.s f26, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f11, f1, f30, dyn # perform operation
fadd.s f11, f1, f30, rdn # perform operation
fadd.s f11, f1, f30, rmm # perform operation
fadd.s f11, f1, f30, rne # perform operation
fadd.s f11, f1, f30, rtz # perform operation
fadd.s f11, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fadd.s f28, f29, f25, dyn # perform operation
fadd.s f28, f29, f25, rdn # perform operation
fadd.s f28, f29, f25, rmm # perform operation
fadd.s f28, f29, f25, rne # perform operation
fadd.s f28, f29, f25, rtz # perform operation
fadd.s f28, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fadd.s f27, f4, f12, dyn # perform operation
fadd.s f27, f4, f12, rdn # perform operation
fadd.s f27, f4, f12, rmm # perform operation
fadd.s f27, f4, f12, rne # perform operation
fadd.s f27, f4, f12, rtz # perform operation
fadd.s f27, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fadd.s f18, f23, f12, dyn # perform operation
fadd.s f18, f23, f12, rdn # perform operation
fadd.s f18, f23, f12, rmm # perform operation
fadd.s f18, f23, f12, rne # perform operation
fadd.s f18, f23, f12, rtz # perform operation
fadd.s f18, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fadd.s f1, f3, f7, dyn # perform operation
fadd.s f1, f3, f7, rdn # perform operation
fadd.s f1, f3, f7, rmm # perform operation
fadd.s f1, f3, f7, rne # perform operation
fadd.s f1, f3, f7, rtz # perform operation
fadd.s f1, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fadd.s f10, f2, f12, dyn # perform operation
fadd.s f10, f2, f12, rdn # perform operation
fadd.s f10, f2, f12, rmm # perform operation
fadd.s f10, f2, f12, rne # perform operation
fadd.s f10, f2, f12, rtz # perform operation
fadd.s f10, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fadd.s f6, f22, f2, dyn # perform operation
fadd.s f6, f22, f2, rdn # perform operation
fadd.s f6, f22, f2, rmm # perform operation
fadd.s f6, f22, f2, rne # perform operation
fadd.s f6, f22, f2, rtz # perform operation
fadd.s f6, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fadd.s f10, f31, f25, dyn # perform operation
fadd.s f10, f31, f25, rdn # perform operation
fadd.s f10, f31, f25, rmm # perform operation
fadd.s f10, f31, f25, rne # perform operation
fadd.s f10, f31, f25, rtz # perform operation
fadd.s f10, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fadd.s f14, f18, f27, dyn # perform operation
fadd.s f14, f18, f27, rdn # perform operation
fadd.s f14, f18, f27, rmm # perform operation
fadd.s f14, f18, f27, rne # perform operation
fadd.s f14, f18, f27, rtz # perform operation
fadd.s f14, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fadd.s f8, f1, f6, dyn # perform operation
fadd.s f8, f1, f6, rdn # perform operation
fadd.s f8, f1, f6, rmm # perform operation
fadd.s f8, f1, f6, rne # perform operation
fadd.s f8, f1, f6, rtz # perform operation
fadd.s f8, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f31, f4, f25, dyn # perform operation
fadd.s f31, f4, f25, rdn # perform operation
fadd.s f31, f4, f25, rmm # perform operation
fadd.s f31, f4, f25, rne # perform operation
fadd.s f31, f4, f25, rtz # perform operation
fadd.s f31, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f4, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fadd.s f15, f7, f17, dyn # perform operation
fadd.s f15, f7, f17, rdn # perform operation
fadd.s f15, f7, f17, rmm # perform operation
fadd.s f15, f7, f17, rne # perform operation
fadd.s f15, f7, f17, rtz # perform operation
fadd.s f15, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fadd.s f30, f7, f1, dyn # perform operation
fadd.s f30, f7, f1, rdn # perform operation
fadd.s f30, f7, f1, rmm # perform operation
fadd.s f30, f7, f1, rne # perform operation
fadd.s f30, f7, f1, rtz # perform operation
fadd.s f30, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f9, f12, f18, dyn # perform operation
fadd.s f9, f12, f18, rdn # perform operation
fadd.s f9, f12, f18, rmm # perform operation
fadd.s f9, f12, f18, rne # perform operation
fadd.s f9, f12, f18, rtz # perform operation
fadd.s f9, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fadd.s f30, f14, f27, dyn # perform operation
fadd.s f30, f14, f27, rdn # perform operation
fadd.s f30, f14, f27, rmm # perform operation
fadd.s f30, f14, f27, rne # perform operation
fadd.s f30, f14, f27, rtz # perform operation
fadd.s f30, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fadd.s f14, f25, f3, dyn # perform operation
fadd.s f14, f25, f3, rdn # perform operation
fadd.s f14, f25, f3, rmm # perform operation
fadd.s f14, f25, f3, rne # perform operation
fadd.s f14, f25, f3, rtz # perform operation
fadd.s f14, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fadd.s f11, f17, f8, dyn # perform operation
fadd.s f11, f17, f8, rdn # perform operation
fadd.s f11, f17, f8, rmm # perform operation
fadd.s f11, f17, f8, rne # perform operation
fadd.s f11, f17, f8, rtz # perform operation
fadd.s f11, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f16, f27, f12, dyn # perform operation
fadd.s f16, f27, f12, rdn # perform operation
fadd.s f16, f27, f12, rmm # perform operation
fadd.s f16, f27, f12, rne # perform operation
fadd.s f16, f27, f12, rtz # perform operation
fadd.s f16, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fadd.s f13, f6, f18, dyn # perform operation
fadd.s f13, f6, f18, rdn # perform operation
fadd.s f13, f6, f18, rmm # perform operation
fadd.s f13, f6, f18, rne # perform operation
fadd.s f13, f6, f18, rtz # perform operation
fadd.s f13, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fadd.s f25, f26, f24, dyn # perform operation
fadd.s f25, f26, f24, rdn # perform operation
fadd.s f25, f26, f24, rmm # perform operation
fadd.s f25, f26, f24, rne # perform operation
fadd.s f25, f26, f24, rtz # perform operation
fadd.s f25, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fadd.s f25, f26, f14, dyn # perform operation
fadd.s f25, f26, f14, rdn # perform operation
fadd.s f25, f26, f14, rmm # perform operation
fadd.s f25, f26, f14, rne # perform operation
fadd.s f25, f26, f14, rtz # perform operation
fadd.s f25, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fadd.s f12, f29, f19, dyn # perform operation
fadd.s f12, f29, f19, rdn # perform operation
fadd.s f12, f29, f19, rmm # perform operation
fadd.s f12, f29, f19, rne # perform operation
fadd.s f12, f29, f19, rtz # perform operation
fadd.s f12, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fadd.s f12, f13, f27, dyn # perform operation
fadd.s f12, f13, f27, rdn # perform operation
fadd.s f12, f13, f27, rmm # perform operation
fadd.s f12, f13, f27, rne # perform operation
fadd.s f12, f13, f27, rtz # perform operation
fadd.s f12, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fadd.s f29, f28, f7, dyn # perform operation
fadd.s f29, f28, f7, rdn # perform operation
fadd.s f29, f28, f7, rmm # perform operation
fadd.s f29, f28, f7, rne # perform operation
fadd.s f29, f28, f7, rtz # perform operation
fadd.s f29, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fadd.s f31, f27, f26, dyn # perform operation
fadd.s f31, f27, f26, rdn # perform operation
fadd.s f31, f27, f26, rmm # perform operation
fadd.s f31, f27, f26, rne # perform operation
fadd.s f31, f27, f26, rtz # perform operation
fadd.s f31, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fadd.s f2, f28, f20, dyn # perform operation
fadd.s f2, f28, f20, rdn # perform operation
fadd.s f2, f28, f20, rmm # perform operation
fadd.s f2, f28, f20, rne # perform operation
fadd.s f2, f28, f20, rtz # perform operation
fadd.s f2, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fadd.s f14, f31, f24, dyn # perform operation
fadd.s f14, f31, f24, rdn # perform operation
fadd.s f14, f31, f24, rmm # perform operation
fadd.s f14, f31, f24, rne # perform operation
fadd.s f14, f31, f24, rtz # perform operation
fadd.s f14, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fadd.s f28, f3, f17, dyn # perform operation
fadd.s f28, f3, f17, rdn # perform operation
fadd.s f28, f3, f17, rmm # perform operation
fadd.s f28, f3, f17, rne # perform operation
fadd.s f28, f3, f17, rtz # perform operation
fadd.s f28, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fadd.s f27, f3, f19, dyn # perform operation
fadd.s f27, f3, f19, rdn # perform operation
fadd.s f27, f3, f19, rmm # perform operation
fadd.s f27, f3, f19, rne # perform operation
fadd.s f27, f3, f19, rtz # perform operation
fadd.s f27, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fadd.s f13, f8, f30, dyn # perform operation
fadd.s f13, f8, f30, rdn # perform operation
fadd.s f13, f8, f30, rmm # perform operation
fadd.s f13, f8, f30, rne # perform operation
fadd.s f13, f8, f30, rtz # perform operation
fadd.s f13, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fadd.s f21, f8, f14, dyn # perform operation
fadd.s f21, f8, f14, rdn # perform operation
fadd.s f21, f8, f14, rmm # perform operation
fadd.s f21, f8, f14, rne # perform operation
fadd.s f21, f8, f14, rtz # perform operation
fadd.s f21, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fadd.s f7, f10, f22, dyn # perform operation
fadd.s f7, f10, f22, rdn # perform operation
fadd.s f7, f10, f22, rmm # perform operation
fadd.s f7, f10, f22, rne # perform operation
fadd.s f7, f10, f22, rtz # perform operation
fadd.s f7, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fadd.s f14, f19, f8, dyn # perform operation
fadd.s f14, f19, f8, rdn # perform operation
fadd.s f14, f19, f8, rmm # perform operation
fadd.s f14, f19, f8, rne # perform operation
fadd.s f14, f19, f8, rtz # perform operation
fadd.s f14, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f18, f16, f30, dyn # perform operation
fadd.s f18, f16, f30, rdn # perform operation
fadd.s f18, f16, f30, rmm # perform operation
fadd.s f18, f16, f30, rne # perform operation
fadd.s f18, f16, f30, rtz # perform operation
fadd.s f18, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fadd.s f22, f3, f8, dyn # perform operation
fadd.s f22, f3, f8, rdn # perform operation
fadd.s f22, f3, f8, rmm # perform operation
fadd.s f22, f3, f8, rne # perform operation
fadd.s f22, f3, f8, rtz # perform operation
fadd.s f22, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fadd.s f24, f26, f14, dyn # perform operation
fadd.s f24, f26, f14, rdn # perform operation
fadd.s f24, f26, f14, rmm # perform operation
fadd.s f24, f26, f14, rne # perform operation
fadd.s f24, f26, f14, rtz # perform operation
fadd.s f24, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fadd.s f13, f15, f28, dyn # perform operation
fadd.s f13, f15, f28, rdn # perform operation
fadd.s f13, f15, f28, rmm # perform operation
fadd.s f13, f15, f28, rne # perform operation
fadd.s f13, f15, f28, rtz # perform operation
fadd.s f13, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fadd.s f23, f21, f26, dyn # perform operation
fadd.s f23, f21, f26, rdn # perform operation
fadd.s f23, f21, f26, rmm # perform operation
fadd.s f23, f21, f26, rne # perform operation
fadd.s f23, f21, f26, rtz # perform operation
fadd.s f23, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fadd.s f20, f31, f13, dyn # perform operation
fadd.s f20, f31, f13, rdn # perform operation
fadd.s f20, f31, f13, rmm # perform operation
fadd.s f20, f31, f13, rne # perform operation
fadd.s f20, f31, f13, rtz # perform operation
fadd.s f20, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fadd.s f14, f15, f3, dyn # perform operation
fadd.s f14, f15, f3, rdn # perform operation
fadd.s f14, f15, f3, rmm # perform operation
fadd.s f14, f15, f3, rne # perform operation
fadd.s f14, f15, f3, rtz # perform operation
fadd.s f14, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fadd.s f23, f19, f17, dyn # perform operation
fadd.s f23, f19, f17, rdn # perform operation
fadd.s f23, f19, f17, rmm # perform operation
fadd.s f23, f19, f17, rne # perform operation
fadd.s f23, f19, f17, rtz # perform operation
fadd.s f23, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fadd.s f4, f12, f3, dyn # perform operation
fadd.s f4, f12, f3, rdn # perform operation
fadd.s f4, f12, f3, rmm # perform operation
fadd.s f4, f12, f3, rne # perform operation
fadd.s f4, f12, f3, rtz # perform operation
fadd.s f4, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fadd.s f1, f24, f14, dyn # perform operation
fadd.s f1, f24, f14, rdn # perform operation
fadd.s f1, f24, f14, rmm # perform operation
fadd.s f1, f24, f14, rne # perform operation
fadd.s f1, f24, f14, rtz # perform operation
fadd.s f1, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fadd.s f27, f4, f31, dyn # perform operation
fadd.s f27, f4, f31, rdn # perform operation
fadd.s f27, f4, f31, rmm # perform operation
fadd.s f27, f4, f31, rne # perform operation
fadd.s f27, f4, f31, rtz # perform operation
fadd.s f27, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fadd.s f10, f28, f8, dyn # perform operation
fadd.s f10, f28, f8, rdn # perform operation
fadd.s f10, f28, f8, rmm # perform operation
fadd.s f10, f28, f8, rne # perform operation
fadd.s f10, f28, f8, rtz # perform operation
fadd.s f10, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fadd.s f19, f14, f23, dyn # perform operation
fadd.s f19, f14, f23, rdn # perform operation
fadd.s f19, f14, f23, rmm # perform operation
fadd.s f19, f14, f23, rne # perform operation
fadd.s f19, f14, f23, rtz # perform operation
fadd.s f19, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fadd.s f13, f15, f19, dyn # perform operation
fadd.s f13, f15, f19, rdn # perform operation
fadd.s f13, f15, f19, rmm # perform operation
fadd.s f13, f15, f19, rne # perform operation
fadd.s f13, f15, f19, rtz # perform operation
fadd.s f13, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fadd.s f19, f4, f27, dyn # perform operation
fadd.s f19, f4, f27, rdn # perform operation
fadd.s f19, f4, f27, rmm # perform operation
fadd.s f19, f4, f27, rne # perform operation
fadd.s f19, f4, f27, rtz # perform operation
fadd.s f19, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f4, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fadd.s f1, f23, f17, dyn # perform operation
fadd.s f1, f23, f17, rdn # perform operation
fadd.s f1, f23, f17, rmm # perform operation
fadd.s f1, f23, f17, rne # perform operation
fadd.s f1, f23, f17, rtz # perform operation
fadd.s f1, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
fadd.s f9, f8, f20, dyn # perform operation
fadd.s f9, f8, f20, rdn # perform operation
fadd.s f9, f8, f20, rmm # perform operation
fadd.s f9, f8, f20, rne # perform operation
fadd.s f9, f8, f20, rtz # perform operation
fadd.s f9, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fadd.s f8, f21, f11, dyn # perform operation
fadd.s f8, f21, f11, rdn # perform operation
fadd.s f8, f21, f11, rmm # perform operation
fadd.s f8, f21, f11, rne # perform operation
fadd.s f8, f21, f11, rtz # perform operation
fadd.s f8, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fadd.s f11, f6, f3, dyn # perform operation
fadd.s f11, f6, f3, rdn # perform operation
fadd.s f11, f6, f3, rmm # perform operation
fadd.s f11, f6, f3, rne # perform operation
fadd.s f11, f6, f3, rtz # perform operation
fadd.s f11, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fadd.s f3, f29, f24, dyn # perform operation
fadd.s f3, f29, f24, rdn # perform operation
fadd.s f3, f29, f24, rmm # perform operation
fadd.s f3, f29, f24, rne # perform operation
fadd.s f3, f29, f24, rtz # perform operation
fadd.s f3, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fadd.s f3, f25, f30, dyn # perform operation
fadd.s f3, f25, f30, rdn # perform operation
fadd.s f3, f25, f30, rmm # perform operation
fadd.s f3, f25, f30, rne # perform operation
fadd.s f3, f25, f30, rtz # perform operation
fadd.s f3, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f19, f2, f29, dyn # perform operation
fadd.s f19, f2, f29, rdn # perform operation
fadd.s f19, f2, f29, rmm # perform operation
fadd.s f19, f2, f29, rne # perform operation
fadd.s f19, f2, f29, rtz # perform operation
fadd.s f19, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f9, f25, f3, dyn # perform operation
fadd.s f9, f25, f3, rdn # perform operation
fadd.s f9, f25, f3, rmm # perform operation
fadd.s f9, f25, f3, rne # perform operation
fadd.s f9, f25, f3, rtz # perform operation
fadd.s f9, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fadd.s f21, f14, f31, dyn # perform operation
fadd.s f21, f14, f31, rdn # perform operation
fadd.s f21, f14, f31, rmm # perform operation
fadd.s f21, f14, f31, rne # perform operation
fadd.s f21, f14, f31, rtz # perform operation
fadd.s f21, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fadd.s f18, f3, f7, dyn # perform operation
fadd.s f18, f3, f7, rdn # perform operation
fadd.s f18, f3, f7, rmm # perform operation
fadd.s f18, f3, f7, rne # perform operation
fadd.s f18, f3, f7, rtz # perform operation
fadd.s f18, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fadd.s f14, f6, f16, dyn # perform operation
fadd.s f14, f6, f16, rdn # perform operation
fadd.s f14, f6, f16, rmm # perform operation
fadd.s f14, f6, f16, rne # perform operation
fadd.s f14, f6, f16, rtz # perform operation
fadd.s f14, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fadd.s f21, f30, f31, dyn # perform operation
fadd.s f21, f30, f31, rdn # perform operation
fadd.s f21, f30, f31, rmm # perform operation
fadd.s f21, f30, f31, rne # perform operation
fadd.s f21, f30, f31, rtz # perform operation
fadd.s f21, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fadd.s f1, f25, f15, dyn # perform operation
fadd.s f1, f25, f15, rdn # perform operation
fadd.s f1, f25, f15, rmm # perform operation
fadd.s f1, f25, f15, rne # perform operation
fadd.s f1, f25, f15, rtz # perform operation
fadd.s f1, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fadd.s f13, f24, f31, dyn # perform operation
fadd.s f13, f24, f31, rdn # perform operation
fadd.s f13, f24, f31, rmm # perform operation
fadd.s f13, f24, f31, rne # perform operation
fadd.s f13, f24, f31, rtz # perform operation
fadd.s f13, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fadd.s f15, f29, f18, dyn # perform operation
fadd.s f15, f29, f18, rdn # perform operation
fadd.s f15, f29, f18, rmm # perform operation
fadd.s f15, f29, f18, rne # perform operation
fadd.s f15, f29, f18, rtz # perform operation
fadd.s f15, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f29, f9, f17, dyn # perform operation
fadd.s f29, f9, f17, rdn # perform operation
fadd.s f29, f9, f17, rmm # perform operation
fadd.s f29, f9, f17, rne # perform operation
fadd.s f29, f9, f17, rtz # perform operation
fadd.s f29, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fadd.s f17, f11, f31, dyn # perform operation
fadd.s f17, f11, f31, rdn # perform operation
fadd.s f17, f11, f31, rmm # perform operation
fadd.s f17, f11, f31, rne # perform operation
fadd.s f17, f11, f31, rtz # perform operation
fadd.s f17, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fadd.s f19, f9, f14, dyn # perform operation
fadd.s f19, f9, f14, rdn # perform operation
fadd.s f19, f9, f14, rmm # perform operation
fadd.s f19, f9, f14, rne # perform operation
fadd.s f19, f9, f14, rtz # perform operation
fadd.s f19, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fadd.s f15, f28, f29, dyn # perform operation
fadd.s f15, f28, f29, rdn # perform operation
fadd.s f15, f28, f29, rmm # perform operation
fadd.s f15, f28, f29, rne # perform operation
fadd.s f15, f28, f29, rtz # perform operation
fadd.s f15, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fadd.s f10, f14, f13, dyn # perform operation
fadd.s f10, f14, f13, rdn # perform operation
fadd.s f10, f14, f13, rmm # perform operation
fadd.s f10, f14, f13, rne # perform operation
fadd.s f10, f14, f13, rtz # perform operation
fadd.s f10, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fadd.s f9, f19, f3, dyn # perform operation
fadd.s f9, f19, f3, rdn # perform operation
fadd.s f9, f19, f3, rmm # perform operation
fadd.s f9, f19, f3, rne # perform operation
fadd.s f9, f19, f3, rtz # perform operation
fadd.s f9, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fadd.s f10, f19, f8, dyn # perform operation
fadd.s f10, f19, f8, rdn # perform operation
fadd.s f10, f19, f8, rmm # perform operation
fadd.s f10, f19, f8, rne # perform operation
fadd.s f10, f19, f8, rtz # perform operation
fadd.s f10, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fadd.s f15, f25, f31, dyn # perform operation
fadd.s f15, f25, f31, rdn # perform operation
fadd.s f15, f25, f31, rmm # perform operation
fadd.s f15, f25, f31, rne # perform operation
fadd.s f15, f25, f31, rtz # perform operation
fadd.s f15, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f18, f2, f21, dyn # perform operation
fadd.s f18, f2, f21, rdn # perform operation
fadd.s f18, f2, f21, rmm # perform operation
fadd.s f18, f2, f21, rne # perform operation
fadd.s f18, f2, f21, rtz # perform operation
fadd.s f18, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fadd.s f23, f13, f12, dyn # perform operation
fadd.s f23, f13, f12, rdn # perform operation
fadd.s f23, f13, f12, rmm # perform operation
fadd.s f23, f13, f12, rne # perform operation
fadd.s f23, f13, f12, rtz # perform operation
fadd.s f23, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fadd.s f11, f19, f4, dyn # perform operation
fadd.s f11, f19, f4, rdn # perform operation
fadd.s f11, f19, f4, rmm # perform operation
fadd.s f11, f19, f4, rne # perform operation
fadd.s f11, f19, f4, rtz # perform operation
fadd.s f11, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f19, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fadd.s f29, f7, f17, dyn # perform operation
fadd.s f29, f7, f17, rdn # perform operation
fadd.s f29, f7, f17, rmm # perform operation
fadd.s f29, f7, f17, rne # perform operation
fadd.s f29, f7, f17, rtz # perform operation
fadd.s f29, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fadd.s f20, f30, f13, dyn # perform operation
fadd.s f20, f30, f13, rdn # perform operation
fadd.s f20, f30, f13, rmm # perform operation
fadd.s f20, f30, f13, rne # perform operation
fadd.s f20, f30, f13, rtz # perform operation
fadd.s f20, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f14, f21, f20, dyn # perform operation
fadd.s f14, f21, f20, rdn # perform operation
fadd.s f14, f21, f20, rmm # perform operation
fadd.s f14, f21, f20, rne # perform operation
fadd.s f14, f21, f20, rtz # perform operation
fadd.s f14, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fadd.s f30, f29, f31, dyn # perform operation
fadd.s f30, f29, f31, rdn # perform operation
fadd.s f30, f29, f31, rmm # perform operation
fadd.s f30, f29, f31, rne # perform operation
fadd.s f30, f29, f31, rtz # perform operation
fadd.s f30, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fadd.s f1, f9, f3, dyn # perform operation
fadd.s f1, f9, f3, rdn # perform operation
fadd.s f1, f9, f3, rmm # perform operation
fadd.s f1, f9, f3, rne # perform operation
fadd.s f1, f9, f3, rtz # perform operation
fadd.s f1, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fadd.s f4, f9, f30, dyn # perform operation
fadd.s f4, f9, f30, rdn # perform operation
fadd.s f4, f9, f30, rmm # perform operation
fadd.s f4, f9, f30, rne # perform operation
fadd.s f4, f9, f30, rtz # perform operation
fadd.s f4, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fadd.s f14, f21, f12, dyn # perform operation
fadd.s f14, f21, f12, rdn # perform operation
fadd.s f14, f21, f12, rmm # perform operation
fadd.s f14, f21, f12, rne # perform operation
fadd.s f14, f21, f12, rtz # perform operation
fadd.s f14, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fadd.s f31, f26, f13, dyn # perform operation
fadd.s f31, f26, f13, rdn # perform operation
fadd.s f31, f26, f13, rmm # perform operation
fadd.s f31, f26, f13, rne # perform operation
fadd.s f31, f26, f13, rtz # perform operation
fadd.s f31, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f13, f2, f4, dyn # perform operation
fadd.s f13, f2, f4, rdn # perform operation
fadd.s f13, f2, f4, rmm # perform operation
fadd.s f13, f2, f4, rne # perform operation
fadd.s f13, f2, f4, rtz # perform operation
fadd.s f13, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f2, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fadd.s f8, f20, f4, dyn # perform operation
fadd.s f8, f20, f4, rdn # perform operation
fadd.s f8, f20, f4, rmm # perform operation
fadd.s f8, f20, f4, rne # perform operation
fadd.s f8, f20, f4, rtz # perform operation
fadd.s f8, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f20, f4 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f22, f19, f30, dyn # perform operation
fadd.s f22, f19, f30, rdn # perform operation
fadd.s f22, f19, f30, rmm # perform operation
fadd.s f22, f19, f30, rne # perform operation
fadd.s f22, f19, f30, rtz # perform operation
fadd.s f22, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fadd.s f13, f14, f9, dyn # perform operation
fadd.s f13, f14, f9, rdn # perform operation
fadd.s f13, f14, f9, rmm # perform operation
fadd.s f13, f14, f9, rne # perform operation
fadd.s f13, f14, f9, rtz # perform operation
fadd.s f13, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fadd.s f6, f14, f13, dyn # perform operation
fadd.s f6, f14, f13, rdn # perform operation
fadd.s f6, f14, f13, rmm # perform operation
fadd.s f6, f14, f13, rne # perform operation
fadd.s f6, f14, f13, rtz # perform operation
fadd.s f6, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fadd.s f8, f14, f21, dyn # perform operation
fadd.s f8, f14, f21, rdn # perform operation
fadd.s f8, f14, f21, rmm # perform operation
fadd.s f8, f14, f21, rne # perform operation
fadd.s f8, f14, f21, rtz # perform operation
fadd.s f8, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fadd.s f2, f4, f1, dyn # perform operation
fadd.s f2, f4, f1, rdn # perform operation
fadd.s f2, f4, f1, rmm # perform operation
fadd.s f2, f4, f1, rne # perform operation
fadd.s f2, f4, f1, rtz # perform operation
fadd.s f2, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f4, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fadd.s f28, f8, f27, dyn # perform operation
fadd.s f28, f8, f27, rdn # perform operation
fadd.s f28, f8, f27, rmm # perform operation
fadd.s f28, f8, f27, rne # perform operation
fadd.s f28, f8, f27, rtz # perform operation
fadd.s f28, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fadd.s f17, f16, f19, dyn # perform operation
fadd.s f17, f16, f19, rdn # perform operation
fadd.s f17, f16, f19, rmm # perform operation
fadd.s f17, f16, f19, rne # perform operation
fadd.s f17, f16, f19, rtz # perform operation
fadd.s f17, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fadd.s f17, f20, f8, dyn # perform operation
fadd.s f17, f20, f8, rdn # perform operation
fadd.s f17, f20, f8, rmm # perform operation
fadd.s f17, f20, f8, rne # perform operation
fadd.s f17, f20, f8, rtz # perform operation
fadd.s f17, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fadd.s f25, f7, f22, dyn # perform operation
fadd.s f25, f7, f22, rdn # perform operation
fadd.s f25, f7, f22, rmm # perform operation
fadd.s f25, f7, f22, rne # perform operation
fadd.s f25, f7, f22, rtz # perform operation
fadd.s f25, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fadd.s f16, f24, f27, dyn # perform operation
fadd.s f16, f24, f27, rdn # perform operation
fadd.s f16, f24, f27, rmm # perform operation
fadd.s f16, f24, f27, rne # perform operation
fadd.s f16, f24, f27, rtz # perform operation
fadd.s f16, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fadd.s f8, f1, f26, dyn # perform operation
fadd.s f8, f1, f26, rdn # perform operation
fadd.s f8, f1, f26, rmm # perform operation
fadd.s f8, f1, f26, rne # perform operation
fadd.s f8, f1, f26, rtz # perform operation
fadd.s f8, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f20, f1, f6, dyn # perform operation
fadd.s f20, f1, f6, rdn # perform operation
fadd.s f20, f1, f6, rmm # perform operation
fadd.s f20, f1, f6, rne # perform operation
fadd.s f20, f1, f6, rtz # perform operation
fadd.s f20, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fadd.s f17, f13, f27, dyn # perform operation
fadd.s f17, f13, f27, rdn # perform operation
fadd.s f17, f13, f27, rmm # perform operation
fadd.s f17, f13, f27, rne # perform operation
fadd.s f17, f13, f27, rtz # perform operation
fadd.s f17, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fadd.s f17, f19, f12, dyn # perform operation
fadd.s f17, f19, f12, rdn # perform operation
fadd.s f17, f19, f12, rmm # perform operation
fadd.s f17, f19, f12, rne # perform operation
fadd.s f17, f19, f12, rtz # perform operation
fadd.s f17, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fadd.s f22, f2, f23, dyn # perform operation
fadd.s f22, f2, f23, rdn # perform operation
fadd.s f22, f2, f23, rmm # perform operation
fadd.s f22, f2, f23, rne # perform operation
fadd.s f22, f2, f23, rtz # perform operation
fadd.s f22, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f10, f17, f21, dyn # perform operation
fadd.s f10, f17, f21, rdn # perform operation
fadd.s f10, f17, f21, rmm # perform operation
fadd.s f10, f17, f21, rne # perform operation
fadd.s f10, f17, f21, rtz # perform operation
fadd.s f10, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fadd.s f17, f9, f21, dyn # perform operation
fadd.s f17, f9, f21, rdn # perform operation
fadd.s f17, f9, f21, rmm # perform operation
fadd.s f17, f9, f21, rne # perform operation
fadd.s f17, f9, f21, rtz # perform operation
fadd.s f17, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fadd.s f4, f24, f11, dyn # perform operation
fadd.s f4, f24, f11, rdn # perform operation
fadd.s f4, f24, f11, rmm # perform operation
fadd.s f4, f24, f11, rne # perform operation
fadd.s f4, f24, f11, rtz # perform operation
fadd.s f4, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fadd.s f8, f1, f16, dyn # perform operation
fadd.s f8, f1, f16, rdn # perform operation
fadd.s f8, f1, f16, rmm # perform operation
fadd.s f8, f1, f16, rne # perform operation
fadd.s f8, f1, f16, rtz # perform operation
fadd.s f8, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f9, f27, f18, dyn # perform operation
fadd.s f9, f27, f18, rdn # perform operation
fadd.s f9, f27, f18, rmm # perform operation
fadd.s f9, f27, f18, rne # perform operation
fadd.s f9, f27, f18, rtz # perform operation
fadd.s f9, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fadd.s f27, f13, f8, dyn # perform operation
fadd.s f27, f13, f8, rdn # perform operation
fadd.s f27, f13, f8, rmm # perform operation
fadd.s f27, f13, f8, rne # perform operation
fadd.s f27, f13, f8, rtz # perform operation
fadd.s f27, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fadd.s f22, f23, f25, dyn # perform operation
fadd.s f22, f23, f25, rdn # perform operation
fadd.s f22, f23, f25, rmm # perform operation
fadd.s f22, f23, f25, rne # perform operation
fadd.s f22, f23, f25, rtz # perform operation
fadd.s f22, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fadd.s f29, f9, f13, dyn # perform operation
fadd.s f29, f9, f13, rdn # perform operation
fadd.s f29, f9, f13, rmm # perform operation
fadd.s f29, f9, f13, rne # perform operation
fadd.s f29, f9, f13, rtz # perform operation
fadd.s f29, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fadd.s f15, f7, f26, dyn # perform operation
fadd.s f15, f7, f26, rdn # perform operation
fadd.s f15, f7, f26, rmm # perform operation
fadd.s f15, f7, f26, rne # perform operation
fadd.s f15, f7, f26, rtz # perform operation
fadd.s f15, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fadd.s f19, f30, f3, dyn # perform operation
fadd.s f19, f30, f3, rdn # perform operation
fadd.s f19, f30, f3, rmm # perform operation
fadd.s f19, f30, f3, rne # perform operation
fadd.s f19, f30, f3, rtz # perform operation
fadd.s f19, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fadd.s f18, f19, f2, dyn # perform operation
fadd.s f18, f19, f2, rdn # perform operation
fadd.s f18, f19, f2, rmm # perform operation
fadd.s f18, f19, f2, rne # perform operation
fadd.s f18, f19, f2, rtz # perform operation
fadd.s f18, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fadd.s f16, f20, f11, dyn # perform operation
fadd.s f16, f20, f11, rdn # perform operation
fadd.s f16, f20, f11, rmm # perform operation
fadd.s f16, f20, f11, rne # perform operation
fadd.s f16, f20, f11, rtz # perform operation
fadd.s f16, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f20, f15, f3, dyn # perform operation
fadd.s f20, f15, f3, rdn # perform operation
fadd.s f20, f15, f3, rmm # perform operation
fadd.s f20, f15, f3, rne # perform operation
fadd.s f20, f15, f3, rtz # perform operation
fadd.s f20, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fadd.s f2, f26, f15, dyn # perform operation
fadd.s f2, f26, f15, rdn # perform operation
fadd.s f2, f26, f15, rmm # perform operation
fadd.s f2, f26, f15, rne # perform operation
fadd.s f2, f26, f15, rtz # perform operation
fadd.s f2, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fadd.s f24, f21, f13, dyn # perform operation
fadd.s f24, f21, f13, rdn # perform operation
fadd.s f24, f21, f13, rmm # perform operation
fadd.s f24, f21, f13, rne # perform operation
fadd.s f24, f21, f13, rtz # perform operation
fadd.s f24, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fadd.s f29, f9, f19, dyn # perform operation
fadd.s f29, f9, f19, rdn # perform operation
fadd.s f29, f9, f19, rmm # perform operation
fadd.s f29, f9, f19, rne # perform operation
fadd.s f29, f9, f19, rtz # perform operation
fadd.s f29, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fadd.s f15, f24, f2, dyn # perform operation
fadd.s f15, f24, f2, rdn # perform operation
fadd.s f15, f24, f2, rmm # perform operation
fadd.s f15, f24, f2, rne # perform operation
fadd.s f15, f24, f2, rtz # perform operation
fadd.s f15, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fadd.s f11, f26, f20, dyn # perform operation
fadd.s f11, f26, f20, rdn # perform operation
fadd.s f11, f26, f20, rmm # perform operation
fadd.s f11, f26, f20, rne # perform operation
fadd.s f11, f26, f20, rtz # perform operation
fadd.s f11, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fadd.s f28, f25, f6, dyn # perform operation
fadd.s f28, f25, f6, rdn # perform operation
fadd.s f28, f25, f6, rmm # perform operation
fadd.s f28, f25, f6, rne # perform operation
fadd.s f28, f25, f6, rtz # perform operation
fadd.s f28, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fadd.s f10, f24, f3, dyn # perform operation
fadd.s f10, f24, f3, rdn # perform operation
fadd.s f10, f24, f3, rmm # perform operation
fadd.s f10, f24, f3, rne # perform operation
fadd.s f10, f24, f3, rtz # perform operation
fadd.s f10, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fadd.s f27, f4, f11, dyn # perform operation
fadd.s f27, f4, f11, rdn # perform operation
fadd.s f27, f4, f11, rmm # perform operation
fadd.s f27, f4, f11, rne # perform operation
fadd.s f27, f4, f11, rtz # perform operation
fadd.s f27, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f4, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fadd.s f13, f24, f7, dyn # perform operation
fadd.s f13, f24, f7, rdn # perform operation
fadd.s f13, f24, f7, rmm # perform operation
fadd.s f13, f24, f7, rne # perform operation
fadd.s f13, f24, f7, rtz # perform operation
fadd.s f13, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fadd.s f2, f28, f1, dyn # perform operation
fadd.s f2, f28, f1, rdn # perform operation
fadd.s f2, f28, f1, rmm # perform operation
fadd.s f2, f28, f1, rne # perform operation
fadd.s f2, f28, f1, rtz # perform operation
fadd.s f2, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fadd.s f25, f23, f14, dyn # perform operation
fadd.s f25, f23, f14, rdn # perform operation
fadd.s f25, f23, f14, rmm # perform operation
fadd.s f25, f23, f14, rne # perform operation
fadd.s f25, f23, f14, rtz # perform operation
fadd.s f25, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fadd.s f7, f31, f27, dyn # perform operation
fadd.s f7, f31, f27, rdn # perform operation
fadd.s f7, f31, f27, rmm # perform operation
fadd.s f7, f31, f27, rne # perform operation
fadd.s f7, f31, f27, rtz # perform operation
fadd.s f7, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fadd.s f26, f10, f31, dyn # perform operation
fadd.s f26, f10, f31, rdn # perform operation
fadd.s f26, f10, f31, rmm # perform operation
fadd.s f26, f10, f31, rne # perform operation
fadd.s f26, f10, f31, rtz # perform operation
fadd.s f26, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fadd.s f10, f13, f28, dyn # perform operation
fadd.s f10, f13, f28, rdn # perform operation
fadd.s f10, f13, f28, rmm # perform operation
fadd.s f10, f13, f28, rne # perform operation
fadd.s f10, f13, f28, rtz # perform operation
fadd.s f10, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fadd.s f31, f8, f21, dyn # perform operation
fadd.s f31, f8, f21, rdn # perform operation
fadd.s f31, f8, f21, rmm # perform operation
fadd.s f31, f8, f21, rne # perform operation
fadd.s f31, f8, f21, rtz # perform operation
fadd.s f31, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fadd.s f9, f13, f2, dyn # perform operation
fadd.s f9, f13, f2, rdn # perform operation
fadd.s f9, f13, f2, rmm # perform operation
fadd.s f9, f13, f2, rne # perform operation
fadd.s f9, f13, f2, rtz # perform operation
fadd.s f9, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fadd.s f17, f18, f29, dyn # perform operation
fadd.s f17, f18, f29, rdn # perform operation
fadd.s f17, f18, f29, rmm # perform operation
fadd.s f17, f18, f29, rne # perform operation
fadd.s f17, f18, f29, rtz # perform operation
fadd.s f17, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fadd.s f7, f17, f14, dyn # perform operation
fadd.s f7, f17, f14, rdn # perform operation
fadd.s f7, f17, f14, rmm # perform operation
fadd.s f7, f17, f14, rne # perform operation
fadd.s f7, f17, f14, rtz # perform operation
fadd.s f7, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fadd.s f14, f31, f3, dyn # perform operation
fadd.s f14, f31, f3, rdn # perform operation
fadd.s f14, f31, f3, rmm # perform operation
fadd.s f14, f31, f3, rne # perform operation
fadd.s f14, f31, f3, rtz # perform operation
fadd.s f14, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f27, f28, f30, dyn # perform operation
fadd.s f27, f28, f30, rdn # perform operation
fadd.s f27, f28, f30, rmm # perform operation
fadd.s f27, f28, f30, rne # perform operation
fadd.s f27, f28, f30, rtz # perform operation
fadd.s f27, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fadd.s f26, f28, f14, dyn # perform operation
fadd.s f26, f28, f14, rdn # perform operation
fadd.s f26, f28, f14, rmm # perform operation
fadd.s f26, f28, f14, rne # perform operation
fadd.s f26, f28, f14, rtz # perform operation
fadd.s f26, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fadd.s f24, f7, f10, dyn # perform operation
fadd.s f24, f7, f10, rdn # perform operation
fadd.s f24, f7, f10, rmm # perform operation
fadd.s f24, f7, f10, rne # perform operation
fadd.s f24, f7, f10, rtz # perform operation
fadd.s f24, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fadd.s f7, f21, f30, dyn # perform operation
fadd.s f7, f21, f30, rdn # perform operation
fadd.s f7, f21, f30, rmm # perform operation
fadd.s f7, f21, f30, rne # perform operation
fadd.s f7, f21, f30, rtz # perform operation
fadd.s f7, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fadd.s f31, f19, f27, dyn # perform operation
fadd.s f31, f19, f27, rdn # perform operation
fadd.s f31, f19, f27, rmm # perform operation
fadd.s f31, f19, f27, rne # perform operation
fadd.s f31, f19, f27, rtz # perform operation
fadd.s f31, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f19, f27 # perform operation


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
