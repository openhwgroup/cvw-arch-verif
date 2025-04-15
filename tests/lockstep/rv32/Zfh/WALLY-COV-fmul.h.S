///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fmul.h.S
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
add x18, x12, x9 # perform first operation
fmul.h f31, f21, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x24, x5 # perform first operation
fmul.h f30, f12, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x30, x17 # perform first operation
fmul.h f19, f14, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f16, f15, f28 # perform first operation
fmul.h f21, f16, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f12, f20, f31 # perform first operation
fmul.h f31, f2, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x3, x16 # perform first operation
fmul.h f30, f27, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f26, f14, f13 # perform first operation
fmul.h f26, f21, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f25, f8 # perform first operation
fmul.h f15, f17, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f26, f12, f14 # perform first operation
fmul.h f26, f22, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f25, f5, f24 # perform first operation
fmul.h f5, f1, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f25, f31 # perform first operation
fmul.h f31, f19, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f11, f28 # perform first operation
fmul.h f17, f25, f13 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x8f17a7e8 # load x3 with value 0x8f17a7e8
sw x3, 0(x2) # store 0x8f17a7e8 in memory
flh f0, 0(x2) # load 0x8f17a7e8 from memory into f0
la x2, scratch
li x3, 0xb6beed45 # load x3 with value 0xb6beed45
sw x3, 0(x2) # store 0xb6beed45 in memory
flh f27, 0(x2) # load 0xb6beed45 from memory into f27
fmul.h f26, f0, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x12bfdeeb # load x3 with value 0x12bfdeeb
sw x3, 0(x2) # store 0x12bfdeeb in memory
flh f1, 0(x2) # load 0x12bfdeeb from memory into f1
la x2, scratch
li x3, 0x08eff8e0 # load x3 with value 0x08eff8e0
sw x3, 0(x2) # store 0x08eff8e0 in memory
flh f15, 0(x2) # load 0x08eff8e0 from memory into f15
fmul.h f29, f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xf01206ad # load x3 with value 0xf01206ad
sw x3, 0(x2) # store 0xf01206ad in memory
flh f2, 0(x2) # load 0xf01206ad from memory into f2
la x2, scratch
li x3, 0x221568c7 # load x3 with value 0x221568c7
sw x3, 0(x2) # store 0x221568c7 in memory
flh f24, 0(x2) # load 0x221568c7 from memory into f24
fmul.h f10, f2, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x249c031d # load x3 with value 0x249c031d
sw x3, 0(x2) # store 0x249c031d in memory
flh f3, 0(x2) # load 0x249c031d from memory into f3
la x2, scratch
li x3, 0x98c6c36a # load x3 with value 0x98c6c36a
sw x3, 0(x2) # store 0x98c6c36a in memory
flh f23, 0(x2) # load 0x98c6c36a from memory into f23
fmul.h f19, f3, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb433b568 # load x3 with value 0xb433b568
sw x3, 0(x2) # store 0xb433b568 in memory
flh f4, 0(x2) # load 0xb433b568 from memory into f4
la x2, scratch
li x3, 0x239c1ce5 # load x3 with value 0x239c1ce5
sw x3, 0(x2) # store 0x239c1ce5 in memory
flh f6, 0(x2) # load 0x239c1ce5 from memory into f6
fmul.h f11, f4, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd6708cc5 # load x3 with value 0xd6708cc5
sw x3, 0(x2) # store 0xd6708cc5 in memory
flh f5, 0(x2) # load 0xd6708cc5 from memory into f5
la x2, scratch
li x3, 0x151cb7ab # load x3 with value 0x151cb7ab
sw x3, 0(x2) # store 0x151cb7ab in memory
flh f3, 0(x2) # load 0x151cb7ab from memory into f3
fmul.h f20, f5, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf90763f1 # load x3 with value 0xf90763f1
sw x3, 0(x2) # store 0xf90763f1 in memory
flh f6, 0(x2) # load 0xf90763f1 from memory into f6
la x2, scratch
li x3, 0x4757fe0a # load x3 with value 0x4757fe0a
sw x3, 0(x2) # store 0x4757fe0a in memory
flh f28, 0(x2) # load 0x4757fe0a from memory into f28
fmul.h f29, f6, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x18134c2d # load x3 with value 0x18134c2d
sw x3, 0(x2) # store 0x18134c2d in memory
flh f7, 0(x2) # load 0x18134c2d from memory into f7
la x2, scratch
li x3, 0x05d9ca41 # load x3 with value 0x05d9ca41
sw x3, 0(x2) # store 0x05d9ca41 in memory
flh f18, 0(x2) # load 0x05d9ca41 from memory into f18
fmul.h f28, f7, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xc2bdc984 # load x3 with value 0xc2bdc984
sw x3, 0(x2) # store 0xc2bdc984 in memory
flh f8, 0(x2) # load 0xc2bdc984 from memory into f8
la x2, scratch
li x3, 0xd14b2cd2 # load x3 with value 0xd14b2cd2
sw x3, 0(x2) # store 0xd14b2cd2 in memory
flh f6, 0(x2) # load 0xd14b2cd2 from memory into f6
fmul.h f20, f8, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xc1356a5b # load x3 with value 0xc1356a5b
sw x3, 0(x2) # store 0xc1356a5b in memory
flh f9, 0(x2) # load 0xc1356a5b from memory into f9
la x2, scratch
li x3, 0x36c4c839 # load x3 with value 0x36c4c839
sw x3, 0(x2) # store 0x36c4c839 in memory
flh f7, 0(x2) # load 0x36c4c839 from memory into f7
fmul.h f6, f9, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x2b99b61d # load x3 with value 0x2b99b61d
sw x3, 0(x2) # store 0x2b99b61d in memory
flh f10, 0(x2) # load 0x2b99b61d from memory into f10
la x2, scratch
li x3, 0x8f675fc9 # load x3 with value 0x8f675fc9
sw x3, 0(x2) # store 0x8f675fc9 in memory
flh f23, 0(x2) # load 0x8f675fc9 from memory into f23
fmul.h f26, f10, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xb165c794 # load x3 with value 0xb165c794
sw x3, 0(x2) # store 0xb165c794 in memory
flh f11, 0(x2) # load 0xb165c794 from memory into f11
la x2, scratch
li x3, 0x05b0c952 # load x3 with value 0x05b0c952
sw x3, 0(x2) # store 0x05b0c952 in memory
flh f7, 0(x2) # load 0x05b0c952 from memory into f7
fmul.h f17, f11, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xf223e488 # load x3 with value 0xf223e488
sw x3, 0(x2) # store 0xf223e488 in memory
flh f12, 0(x2) # load 0xf223e488 from memory into f12
la x2, scratch
li x3, 0xd98c08de # load x3 with value 0xd98c08de
sw x3, 0(x2) # store 0xd98c08de in memory
flh f11, 0(x2) # load 0xd98c08de from memory into f11
fmul.h f5, f12, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x35e328c3 # load x3 with value 0x35e328c3
sw x3, 0(x2) # store 0x35e328c3 in memory
flh f13, 0(x2) # load 0x35e328c3 from memory into f13
la x2, scratch
li x3, 0x3cebfc5b # load x3 with value 0x3cebfc5b
sw x3, 0(x2) # store 0x3cebfc5b in memory
flh f28, 0(x2) # load 0x3cebfc5b from memory into f28
fmul.h f25, f13, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x404c846a # load x3 with value 0x404c846a
sw x3, 0(x2) # store 0x404c846a in memory
flh f14, 0(x2) # load 0x404c846a from memory into f14
la x2, scratch
li x3, 0x070238d0 # load x3 with value 0x070238d0
sw x3, 0(x2) # store 0x070238d0 in memory
flh f17, 0(x2) # load 0x070238d0 from memory into f17
fmul.h f25, f14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x9acebae5 # load x3 with value 0x9acebae5
sw x3, 0(x2) # store 0x9acebae5 in memory
flh f15, 0(x2) # load 0x9acebae5 from memory into f15
la x2, scratch
li x3, 0xeb9698ac # load x3 with value 0xeb9698ac
sw x3, 0(x2) # store 0xeb9698ac in memory
flh f10, 0(x2) # load 0xeb9698ac from memory into f10
fmul.h f1, f15, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xba66208e # load x3 with value 0xba66208e
sw x3, 0(x2) # store 0xba66208e in memory
flh f16, 0(x2) # load 0xba66208e from memory into f16
la x2, scratch
li x3, 0xd753c89f # load x3 with value 0xd753c89f
sw x3, 0(x2) # store 0xd753c89f in memory
flh f18, 0(x2) # load 0xd753c89f from memory into f18
fmul.h f24, f16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x1fe995d3 # load x3 with value 0x1fe995d3
sw x3, 0(x2) # store 0x1fe995d3 in memory
flh f17, 0(x2) # load 0x1fe995d3 from memory into f17
la x2, scratch
li x3, 0xaffa0a09 # load x3 with value 0xaffa0a09
sw x3, 0(x2) # store 0xaffa0a09 in memory
flh f20, 0(x2) # load 0xaffa0a09 from memory into f20
fmul.h f28, f17, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xa813256b # load x3 with value 0xa813256b
sw x3, 0(x2) # store 0xa813256b in memory
flh f18, 0(x2) # load 0xa813256b from memory into f18
la x2, scratch
li x3, 0x258aff30 # load x3 with value 0x258aff30
sw x3, 0(x2) # store 0x258aff30 in memory
flh f21, 0(x2) # load 0x258aff30 from memory into f21
fmul.h f15, f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x73773426 # load x3 with value 0x73773426
sw x3, 0(x2) # store 0x73773426 in memory
flh f19, 0(x2) # load 0x73773426 from memory into f19
la x2, scratch
li x3, 0xe3bedf0d # load x3 with value 0xe3bedf0d
sw x3, 0(x2) # store 0xe3bedf0d in memory
flh f24, 0(x2) # load 0xe3bedf0d from memory into f24
fmul.h f31, f19, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xff826a14 # load x3 with value 0xff826a14
sw x3, 0(x2) # store 0xff826a14 in memory
flh f20, 0(x2) # load 0xff826a14 from memory into f20
la x2, scratch
li x3, 0xbca9af25 # load x3 with value 0xbca9af25
sw x3, 0(x2) # store 0xbca9af25 in memory
flh f26, 0(x2) # load 0xbca9af25 from memory into f26
fmul.h f6, f20, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x454e9ff2 # load x3 with value 0x454e9ff2
sw x3, 0(x2) # store 0x454e9ff2 in memory
flh f21, 0(x2) # load 0x454e9ff2 from memory into f21
la x2, scratch
li x3, 0x48983b2d # load x3 with value 0x48983b2d
sw x3, 0(x2) # store 0x48983b2d in memory
flh f10, 0(x2) # load 0x48983b2d from memory into f10
fmul.h f26, f21, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xc02237aa # load x3 with value 0xc02237aa
sw x3, 0(x2) # store 0xc02237aa in memory
flh f22, 0(x2) # load 0xc02237aa from memory into f22
la x2, scratch
li x3, 0x48a51eb4 # load x3 with value 0x48a51eb4
sw x3, 0(x2) # store 0x48a51eb4 in memory
flh f28, 0(x2) # load 0x48a51eb4 from memory into f28
fmul.h f22, f22, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xf28d0a54 # load x3 with value 0xf28d0a54
sw x3, 0(x2) # store 0xf28d0a54 in memory
flh f23, 0(x2) # load 0xf28d0a54 from memory into f23
la x2, scratch
li x3, 0x12f044bd # load x3 with value 0x12f044bd
sw x3, 0(x2) # store 0x12f044bd in memory
flh f30, 0(x2) # load 0x12f044bd from memory into f30
fmul.h f12, f23, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xde44a87d # load x3 with value 0xde44a87d
sw x3, 0(x2) # store 0xde44a87d in memory
flh f24, 0(x2) # load 0xde44a87d from memory into f24
la x2, scratch
li x3, 0x5174c94e # load x3 with value 0x5174c94e
sw x3, 0(x2) # store 0x5174c94e in memory
flh f14, 0(x2) # load 0x5174c94e from memory into f14
fmul.h f15, f24, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x63b14cd3 # load x3 with value 0x63b14cd3
sw x3, 0(x2) # store 0x63b14cd3 in memory
flh f25, 0(x2) # load 0x63b14cd3 from memory into f25
la x2, scratch
li x3, 0x1d6c3e68 # load x3 with value 0x1d6c3e68
sw x3, 0(x2) # store 0x1d6c3e68 in memory
flh f7, 0(x2) # load 0x1d6c3e68 from memory into f7
fmul.h f14, f25, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xc071aa67 # load x3 with value 0xc071aa67
sw x3, 0(x2) # store 0xc071aa67 in memory
flh f26, 0(x2) # load 0xc071aa67 from memory into f26
la x2, scratch
li x3, 0x4081fb3f # load x3 with value 0x4081fb3f
sw x3, 0(x2) # store 0x4081fb3f in memory
flh f14, 0(x2) # load 0x4081fb3f from memory into f14
fmul.h f31, f26, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x6b8c2b6f # load x3 with value 0x6b8c2b6f
sw x3, 0(x2) # store 0x6b8c2b6f in memory
flh f27, 0(x2) # load 0x6b8c2b6f from memory into f27
la x2, scratch
li x3, 0xe59c2bfd # load x3 with value 0xe59c2bfd
sw x3, 0(x2) # store 0xe59c2bfd in memory
flh f15, 0(x2) # load 0xe59c2bfd from memory into f15
fmul.h f25, f27, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x107dc18b # load x3 with value 0x107dc18b
sw x3, 0(x2) # store 0x107dc18b in memory
flh f28, 0(x2) # load 0x107dc18b from memory into f28
la x2, scratch
li x3, 0xe3cfb62a # load x3 with value 0xe3cfb62a
sw x3, 0(x2) # store 0xe3cfb62a in memory
flh f29, 0(x2) # load 0xe3cfb62a from memory into f29
fmul.h f31, f28, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xd54f1181 # load x3 with value 0xd54f1181
sw x3, 0(x2) # store 0xd54f1181 in memory
flh f29, 0(x2) # load 0xd54f1181 from memory into f29
la x2, scratch
li x3, 0x5d661972 # load x3 with value 0x5d661972
sw x3, 0(x2) # store 0x5d661972 in memory
flh f22, 0(x2) # load 0x5d661972 from memory into f22
fmul.h f1, f29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x9ed504a3 # load x3 with value 0x9ed504a3
sw x3, 0(x2) # store 0x9ed504a3 in memory
flh f30, 0(x2) # load 0x9ed504a3 from memory into f30
la x2, scratch
li x3, 0x9f64f3cb # load x3 with value 0x9f64f3cb
sw x3, 0(x2) # store 0x9f64f3cb in memory
flh f25, 0(x2) # load 0x9f64f3cb from memory into f25
fmul.h f6, f30, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x23b55929 # load x3 with value 0x23b55929
sw x3, 0(x2) # store 0x23b55929 in memory
flh f31, 0(x2) # load 0x23b55929 from memory into f31
la x2, scratch
li x3, 0xe75a3a3b # load x3 with value 0xe75a3a3b
sw x3, 0(x2) # store 0xe75a3a3b in memory
flh f24, 0(x2) # load 0xe75a3a3b from memory into f24
fmul.h f3, f31, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x0570bb68 # load x3 with value 0x0570bb68
sw x3, 0(x2) # store 0x0570bb68 in memory
flh f18, 0(x2) # load 0x0570bb68 from memory into f18
la x2, scratch
li x3, 0xebb798e2 # load x3 with value 0xebb798e2
sw x3, 0(x2) # store 0xebb798e2 in memory
flh f0, 0(x2) # load 0xebb798e2 from memory into f0
fmul.h f19, f18, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x9553e7b2 # load x3 with value 0x9553e7b2
sw x3, 0(x2) # store 0x9553e7b2 in memory
flh f10, 0(x2) # load 0x9553e7b2 from memory into f10
la x2, scratch
li x3, 0x759c8c03 # load x3 with value 0x759c8c03
sw x3, 0(x2) # store 0x759c8c03 in memory
flh f1, 0(x2) # load 0x759c8c03 from memory into f1
fmul.h f31, f10, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x3628a473 # load x3 with value 0x3628a473
sw x3, 0(x2) # store 0x3628a473 in memory
flh f28, 0(x2) # load 0x3628a473 from memory into f28
la x2, scratch
li x3, 0x5516c0cb # load x3 with value 0x5516c0cb
sw x3, 0(x2) # store 0x5516c0cb in memory
flh f2, 0(x2) # load 0x5516c0cb from memory into f2
fmul.h f20, f28, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xec3956c8 # load x3 with value 0xec3956c8
sw x3, 0(x2) # store 0xec3956c8 in memory
flh f25, 0(x2) # load 0xec3956c8 from memory into f25
la x2, scratch
li x3, 0xe9b7136e # load x3 with value 0xe9b7136e
sw x3, 0(x2) # store 0xe9b7136e in memory
flh f3, 0(x2) # load 0xe9b7136e from memory into f3
fmul.h f3, f25, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x12a901a7 # load x3 with value 0x12a901a7
sw x3, 0(x2) # store 0x12a901a7 in memory
flh f1, 0(x2) # load 0x12a901a7 from memory into f1
la x2, scratch
li x3, 0xe84e95d1 # load x3 with value 0xe84e95d1
sw x3, 0(x2) # store 0xe84e95d1 in memory
flh f4, 0(x2) # load 0xe84e95d1 from memory into f4
fmul.h f31, f1, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd3fcd7df # load x3 with value 0xd3fcd7df
sw x3, 0(x2) # store 0xd3fcd7df in memory
flh f27, 0(x2) # load 0xd3fcd7df from memory into f27
la x2, scratch
li x3, 0xc162173f # load x3 with value 0xc162173f
sw x3, 0(x2) # store 0xc162173f in memory
flh f5, 0(x2) # load 0xc162173f from memory into f5
fmul.h f17, f27, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6ee53170 # load x3 with value 0x6ee53170
sw x3, 0(x2) # store 0x6ee53170 in memory
flh f24, 0(x2) # load 0x6ee53170 from memory into f24
la x2, scratch
li x3, 0xd0739ff0 # load x3 with value 0xd0739ff0
sw x3, 0(x2) # store 0xd0739ff0 in memory
flh f6, 0(x2) # load 0xd0739ff0 from memory into f6
fmul.h f21, f24, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe4ca1a3e # load x3 with value 0xe4ca1a3e
sw x3, 0(x2) # store 0xe4ca1a3e in memory
flh f25, 0(x2) # load 0xe4ca1a3e from memory into f25
la x2, scratch
li x3, 0x49ae617e # load x3 with value 0x49ae617e
sw x3, 0(x2) # store 0x49ae617e in memory
flh f7, 0(x2) # load 0x49ae617e from memory into f7
fmul.h f8, f25, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x8d708739 # load x3 with value 0x8d708739
sw x3, 0(x2) # store 0x8d708739 in memory
flh f17, 0(x2) # load 0x8d708739 from memory into f17
la x2, scratch
li x3, 0x5f4b4fb2 # load x3 with value 0x5f4b4fb2
sw x3, 0(x2) # store 0x5f4b4fb2 in memory
flh f8, 0(x2) # load 0x5f4b4fb2 from memory into f8
fmul.h f9, f17, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x3ff6dec0 # load x3 with value 0x3ff6dec0
sw x3, 0(x2) # store 0x3ff6dec0 in memory
flh f3, 0(x2) # load 0x3ff6dec0 from memory into f3
la x2, scratch
li x3, 0x5a9cb2ae # load x3 with value 0x5a9cb2ae
sw x3, 0(x2) # store 0x5a9cb2ae in memory
flh f9, 0(x2) # load 0x5a9cb2ae from memory into f9
fmul.h f25, f3, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x0302725c # load x3 with value 0x0302725c
sw x3, 0(x2) # store 0x0302725c in memory
flh f31, 0(x2) # load 0x0302725c from memory into f31
la x2, scratch
li x3, 0x48e20257 # load x3 with value 0x48e20257
sw x3, 0(x2) # store 0x48e20257 in memory
flh f10, 0(x2) # load 0x48e20257 from memory into f10
fmul.h f3, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x42a4fa0a # load x3 with value 0x42a4fa0a
sw x3, 0(x2) # store 0x42a4fa0a in memory
flh f14, 0(x2) # load 0x42a4fa0a from memory into f14
la x2, scratch
li x3, 0x4ecc89ab # load x3 with value 0x4ecc89ab
sw x3, 0(x2) # store 0x4ecc89ab in memory
flh f11, 0(x2) # load 0x4ecc89ab from memory into f11
fmul.h f23, f14, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x84c6a708 # load x3 with value 0x84c6a708
sw x3, 0(x2) # store 0x84c6a708 in memory
flh f19, 0(x2) # load 0x84c6a708 from memory into f19
la x2, scratch
li x3, 0x21fce037 # load x3 with value 0x21fce037
sw x3, 0(x2) # store 0x21fce037 in memory
flh f12, 0(x2) # load 0x21fce037 from memory into f12
fmul.h f17, f19, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x702685de # load x3 with value 0x702685de
sw x3, 0(x2) # store 0x702685de in memory
flh f9, 0(x2) # load 0x702685de from memory into f9
la x2, scratch
li x3, 0xab48f249 # load x3 with value 0xab48f249
sw x3, 0(x2) # store 0xab48f249 in memory
flh f13, 0(x2) # load 0xab48f249 from memory into f13
fmul.h f29, f9, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xc6312b89 # load x3 with value 0xc6312b89
sw x3, 0(x2) # store 0xc6312b89 in memory
flh f22, 0(x2) # load 0xc6312b89 from memory into f22
la x2, scratch
li x3, 0x27387a89 # load x3 with value 0x27387a89
sw x3, 0(x2) # store 0x27387a89 in memory
flh f14, 0(x2) # load 0x27387a89 from memory into f14
fmul.h f19, f22, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xc5268f42 # load x3 with value 0xc5268f42
sw x3, 0(x2) # store 0xc5268f42 in memory
flh f12, 0(x2) # load 0xc5268f42 from memory into f12
la x2, scratch
li x3, 0x7697c7b1 # load x3 with value 0x7697c7b1
sw x3, 0(x2) # store 0x7697c7b1 in memory
flh f15, 0(x2) # load 0x7697c7b1 from memory into f15
fmul.h f24, f12, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x95a48556 # load x3 with value 0x95a48556
sw x3, 0(x2) # store 0x95a48556 in memory
flh f15, 0(x2) # load 0x95a48556 from memory into f15
la x2, scratch
li x3, 0x0210b2eb # load x3 with value 0x0210b2eb
sw x3, 0(x2) # store 0x0210b2eb in memory
flh f16, 0(x2) # load 0x0210b2eb from memory into f16
fmul.h f20, f15, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xca4ef630 # load x3 with value 0xca4ef630
sw x3, 0(x2) # store 0xca4ef630 in memory
flh f26, 0(x2) # load 0xca4ef630 from memory into f26
la x2, scratch
li x3, 0xf4a0bffd # load x3 with value 0xf4a0bffd
sw x3, 0(x2) # store 0xf4a0bffd in memory
flh f17, 0(x2) # load 0xf4a0bffd from memory into f17
fmul.h f7, f26, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x19440d79 # load x3 with value 0x19440d79
sw x3, 0(x2) # store 0x19440d79 in memory
flh f2, 0(x2) # load 0x19440d79 from memory into f2
la x2, scratch
li x3, 0x3112e8e1 # load x3 with value 0x3112e8e1
sw x3, 0(x2) # store 0x3112e8e1 in memory
flh f18, 0(x2) # load 0x3112e8e1 from memory into f18
fmul.h f1, f2, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xafaae2d0 # load x3 with value 0xafaae2d0
sw x3, 0(x2) # store 0xafaae2d0 in memory
flh f18, 0(x2) # load 0xafaae2d0 from memory into f18
la x2, scratch
li x3, 0x6a5758b6 # load x3 with value 0x6a5758b6
sw x3, 0(x2) # store 0x6a5758b6 in memory
flh f19, 0(x2) # load 0x6a5758b6 from memory into f19
fmul.h f15, f18, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x8edbf0e1 # load x3 with value 0x8edbf0e1
sw x3, 0(x2) # store 0x8edbf0e1 in memory
flh f5, 0(x2) # load 0x8edbf0e1 from memory into f5
la x2, scratch
li x3, 0x2d75bf73 # load x3 with value 0x2d75bf73
sw x3, 0(x2) # store 0x2d75bf73 in memory
flh f20, 0(x2) # load 0x2d75bf73 from memory into f20
fmul.h f21, f5, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xda6a2c0c # load x3 with value 0xda6a2c0c
sw x3, 0(x2) # store 0xda6a2c0c in memory
flh f7, 0(x2) # load 0xda6a2c0c from memory into f7
la x2, scratch
li x3, 0x5ff2ed92 # load x3 with value 0x5ff2ed92
sw x3, 0(x2) # store 0x5ff2ed92 in memory
flh f21, 0(x2) # load 0x5ff2ed92 from memory into f21
fmul.h f25, f7, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x83a4c061 # load x3 with value 0x83a4c061
sw x3, 0(x2) # store 0x83a4c061 in memory
flh f5, 0(x2) # load 0x83a4c061 from memory into f5
la x2, scratch
li x3, 0xac1aabb7 # load x3 with value 0xac1aabb7
sw x3, 0(x2) # store 0xac1aabb7 in memory
flh f22, 0(x2) # load 0xac1aabb7 from memory into f22
fmul.h f9, f5, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x5f9bb9a9 # load x3 with value 0x5f9bb9a9
sw x3, 0(x2) # store 0x5f9bb9a9 in memory
flh f24, 0(x2) # load 0x5f9bb9a9 from memory into f24
la x2, scratch
li x3, 0x3f5dfce7 # load x3 with value 0x3f5dfce7
sw x3, 0(x2) # store 0x3f5dfce7 in memory
flh f23, 0(x2) # load 0x3f5dfce7 from memory into f23
fmul.h f20, f24, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x15e73353 # load x3 with value 0x15e73353
sw x3, 0(x2) # store 0x15e73353 in memory
flh f29, 0(x2) # load 0x15e73353 from memory into f29
la x2, scratch
li x3, 0xd9419b40 # load x3 with value 0xd9419b40
sw x3, 0(x2) # store 0xd9419b40 in memory
flh f24, 0(x2) # load 0xd9419b40 from memory into f24
fmul.h f22, f29, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x2fa5bb19 # load x3 with value 0x2fa5bb19
sw x3, 0(x2) # store 0x2fa5bb19 in memory
flh f13, 0(x2) # load 0x2fa5bb19 from memory into f13
la x2, scratch
li x3, 0x2bda22d0 # load x3 with value 0x2bda22d0
sw x3, 0(x2) # store 0x2bda22d0 in memory
flh f25, 0(x2) # load 0x2bda22d0 from memory into f25
fmul.h f1, f13, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x905f0e07 # load x3 with value 0x905f0e07
sw x3, 0(x2) # store 0x905f0e07 in memory
flh f29, 0(x2) # load 0x905f0e07 from memory into f29
la x2, scratch
li x3, 0xde7d5b60 # load x3 with value 0xde7d5b60
sw x3, 0(x2) # store 0xde7d5b60 in memory
flh f26, 0(x2) # load 0xde7d5b60 from memory into f26
fmul.h f11, f29, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xab2bf424 # load x3 with value 0xab2bf424
sw x3, 0(x2) # store 0xab2bf424 in memory
flh f30, 0(x2) # load 0xab2bf424 from memory into f30
la x2, scratch
li x3, 0xda4aca82 # load x3 with value 0xda4aca82
sw x3, 0(x2) # store 0xda4aca82 in memory
flh f27, 0(x2) # load 0xda4aca82 from memory into f27
fmul.h f19, f30, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xafeeecd9 # load x3 with value 0xafeeecd9
sw x3, 0(x2) # store 0xafeeecd9 in memory
flh f8, 0(x2) # load 0xafeeecd9 from memory into f8
la x2, scratch
li x3, 0x949c741d # load x3 with value 0x949c741d
sw x3, 0(x2) # store 0x949c741d in memory
flh f28, 0(x2) # load 0x949c741d from memory into f28
fmul.h f7, f8, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x7d964e69 # load x3 with value 0x7d964e69
sw x3, 0(x2) # store 0x7d964e69 in memory
flh f20, 0(x2) # load 0x7d964e69 from memory into f20
la x2, scratch
li x3, 0x9678deec # load x3 with value 0x9678deec
sw x3, 0(x2) # store 0x9678deec in memory
flh f29, 0(x2) # load 0x9678deec from memory into f29
fmul.h f14, f20, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x4b65f284 # load x3 with value 0x4b65f284
sw x3, 0(x2) # store 0x4b65f284 in memory
flh f3, 0(x2) # load 0x4b65f284 from memory into f3
la x2, scratch
li x3, 0xfe3d43b9 # load x3 with value 0xfe3d43b9
sw x3, 0(x2) # store 0xfe3d43b9 in memory
flh f30, 0(x2) # load 0xfe3d43b9 from memory into f30
fmul.h f13, f3, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x9726cb5a # load x3 with value 0x9726cb5a
sw x3, 0(x2) # store 0x9726cb5a in memory
flh f30, 0(x2) # load 0x9726cb5a from memory into f30
la x2, scratch
li x3, 0xaddec753 # load x3 with value 0xaddec753
sw x3, 0(x2) # store 0xaddec753 in memory
flh f31, 0(x2) # load 0xaddec753 from memory into f31
fmul.h f7, f30, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x4ee4d225 # load x3 with value 0x4ee4d225
sw x3, 0(x2) # store 0x4ee4d225 in memory
flh f25, 0(x2) # load 0x4ee4d225 from memory into f25
la x2, scratch
li x3, 0x6a481011 # load x3 with value 0x6a481011
sw x3, 0(x2) # store 0x6a481011 in memory
flh f9, 0(x2) # load 0x6a481011 from memory into f9
fmul.h f0, f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x8a5a43fa # load x3 with value 0x8a5a43fa
sw x3, 0(x2) # store 0x8a5a43fa in memory
flh f12, 0(x2) # load 0x8a5a43fa from memory into f12
la x2, scratch
li x3, 0x0a8e9cab # load x3 with value 0x0a8e9cab
sw x3, 0(x2) # store 0x0a8e9cab in memory
flh f16, 0(x2) # load 0x0a8e9cab from memory into f16
fmul.h f1, f12, f16 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xa3e02232 # load x3 with value 0xa3e02232
sw x3, 0(x2) # store 0xa3e02232 in memory
flh f18, 0(x2) # load 0xa3e02232 from memory into f18
la x2, scratch
li x3, 0x22087005 # load x3 with value 0x22087005
sw x3, 0(x2) # store 0x22087005 in memory
flh f9, 0(x2) # load 0x22087005 from memory into f9
fmul.h f2, f18, f9 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0xe22a1835 # load x3 with value 0xe22a1835
sw x3, 0(x2) # store 0xe22a1835 in memory
flh f21, 0(x2) # load 0xe22a1835 from memory into f21
la x2, scratch
li x3, 0x14f8fa9c # load x3 with value 0x14f8fa9c
sw x3, 0(x2) # store 0x14f8fa9c in memory
flh f16, 0(x2) # load 0x14f8fa9c from memory into f16
fmul.h f3, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2dd0de11 # load x3 with value 0x2dd0de11
sw x3, 0(x2) # store 0x2dd0de11 in memory
flh f22, 0(x2) # load 0x2dd0de11 from memory into f22
la x2, scratch
li x3, 0x4ddddedc # load x3 with value 0x4ddddedc
sw x3, 0(x2) # store 0x4ddddedc in memory
flh f14, 0(x2) # load 0x4ddddedc from memory into f14
fmul.h f4, f22, f14 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1afdf0ba # load x3 with value 0x1afdf0ba
sw x3, 0(x2) # store 0x1afdf0ba in memory
flh f27, 0(x2) # load 0x1afdf0ba from memory into f27
la x2, scratch
li x3, 0xd14271bd # load x3 with value 0xd14271bd
sw x3, 0(x2) # store 0xd14271bd in memory
flh f8, 0(x2) # load 0xd14271bd from memory into f8
fmul.h f5, f27, f8 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdae68443 # load x3 with value 0xdae68443
sw x3, 0(x2) # store 0xdae68443 in memory
flh f12, 0(x2) # load 0xdae68443 from memory into f12
la x2, scratch
li x3, 0xed4da110 # load x3 with value 0xed4da110
sw x3, 0(x2) # store 0xed4da110 in memory
flh f18, 0(x2) # load 0xed4da110 from memory into f18
fmul.h f6, f12, f18 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4b67eee4 # load x3 with value 0x4b67eee4
sw x3, 0(x2) # store 0x4b67eee4 in memory
flh f11, 0(x2) # load 0x4b67eee4 from memory into f11
la x2, scratch
li x3, 0x9bed3e0e # load x3 with value 0x9bed3e0e
sw x3, 0(x2) # store 0x9bed3e0e in memory
flh f23, 0(x2) # load 0x9bed3e0e from memory into f23
fmul.h f7, f11, f23 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0xf7b27db6 # load x3 with value 0xf7b27db6
sw x3, 0(x2) # store 0xf7b27db6 in memory
flh f10, 0(x2) # load 0xf7b27db6 from memory into f10
la x2, scratch
li x3, 0x60c06d4f # load x3 with value 0x60c06d4f
sw x3, 0(x2) # store 0x60c06d4f in memory
flh f31, 0(x2) # load 0x60c06d4f from memory into f31
fmul.h f8, f10, f31 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x2715b8f9 # load x3 with value 0x2715b8f9
sw x3, 0(x2) # store 0x2715b8f9 in memory
flh f6, 0(x2) # load 0x2715b8f9 from memory into f6
la x2, scratch
li x3, 0x378df90f # load x3 with value 0x378df90f
sw x3, 0(x2) # store 0x378df90f in memory
flh f26, 0(x2) # load 0x378df90f from memory into f26
fmul.h f9, f6, f26 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x75f66f50 # load x3 with value 0x75f66f50
sw x3, 0(x2) # store 0x75f66f50 in memory
flh f11, 0(x2) # load 0x75f66f50 from memory into f11
la x2, scratch
li x3, 0x537fd435 # load x3 with value 0x537fd435
sw x3, 0(x2) # store 0x537fd435 in memory
flh f12, 0(x2) # load 0x537fd435 from memory into f12
fmul.h f10, f11, f12 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xa8bfa8a0 # load x3 with value 0xa8bfa8a0
sw x3, 0(x2) # store 0xa8bfa8a0 in memory
flh f19, 0(x2) # load 0xa8bfa8a0 from memory into f19
la x2, scratch
li x3, 0xc31891b6 # load x3 with value 0xc31891b6
sw x3, 0(x2) # store 0xc31891b6 in memory
flh f6, 0(x2) # load 0xc31891b6 from memory into f6
fmul.h f11, f19, f6 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xb30a3257 # load x3 with value 0xb30a3257
sw x3, 0(x2) # store 0xb30a3257 in memory
flh f7, 0(x2) # load 0xb30a3257 from memory into f7
la x2, scratch
li x3, 0x23504bf5 # load x3 with value 0x23504bf5
sw x3, 0(x2) # store 0x23504bf5 in memory
flh f15, 0(x2) # load 0x23504bf5 from memory into f15
fmul.h f12, f7, f15 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x2c330166 # load x3 with value 0x2c330166
sw x3, 0(x2) # store 0x2c330166 in memory
flh f27, 0(x2) # load 0x2c330166 from memory into f27
la x2, scratch
li x3, 0x24bfda7d # load x3 with value 0x24bfda7d
sw x3, 0(x2) # store 0x24bfda7d in memory
flh f25, 0(x2) # load 0x24bfda7d from memory into f25
fmul.h f13, f27, f25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x517db521 # load x3 with value 0x517db521
sw x3, 0(x2) # store 0x517db521 in memory
flh f14, 0(x2) # load 0x517db521 from memory into f14
la x2, scratch
li x3, 0x3ada4489 # load x3 with value 0x3ada4489
sw x3, 0(x2) # store 0x3ada4489 in memory
flh f21, 0(x2) # load 0x3ada4489 from memory into f21
fmul.h f14, f14, f21 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xfedf8a23 # load x3 with value 0xfedf8a23
sw x3, 0(x2) # store 0xfedf8a23 in memory
flh f21, 0(x2) # load 0xfedf8a23 from memory into f21
la x2, scratch
li x3, 0xd81357a1 # load x3 with value 0xd81357a1
sw x3, 0(x2) # store 0xd81357a1 in memory
flh f2, 0(x2) # load 0xd81357a1 from memory into f2
fmul.h f15, f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x712a82b5 # load x3 with value 0x712a82b5
sw x3, 0(x2) # store 0x712a82b5 in memory
flh f13, 0(x2) # load 0x712a82b5 from memory into f13
la x2, scratch
li x3, 0xd03aaf36 # load x3 with value 0xd03aaf36
sw x3, 0(x2) # store 0xd03aaf36 in memory
flh f9, 0(x2) # load 0xd03aaf36 from memory into f9
fmul.h f16, f13, f9 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x8f474730 # load x3 with value 0x8f474730
sw x3, 0(x2) # store 0x8f474730 in memory
flh f2, 0(x2) # load 0x8f474730 from memory into f2
la x2, scratch
li x3, 0x938b8514 # load x3 with value 0x938b8514
sw x3, 0(x2) # store 0x938b8514 in memory
flh f23, 0(x2) # load 0x938b8514 from memory into f23
fmul.h f17, f2, f23 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x7b7cc2c4 # load x3 with value 0x7b7cc2c4
sw x3, 0(x2) # store 0x7b7cc2c4 in memory
flh f31, 0(x2) # load 0x7b7cc2c4 from memory into f31
la x2, scratch
li x3, 0xf8d6c733 # load x3 with value 0xf8d6c733
sw x3, 0(x2) # store 0xf8d6c733 in memory
flh f20, 0(x2) # load 0xf8d6c733 from memory into f20
fmul.h f18, f31, f20 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x09952b3f # load x3 with value 0x09952b3f
sw x3, 0(x2) # store 0x09952b3f in memory
flh f31, 0(x2) # load 0x09952b3f from memory into f31
la x2, scratch
li x3, 0xb7a0a375 # load x3 with value 0xb7a0a375
sw x3, 0(x2) # store 0xb7a0a375 in memory
flh f16, 0(x2) # load 0xb7a0a375 from memory into f16
fmul.h f19, f31, f16 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x15eff904 # load x3 with value 0x15eff904
sw x3, 0(x2) # store 0x15eff904 in memory
flh f13, 0(x2) # load 0x15eff904 from memory into f13
la x2, scratch
li x3, 0x634d8acc # load x3 with value 0x634d8acc
sw x3, 0(x2) # store 0x634d8acc in memory
flh f7, 0(x2) # load 0x634d8acc from memory into f7
fmul.h f20, f13, f7 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xc7a9cb98 # load x3 with value 0xc7a9cb98
sw x3, 0(x2) # store 0xc7a9cb98 in memory
flh f2, 0(x2) # load 0xc7a9cb98 from memory into f2
la x2, scratch
li x3, 0xc77ffbd4 # load x3 with value 0xc77ffbd4
sw x3, 0(x2) # store 0xc77ffbd4 in memory
flh f12, 0(x2) # load 0xc77ffbd4 from memory into f12
fmul.h f21, f2, f12 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x3dd22d29 # load x3 with value 0x3dd22d29
sw x3, 0(x2) # store 0x3dd22d29 in memory
flh f10, 0(x2) # load 0x3dd22d29 from memory into f10
la x2, scratch
li x3, 0xacff750a # load x3 with value 0xacff750a
sw x3, 0(x2) # store 0xacff750a in memory
flh f21, 0(x2) # load 0xacff750a from memory into f21
fmul.h f22, f10, f21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x01c6131f # load x3 with value 0x01c6131f
sw x3, 0(x2) # store 0x01c6131f in memory
flh f8, 0(x2) # load 0x01c6131f from memory into f8
la x2, scratch
li x3, 0x0cbca4d1 # load x3 with value 0x0cbca4d1
sw x3, 0(x2) # store 0x0cbca4d1 in memory
flh f17, 0(x2) # load 0x0cbca4d1 from memory into f17
fmul.h f23, f8, f17 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0xa8c03509 # load x3 with value 0xa8c03509
sw x3, 0(x2) # store 0xa8c03509 in memory
flh f19, 0(x2) # load 0xa8c03509 from memory into f19
la x2, scratch
li x3, 0x658f176d # load x3 with value 0x658f176d
sw x3, 0(x2) # store 0x658f176d in memory
flh f17, 0(x2) # load 0x658f176d from memory into f17
fmul.h f24, f19, f17 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x1b0e9319 # load x3 with value 0x1b0e9319
sw x3, 0(x2) # store 0x1b0e9319 in memory
flh f3, 0(x2) # load 0x1b0e9319 from memory into f3
la x2, scratch
li x3, 0xba286da9 # load x3 with value 0xba286da9
sw x3, 0(x2) # store 0xba286da9 in memory
flh f19, 0(x2) # load 0xba286da9 from memory into f19
fmul.h f25, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xde764900 # load x3 with value 0xde764900
sw x3, 0(x2) # store 0xde764900 in memory
flh f9, 0(x2) # load 0xde764900 from memory into f9
la x2, scratch
li x3, 0xd999eef5 # load x3 with value 0xd999eef5
sw x3, 0(x2) # store 0xd999eef5 in memory
flh f19, 0(x2) # load 0xd999eef5 from memory into f19
fmul.h f26, f9, f19 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x06d6634d # load x3 with value 0x06d6634d
sw x3, 0(x2) # store 0x06d6634d in memory
flh f5, 0(x2) # load 0x06d6634d from memory into f5
la x2, scratch
li x3, 0xd44d2195 # load x3 with value 0xd44d2195
sw x3, 0(x2) # store 0xd44d2195 in memory
flh f17, 0(x2) # load 0xd44d2195 from memory into f17
fmul.h f27, f5, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0xdd836b95 # load x3 with value 0xdd836b95
sw x3, 0(x2) # store 0xdd836b95 in memory
flh f3, 0(x2) # load 0xdd836b95 from memory into f3
la x2, scratch
li x3, 0x179c41e1 # load x3 with value 0x179c41e1
sw x3, 0(x2) # store 0x179c41e1 in memory
flh f19, 0(x2) # load 0x179c41e1 from memory into f19
fmul.h f28, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x3bcf2375 # load x3 with value 0x3bcf2375
sw x3, 0(x2) # store 0x3bcf2375 in memory
flh f1, 0(x2) # load 0x3bcf2375 from memory into f1
la x2, scratch
li x3, 0x06c55f1d # load x3 with value 0x06c55f1d
sw x3, 0(x2) # store 0x06c55f1d in memory
flh f15, 0(x2) # load 0x06c55f1d from memory into f15
fmul.h f29, f1, f15 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x977ec70a # load x3 with value 0x977ec70a
sw x3, 0(x2) # store 0x977ec70a in memory
flh f17, 0(x2) # load 0x977ec70a from memory into f17
la x2, scratch
li x3, 0x05ae94ac # load x3 with value 0x05ae94ac
sw x3, 0(x2) # store 0x05ae94ac in memory
flh f5, 0(x2) # load 0x05ae94ac from memory into f5
fmul.h f30, f17, f5 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0xbcadbe61 # load x3 with value 0xbcadbe61
sw x3, 0(x2) # store 0xbcadbe61 in memory
flh f24, 0(x2) # load 0xbcadbe61 from memory into f24
la x2, scratch
li x3, 0xb906856c # load x3 with value 0xb906856c
sw x3, 0(x2) # store 0xb906856c in memory
flh f18, 0(x2) # load 0xb906856c from memory into f18
fmul.h f31, f24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x8a0505c4 # load x3 with value 0x8a0505c4
sw x3, 0(x2) # store 0x8a0505c4 in memory
flh f10, 0(x2) # load 0x8a0505c4 from memory into f10
fmul.h f18, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0xa1e732b7 # load x3 with value 0xa1e732b7
sw x3, 0(x2) # store 0xa1e732b7 in memory
flh f7, 0(x2) # load 0xa1e732b7 from memory into f7
fmul.h f3, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x42adf83e # load x3 with value 0x42adf83e
sw x3, 0(x2) # store 0x42adf83e in memory
flh f17, 0(x2) # load 0x42adf83e from memory into f17
fmul.h f28, f24, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x2, scratch
li x3, 0xeeab9675 # load x3 with value 0xeeab9675
sw x3, 0(x2) # store 0xeeab9675 in memory
flh f18, 0(x2) # load 0xeeab9675 from memory into f18
fmul.h f27, f31, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x2, scratch
li x3, 0x5abae9f8 # load x3 with value 0x5abae9f8
sw x3, 0(x2) # store 0x5abae9f8 in memory
flh f5, 0(x2) # load 0x5abae9f8 from memory into f5
fmul.h f26, f11, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x9d07f2a3 # load x3 with value 0x9d07f2a3
sw x3, 0(x2) # store 0x9d07f2a3 in memory
flh f25, 0(x2) # load 0x9d07f2a3 from memory into f25
fmul.h f17, f15, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x98815f53 # load x3 with value 0x98815f53
sw x3, 0(x2) # store 0x98815f53 in memory
flh f14, 0(x2) # load 0x98815f53 from memory into f14
fmul.h f25, f22, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x60629e83 # load x3 with value 0x60629e83
sw x3, 0(x2) # store 0x60629e83 in memory
flh f10, 0(x2) # load 0x60629e83 from memory into f10
fmul.h f27, f6, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x03a0206f # load x3 with value 0x03a0206f
sw x3, 0(x2) # store 0x03a0206f in memory
flh f10, 0(x2) # load 0x03a0206f from memory into f10
fmul.h f15, f8, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x4263e5f2 # load x3 with value 0x4263e5f2
sw x3, 0(x2) # store 0x4263e5f2 in memory
flh f11, 0(x2) # load 0x4263e5f2 from memory into f11
fmul.h f23, f26, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0xf7532b0a # load x3 with value 0xf7532b0a
sw x3, 0(x2) # store 0xf7532b0a in memory
flh f9, 0(x2) # load 0xf7532b0a from memory into f9
fmul.h f1, f8, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x1ed62e76 # load x3 with value 0x1ed62e76
sw x3, 0(x2) # store 0x1ed62e76 in memory
flh f17, 0(x2) # load 0x1ed62e76 from memory into f17
fmul.h f12, f20, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0xf4dd0457 # load x3 with value 0xf4dd0457
sw x3, 0(x2) # store 0xf4dd0457 in memory
flh f25, 0(x2) # load 0xf4dd0457 from memory into f25
fmul.h f9, f31, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0xe8055ac8 # load x3 with value 0xe8055ac8
sw x3, 0(x2) # store 0xe8055ac8 in memory
flh f25, 0(x2) # load 0xe8055ac8 from memory into f25
fmul.h f21, f3, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x2cc7da22 # load x3 with value 0x2cc7da22
sw x3, 0(x2) # store 0x2cc7da22 in memory
flh f12, 0(x2) # load 0x2cc7da22 from memory into f12
fmul.h f31, f17, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x2a95356a # load x3 with value 0x2a95356a
sw x3, 0(x2) # store 0x2a95356a in memory
flh f11, 0(x2) # load 0x2a95356a from memory into f11
fmul.h f22, f19, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0xb9e8d8d1 # load x3 with value 0xb9e8d8d1
sw x3, 0(x2) # store 0xb9e8d8d1 in memory
flh f9, 0(x2) # load 0xb9e8d8d1 from memory into f9
fmul.h f31, f17, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x996a1fb6 # load x3 with value 0x996a1fb6
sw x3, 0(x2) # store 0x996a1fb6 in memory
flh f24, 0(x2) # load 0x996a1fb6 from memory into f24
fmul.h f18, f30, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x9114b422 # load x3 with value 0x9114b422
sw x3, 0(x2) # store 0x9114b422 in memory
flh f31, 0(x2) # load 0x9114b422 from memory into f31
fmul.h f17, f24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
la x2, scratch
li x3, 0x4e70afa2 # load x3 with value 0x4e70afa2
sw x3, 0(x2) # store 0x4e70afa2 in memory
flh f18, 0(x2) # load 0x4e70afa2 from memory into f18
fmul.h f5, f21, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0xa1e5baae # load x3 with value 0xa1e5baae
sw x3, 0(x2) # store 0xa1e5baae in memory
flh f15, 0(x2) # load 0xa1e5baae from memory into f15
fmul.h f22, f20, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x6f58b524 # load x3 with value 0x6f58b524
sw x3, 0(x2) # store 0x6f58b524 in memory
flh f16, 0(x2) # load 0x6f58b524 from memory into f16
fmul.h f27, f18, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0xc935e46f # load x3 with value 0xc935e46f
sw x3, 0(x2) # store 0xc935e46f in memory
flh f20, 0(x2) # load 0xc935e46f from memory into f20
fmul.h f11, f29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
la x2, scratch
li x3, 0x917abdc2 # load x3 with value 0x917abdc2
sw x3, 0(x2) # store 0x917abdc2 in memory
flh f2, 0(x2) # load 0x917abdc2 from memory into f2
fmul.h f30, f10, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
la x2, scratch
li x3, 0x79a4e84f # load x3 with value 0x79a4e84f
sw x3, 0(x2) # store 0x79a4e84f in memory
flh f22, 0(x2) # load 0x79a4e84f from memory into f22
fmul.h f11, f10, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x203349bd # load x3 with value 0x203349bd
sw x3, 0(x2) # store 0x203349bd in memory
flh f20, 0(x2) # load 0x203349bd from memory into f20
fmul.h f24, f23, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x4b26d87b # load x3 with value 0x4b26d87b
sw x3, 0(x2) # store 0x4b26d87b in memory
flh f10, 0(x2) # load 0x4b26d87b from memory into f10
fmul.h f23, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0xa068f827 # load x3 with value 0xa068f827
sw x3, 0(x2) # store 0xa068f827 in memory
flh f25, 0(x2) # load 0xa068f827 from memory into f25
fmul.h f24, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x4f9c883c # load x3 with value 0x4f9c883c
sw x3, 0(x2) # store 0x4f9c883c in memory
flh f24, 0(x2) # load 0x4f9c883c from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f27, f24, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x5e69042b # load x3 with value 0x5e69042b
sw x3, 0(x2) # store 0x5e69042b in memory
flh f10, 0(x2) # load 0x5e69042b from memory into f10
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmul.h f1, f10, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x405bc689 # load x3 with value 0x405bc689
sw x3, 0(x2) # store 0x405bc689 in memory
flh f5, 0(x2) # load 0x405bc689 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmul.h f11, f5, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x470ec509 # load x3 with value 0x470ec509
sw x3, 0(x2) # store 0x470ec509 in memory
flh f7, 0(x2) # load 0x470ec509 from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fmul.h f8, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x14837e49 # load x3 with value 0x14837e49
sw x3, 0(x2) # store 0x14837e49 in memory
flh f27, 0(x2) # load 0x14837e49 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmul.h f13, f27, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0xcc1e92d7 # load x3 with value 0xcc1e92d7
sw x3, 0(x2) # store 0xcc1e92d7 in memory
flh f18, 0(x2) # load 0xcc1e92d7 from memory into f18
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmul.h f15, f18, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x48d21c88 # load x3 with value 0x48d21c88
sw x3, 0(x2) # store 0x48d21c88 in memory
flh f16, 0(x2) # load 0x48d21c88 from memory into f16
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmul.h f3, f16, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x57126619 # load x3 with value 0x57126619
sw x3, 0(x2) # store 0x57126619 in memory
flh f26, 0(x2) # load 0x57126619 from memory into f26
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmul.h f19, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x89e0da91 # load x3 with value 0x89e0da91
sw x3, 0(x2) # store 0x89e0da91 in memory
flh f26, 0(x2) # load 0x89e0da91 from memory into f26
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmul.h f25, f26, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x2a823fb9 # load x3 with value 0x2a823fb9
sw x3, 0(x2) # store 0x2a823fb9 in memory
flh f11, 0(x2) # load 0x2a823fb9 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmul.h f1, f11, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x77d4d44d # load x3 with value 0x77d4d44d
sw x3, 0(x2) # store 0x77d4d44d in memory
flh f11, 0(x2) # load 0x77d4d44d from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f19, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x1ebddfa2 # load x3 with value 0x1ebddfa2
sw x3, 0(x2) # store 0x1ebddfa2 in memory
flh f2, 0(x2) # load 0x1ebddfa2 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmul.h f22, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x969192a8 # load x3 with value 0x969192a8
sw x3, 0(x2) # store 0x969192a8 in memory
flh f23, 0(x2) # load 0x969192a8 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmul.h f18, f23, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x38badfb3 # load x3 with value 0x38badfb3
sw x3, 0(x2) # store 0x38badfb3 in memory
flh f15, 0(x2) # load 0x38badfb3 from memory into f15
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmul.h f16, f15, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x495231ce # load x3 with value 0x495231ce
sw x3, 0(x2) # store 0x495231ce in memory
flh f28, 0(x2) # load 0x495231ce from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fmul.h f8, f28, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x15870bfd # load x3 with value 0x15870bfd
sw x3, 0(x2) # store 0x15870bfd in memory
flh f15, 0(x2) # load 0x15870bfd from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f27, f15, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x65850905 # load x3 with value 0x65850905
sw x3, 0(x2) # store 0x65850905 in memory
flh f13, 0(x2) # load 0x65850905 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f26, f13, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x8bdcc66b # load x3 with value 0x8bdcc66b
sw x3, 0(x2) # store 0x8bdcc66b in memory
flh f24, 0(x2) # load 0x8bdcc66b from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmul.h f12, f24, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x9f58fbfd # load x3 with value 0x9f58fbfd
sw x3, 0(x2) # store 0x9f58fbfd in memory
flh f31, 0(x2) # load 0x9f58fbfd from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmul.h f19, f31, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0xc7784e40 # load x3 with value 0xc7784e40
sw x3, 0(x2) # store 0xc7784e40 in memory
flh f5, 0(x2) # load 0xc7784e40 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmul.h f13, f5, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0xe12215c8 # load x3 with value 0xe12215c8
sw x3, 0(x2) # store 0xe12215c8 in memory
flh f24, 0(x2) # load 0xe12215c8 from memory into f24
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmul.h f9, f24, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0xde51b791 # load x3 with value 0xde51b791
sw x3, 0(x2) # store 0xde51b791 in memory
flh f17, 0(x2) # load 0xde51b791 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmul.h f1, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x9eff50ba # load x3 with value 0x9eff50ba
sw x3, 0(x2) # store 0x9eff50ba in memory
flh f5, 0(x2) # load 0x9eff50ba from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fmul.h f28, f5, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x99ddec54 # load x3 with value 0x99ddec54
sw x3, 0(x2) # store 0x99ddec54 in memory
flh f11, 0(x2) # load 0x99ddec54 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmul.h f27, f11, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0xeb10f41f # load x3 with value 0xeb10f41f
sw x3, 0(x2) # store 0xeb10f41f in memory
flh f8, 0(x2) # load 0xeb10f41f from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fmul.h f1, f8, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0xedc2cb52 # load x3 with value 0xedc2cb52
sw x3, 0(x2) # store 0xedc2cb52 in memory
flh f23, 0(x2) # load 0xedc2cb52 from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmul.h f6, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x4da53d34 # load x3 with value 0x4da53d34
sw x3, 0(x2) # store 0x4da53d34 in memory
flh f9, 0(x2) # load 0x4da53d34 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmul.h f22, f9, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0xd51f664d # load x3 with value 0xd51f664d
sw x3, 0(x2) # store 0xd51f664d in memory
flh f27, 0(x2) # load 0xd51f664d from memory into f27
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fmul.h f19, f27, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xc77002a4 # load x3 with value 0xc77002a4
sw x3, 0(x2) # store 0xc77002a4 in memory
flh f0, 0(x2) # load 0xc77002a4 from memory into f0
la x2, scratch
li x3, 0x582d0d25 # load x3 with value 0x582d0d25
sw x3, 0(x2) # store 0x582d0d25 in memory
flh f26, 0(x2) # load 0x582d0d25 from memory into f26
fmul.h f0, f0, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x45e27667 # load x3 with value 0x45e27667
sw x3, 0(x2) # store 0x45e27667 in memory
flh f1, 0(x2) # load 0x45e27667 from memory into f1
la x2, scratch
li x3, 0x1ec2f12e # load x3 with value 0x1ec2f12e
sw x3, 0(x2) # store 0x1ec2f12e in memory
flh f22, 0(x2) # load 0x1ec2f12e from memory into f22
fmul.h f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x6327a98e # load x3 with value 0x6327a98e
sw x3, 0(x2) # store 0x6327a98e in memory
flh f2, 0(x2) # load 0x6327a98e from memory into f2
la x2, scratch
li x3, 0x6819f4cb # load x3 with value 0x6819f4cb
sw x3, 0(x2) # store 0x6819f4cb in memory
flh f18, 0(x2) # load 0x6819f4cb from memory into f18
fmul.h f2, f2, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x0bb6ee8d # load x3 with value 0x0bb6ee8d
sw x3, 0(x2) # store 0x0bb6ee8d in memory
flh f3, 0(x2) # load 0x0bb6ee8d from memory into f3
la x2, scratch
li x3, 0xf56c0867 # load x3 with value 0xf56c0867
sw x3, 0(x2) # store 0xf56c0867 in memory
flh f29, 0(x2) # load 0xf56c0867 from memory into f29
fmul.h f3, f3, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2d311438 # load x3 with value 0x2d311438
sw x3, 0(x2) # store 0x2d311438 in memory
flh f4, 0(x2) # load 0x2d311438 from memory into f4
la x2, scratch
li x3, 0x78922949 # load x3 with value 0x78922949
sw x3, 0(x2) # store 0x78922949 in memory
flh f31, 0(x2) # load 0x78922949 from memory into f31
fmul.h f4, f4, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa898e030 # load x3 with value 0xa898e030
sw x3, 0(x2) # store 0xa898e030 in memory
flh f5, 0(x2) # load 0xa898e030 from memory into f5
la x2, scratch
li x3, 0x17763b60 # load x3 with value 0x17763b60
sw x3, 0(x2) # store 0x17763b60 in memory
flh f19, 0(x2) # load 0x17763b60 from memory into f19
fmul.h f5, f5, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc587be71 # load x3 with value 0xc587be71
sw x3, 0(x2) # store 0xc587be71 in memory
flh f6, 0(x2) # load 0xc587be71 from memory into f6
la x2, scratch
li x3, 0x373a7e2f # load x3 with value 0x373a7e2f
sw x3, 0(x2) # store 0x373a7e2f in memory
flh f1, 0(x2) # load 0x373a7e2f from memory into f1
fmul.h f6, f6, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe4280a0d # load x3 with value 0xe4280a0d
sw x3, 0(x2) # store 0xe4280a0d in memory
flh f7, 0(x2) # load 0xe4280a0d from memory into f7
la x2, scratch
li x3, 0xfe808761 # load x3 with value 0xfe808761
sw x3, 0(x2) # store 0xfe808761 in memory
flh f1, 0(x2) # load 0xfe808761 from memory into f1
fmul.h f7, f7, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x8b4477ff # load x3 with value 0x8b4477ff
sw x3, 0(x2) # store 0x8b4477ff in memory
flh f8, 0(x2) # load 0x8b4477ff from memory into f8
la x2, scratch
li x3, 0x0f8d64f2 # load x3 with value 0x0f8d64f2
sw x3, 0(x2) # store 0x0f8d64f2 in memory
flh f13, 0(x2) # load 0x0f8d64f2 from memory into f13
fmul.h f8, f8, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x1a507ef9 # load x3 with value 0x1a507ef9
sw x3, 0(x2) # store 0x1a507ef9 in memory
flh f9, 0(x2) # load 0x1a507ef9 from memory into f9
la x2, scratch
li x3, 0xc99f3391 # load x3 with value 0xc99f3391
sw x3, 0(x2) # store 0xc99f3391 in memory
flh f23, 0(x2) # load 0xc99f3391 from memory into f23
fmul.h f9, f9, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xaaf6e6c6 # load x3 with value 0xaaf6e6c6
sw x3, 0(x2) # store 0xaaf6e6c6 in memory
flh f10, 0(x2) # load 0xaaf6e6c6 from memory into f10
la x2, scratch
li x3, 0x97c37f9c # load x3 with value 0x97c37f9c
sw x3, 0(x2) # store 0x97c37f9c in memory
flh f23, 0(x2) # load 0x97c37f9c from memory into f23
fmul.h f10, f10, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x59708019 # load x3 with value 0x59708019
sw x3, 0(x2) # store 0x59708019 in memory
flh f11, 0(x2) # load 0x59708019 from memory into f11
la x2, scratch
li x3, 0x1860c40a # load x3 with value 0x1860c40a
sw x3, 0(x2) # store 0x1860c40a in memory
flh f1, 0(x2) # load 0x1860c40a from memory into f1
fmul.h f11, f11, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xcd0537d3 # load x3 with value 0xcd0537d3
sw x3, 0(x2) # store 0xcd0537d3 in memory
flh f12, 0(x2) # load 0xcd0537d3 from memory into f12
la x2, scratch
li x3, 0xa96947bf # load x3 with value 0xa96947bf
sw x3, 0(x2) # store 0xa96947bf in memory
flh f10, 0(x2) # load 0xa96947bf from memory into f10
fmul.h f12, f12, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x372d471c # load x3 with value 0x372d471c
sw x3, 0(x2) # store 0x372d471c in memory
flh f13, 0(x2) # load 0x372d471c from memory into f13
la x2, scratch
li x3, 0x52ab0e40 # load x3 with value 0x52ab0e40
sw x3, 0(x2) # store 0x52ab0e40 in memory
flh f17, 0(x2) # load 0x52ab0e40 from memory into f17
fmul.h f13, f13, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x5fd60385 # load x3 with value 0x5fd60385
sw x3, 0(x2) # store 0x5fd60385 in memory
flh f14, 0(x2) # load 0x5fd60385 from memory into f14
la x2, scratch
li x3, 0x96e99e38 # load x3 with value 0x96e99e38
sw x3, 0(x2) # store 0x96e99e38 in memory
flh f12, 0(x2) # load 0x96e99e38 from memory into f12
fmul.h f14, f14, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x43da5a8e # load x3 with value 0x43da5a8e
sw x3, 0(x2) # store 0x43da5a8e in memory
flh f15, 0(x2) # load 0x43da5a8e from memory into f15
la x2, scratch
li x3, 0xbaa6ef6b # load x3 with value 0xbaa6ef6b
sw x3, 0(x2) # store 0xbaa6ef6b in memory
flh f24, 0(x2) # load 0xbaa6ef6b from memory into f24
fmul.h f15, f15, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x2f89c0fa # load x3 with value 0x2f89c0fa
sw x3, 0(x2) # store 0x2f89c0fa in memory
flh f16, 0(x2) # load 0x2f89c0fa from memory into f16
la x2, scratch
li x3, 0xa1b44e6d # load x3 with value 0xa1b44e6d
sw x3, 0(x2) # store 0xa1b44e6d in memory
flh f9, 0(x2) # load 0xa1b44e6d from memory into f9
fmul.h f16, f16, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x93d15061 # load x3 with value 0x93d15061
sw x3, 0(x2) # store 0x93d15061 in memory
flh f17, 0(x2) # load 0x93d15061 from memory into f17
la x2, scratch
li x3, 0x9112821f # load x3 with value 0x9112821f
sw x3, 0(x2) # store 0x9112821f in memory
flh f8, 0(x2) # load 0x9112821f from memory into f8
fmul.h f17, f17, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xd3209129 # load x3 with value 0xd3209129
sw x3, 0(x2) # store 0xd3209129 in memory
flh f18, 0(x2) # load 0xd3209129 from memory into f18
la x2, scratch
li x3, 0x8b28db2a # load x3 with value 0x8b28db2a
sw x3, 0(x2) # store 0x8b28db2a in memory
flh f17, 0(x2) # load 0x8b28db2a from memory into f17
fmul.h f18, f18, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xf9ab02ea # load x3 with value 0xf9ab02ea
sw x3, 0(x2) # store 0xf9ab02ea in memory
flh f19, 0(x2) # load 0xf9ab02ea from memory into f19
la x2, scratch
li x3, 0x8a652ad4 # load x3 with value 0x8a652ad4
sw x3, 0(x2) # store 0x8a652ad4 in memory
flh f23, 0(x2) # load 0x8a652ad4 from memory into f23
fmul.h f19, f19, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0xc2fd8b7e # load x3 with value 0xc2fd8b7e
sw x3, 0(x2) # store 0xc2fd8b7e in memory
flh f20, 0(x2) # load 0xc2fd8b7e from memory into f20
la x2, scratch
li x3, 0x4981e7a1 # load x3 with value 0x4981e7a1
sw x3, 0(x2) # store 0x4981e7a1 in memory
flh f18, 0(x2) # load 0x4981e7a1 from memory into f18
fmul.h f20, f20, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xb4cceb38 # load x3 with value 0xb4cceb38
sw x3, 0(x2) # store 0xb4cceb38 in memory
flh f21, 0(x2) # load 0xb4cceb38 from memory into f21
la x2, scratch
li x3, 0xcc15eef9 # load x3 with value 0xcc15eef9
sw x3, 0(x2) # store 0xcc15eef9 in memory
flh f12, 0(x2) # load 0xcc15eef9 from memory into f12
fmul.h f21, f21, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x2045f210 # load x3 with value 0x2045f210
sw x3, 0(x2) # store 0x2045f210 in memory
flh f22, 0(x2) # load 0x2045f210 from memory into f22
la x2, scratch
li x3, 0x53871b3b # load x3 with value 0x53871b3b
sw x3, 0(x2) # store 0x53871b3b in memory
flh f19, 0(x2) # load 0x53871b3b from memory into f19
fmul.h f22, f22, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x038c562a # load x3 with value 0x038c562a
sw x3, 0(x2) # store 0x038c562a in memory
flh f23, 0(x2) # load 0x038c562a from memory into f23
la x2, scratch
li x3, 0xe3a778dc # load x3 with value 0xe3a778dc
sw x3, 0(x2) # store 0xe3a778dc in memory
flh f30, 0(x2) # load 0xe3a778dc from memory into f30
fmul.h f23, f23, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x33ceb644 # load x3 with value 0x33ceb644
sw x3, 0(x2) # store 0x33ceb644 in memory
flh f24, 0(x2) # load 0x33ceb644 from memory into f24
la x2, scratch
li x3, 0xc4127bd2 # load x3 with value 0xc4127bd2
sw x3, 0(x2) # store 0xc4127bd2 in memory
flh f2, 0(x2) # load 0xc4127bd2 from memory into f2
fmul.h f24, f24, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x7fd3aef1 # load x3 with value 0x7fd3aef1
sw x3, 0(x2) # store 0x7fd3aef1 in memory
flh f25, 0(x2) # load 0x7fd3aef1 from memory into f25
la x2, scratch
li x3, 0xb6457cc9 # load x3 with value 0xb6457cc9
sw x3, 0(x2) # store 0xb6457cc9 in memory
flh f17, 0(x2) # load 0xb6457cc9 from memory into f17
fmul.h f25, f25, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x7fdc05b8 # load x3 with value 0x7fdc05b8
sw x3, 0(x2) # store 0x7fdc05b8 in memory
flh f26, 0(x2) # load 0x7fdc05b8 from memory into f26
la x2, scratch
li x3, 0xa3376f95 # load x3 with value 0xa3376f95
sw x3, 0(x2) # store 0xa3376f95 in memory
flh f5, 0(x2) # load 0xa3376f95 from memory into f5
fmul.h f26, f26, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x5c227270 # load x3 with value 0x5c227270
sw x3, 0(x2) # store 0x5c227270 in memory
flh f27, 0(x2) # load 0x5c227270 from memory into f27
la x2, scratch
li x3, 0x6b83dca0 # load x3 with value 0x6b83dca0
sw x3, 0(x2) # store 0x6b83dca0 in memory
flh f1, 0(x2) # load 0x6b83dca0 from memory into f1
fmul.h f27, f27, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x94fadeb4 # load x3 with value 0x94fadeb4
sw x3, 0(x2) # store 0x94fadeb4 in memory
flh f28, 0(x2) # load 0x94fadeb4 from memory into f28
la x2, scratch
li x3, 0x3c338fb3 # load x3 with value 0x3c338fb3
sw x3, 0(x2) # store 0x3c338fb3 in memory
flh f22, 0(x2) # load 0x3c338fb3 from memory into f22
fmul.h f28, f28, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0x0b80e56a # load x3 with value 0x0b80e56a
sw x3, 0(x2) # store 0x0b80e56a in memory
flh f29, 0(x2) # load 0x0b80e56a from memory into f29
la x2, scratch
li x3, 0x13a8912e # load x3 with value 0x13a8912e
sw x3, 0(x2) # store 0x13a8912e in memory
flh f13, 0(x2) # load 0x13a8912e from memory into f13
fmul.h f29, f29, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x9a9a40c8 # load x3 with value 0x9a9a40c8
sw x3, 0(x2) # store 0x9a9a40c8 in memory
flh f30, 0(x2) # load 0x9a9a40c8 from memory into f30
la x2, scratch
li x3, 0x545adecd # load x3 with value 0x545adecd
sw x3, 0(x2) # store 0x545adecd in memory
flh f8, 0(x2) # load 0x545adecd from memory into f8
fmul.h f30, f30, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x2d4d3157 # load x3 with value 0x2d4d3157
sw x3, 0(x2) # store 0x2d4d3157 in memory
flh f31, 0(x2) # load 0x2d4d3157 from memory into f31
la x2, scratch
li x3, 0x9c9d3a2f # load x3 with value 0x9c9d3a2f
sw x3, 0(x2) # store 0x9c9d3a2f in memory
flh f12, 0(x2) # load 0x9c9d3a2f from memory into f12
fmul.h f31, f31, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x2a5be368 # load x3 with value 0x2a5be368
sw x3, 0(x2) # store 0x2a5be368 in memory
flh f11, 0(x2) # load 0x2a5be368 from memory into f11
la x2, scratch
li x3, 0x938eefe1 # load x3 with value 0x938eefe1
sw x3, 0(x2) # store 0x938eefe1 in memory
flh f0, 0(x2) # load 0x938eefe1 from memory into f0
fmul.h f0, f11, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x9049ee5a # load x3 with value 0x9049ee5a
sw x3, 0(x2) # store 0x9049ee5a in memory
flh f24, 0(x2) # load 0x9049ee5a from memory into f24
la x2, scratch
li x3, 0x60d43717 # load x3 with value 0x60d43717
sw x3, 0(x2) # store 0x60d43717 in memory
flh f1, 0(x2) # load 0x60d43717 from memory into f1
fmul.h f1, f24, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xaafd371c # load x3 with value 0xaafd371c
sw x3, 0(x2) # store 0xaafd371c in memory
flh f6, 0(x2) # load 0xaafd371c from memory into f6
la x2, scratch
li x3, 0x34817b14 # load x3 with value 0x34817b14
sw x3, 0(x2) # store 0x34817b14 in memory
flh f2, 0(x2) # load 0x34817b14 from memory into f2
fmul.h f2, f6, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0xdb57edce # load x3 with value 0xdb57edce
sw x3, 0(x2) # store 0xdb57edce in memory
flh f17, 0(x2) # load 0xdb57edce from memory into f17
la x2, scratch
li x3, 0xad78bab4 # load x3 with value 0xad78bab4
sw x3, 0(x2) # store 0xad78bab4 in memory
flh f3, 0(x2) # load 0xad78bab4 from memory into f3
fmul.h f3, f17, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6ee0c132 # load x3 with value 0x6ee0c132
sw x3, 0(x2) # store 0x6ee0c132 in memory
flh f7, 0(x2) # load 0x6ee0c132 from memory into f7
la x2, scratch
li x3, 0x28f50d07 # load x3 with value 0x28f50d07
sw x3, 0(x2) # store 0x28f50d07 in memory
flh f4, 0(x2) # load 0x28f50d07 from memory into f4
fmul.h f4, f7, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4fc017b5 # load x3 with value 0x4fc017b5
sw x3, 0(x2) # store 0x4fc017b5 in memory
flh f31, 0(x2) # load 0x4fc017b5 from memory into f31
la x2, scratch
li x3, 0x08b7f8aa # load x3 with value 0x08b7f8aa
sw x3, 0(x2) # store 0x08b7f8aa in memory
flh f5, 0(x2) # load 0x08b7f8aa from memory into f5
fmul.h f5, f31, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2faa9942 # load x3 with value 0x2faa9942
sw x3, 0(x2) # store 0x2faa9942 in memory
flh f25, 0(x2) # load 0x2faa9942 from memory into f25
la x2, scratch
li x3, 0x07c03ecf # load x3 with value 0x07c03ecf
sw x3, 0(x2) # store 0x07c03ecf in memory
flh f6, 0(x2) # load 0x07c03ecf from memory into f6
fmul.h f6, f25, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1d8a4aa6 # load x3 with value 0x1d8a4aa6
sw x3, 0(x2) # store 0x1d8a4aa6 in memory
flh f12, 0(x2) # load 0x1d8a4aa6 from memory into f12
la x2, scratch
li x3, 0xabe8bbd7 # load x3 with value 0xabe8bbd7
sw x3, 0(x2) # store 0xabe8bbd7 in memory
flh f7, 0(x2) # load 0xabe8bbd7 from memory into f7
fmul.h f7, f12, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x1df20117 # load x3 with value 0x1df20117
sw x3, 0(x2) # store 0x1df20117 in memory
flh f29, 0(x2) # load 0x1df20117 from memory into f29
la x2, scratch
li x3, 0x2f9055d3 # load x3 with value 0x2f9055d3
sw x3, 0(x2) # store 0x2f9055d3 in memory
flh f8, 0(x2) # load 0x2f9055d3 from memory into f8
fmul.h f8, f29, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xc744cb93 # load x3 with value 0xc744cb93
sw x3, 0(x2) # store 0xc744cb93 in memory
flh f31, 0(x2) # load 0xc744cb93 from memory into f31
la x2, scratch
li x3, 0x2c77da18 # load x3 with value 0x2c77da18
sw x3, 0(x2) # store 0x2c77da18 in memory
flh f9, 0(x2) # load 0x2c77da18 from memory into f9
fmul.h f9, f31, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x89ba285a # load x3 with value 0x89ba285a
sw x3, 0(x2) # store 0x89ba285a in memory
flh f21, 0(x2) # load 0x89ba285a from memory into f21
la x2, scratch
li x3, 0xa2461fda # load x3 with value 0xa2461fda
sw x3, 0(x2) # store 0xa2461fda in memory
flh f10, 0(x2) # load 0xa2461fda from memory into f10
fmul.h f10, f21, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x767ac712 # load x3 with value 0x767ac712
sw x3, 0(x2) # store 0x767ac712 in memory
flh f27, 0(x2) # load 0x767ac712 from memory into f27
la x2, scratch
li x3, 0x98ba721a # load x3 with value 0x98ba721a
sw x3, 0(x2) # store 0x98ba721a in memory
flh f11, 0(x2) # load 0x98ba721a from memory into f11
fmul.h f11, f27, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xdcb1d394 # load x3 with value 0xdcb1d394
sw x3, 0(x2) # store 0xdcb1d394 in memory
flh f11, 0(x2) # load 0xdcb1d394 from memory into f11
la x2, scratch
li x3, 0xbe69c39b # load x3 with value 0xbe69c39b
sw x3, 0(x2) # store 0xbe69c39b in memory
flh f12, 0(x2) # load 0xbe69c39b from memory into f12
fmul.h f12, f11, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x61d2d6ab # load x3 with value 0x61d2d6ab
sw x3, 0(x2) # store 0x61d2d6ab in memory
flh f8, 0(x2) # load 0x61d2d6ab from memory into f8
la x2, scratch
li x3, 0x7bc8bd6e # load x3 with value 0x7bc8bd6e
sw x3, 0(x2) # store 0x7bc8bd6e in memory
flh f13, 0(x2) # load 0x7bc8bd6e from memory into f13
fmul.h f13, f8, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x7ba5f52b # load x3 with value 0x7ba5f52b
sw x3, 0(x2) # store 0x7ba5f52b in memory
flh f17, 0(x2) # load 0x7ba5f52b from memory into f17
la x2, scratch
li x3, 0x381f31a4 # load x3 with value 0x381f31a4
sw x3, 0(x2) # store 0x381f31a4 in memory
flh f14, 0(x2) # load 0x381f31a4 from memory into f14
fmul.h f14, f17, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x075152cb # load x3 with value 0x075152cb
sw x3, 0(x2) # store 0x075152cb in memory
flh f10, 0(x2) # load 0x075152cb from memory into f10
la x2, scratch
li x3, 0xf3198a15 # load x3 with value 0xf3198a15
sw x3, 0(x2) # store 0xf3198a15 in memory
flh f15, 0(x2) # load 0xf3198a15 from memory into f15
fmul.h f15, f10, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xfab21fc0 # load x3 with value 0xfab21fc0
sw x3, 0(x2) # store 0xfab21fc0 in memory
flh f5, 0(x2) # load 0xfab21fc0 from memory into f5
la x2, scratch
li x3, 0xb9a9c5b6 # load x3 with value 0xb9a9c5b6
sw x3, 0(x2) # store 0xb9a9c5b6 in memory
flh f16, 0(x2) # load 0xb9a9c5b6 from memory into f16
fmul.h f16, f5, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x64928940 # load x3 with value 0x64928940
sw x3, 0(x2) # store 0x64928940 in memory
flh f16, 0(x2) # load 0x64928940 from memory into f16
la x2, scratch
li x3, 0x6447a76c # load x3 with value 0x6447a76c
sw x3, 0(x2) # store 0x6447a76c in memory
flh f17, 0(x2) # load 0x6447a76c from memory into f17
fmul.h f17, f16, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x05b66ec9 # load x3 with value 0x05b66ec9
sw x3, 0(x2) # store 0x05b66ec9 in memory
flh f13, 0(x2) # load 0x05b66ec9 from memory into f13
la x2, scratch
li x3, 0x3f21a253 # load x3 with value 0x3f21a253
sw x3, 0(x2) # store 0x3f21a253 in memory
flh f18, 0(x2) # load 0x3f21a253 from memory into f18
fmul.h f18, f13, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xc033d243 # load x3 with value 0xc033d243
sw x3, 0(x2) # store 0xc033d243 in memory
flh f19, 0(x2) # load 0xc033d243 from memory into f19
la x2, scratch
li x3, 0x3b777e85 # load x3 with value 0x3b777e85
sw x3, 0(x2) # store 0x3b777e85 in memory
flh f19, 0(x2) # load 0x3b777e85 from memory into f19
fmul.h f19, f19, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x1644d8f0 # load x3 with value 0x1644d8f0
sw x3, 0(x2) # store 0x1644d8f0 in memory
flh f13, 0(x2) # load 0x1644d8f0 from memory into f13
la x2, scratch
li x3, 0xd3721916 # load x3 with value 0xd3721916
sw x3, 0(x2) # store 0xd3721916 in memory
flh f20, 0(x2) # load 0xd3721916 from memory into f20
fmul.h f20, f13, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x434adfdb # load x3 with value 0x434adfdb
sw x3, 0(x2) # store 0x434adfdb in memory
flh f29, 0(x2) # load 0x434adfdb from memory into f29
la x2, scratch
li x3, 0x1d0487a9 # load x3 with value 0x1d0487a9
sw x3, 0(x2) # store 0x1d0487a9 in memory
flh f21, 0(x2) # load 0x1d0487a9 from memory into f21
fmul.h f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x261e2edc # load x3 with value 0x261e2edc
sw x3, 0(x2) # store 0x261e2edc in memory
flh f29, 0(x2) # load 0x261e2edc from memory into f29
la x2, scratch
li x3, 0x4d627fc3 # load x3 with value 0x4d627fc3
sw x3, 0(x2) # store 0x4d627fc3 in memory
flh f22, 0(x2) # load 0x4d627fc3 from memory into f22
fmul.h f22, f29, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x04d6842c # load x3 with value 0x04d6842c
sw x3, 0(x2) # store 0x04d6842c in memory
flh f9, 0(x2) # load 0x04d6842c from memory into f9
la x2, scratch
li x3, 0xbb8662a7 # load x3 with value 0xbb8662a7
sw x3, 0(x2) # store 0xbb8662a7 in memory
flh f23, 0(x2) # load 0xbb8662a7 from memory into f23
fmul.h f23, f9, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x4fb317c5 # load x3 with value 0x4fb317c5
sw x3, 0(x2) # store 0x4fb317c5 in memory
flh f2, 0(x2) # load 0x4fb317c5 from memory into f2
la x2, scratch
li x3, 0xb18d447f # load x3 with value 0xb18d447f
sw x3, 0(x2) # store 0xb18d447f in memory
flh f24, 0(x2) # load 0xb18d447f from memory into f24
fmul.h f24, f2, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xc2f14436 # load x3 with value 0xc2f14436
sw x3, 0(x2) # store 0xc2f14436 in memory
flh f9, 0(x2) # load 0xc2f14436 from memory into f9
la x2, scratch
li x3, 0x220a805c # load x3 with value 0x220a805c
sw x3, 0(x2) # store 0x220a805c in memory
flh f25, 0(x2) # load 0x220a805c from memory into f25
fmul.h f25, f9, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x76a7e230 # load x3 with value 0x76a7e230
sw x3, 0(x2) # store 0x76a7e230 in memory
flh f11, 0(x2) # load 0x76a7e230 from memory into f11
la x2, scratch
li x3, 0x1a8ae091 # load x3 with value 0x1a8ae091
sw x3, 0(x2) # store 0x1a8ae091 in memory
flh f26, 0(x2) # load 0x1a8ae091 from memory into f26
fmul.h f26, f11, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x28b263cd # load x3 with value 0x28b263cd
sw x3, 0(x2) # store 0x28b263cd in memory
flh f9, 0(x2) # load 0x28b263cd from memory into f9
la x2, scratch
li x3, 0x4f66c268 # load x3 with value 0x4f66c268
sw x3, 0(x2) # store 0x4f66c268 in memory
flh f27, 0(x2) # load 0x4f66c268 from memory into f27
fmul.h f27, f9, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x9c2bdac3 # load x3 with value 0x9c2bdac3
sw x3, 0(x2) # store 0x9c2bdac3 in memory
flh f13, 0(x2) # load 0x9c2bdac3 from memory into f13
la x2, scratch
li x3, 0x9f161ecc # load x3 with value 0x9f161ecc
sw x3, 0(x2) # store 0x9f161ecc in memory
flh f28, 0(x2) # load 0x9f161ecc from memory into f28
fmul.h f28, f13, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x4d58bc17 # load x3 with value 0x4d58bc17
sw x3, 0(x2) # store 0x4d58bc17 in memory
flh f15, 0(x2) # load 0x4d58bc17 from memory into f15
la x2, scratch
li x3, 0x58eb4f7f # load x3 with value 0x58eb4f7f
sw x3, 0(x2) # store 0x58eb4f7f in memory
flh f29, 0(x2) # load 0x58eb4f7f from memory into f29
fmul.h f29, f15, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x96184f39 # load x3 with value 0x96184f39
sw x3, 0(x2) # store 0x96184f39 in memory
flh f1, 0(x2) # load 0x96184f39 from memory into f1
la x2, scratch
li x3, 0xd9d1c363 # load x3 with value 0xd9d1c363
sw x3, 0(x2) # store 0xd9d1c363 in memory
flh f30, 0(x2) # load 0xd9d1c363 from memory into f30
fmul.h f30, f1, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x1eff32be # load x3 with value 0x1eff32be
sw x3, 0(x2) # store 0x1eff32be in memory
flh f10, 0(x2) # load 0x1eff32be from memory into f10
la x2, scratch
li x3, 0xf703295f # load x3 with value 0xf703295f
sw x3, 0(x2) # store 0xf703295f in memory
flh f31, 0(x2) # load 0xf703295f from memory into f31
fmul.h f31, f10, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xc1fcb862 # load x3 with value 0xc1fcb862
sw x3, 0(x2) # store 0xc1fcb862 in memory
flh f22, 0(x2) # load 0xc1fcb862 from memory into f22
la x2, scratch
li x3, 0xb0f2a1c3 # load x3 with value 0xb0f2a1c3
sw x3, 0(x2) # store 0xb0f2a1c3 in memory
flh f19, 0(x2) # load 0xb0f2a1c3 from memory into f19
fmul.h f29, f22, f19, dyn # perform operation
fmul.h f29, f22, f19, rdn # perform operation
fmul.h f29, f22, f19, rmm # perform operation
fmul.h f29, f22, f19, rne # perform operation
fmul.h f29, f22, f19, rtz # perform operation
fmul.h f29, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f3, f6, f17, dyn # perform operation
fmul.h f3, f6, f17, rdn # perform operation
fmul.h f3, f6, f17, rmm # perform operation
fmul.h f3, f6, f17, rne # perform operation
fmul.h f3, f6, f17, rtz # perform operation
fmul.h f3, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fmul.h f12, f23, f8, dyn # perform operation
fmul.h f12, f23, f8, rdn # perform operation
fmul.h f12, f23, f8, rmm # perform operation
fmul.h f12, f23, f8, rne # perform operation
fmul.h f12, f23, f8, rtz # perform operation
fmul.h f12, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fmul.h f7, f25, f10, dyn # perform operation
fmul.h f7, f25, f10, rdn # perform operation
fmul.h f7, f25, f10, rmm # perform operation
fmul.h f7, f25, f10, rne # perform operation
fmul.h f7, f25, f10, rtz # perform operation
fmul.h f7, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmul.h f23, f24, f10, dyn # perform operation
fmul.h f23, f24, f10, rdn # perform operation
fmul.h f23, f24, f10, rmm # perform operation
fmul.h f23, f24, f10, rne # perform operation
fmul.h f23, f24, f10, rtz # perform operation
fmul.h f23, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f18, f17, f14, dyn # perform operation
fmul.h f18, f17, f14, rdn # perform operation
fmul.h f18, f17, f14, rmm # perform operation
fmul.h f18, f17, f14, rne # perform operation
fmul.h f18, f17, f14, rtz # perform operation
fmul.h f18, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmul.h f13, f14, f7, dyn # perform operation
fmul.h f13, f14, f7, rdn # perform operation
fmul.h f13, f14, f7, rmm # perform operation
fmul.h f13, f14, f7, rne # perform operation
fmul.h f13, f14, f7, rtz # perform operation
fmul.h f13, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f18, f30, f14, dyn # perform operation
fmul.h f18, f30, f14, rdn # perform operation
fmul.h f18, f30, f14, rmm # perform operation
fmul.h f18, f30, f14, rne # perform operation
fmul.h f18, f30, f14, rtz # perform operation
fmul.h f18, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fmul.h f2, f29, f11, dyn # perform operation
fmul.h f2, f29, f11, rdn # perform operation
fmul.h f2, f29, f11, rmm # perform operation
fmul.h f2, f29, f11, rne # perform operation
fmul.h f2, f29, f11, rtz # perform operation
fmul.h f2, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmul.h f29, f16, f9, dyn # perform operation
fmul.h f29, f16, f9, rdn # perform operation
fmul.h f29, f16, f9, rmm # perform operation
fmul.h f29, f16, f9, rne # perform operation
fmul.h f29, f16, f9, rtz # perform operation
fmul.h f29, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmul.h f27, f25, f16, dyn # perform operation
fmul.h f27, f25, f16, rdn # perform operation
fmul.h f27, f25, f16, rmm # perform operation
fmul.h f27, f25, f16, rne # perform operation
fmul.h f27, f25, f16, rtz # perform operation
fmul.h f27, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmul.h f23, f28, f24, dyn # perform operation
fmul.h f23, f28, f24, rdn # perform operation
fmul.h f23, f28, f24, rmm # perform operation
fmul.h f23, f28, f24, rne # perform operation
fmul.h f23, f28, f24, rtz # perform operation
fmul.h f23, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmul.h f28, f7, f20, dyn # perform operation
fmul.h f28, f7, f20, rdn # perform operation
fmul.h f28, f7, f20, rmm # perform operation
fmul.h f28, f7, f20, rne # perform operation
fmul.h f28, f7, f20, rtz # perform operation
fmul.h f28, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fmul.h f5, f2, f18, dyn # perform operation
fmul.h f5, f2, f18, rdn # perform operation
fmul.h f5, f2, f18, rmm # perform operation
fmul.h f5, f2, f18, rne # perform operation
fmul.h f5, f2, f18, rtz # perform operation
fmul.h f5, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmul.h f24, f10, f16, dyn # perform operation
fmul.h f24, f10, f16, rdn # perform operation
fmul.h f24, f10, f16, rmm # perform operation
fmul.h f24, f10, f16, rne # perform operation
fmul.h f24, f10, f16, rtz # perform operation
fmul.h f24, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fmul.h f6, f28, f10, dyn # perform operation
fmul.h f6, f28, f10, rdn # perform operation
fmul.h f6, f28, f10, rmm # perform operation
fmul.h f6, f28, f10, rne # perform operation
fmul.h f6, f28, f10, rtz # perform operation
fmul.h f6, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fmul.h f30, f12, f16, dyn # perform operation
fmul.h f30, f12, f16, rdn # perform operation
fmul.h f30, f12, f16, rmm # perform operation
fmul.h f30, f12, f16, rne # perform operation
fmul.h f30, f12, f16, rtz # perform operation
fmul.h f30, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f21, f2, f16, dyn # perform operation
fmul.h f21, f2, f16, rdn # perform operation
fmul.h f21, f2, f16, rmm # perform operation
fmul.h f21, f2, f16, rne # perform operation
fmul.h f21, f2, f16, rtz # perform operation
fmul.h f21, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmul.h f9, f8, f24, dyn # perform operation
fmul.h f9, f8, f24, rdn # perform operation
fmul.h f9, f8, f24, rmm # perform operation
fmul.h f9, f8, f24, rne # perform operation
fmul.h f9, f8, f24, rtz # perform operation
fmul.h f9, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fmul.h f1, f27, f29, dyn # perform operation
fmul.h f1, f27, f29, rdn # perform operation
fmul.h f1, f27, f29, rmm # perform operation
fmul.h f1, f27, f29, rne # perform operation
fmul.h f1, f27, f29, rtz # perform operation
fmul.h f1, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmul.h f13, f15, f21, dyn # perform operation
fmul.h f13, f15, f21, rdn # perform operation
fmul.h f13, f15, f21, rmm # perform operation
fmul.h f13, f15, f21, rne # perform operation
fmul.h f13, f15, f21, rtz # perform operation
fmul.h f13, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmul.h f1, f25, f20, dyn # perform operation
fmul.h f1, f25, f20, rdn # perform operation
fmul.h f1, f25, f20, rmm # perform operation
fmul.h f1, f25, f20, rne # perform operation
fmul.h f1, f25, f20, rtz # perform operation
fmul.h f1, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmul.h f6, f5, f8, dyn # perform operation
fmul.h f6, f5, f8, rdn # perform operation
fmul.h f6, f5, f8, rmm # perform operation
fmul.h f6, f5, f8, rne # perform operation
fmul.h f6, f5, f8, rtz # perform operation
fmul.h f6, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fmul.h f18, f19, f2, dyn # perform operation
fmul.h f18, f19, f2, rdn # perform operation
fmul.h f18, f19, f2, rmm # perform operation
fmul.h f18, f19, f2, rne # perform operation
fmul.h f18, f19, f2, rtz # perform operation
fmul.h f18, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f20, f14, f31, dyn # perform operation
fmul.h f20, f14, f31, rdn # perform operation
fmul.h f20, f14, f31, rmm # perform operation
fmul.h f20, f14, f31, rne # perform operation
fmul.h f20, f14, f31, rtz # perform operation
fmul.h f20, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmul.h f28, f10, f24, dyn # perform operation
fmul.h f28, f10, f24, rdn # perform operation
fmul.h f28, f10, f24, rmm # perform operation
fmul.h f28, f10, f24, rne # perform operation
fmul.h f28, f10, f24, rtz # perform operation
fmul.h f28, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fmul.h f29, f15, f3, dyn # perform operation
fmul.h f29, f15, f3, rdn # perform operation
fmul.h f29, f15, f3, rmm # perform operation
fmul.h f29, f15, f3, rne # perform operation
fmul.h f29, f15, f3, rtz # perform operation
fmul.h f29, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fmul.h f23, f11, f13, dyn # perform operation
fmul.h f23, f11, f13, rdn # perform operation
fmul.h f23, f11, f13, rmm # perform operation
fmul.h f23, f11, f13, rne # perform operation
fmul.h f23, f11, f13, rtz # perform operation
fmul.h f23, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmul.h f19, f24, f8, dyn # perform operation
fmul.h f19, f24, f8, rdn # perform operation
fmul.h f19, f24, f8, rmm # perform operation
fmul.h f19, f24, f8, rne # perform operation
fmul.h f19, f24, f8, rtz # perform operation
fmul.h f19, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fmul.h f29, f23, f9, dyn # perform operation
fmul.h f29, f23, f9, rdn # perform operation
fmul.h f29, f23, f9, rmm # perform operation
fmul.h f29, f23, f9, rne # perform operation
fmul.h f29, f23, f9, rtz # perform operation
fmul.h f29, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmul.h f12, f17, f2, dyn # perform operation
fmul.h f12, f17, f2, rdn # perform operation
fmul.h f12, f17, f2, rmm # perform operation
fmul.h f12, f17, f2, rne # perform operation
fmul.h f12, f17, f2, rtz # perform operation
fmul.h f12, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmul.h f26, f24, f2, dyn # perform operation
fmul.h f26, f24, f2, rdn # perform operation
fmul.h f26, f24, f2, rmm # perform operation
fmul.h f26, f24, f2, rne # perform operation
fmul.h f26, f24, f2, rtz # perform operation
fmul.h f26, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f22, f8, f24, dyn # perform operation
fmul.h f22, f8, f24, rdn # perform operation
fmul.h f22, f8, f24, rmm # perform operation
fmul.h f22, f8, f24, rne # perform operation
fmul.h f22, f8, f24, rtz # perform operation
fmul.h f22, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmul.h f2, f23, f18, dyn # perform operation
fmul.h f2, f23, f18, rdn # perform operation
fmul.h f2, f23, f18, rmm # perform operation
fmul.h f2, f23, f18, rne # perform operation
fmul.h f2, f23, f18, rtz # perform operation
fmul.h f2, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmul.h f3, f21, f20, dyn # perform operation
fmul.h f3, f21, f20, rdn # perform operation
fmul.h f3, f21, f20, rmm # perform operation
fmul.h f3, f21, f20, rne # perform operation
fmul.h f3, f21, f20, rtz # perform operation
fmul.h f3, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fmul.h f26, f25, f8, dyn # perform operation
fmul.h f26, f25, f8, rdn # perform operation
fmul.h f26, f25, f8, rmm # perform operation
fmul.h f26, f25, f8, rne # perform operation
fmul.h f26, f25, f8, rtz # perform operation
fmul.h f26, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f18, f27, f3, dyn # perform operation
fmul.h f18, f27, f3, rdn # perform operation
fmul.h f18, f27, f3, rmm # perform operation
fmul.h f18, f27, f3, rne # perform operation
fmul.h f18, f27, f3, rtz # perform operation
fmul.h f18, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmul.h f14, f12, f22, dyn # perform operation
fmul.h f14, f12, f22, rdn # perform operation
fmul.h f14, f12, f22, rmm # perform operation
fmul.h f14, f12, f22, rne # perform operation
fmul.h f14, f12, f22, rtz # perform operation
fmul.h f14, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmul.h f26, f16, f19, dyn # perform operation
fmul.h f26, f16, f19, rdn # perform operation
fmul.h f26, f16, f19, rmm # perform operation
fmul.h f26, f16, f19, rne # perform operation
fmul.h f26, f16, f19, rtz # perform operation
fmul.h f26, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmul.h f15, f21, f25, dyn # perform operation
fmul.h f15, f21, f25, rdn # perform operation
fmul.h f15, f21, f25, rmm # perform operation
fmul.h f15, f21, f25, rne # perform operation
fmul.h f15, f21, f25, rtz # perform operation
fmul.h f15, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fmul.h f9, f18, f14, dyn # perform operation
fmul.h f9, f18, f14, rdn # perform operation
fmul.h f9, f18, f14, rmm # perform operation
fmul.h f9, f18, f14, rne # perform operation
fmul.h f9, f18, f14, rtz # perform operation
fmul.h f9, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmul.h f13, f7, f19, dyn # perform operation
fmul.h f13, f7, f19, rdn # perform operation
fmul.h f13, f7, f19, rmm # perform operation
fmul.h f13, f7, f19, rne # perform operation
fmul.h f13, f7, f19, rtz # perform operation
fmul.h f13, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmul.h f16, f21, f28, dyn # perform operation
fmul.h f16, f21, f28, rdn # perform operation
fmul.h f16, f21, f28, rmm # perform operation
fmul.h f16, f21, f28, rne # perform operation
fmul.h f16, f21, f28, rtz # perform operation
fmul.h f16, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fmul.h f6, f9, f1, dyn # perform operation
fmul.h f6, f9, f1, rdn # perform operation
fmul.h f6, f9, f1, rmm # perform operation
fmul.h f6, f9, f1, rne # perform operation
fmul.h f6, f9, f1, rtz # perform operation
fmul.h f6, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fmul.h f25, f6, f24, dyn # perform operation
fmul.h f25, f6, f24, rdn # perform operation
fmul.h f25, f6, f24, rmm # perform operation
fmul.h f25, f6, f24, rne # perform operation
fmul.h f25, f6, f24, rtz # perform operation
fmul.h f25, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f1, f6, f21, dyn # perform operation
fmul.h f1, f6, f21, rdn # perform operation
fmul.h f1, f6, f21, rmm # perform operation
fmul.h f1, f6, f21, rne # perform operation
fmul.h f1, f6, f21, rtz # perform operation
fmul.h f1, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmul.h f28, f9, f30, dyn # perform operation
fmul.h f28, f9, f30, rdn # perform operation
fmul.h f28, f9, f30, rmm # perform operation
fmul.h f28, f9, f30, rne # perform operation
fmul.h f28, f9, f30, rtz # perform operation
fmul.h f28, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmul.h f16, f24, f25, dyn # perform operation
fmul.h f16, f24, f25, rdn # perform operation
fmul.h f16, f24, f25, rmm # perform operation
fmul.h f16, f24, f25, rne # perform operation
fmul.h f16, f24, f25, rtz # perform operation
fmul.h f16, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f28, f25, f11, dyn # perform operation
fmul.h f28, f25, f11, rdn # perform operation
fmul.h f28, f25, f11, rmm # perform operation
fmul.h f28, f25, f11, rne # perform operation
fmul.h f28, f25, f11, rtz # perform operation
fmul.h f28, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmul.h f23, f2, f19, dyn # perform operation
fmul.h f23, f2, f19, rdn # perform operation
fmul.h f23, f2, f19, rmm # perform operation
fmul.h f23, f2, f19, rne # perform operation
fmul.h f23, f2, f19, rtz # perform operation
fmul.h f23, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmul.h f26, f24, f3, dyn # perform operation
fmul.h f26, f24, f3, rdn # perform operation
fmul.h f26, f24, f3, rmm # perform operation
fmul.h f26, f24, f3, rne # perform operation
fmul.h f26, f24, f3, rtz # perform operation
fmul.h f26, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fmul.h f22, f21, f5, dyn # perform operation
fmul.h f22, f21, f5, rdn # perform operation
fmul.h f22, f21, f5, rmm # perform operation
fmul.h f22, f21, f5, rne # perform operation
fmul.h f22, f21, f5, rtz # perform operation
fmul.h f22, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fmul.h f14, f31, f28, dyn # perform operation
fmul.h f14, f31, f28, rdn # perform operation
fmul.h f14, f31, f28, rmm # perform operation
fmul.h f14, f31, f28, rne # perform operation
fmul.h f14, f31, f28, rtz # perform operation
fmul.h f14, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmul.h f29, f7, f18, dyn # perform operation
fmul.h f29, f7, f18, rdn # perform operation
fmul.h f29, f7, f18, rmm # perform operation
fmul.h f29, f7, f18, rne # perform operation
fmul.h f29, f7, f18, rtz # perform operation
fmul.h f29, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fmul.h f2, f9, f25, dyn # perform operation
fmul.h f2, f9, f25, rdn # perform operation
fmul.h f2, f9, f25, rmm # perform operation
fmul.h f2, f9, f25, rne # perform operation
fmul.h f2, f9, f25, rtz # perform operation
fmul.h f2, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmul.h f27, f17, f12, dyn # perform operation
fmul.h f27, f17, f12, rdn # perform operation
fmul.h f27, f17, f12, rmm # perform operation
fmul.h f27, f17, f12, rne # perform operation
fmul.h f27, f17, f12, rtz # perform operation
fmul.h f27, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fmul.h f9, f14, f21, dyn # perform operation
fmul.h f9, f14, f21, rdn # perform operation
fmul.h f9, f14, f21, rmm # perform operation
fmul.h f9, f14, f21, rne # perform operation
fmul.h f9, f14, f21, rtz # perform operation
fmul.h f9, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmul.h f10, f17, f29, dyn # perform operation
fmul.h f10, f17, f29, rdn # perform operation
fmul.h f10, f17, f29, rmm # perform operation
fmul.h f10, f17, f29, rne # perform operation
fmul.h f10, f17, f29, rtz # perform operation
fmul.h f10, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmul.h f5, f30, f2, dyn # perform operation
fmul.h f5, f30, f2, rdn # perform operation
fmul.h f5, f30, f2, rmm # perform operation
fmul.h f5, f30, f2, rne # perform operation
fmul.h f5, f30, f2, rtz # perform operation
fmul.h f5, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fmul.h f22, f27, f17, dyn # perform operation
fmul.h f22, f27, f17, rdn # perform operation
fmul.h f22, f27, f17, rmm # perform operation
fmul.h f22, f27, f17, rne # perform operation
fmul.h f22, f27, f17, rtz # perform operation
fmul.h f22, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmul.h f18, f15, f19, dyn # perform operation
fmul.h f18, f15, f19, rdn # perform operation
fmul.h f18, f15, f19, rmm # perform operation
fmul.h f18, f15, f19, rne # perform operation
fmul.h f18, f15, f19, rtz # perform operation
fmul.h f18, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fmul.h f22, f20, f23, dyn # perform operation
fmul.h f22, f20, f23, rdn # perform operation
fmul.h f22, f20, f23, rmm # perform operation
fmul.h f22, f20, f23, rne # perform operation
fmul.h f22, f20, f23, rtz # perform operation
fmul.h f22, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmul.h f16, f3, f6, dyn # perform operation
fmul.h f16, f3, f6, rdn # perform operation
fmul.h f16, f3, f6, rmm # perform operation
fmul.h f16, f3, f6, rne # perform operation
fmul.h f16, f3, f6, rtz # perform operation
fmul.h f16, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f2, f21, f22, dyn # perform operation
fmul.h f2, f21, f22, rdn # perform operation
fmul.h f2, f21, f22, rmm # perform operation
fmul.h f2, f21, f22, rne # perform operation
fmul.h f2, f21, f22, rtz # perform operation
fmul.h f2, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f13, f17, f1, dyn # perform operation
fmul.h f13, f17, f1, rdn # perform operation
fmul.h f13, f17, f1, rmm # perform operation
fmul.h f13, f17, f1, rne # perform operation
fmul.h f13, f17, f1, rtz # perform operation
fmul.h f13, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmul.h f12, f30, f5, dyn # perform operation
fmul.h f12, f30, f5, rdn # perform operation
fmul.h f12, f30, f5, rmm # perform operation
fmul.h f12, f30, f5, rne # perform operation
fmul.h f12, f30, f5, rtz # perform operation
fmul.h f12, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmul.h f1, f29, f20, dyn # perform operation
fmul.h f1, f29, f20, rdn # perform operation
fmul.h f1, f29, f20, rmm # perform operation
fmul.h f1, f29, f20, rne # perform operation
fmul.h f1, f29, f20, rtz # perform operation
fmul.h f1, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fmul.h f15, f21, f20, dyn # perform operation
fmul.h f15, f21, f20, rdn # perform operation
fmul.h f15, f21, f20, rmm # perform operation
fmul.h f15, f21, f20, rne # perform operation
fmul.h f15, f21, f20, rtz # perform operation
fmul.h f15, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmul.h f23, f13, f20, dyn # perform operation
fmul.h f23, f13, f20, rdn # perform operation
fmul.h f23, f13, f20, rmm # perform operation
fmul.h f23, f13, f20, rne # perform operation
fmul.h f23, f13, f20, rtz # perform operation
fmul.h f23, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmul.h f22, f16, f2, dyn # perform operation
fmul.h f22, f16, f2, rdn # perform operation
fmul.h f22, f16, f2, rmm # perform operation
fmul.h f22, f16, f2, rne # perform operation
fmul.h f22, f16, f2, rtz # perform operation
fmul.h f22, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fmul.h f31, f13, f9, dyn # perform operation
fmul.h f31, f13, f9, rdn # perform operation
fmul.h f31, f13, f9, rmm # perform operation
fmul.h f31, f13, f9, rne # perform operation
fmul.h f31, f13, f9, rtz # perform operation
fmul.h f31, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f9, f27, f28, dyn # perform operation
fmul.h f9, f27, f28, rdn # perform operation
fmul.h f9, f27, f28, rmm # perform operation
fmul.h f9, f27, f28, rne # perform operation
fmul.h f9, f27, f28, rtz # perform operation
fmul.h f9, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmul.h f9, f15, f10, dyn # perform operation
fmul.h f9, f15, f10, rdn # perform operation
fmul.h f9, f15, f10, rmm # perform operation
fmul.h f9, f15, f10, rne # perform operation
fmul.h f9, f15, f10, rtz # perform operation
fmul.h f9, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fmul.h f9, f16, f26, dyn # perform operation
fmul.h f9, f16, f26, rdn # perform operation
fmul.h f9, f16, f26, rmm # perform operation
fmul.h f9, f16, f26, rne # perform operation
fmul.h f9, f16, f26, rtz # perform operation
fmul.h f9, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f12, f8, f10, dyn # perform operation
fmul.h f12, f8, f10, rdn # perform operation
fmul.h f12, f8, f10, rmm # perform operation
fmul.h f12, f8, f10, rne # perform operation
fmul.h f12, f8, f10, rtz # perform operation
fmul.h f12, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmul.h f30, f15, f3, dyn # perform operation
fmul.h f30, f15, f3, rdn # perform operation
fmul.h f30, f15, f3, rmm # perform operation
fmul.h f30, f15, f3, rne # perform operation
fmul.h f30, f15, f3, rtz # perform operation
fmul.h f30, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmul.h f26, f31, f20, dyn # perform operation
fmul.h f26, f31, f20, rdn # perform operation
fmul.h f26, f31, f20, rmm # perform operation
fmul.h f26, f31, f20, rne # perform operation
fmul.h f26, f31, f20, rtz # perform operation
fmul.h f26, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fmul.h f10, f12, f29, dyn # perform operation
fmul.h f10, f12, f29, rdn # perform operation
fmul.h f10, f12, f29, rmm # perform operation
fmul.h f10, f12, f29, rne # perform operation
fmul.h f10, f12, f29, rtz # perform operation
fmul.h f10, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmul.h f5, f31, f25, dyn # perform operation
fmul.h f5, f31, f25, rdn # perform operation
fmul.h f5, f31, f25, rmm # perform operation
fmul.h f5, f31, f25, rne # perform operation
fmul.h f5, f31, f25, rtz # perform operation
fmul.h f5, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fmul.h f1, f17, f29, dyn # perform operation
fmul.h f1, f17, f29, rdn # perform operation
fmul.h f1, f17, f29, rmm # perform operation
fmul.h f1, f17, f29, rne # perform operation
fmul.h f1, f17, f29, rtz # perform operation
fmul.h f1, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmul.h f26, f30, f1, dyn # perform operation
fmul.h f26, f30, f1, rdn # perform operation
fmul.h f26, f30, f1, rmm # perform operation
fmul.h f26, f30, f1, rne # perform operation
fmul.h f26, f30, f1, rtz # perform operation
fmul.h f26, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmul.h f23, f8, f28, dyn # perform operation
fmul.h f23, f8, f28, rdn # perform operation
fmul.h f23, f8, f28, rmm # perform operation
fmul.h f23, f8, f28, rne # perform operation
fmul.h f23, f8, f28, rtz # perform operation
fmul.h f23, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
fmul.h f29, f8, f14, dyn # perform operation
fmul.h f29, f8, f14, rdn # perform operation
fmul.h f29, f8, f14, rmm # perform operation
fmul.h f29, f8, f14, rne # perform operation
fmul.h f29, f8, f14, rtz # perform operation
fmul.h f29, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fmul.h f11, f22, f24, dyn # perform operation
fmul.h f11, f22, f24, rdn # perform operation
fmul.h f11, f22, f24, rmm # perform operation
fmul.h f11, f22, f24, rne # perform operation
fmul.h f11, f22, f24, rtz # perform operation
fmul.h f11, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmul.h f11, f10, f23, dyn # perform operation
fmul.h f11, f10, f23, rdn # perform operation
fmul.h f11, f10, f23, rmm # perform operation
fmul.h f11, f10, f23, rne # perform operation
fmul.h f11, f10, f23, rtz # perform operation
fmul.h f11, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmul.h f21, f10, f24, dyn # perform operation
fmul.h f21, f10, f24, rdn # perform operation
fmul.h f21, f10, f24, rmm # perform operation
fmul.h f21, f10, f24, rne # perform operation
fmul.h f21, f10, f24, rtz # perform operation
fmul.h f21, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmul.h f22, f13, f24, dyn # perform operation
fmul.h f22, f13, f24, rdn # perform operation
fmul.h f22, f13, f24, rmm # perform operation
fmul.h f22, f13, f24, rne # perform operation
fmul.h f22, f13, f24, rtz # perform operation
fmul.h f22, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmul.h f20, f14, f16, dyn # perform operation
fmul.h f20, f14, f16, rdn # perform operation
fmul.h f20, f14, f16, rmm # perform operation
fmul.h f20, f14, f16, rne # perform operation
fmul.h f20, f14, f16, rtz # perform operation
fmul.h f20, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f8, f7, f24, dyn # perform operation
fmul.h f8, f7, f24, rdn # perform operation
fmul.h f8, f7, f24, rmm # perform operation
fmul.h f8, f7, f24, rne # perform operation
fmul.h f8, f7, f24, rtz # perform operation
fmul.h f8, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmul.h f19, f1, f12, dyn # perform operation
fmul.h f19, f1, f12, rdn # perform operation
fmul.h f19, f1, f12, rmm # perform operation
fmul.h f19, f1, f12, rne # perform operation
fmul.h f19, f1, f12, rtz # perform operation
fmul.h f19, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f29, f25, f21, dyn # perform operation
fmul.h f29, f25, f21, rdn # perform operation
fmul.h f29, f25, f21, rmm # perform operation
fmul.h f29, f25, f21, rne # perform operation
fmul.h f29, f25, f21, rtz # perform operation
fmul.h f29, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fmul.h f24, f20, f26, dyn # perform operation
fmul.h f24, f20, f26, rdn # perform operation
fmul.h f24, f20, f26, rmm # perform operation
fmul.h f24, f20, f26, rne # perform operation
fmul.h f24, f20, f26, rtz # perform operation
fmul.h f24, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmul.h f1, f20, f25, dyn # perform operation
fmul.h f1, f20, f25, rdn # perform operation
fmul.h f1, f20, f25, rmm # perform operation
fmul.h f1, f20, f25, rne # perform operation
fmul.h f1, f20, f25, rtz # perform operation
fmul.h f1, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fmul.h f8, f11, f23, dyn # perform operation
fmul.h f8, f11, f23, rdn # perform operation
fmul.h f8, f11, f23, rmm # perform operation
fmul.h f8, f11, f23, rne # perform operation
fmul.h f8, f11, f23, rtz # perform operation
fmul.h f8, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmul.h f8, f29, f19, dyn # perform operation
fmul.h f8, f29, f19, rdn # perform operation
fmul.h f8, f29, f19, rmm # perform operation
fmul.h f8, f29, f19, rne # perform operation
fmul.h f8, f29, f19, rtz # perform operation
fmul.h f8, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmul.h f27, f13, f30, dyn # perform operation
fmul.h f27, f13, f30, rdn # perform operation
fmul.h f27, f13, f30, rmm # perform operation
fmul.h f27, f13, f30, rne # perform operation
fmul.h f27, f13, f30, rtz # perform operation
fmul.h f27, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fmul.h f22, f2, f15, dyn # perform operation
fmul.h f22, f2, f15, rdn # perform operation
fmul.h f22, f2, f15, rmm # perform operation
fmul.h f22, f2, f15, rne # perform operation
fmul.h f22, f2, f15, rtz # perform operation
fmul.h f22, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fmul.h f15, f29, f11, dyn # perform operation
fmul.h f15, f29, f11, rdn # perform operation
fmul.h f15, f29, f11, rmm # perform operation
fmul.h f15, f29, f11, rne # perform operation
fmul.h f15, f29, f11, rtz # perform operation
fmul.h f15, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmul.h f24, f20, f17, dyn # perform operation
fmul.h f24, f20, f17, rdn # perform operation
fmul.h f24, f20, f17, rmm # perform operation
fmul.h f24, f20, f17, rne # perform operation
fmul.h f24, f20, f17, rtz # perform operation
fmul.h f24, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmul.h f23, f15, f19, dyn # perform operation
fmul.h f23, f15, f19, rdn # perform operation
fmul.h f23, f15, f19, rmm # perform operation
fmul.h f23, f15, f19, rne # perform operation
fmul.h f23, f15, f19, rtz # perform operation
fmul.h f23, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fmul.h f31, f18, f17, dyn # perform operation
fmul.h f31, f18, f17, rdn # perform operation
fmul.h f31, f18, f17, rmm # perform operation
fmul.h f31, f18, f17, rne # perform operation
fmul.h f31, f18, f17, rtz # perform operation
fmul.h f31, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmul.h f25, f30, f11, dyn # perform operation
fmul.h f25, f30, f11, rdn # perform operation
fmul.h f25, f30, f11, rmm # perform operation
fmul.h f25, f30, f11, rne # perform operation
fmul.h f25, f30, f11, rtz # perform operation
fmul.h f25, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmul.h f30, f16, f21, dyn # perform operation
fmul.h f30, f16, f21, rdn # perform operation
fmul.h f30, f16, f21, rmm # perform operation
fmul.h f30, f16, f21, rne # perform operation
fmul.h f30, f16, f21, rtz # perform operation
fmul.h f30, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmul.h f8, f30, f17, dyn # perform operation
fmul.h f8, f30, f17, rdn # perform operation
fmul.h f8, f30, f17, rmm # perform operation
fmul.h f8, f30, f17, rne # perform operation
fmul.h f8, f30, f17, rtz # perform operation
fmul.h f8, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f7, f22, f26, dyn # perform operation
fmul.h f7, f22, f26, rdn # perform operation
fmul.h f7, f22, f26, rmm # perform operation
fmul.h f7, f22, f26, rne # perform operation
fmul.h f7, f22, f26, rtz # perform operation
fmul.h f7, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmul.h f2, f28, f12, dyn # perform operation
fmul.h f2, f28, f12, rdn # perform operation
fmul.h f2, f28, f12, rmm # perform operation
fmul.h f2, f28, f12, rne # perform operation
fmul.h f2, f28, f12, rtz # perform operation
fmul.h f2, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fmul.h f31, f23, f11, dyn # perform operation
fmul.h f31, f23, f11, rdn # perform operation
fmul.h f31, f23, f11, rmm # perform operation
fmul.h f31, f23, f11, rne # perform operation
fmul.h f31, f23, f11, rtz # perform operation
fmul.h f31, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
fmul.h f6, f2, f31, dyn # perform operation
fmul.h f6, f2, f31, rdn # perform operation
fmul.h f6, f2, f31, rmm # perform operation
fmul.h f6, f2, f31, rne # perform operation
fmul.h f6, f2, f31, rtz # perform operation
fmul.h f6, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmul.h f19, f7, f5, dyn # perform operation
fmul.h f19, f7, f5, rdn # perform operation
fmul.h f19, f7, f5, rmm # perform operation
fmul.h f19, f7, f5, rne # perform operation
fmul.h f19, f7, f5, rtz # perform operation
fmul.h f19, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f22, f16, f7, dyn # perform operation
fmul.h f22, f16, f7, rdn # perform operation
fmul.h f22, f16, f7, rmm # perform operation
fmul.h f22, f16, f7, rne # perform operation
fmul.h f22, f16, f7, rtz # perform operation
fmul.h f22, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fmul.h f2, f1, f6, dyn # perform operation
fmul.h f2, f1, f6, rdn # perform operation
fmul.h f2, f1, f6, rmm # perform operation
fmul.h f2, f1, f6, rne # perform operation
fmul.h f2, f1, f6, rtz # perform operation
fmul.h f2, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmul.h f15, f3, f14, dyn # perform operation
fmul.h f15, f3, f14, rdn # perform operation
fmul.h f15, f3, f14, rmm # perform operation
fmul.h f15, f3, f14, rne # perform operation
fmul.h f15, f3, f14, rtz # perform operation
fmul.h f15, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmul.h f6, f14, f29, dyn # perform operation
fmul.h f6, f14, f29, rdn # perform operation
fmul.h f6, f14, f29, rmm # perform operation
fmul.h f6, f14, f29, rne # perform operation
fmul.h f6, f14, f29, rtz # perform operation
fmul.h f6, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fmul.h f21, f31, f23, dyn # perform operation
fmul.h f21, f31, f23, rdn # perform operation
fmul.h f21, f31, f23, rmm # perform operation
fmul.h f21, f31, f23, rne # perform operation
fmul.h f21, f31, f23, rtz # perform operation
fmul.h f21, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmul.h f10, f16, f23, dyn # perform operation
fmul.h f10, f16, f23, rdn # perform operation
fmul.h f10, f16, f23, rmm # perform operation
fmul.h f10, f16, f23, rne # perform operation
fmul.h f10, f16, f23, rtz # perform operation
fmul.h f10, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmul.h f3, f23, f28, dyn # perform operation
fmul.h f3, f23, f28, rdn # perform operation
fmul.h f3, f23, f28, rmm # perform operation
fmul.h f3, f23, f28, rne # perform operation
fmul.h f3, f23, f28, rtz # perform operation
fmul.h f3, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmul.h f1, f14, f31, dyn # perform operation
fmul.h f1, f14, f31, rdn # perform operation
fmul.h f1, f14, f31, rmm # perform operation
fmul.h f1, f14, f31, rne # perform operation
fmul.h f1, f14, f31, rtz # perform operation
fmul.h f1, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fmul.h f12, f8, f3, dyn # perform operation
fmul.h f12, f8, f3, rdn # perform operation
fmul.h f12, f8, f3, rmm # perform operation
fmul.h f12, f8, f3, rne # perform operation
fmul.h f12, f8, f3, rtz # perform operation
fmul.h f12, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fmul.h f21, f13, f12, dyn # perform operation
fmul.h f21, f13, f12, rdn # perform operation
fmul.h f21, f13, f12, rmm # perform operation
fmul.h f21, f13, f12, rne # perform operation
fmul.h f21, f13, f12, rtz # perform operation
fmul.h f21, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmul.h f19, f8, f11, dyn # perform operation
fmul.h f19, f8, f11, rdn # perform operation
fmul.h f19, f8, f11, rmm # perform operation
fmul.h f19, f8, f11, rne # perform operation
fmul.h f19, f8, f11, rtz # perform operation
fmul.h f19, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f25, f15, f3, dyn # perform operation
fmul.h f25, f15, f3, rdn # perform operation
fmul.h f25, f15, f3, rmm # perform operation
fmul.h f25, f15, f3, rne # perform operation
fmul.h f25, f15, f3, rtz # perform operation
fmul.h f25, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmul.h f15, f27, f3, dyn # perform operation
fmul.h f15, f27, f3, rdn # perform operation
fmul.h f15, f27, f3, rmm # perform operation
fmul.h f15, f27, f3, rne # perform operation
fmul.h f15, f27, f3, rtz # perform operation
fmul.h f15, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fmul.h f10, f6, f25, dyn # perform operation
fmul.h f10, f6, f25, rdn # perform operation
fmul.h f10, f6, f25, rmm # perform operation
fmul.h f10, f6, f25, rne # perform operation
fmul.h f10, f6, f25, rtz # perform operation
fmul.h f10, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f29, f2, f21, dyn # perform operation
fmul.h f29, f2, f21, rdn # perform operation
fmul.h f29, f2, f21, rmm # perform operation
fmul.h f29, f2, f21, rne # perform operation
fmul.h f29, f2, f21, rtz # perform operation
fmul.h f29, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmul.h f25, f22, f16, dyn # perform operation
fmul.h f25, f22, f16, rdn # perform operation
fmul.h f25, f22, f16, rmm # perform operation
fmul.h f25, f22, f16, rne # perform operation
fmul.h f25, f22, f16, rtz # perform operation
fmul.h f25, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmul.h f9, f12, f2, dyn # perform operation
fmul.h f9, f12, f2, rdn # perform operation
fmul.h f9, f12, f2, rmm # perform operation
fmul.h f9, f12, f2, rne # perform operation
fmul.h f9, f12, f2, rtz # perform operation
fmul.h f9, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fmul.h f13, f15, f19, dyn # perform operation
fmul.h f13, f15, f19, rdn # perform operation
fmul.h f13, f15, f19, rmm # perform operation
fmul.h f13, f15, f19, rne # perform operation
fmul.h f13, f15, f19, rtz # perform operation
fmul.h f13, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fmul.h f2, f28, f1, dyn # perform operation
fmul.h f2, f28, f1, rdn # perform operation
fmul.h f2, f28, f1, rmm # perform operation
fmul.h f2, f28, f1, rne # perform operation
fmul.h f2, f28, f1, rtz # perform operation
fmul.h f2, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f12, f24, f25, dyn # perform operation
fmul.h f12, f24, f25, rdn # perform operation
fmul.h f12, f24, f25, rmm # perform operation
fmul.h f12, f24, f25, rne # perform operation
fmul.h f12, f24, f25, rtz # perform operation
fmul.h f12, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmul.h f5, f10, f25, dyn # perform operation
fmul.h f5, f10, f25, rdn # perform operation
fmul.h f5, f10, f25, rmm # perform operation
fmul.h f5, f10, f25, rne # perform operation
fmul.h f5, f10, f25, rtz # perform operation
fmul.h f5, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmul.h f6, f29, f26, dyn # perform operation
fmul.h f6, f29, f26, rdn # perform operation
fmul.h f6, f29, f26, rmm # perform operation
fmul.h f6, f29, f26, rne # perform operation
fmul.h f6, f29, f26, rtz # perform operation
fmul.h f6, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f1, f26, f28, dyn # perform operation
fmul.h f1, f26, f28, rdn # perform operation
fmul.h f1, f26, f28, rmm # perform operation
fmul.h f1, f26, f28, rne # perform operation
fmul.h f1, f26, f28, rtz # perform operation
fmul.h f1, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fmul.h f8, f26, f29, dyn # perform operation
fmul.h f8, f26, f29, rdn # perform operation
fmul.h f8, f26, f29, rmm # perform operation
fmul.h f8, f26, f29, rne # perform operation
fmul.h f8, f26, f29, rtz # perform operation
fmul.h f8, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmul.h f3, f1, f18, dyn # perform operation
fmul.h f3, f1, f18, rdn # perform operation
fmul.h f3, f1, f18, rmm # perform operation
fmul.h f3, f1, f18, rne # perform operation
fmul.h f3, f1, f18, rtz # perform operation
fmul.h f3, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fmul.h f24, f9, f1, dyn # perform operation
fmul.h f24, f9, f1, rdn # perform operation
fmul.h f24, f9, f1, rmm # perform operation
fmul.h f24, f9, f1, rne # perform operation
fmul.h f24, f9, f1, rtz # perform operation
fmul.h f24, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fmul.h f31, f20, f21, dyn # perform operation
fmul.h f31, f20, f21, rdn # perform operation
fmul.h f31, f20, f21, rmm # perform operation
fmul.h f31, f20, f21, rne # perform operation
fmul.h f31, f20, f21, rtz # perform operation
fmul.h f31, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fmul.h f26, f23, f15, dyn # perform operation
fmul.h f26, f23, f15, rdn # perform operation
fmul.h f26, f23, f15, rmm # perform operation
fmul.h f26, f23, f15, rne # perform operation
fmul.h f26, f23, f15, rtz # perform operation
fmul.h f26, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmul.h f1, f3, f11, dyn # perform operation
fmul.h f1, f3, f11, rdn # perform operation
fmul.h f1, f3, f11, rmm # perform operation
fmul.h f1, f3, f11, rne # perform operation
fmul.h f1, f3, f11, rtz # perform operation
fmul.h f1, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fmul.h f27, f23, f26, dyn # perform operation
fmul.h f27, f23, f26, rdn # perform operation
fmul.h f27, f23, f26, rmm # perform operation
fmul.h f27, f23, f26, rne # perform operation
fmul.h f27, f23, f26, rtz # perform operation
fmul.h f27, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f15, f8, f10, dyn # perform operation
fmul.h f15, f8, f10, rdn # perform operation
fmul.h f15, f8, f10, rmm # perform operation
fmul.h f15, f8, f10, rne # perform operation
fmul.h f15, f8, f10, rtz # perform operation
fmul.h f15, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmul.h f25, f16, f5, dyn # perform operation
fmul.h f25, f16, f5, rdn # perform operation
fmul.h f25, f16, f5, rmm # perform operation
fmul.h f25, f16, f5, rne # perform operation
fmul.h f25, f16, f5, rtz # perform operation
fmul.h f25, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmul.h f17, f24, f7, dyn # perform operation
fmul.h f17, f24, f7, rdn # perform operation
fmul.h f17, f24, f7, rmm # perform operation
fmul.h f17, f24, f7, rne # perform operation
fmul.h f17, f24, f7, rtz # perform operation
fmul.h f17, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fmul.h f23, f6, f25, dyn # perform operation
fmul.h f23, f6, f25, rdn # perform operation
fmul.h f23, f6, f25, rmm # perform operation
fmul.h f23, f6, f25, rne # perform operation
fmul.h f23, f6, f25, rtz # perform operation
fmul.h f23, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fmul.h f13, f10, f19, dyn # perform operation
fmul.h f13, f10, f19, rdn # perform operation
fmul.h f13, f10, f19, rmm # perform operation
fmul.h f13, f10, f19, rne # perform operation
fmul.h f13, f10, f19, rtz # perform operation
fmul.h f13, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f29, f6, f28, dyn # perform operation
fmul.h f29, f6, f28, rdn # perform operation
fmul.h f29, f6, f28, rmm # perform operation
fmul.h f29, f6, f28, rne # perform operation
fmul.h f29, f6, f28, rtz # perform operation
fmul.h f29, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f8, f2, f10, dyn # perform operation
fmul.h f8, f2, f10, rdn # perform operation
fmul.h f8, f2, f10, rmm # perform operation
fmul.h f8, f2, f10, rne # perform operation
fmul.h f8, f2, f10, rtz # perform operation
fmul.h f8, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmul.h f25, f31, f1, dyn # perform operation
fmul.h f25, f31, f1, rdn # perform operation
fmul.h f25, f31, f1, rmm # perform operation
fmul.h f25, f31, f1, rne # perform operation
fmul.h f25, f31, f1, rtz # perform operation
fmul.h f25, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fmul.h f15, f13, f16, dyn # perform operation
fmul.h f15, f13, f16, rdn # perform operation
fmul.h f15, f13, f16, rmm # perform operation
fmul.h f15, f13, f16, rne # perform operation
fmul.h f15, f13, f16, rtz # perform operation
fmul.h f15, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fmul.h f7, f25, f30, dyn # perform operation
fmul.h f7, f25, f30, rdn # perform operation
fmul.h f7, f25, f30, rmm # perform operation
fmul.h f7, f25, f30, rne # perform operation
fmul.h f7, f25, f30, rtz # perform operation
fmul.h f7, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmul.h f29, f15, f24, dyn # perform operation
fmul.h f29, f15, f24, rdn # perform operation
fmul.h f29, f15, f24, rmm # perform operation
fmul.h f29, f15, f24, rne # perform operation
fmul.h f29, f15, f24, rtz # perform operation
fmul.h f29, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fmul.h f6, f28, f10, dyn # perform operation
fmul.h f6, f28, f10, rdn # perform operation
fmul.h f6, f28, f10, rmm # perform operation
fmul.h f6, f28, f10, rne # perform operation
fmul.h f6, f28, f10, rtz # perform operation
fmul.h f6, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fmul.h f1, f15, f10, dyn # perform operation
fmul.h f1, f15, f10, rdn # perform operation
fmul.h f1, f15, f10, rmm # perform operation
fmul.h f1, f15, f10, rne # perform operation
fmul.h f1, f15, f10, rtz # perform operation
fmul.h f1, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmul.h f5, f19, f28, dyn # perform operation
fmul.h f5, f19, f28, rdn # perform operation
fmul.h f5, f19, f28, rmm # perform operation
fmul.h f5, f19, f28, rne # perform operation
fmul.h f5, f19, f28, rtz # perform operation
fmul.h f5, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmul.h f12, f17, f16, dyn # perform operation
fmul.h f12, f17, f16, rdn # perform operation
fmul.h f12, f17, f16, rmm # perform operation
fmul.h f12, f17, f16, rne # perform operation
fmul.h f12, f17, f16, rtz # perform operation
fmul.h f12, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmul.h f30, f23, f20, dyn # perform operation
fmul.h f30, f23, f20, rdn # perform operation
fmul.h f30, f23, f20, rmm # perform operation
fmul.h f30, f23, f20, rne # perform operation
fmul.h f30, f23, f20, rtz # perform operation
fmul.h f30, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f28, f2, f6, dyn # perform operation
fmul.h f28, f2, f6, rdn # perform operation
fmul.h f28, f2, f6, rmm # perform operation
fmul.h f28, f2, f6, rne # perform operation
fmul.h f28, f2, f6, rtz # perform operation
fmul.h f28, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmul.h f31, f20, f2, dyn # perform operation
fmul.h f31, f20, f2, rdn # perform operation
fmul.h f31, f20, f2, rmm # perform operation
fmul.h f31, f20, f2, rne # perform operation
fmul.h f31, f20, f2, rtz # perform operation
fmul.h f31, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fmul.h f29, f25, f23, dyn # perform operation
fmul.h f29, f25, f23, rdn # perform operation
fmul.h f29, f25, f23, rmm # perform operation
fmul.h f29, f25, f23, rne # perform operation
fmul.h f29, f25, f23, rtz # perform operation
fmul.h f29, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmul.h f30, f31, f11, dyn # perform operation
fmul.h f30, f31, f11, rdn # perform operation
fmul.h f30, f31, f11, rmm # perform operation
fmul.h f30, f31, f11, rne # perform operation
fmul.h f30, f31, f11, rtz # perform operation
fmul.h f30, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f13, f9, f1, dyn # perform operation
fmul.h f13, f9, f1, rdn # perform operation
fmul.h f13, f9, f1, rmm # perform operation
fmul.h f13, f9, f1, rne # perform operation
fmul.h f13, f9, f1, rtz # perform operation
fmul.h f13, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmul.h f26, f9, f28, dyn # perform operation
fmul.h f26, f9, f28, rdn # perform operation
fmul.h f26, f9, f28, rmm # perform operation
fmul.h f26, f9, f28, rne # perform operation
fmul.h f26, f9, f28, rtz # perform operation
fmul.h f26, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fmul.h f1, f14, f16, dyn # perform operation
fmul.h f1, f14, f16, rdn # perform operation
fmul.h f1, f14, f16, rmm # perform operation
fmul.h f1, f14, f16, rne # perform operation
fmul.h f1, f14, f16, rtz # perform operation
fmul.h f1, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmul.h f11, f15, f27, dyn # perform operation
fmul.h f11, f15, f27, rdn # perform operation
fmul.h f11, f15, f27, rmm # perform operation
fmul.h f11, f15, f27, rne # perform operation
fmul.h f11, f15, f27, rtz # perform operation
fmul.h f11, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fmul.h f26, f27, f7, dyn # perform operation
fmul.h f26, f27, f7, rdn # perform operation
fmul.h f26, f27, f7, rmm # perform operation
fmul.h f26, f27, f7, rne # perform operation
fmul.h f26, f27, f7, rtz # perform operation
fmul.h f26, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmul.h f1, f8, f17, dyn # perform operation
fmul.h f1, f8, f17, rdn # perform operation
fmul.h f1, f8, f17, rmm # perform operation
fmul.h f1, f8, f17, rne # perform operation
fmul.h f1, f8, f17, rtz # perform operation
fmul.h f1, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmul.h f23, f26, f6, dyn # perform operation
fmul.h f23, f26, f6, rdn # perform operation
fmul.h f23, f26, f6, rmm # perform operation
fmul.h f23, f26, f6, rne # perform operation
fmul.h f23, f26, f6, rtz # perform operation
fmul.h f23, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fmul.h f14, f24, f25, dyn # perform operation
fmul.h f14, f24, f25, rdn # perform operation
fmul.h f14, f24, f25, rmm # perform operation
fmul.h f14, f24, f25, rne # perform operation
fmul.h f14, f24, f25, rtz # perform operation
fmul.h f14, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fmul.h f7, f29, f25, dyn # perform operation
fmul.h f7, f29, f25, rdn # perform operation
fmul.h f7, f29, f25, rmm # perform operation
fmul.h f7, f29, f25, rne # perform operation
fmul.h f7, f29, f25, rtz # perform operation
fmul.h f7, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmul.h f7, f30, f6, dyn # perform operation
fmul.h f7, f30, f6, rdn # perform operation
fmul.h f7, f30, f6, rmm # perform operation
fmul.h f7, f30, f6, rne # perform operation
fmul.h f7, f30, f6, rtz # perform operation
fmul.h f7, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmul.h f11, f15, f18, dyn # perform operation
fmul.h f11, f15, f18, rdn # perform operation
fmul.h f11, f15, f18, rmm # perform operation
fmul.h f11, f15, f18, rne # perform operation
fmul.h f11, f15, f18, rtz # perform operation
fmul.h f11, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fmul.h f9, f31, f28, dyn # perform operation
fmul.h f9, f31, f28, rdn # perform operation
fmul.h f9, f31, f28, rmm # perform operation
fmul.h f9, f31, f28, rne # perform operation
fmul.h f9, f31, f28, rtz # perform operation
fmul.h f9, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmul.h f13, f5, f27, dyn # perform operation
fmul.h f13, f5, f27, rdn # perform operation
fmul.h f13, f5, f27, rmm # perform operation
fmul.h f13, f5, f27, rne # perform operation
fmul.h f13, f5, f27, rtz # perform operation
fmul.h f13, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f11, f2, f18, dyn # perform operation
fmul.h f11, f2, f18, rdn # perform operation
fmul.h f11, f2, f18, rmm # perform operation
fmul.h f11, f2, f18, rne # perform operation
fmul.h f11, f2, f18, rtz # perform operation
fmul.h f11, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmul.h f14, f2, f18, dyn # perform operation
fmul.h f14, f2, f18, rdn # perform operation
fmul.h f14, f2, f18, rmm # perform operation
fmul.h f14, f2, f18, rne # perform operation
fmul.h f14, f2, f18, rtz # perform operation
fmul.h f14, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmul.h f29, f5, f15, dyn # perform operation
fmul.h f29, f5, f15, rdn # perform operation
fmul.h f29, f5, f15, rmm # perform operation
fmul.h f29, f5, f15, rne # perform operation
fmul.h f29, f5, f15, rtz # perform operation
fmul.h f29, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f1, f21, f22, dyn # perform operation
fmul.h f1, f21, f22, rdn # perform operation
fmul.h f1, f21, f22, rmm # perform operation
fmul.h f1, f21, f22, rne # perform operation
fmul.h f1, f21, f22, rtz # perform operation
fmul.h f1, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmul.h f30, f25, f29, dyn # perform operation
fmul.h f30, f25, f29, rdn # perform operation
fmul.h f30, f25, f29, rmm # perform operation
fmul.h f30, f25, f29, rne # perform operation
fmul.h f30, f25, f29, rtz # perform operation
fmul.h f30, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmul.h f2, f11, f6, dyn # perform operation
fmul.h f2, f11, f6, rdn # perform operation
fmul.h f2, f11, f6, rmm # perform operation
fmul.h f2, f11, f6, rne # perform operation
fmul.h f2, f11, f6, rtz # perform operation
fmul.h f2, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmul.h f15, f17, f24, dyn # perform operation
fmul.h f15, f17, f24, rdn # perform operation
fmul.h f15, f17, f24, rmm # perform operation
fmul.h f15, f17, f24, rne # perform operation
fmul.h f15, f17, f24, rtz # perform operation
fmul.h f15, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmul.h f12, f2, f23, dyn # perform operation
fmul.h f12, f2, f23, rdn # perform operation
fmul.h f12, f2, f23, rmm # perform operation
fmul.h f12, f2, f23, rne # perform operation
fmul.h f12, f2, f23, rtz # perform operation
fmul.h f12, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fmul.h f15, f7, f22, dyn # perform operation
fmul.h f15, f7, f22, rdn # perform operation
fmul.h f15, f7, f22, rmm # perform operation
fmul.h f15, f7, f22, rne # perform operation
fmul.h f15, f7, f22, rtz # perform operation
fmul.h f15, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmul.h f9, f8, f6, dyn # perform operation
fmul.h f9, f8, f6, rdn # perform operation
fmul.h f9, f8, f6, rmm # perform operation
fmul.h f9, f8, f6, rne # perform operation
fmul.h f9, f8, f6, rtz # perform operation
fmul.h f9, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmul.h f5, f1, f26, dyn # perform operation
fmul.h f5, f1, f26, rdn # perform operation
fmul.h f5, f1, f26, rmm # perform operation
fmul.h f5, f1, f26, rne # perform operation
fmul.h f5, f1, f26, rtz # perform operation
fmul.h f5, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fmul.h f3, f7, f13, dyn # perform operation
fmul.h f3, f7, f13, rdn # perform operation
fmul.h f3, f7, f13, rmm # perform operation
fmul.h f3, f7, f13, rne # perform operation
fmul.h f3, f7, f13, rtz # perform operation
fmul.h f3, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmul.h f1, f24, f30, dyn # perform operation
fmul.h f1, f24, f30, rdn # perform operation
fmul.h f1, f24, f30, rmm # perform operation
fmul.h f1, f24, f30, rne # perform operation
fmul.h f1, f24, f30, rtz # perform operation
fmul.h f1, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f5, f7, f16, dyn # perform operation
fmul.h f5, f7, f16, rdn # perform operation
fmul.h f5, f7, f16, rmm # perform operation
fmul.h f5, f7, f16, rne # perform operation
fmul.h f5, f7, f16, rtz # perform operation
fmul.h f5, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmul.h f23, f9, f18, dyn # perform operation
fmul.h f23, f9, f18, rdn # perform operation
fmul.h f23, f9, f18, rmm # perform operation
fmul.h f23, f9, f18, rne # perform operation
fmul.h f23, f9, f18, rtz # perform operation
fmul.h f23, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmul.h f21, f16, f23, dyn # perform operation
fmul.h f21, f16, f23, rdn # perform operation
fmul.h f21, f16, f23, rmm # perform operation
fmul.h f21, f16, f23, rne # perform operation
fmul.h f21, f16, f23, rtz # perform operation
fmul.h f21, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fmul.h f25, f22, f15, dyn # perform operation
fmul.h f25, f22, f15, rdn # perform operation
fmul.h f25, f22, f15, rmm # perform operation
fmul.h f25, f22, f15, rne # perform operation
fmul.h f25, f22, f15, rtz # perform operation
fmul.h f25, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fmul.h f14, f31, f24, dyn # perform operation
fmul.h f14, f31, f24, rdn # perform operation
fmul.h f14, f31, f24, rmm # perform operation
fmul.h f14, f31, f24, rne # perform operation
fmul.h f14, f31, f24, rtz # perform operation
fmul.h f14, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmul.h f1, f17, f29, dyn # perform operation
fmul.h f1, f17, f29, rdn # perform operation
fmul.h f1, f17, f29, rmm # perform operation
fmul.h f1, f17, f29, rne # perform operation
fmul.h f1, f17, f29, rtz # perform operation
fmul.h f1, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fmul.h f15, f12, f9, dyn # perform operation
fmul.h f15, f12, f9, rdn # perform operation
fmul.h f15, f12, f9, rmm # perform operation
fmul.h f15, f12, f9, rne # perform operation
fmul.h f15, f12, f9, rtz # perform operation
fmul.h f15, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fmul.h f5, f14, f18, dyn # perform operation
fmul.h f5, f14, f18, rdn # perform operation
fmul.h f5, f14, f18, rmm # perform operation
fmul.h f5, f14, f18, rne # perform operation
fmul.h f5, f14, f18, rtz # perform operation
fmul.h f5, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f21, f10, f23, dyn # perform operation
fmul.h f21, f10, f23, rdn # perform operation
fmul.h f21, f10, f23, rmm # perform operation
fmul.h f21, f10, f23, rne # perform operation
fmul.h f21, f10, f23, rtz # perform operation
fmul.h f21, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
fmul.h f24, f19, f12, dyn # perform operation
fmul.h f24, f19, f12, rdn # perform operation
fmul.h f24, f19, f12, rmm # perform operation
fmul.h f24, f19, f12, rne # perform operation
fmul.h f24, f19, f12, rtz # perform operation
fmul.h f24, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f24, f18, f10, dyn # perform operation
fmul.h f24, f18, f10, rdn # perform operation
fmul.h f24, f18, f10, rmm # perform operation
fmul.h f24, f18, f10, rne # perform operation
fmul.h f24, f18, f10, rtz # perform operation
fmul.h f24, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fmul.h f29, f15, f21, dyn # perform operation
fmul.h f29, f15, f21, rdn # perform operation
fmul.h f29, f15, f21, rmm # perform operation
fmul.h f29, f15, f21, rne # perform operation
fmul.h f29, f15, f21, rtz # perform operation
fmul.h f29, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmul.h f28, f8, f27, dyn # perform operation
fmul.h f28, f8, f27, rdn # perform operation
fmul.h f28, f8, f27, rmm # perform operation
fmul.h f28, f8, f27, rne # perform operation
fmul.h f28, f8, f27, rtz # perform operation
fmul.h f28, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmul.h f31, f8, f3, dyn # perform operation
fmul.h f31, f8, f3, rdn # perform operation
fmul.h f31, f8, f3, rmm # perform operation
fmul.h f31, f8, f3, rne # perform operation
fmul.h f31, f8, f3, rtz # perform operation
fmul.h f31, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmul.h f19, f29, f5, dyn # perform operation
fmul.h f19, f29, f5, rdn # perform operation
fmul.h f19, f29, f5, rmm # perform operation
fmul.h f19, f29, f5, rne # perform operation
fmul.h f19, f29, f5, rtz # perform operation
fmul.h f19, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fmul.h f31, f26, f8, dyn # perform operation
fmul.h f31, f26, f8, rdn # perform operation
fmul.h f31, f26, f8, rmm # perform operation
fmul.h f31, f26, f8, rne # perform operation
fmul.h f31, f26, f8, rtz # perform operation
fmul.h f31, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fmul.h f17, f8, f30, dyn # perform operation
fmul.h f17, f8, f30, rdn # perform operation
fmul.h f17, f8, f30, rmm # perform operation
fmul.h f17, f8, f30, rne # perform operation
fmul.h f17, f8, f30, rtz # perform operation
fmul.h f17, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f28, f6, f5, dyn # perform operation
fmul.h f28, f6, f5, rdn # perform operation
fmul.h f28, f6, f5, rmm # perform operation
fmul.h f28, f6, f5, rne # perform operation
fmul.h f28, f6, f5, rtz # perform operation
fmul.h f28, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmul.h f27, f29, f11, dyn # perform operation
fmul.h f27, f29, f11, rdn # perform operation
fmul.h f27, f29, f11, rmm # perform operation
fmul.h f27, f29, f11, rne # perform operation
fmul.h f27, f29, f11, rtz # perform operation
fmul.h f27, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmul.h f7, f23, f5, dyn # perform operation
fmul.h f7, f23, f5, rdn # perform operation
fmul.h f7, f23, f5, rmm # perform operation
fmul.h f7, f23, f5, rne # perform operation
fmul.h f7, f23, f5, rtz # perform operation
fmul.h f7, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f20, f21, f10, dyn # perform operation
fmul.h f20, f21, f10, rdn # perform operation
fmul.h f20, f21, f10, rmm # perform operation
fmul.h f20, f21, f10, rne # perform operation
fmul.h f20, f21, f10, rtz # perform operation
fmul.h f20, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmul.h f14, f23, f5, dyn # perform operation
fmul.h f14, f23, f5, rdn # perform operation
fmul.h f14, f23, f5, rmm # perform operation
fmul.h f14, f23, f5, rne # perform operation
fmul.h f14, f23, f5, rtz # perform operation
fmul.h f14, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmul.h f17, f5, f27, dyn # perform operation
fmul.h f17, f5, f27, rdn # perform operation
fmul.h f17, f5, f27, rmm # perform operation
fmul.h f17, f5, f27, rne # perform operation
fmul.h f17, f5, f27, rtz # perform operation
fmul.h f17, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fmul.h f13, f26, f15, dyn # perform operation
fmul.h f13, f26, f15, rdn # perform operation
fmul.h f13, f26, f15, rmm # perform operation
fmul.h f13, f26, f15, rne # perform operation
fmul.h f13, f26, f15, rtz # perform operation
fmul.h f13, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fmul.h f29, f24, f22, dyn # perform operation
fmul.h f29, f24, f22, rdn # perform operation
fmul.h f29, f24, f22, rmm # perform operation
fmul.h f29, f24, f22, rne # perform operation
fmul.h f29, f24, f22, rtz # perform operation
fmul.h f29, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmul.h f7, f3, f15, dyn # perform operation
fmul.h f7, f3, f15, rdn # perform operation
fmul.h f7, f3, f15, rmm # perform operation
fmul.h f7, f3, f15, rne # perform operation
fmul.h f7, f3, f15, rtz # perform operation
fmul.h f7, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f16, f29, f6, dyn # perform operation
fmul.h f16, f29, f6, rdn # perform operation
fmul.h f16, f29, f6, rmm # perform operation
fmul.h f16, f29, f6, rne # perform operation
fmul.h f16, f29, f6, rtz # perform operation
fmul.h f16, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fmul.h f20, f22, f7, dyn # perform operation
fmul.h f20, f22, f7, rdn # perform operation
fmul.h f20, f22, f7, rmm # perform operation
fmul.h f20, f22, f7, rne # perform operation
fmul.h f20, f22, f7, rtz # perform operation
fmul.h f20, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmul.h f6, f22, f29, dyn # perform operation
fmul.h f6, f22, f29, rdn # perform operation
fmul.h f6, f22, f29, rmm # perform operation
fmul.h f6, f22, f29, rne # perform operation
fmul.h f6, f22, f29, rtz # perform operation
fmul.h f6, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmul.h f12, f15, f7, dyn # perform operation
fmul.h f12, f15, f7, rdn # perform operation
fmul.h f12, f15, f7, rmm # perform operation
fmul.h f12, f15, f7, rne # perform operation
fmul.h f12, f15, f7, rtz # perform operation
fmul.h f12, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fmul.h f14, f16, f7, dyn # perform operation
fmul.h f14, f16, f7, rdn # perform operation
fmul.h f14, f16, f7, rmm # perform operation
fmul.h f14, f16, f7, rne # perform operation
fmul.h f14, f16, f7, rtz # perform operation
fmul.h f14, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmul.h f1, f31, f18, dyn # perform operation
fmul.h f1, f31, f18, rdn # perform operation
fmul.h f1, f31, f18, rmm # perform operation
fmul.h f1, f31, f18, rne # perform operation
fmul.h f1, f31, f18, rtz # perform operation
fmul.h f1, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmul.h f27, f16, f3, dyn # perform operation
fmul.h f27, f16, f3, rdn # perform operation
fmul.h f27, f16, f3, rmm # perform operation
fmul.h f27, f16, f3, rne # perform operation
fmul.h f27, f16, f3, rtz # perform operation
fmul.h f27, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmul.h f3, f15, f18, dyn # perform operation
fmul.h f3, f15, f18, rdn # perform operation
fmul.h f3, f15, f18, rmm # perform operation
fmul.h f3, f15, f18, rne # perform operation
fmul.h f3, f15, f18, rtz # perform operation
fmul.h f3, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fmul.h f14, f9, f7, dyn # perform operation
fmul.h f14, f9, f7, rdn # perform operation
fmul.h f14, f9, f7, rmm # perform operation
fmul.h f14, f9, f7, rne # perform operation
fmul.h f14, f9, f7, rtz # perform operation
fmul.h f14, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmul.h f18, f7, f17, dyn # perform operation
fmul.h f18, f7, f17, rdn # perform operation
fmul.h f18, f7, f17, rmm # perform operation
fmul.h f18, f7, f17, rne # perform operation
fmul.h f18, f7, f17, rtz # perform operation
fmul.h f18, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmul.h f8, f10, f28, dyn # perform operation
fmul.h f8, f10, f28, rdn # perform operation
fmul.h f8, f10, f28, rmm # perform operation
fmul.h f8, f10, f28, rne # perform operation
fmul.h f8, f10, f28, rtz # perform operation
fmul.h f8, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fmul.h f16, f15, f24, dyn # perform operation
fmul.h f16, f15, f24, rdn # perform operation
fmul.h f16, f15, f24, rmm # perform operation
fmul.h f16, f15, f24, rne # perform operation
fmul.h f16, f15, f24, rtz # perform operation
fmul.h f16, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmul.h f17, f9, f18, dyn # perform operation
fmul.h f17, f9, f18, rdn # perform operation
fmul.h f17, f9, f18, rmm # perform operation
fmul.h f17, f9, f18, rne # perform operation
fmul.h f17, f9, f18, rtz # perform operation
fmul.h f17, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmul.h f29, f20, f17, dyn # perform operation
fmul.h f29, f20, f17, rdn # perform operation
fmul.h f29, f20, f17, rmm # perform operation
fmul.h f29, f20, f17, rne # perform operation
fmul.h f29, f20, f17, rtz # perform operation
fmul.h f29, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fmul.h f10, f1, f9, dyn # perform operation
fmul.h f10, f1, f9, rdn # perform operation
fmul.h f10, f1, f9, rmm # perform operation
fmul.h f10, f1, f9, rne # perform operation
fmul.h f10, f1, f9, rtz # perform operation
fmul.h f10, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmul.h f10, f25, f20, dyn # perform operation
fmul.h f10, f25, f20, rdn # perform operation
fmul.h f10, f25, f20, rmm # perform operation
fmul.h f10, f25, f20, rne # perform operation
fmul.h f10, f25, f20, rtz # perform operation
fmul.h f10, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f20, f18, f12, dyn # perform operation
fmul.h f20, f18, f12, rdn # perform operation
fmul.h f20, f18, f12, rmm # perform operation
fmul.h f20, f18, f12, rne # perform operation
fmul.h f20, f18, f12, rtz # perform operation
fmul.h f20, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmul.h f24, f11, f19, dyn # perform operation
fmul.h f24, f11, f19, rdn # perform operation
fmul.h f24, f11, f19, rmm # perform operation
fmul.h f24, f11, f19, rne # perform operation
fmul.h f24, f11, f19, rtz # perform operation
fmul.h f24, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fmul.h f30, f29, f19, dyn # perform operation
fmul.h f30, f29, f19, rdn # perform operation
fmul.h f30, f29, f19, rmm # perform operation
fmul.h f30, f29, f19, rne # perform operation
fmul.h f30, f29, f19, rtz # perform operation
fmul.h f30, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f10, f13, f3, dyn # perform operation
fmul.h f10, f13, f3, rdn # perform operation
fmul.h f10, f13, f3, rmm # perform operation
fmul.h f10, f13, f3, rne # perform operation
fmul.h f10, f13, f3, rtz # perform operation
fmul.h f10, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f23, f3, f22, dyn # perform operation
fmul.h f23, f3, f22, rdn # perform operation
fmul.h f23, f3, f22, rmm # perform operation
fmul.h f23, f3, f22, rne # perform operation
fmul.h f23, f3, f22, rtz # perform operation
fmul.h f23, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmul.h f31, f14, f5, dyn # perform operation
fmul.h f31, f14, f5, rdn # perform operation
fmul.h f31, f14, f5, rmm # perform operation
fmul.h f31, f14, f5, rne # perform operation
fmul.h f31, f14, f5, rtz # perform operation
fmul.h f31, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmul.h f5, f15, f13, dyn # perform operation
fmul.h f5, f15, f13, rdn # perform operation
fmul.h f5, f15, f13, rmm # perform operation
fmul.h f5, f15, f13, rne # perform operation
fmul.h f5, f15, f13, rtz # perform operation
fmul.h f5, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmul.h f22, f23, f13, dyn # perform operation
fmul.h f22, f23, f13, rdn # perform operation
fmul.h f22, f23, f13, rmm # perform operation
fmul.h f22, f23, f13, rne # perform operation
fmul.h f22, f23, f13, rtz # perform operation
fmul.h f22, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmul.h f25, f8, f2, dyn # perform operation
fmul.h f25, f8, f2, rdn # perform operation
fmul.h f25, f8, f2, rmm # perform operation
fmul.h f25, f8, f2, rne # perform operation
fmul.h f25, f8, f2, rtz # perform operation
fmul.h f25, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmul.h f24, f7, f29, dyn # perform operation
fmul.h f24, f7, f29, rdn # perform operation
fmul.h f24, f7, f29, rmm # perform operation
fmul.h f24, f7, f29, rne # perform operation
fmul.h f24, f7, f29, rtz # perform operation
fmul.h f24, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f28, f19, f15, dyn # perform operation
fmul.h f28, f19, f15, rdn # perform operation
fmul.h f28, f19, f15, rmm # perform operation
fmul.h f28, f19, f15, rne # perform operation
fmul.h f28, f19, f15, rtz # perform operation
fmul.h f28, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fmul.h f10, f18, f25, dyn # perform operation
fmul.h f10, f18, f25, rdn # perform operation
fmul.h f10, f18, f25, rmm # perform operation
fmul.h f10, f18, f25, rne # perform operation
fmul.h f10, f18, f25, rtz # perform operation
fmul.h f10, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmul.h f20, f24, f22, dyn # perform operation
fmul.h f20, f24, f22, rdn # perform operation
fmul.h f20, f24, f22, rmm # perform operation
fmul.h f20, f24, f22, rne # perform operation
fmul.h f20, f24, f22, rtz # perform operation
fmul.h f20, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fmul.h f14, f22, f16, dyn # perform operation
fmul.h f14, f22, f16, rdn # perform operation
fmul.h f14, f22, f16, rmm # perform operation
fmul.h f14, f22, f16, rne # perform operation
fmul.h f14, f22, f16, rtz # perform operation
fmul.h f14, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fmul.h f18, f26, f22, dyn # perform operation
fmul.h f18, f26, f22, rdn # perform operation
fmul.h f18, f26, f22, rmm # perform operation
fmul.h f18, f26, f22, rne # perform operation
fmul.h f18, f26, f22, rtz # perform operation
fmul.h f18, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmul.h f24, f30, f25, dyn # perform operation
fmul.h f24, f30, f25, rdn # perform operation
fmul.h f24, f30, f25, rmm # perform operation
fmul.h f24, f30, f25, rne # perform operation
fmul.h f24, f30, f25, rtz # perform operation
fmul.h f24, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f26, f24, f16, dyn # perform operation
fmul.h f26, f24, f16, rdn # perform operation
fmul.h f26, f24, f16, rmm # perform operation
fmul.h f26, f24, f16, rne # perform operation
fmul.h f26, f24, f16, rtz # perform operation
fmul.h f26, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmul.h f28, f8, f3, dyn # perform operation
fmul.h f28, f8, f3, rdn # perform operation
fmul.h f28, f8, f3, rmm # perform operation
fmul.h f28, f8, f3, rne # perform operation
fmul.h f28, f8, f3, rtz # perform operation
fmul.h f28, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmul.h f23, f7, f10, dyn # perform operation
fmul.h f23, f7, f10, rdn # perform operation
fmul.h f23, f7, f10, rmm # perform operation
fmul.h f23, f7, f10, rne # perform operation
fmul.h f23, f7, f10, rtz # perform operation
fmul.h f23, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmul.h f9, f24, f31, dyn # perform operation
fmul.h f9, f24, f31, rdn # perform operation
fmul.h f9, f24, f31, rmm # perform operation
fmul.h f9, f24, f31, rne # perform operation
fmul.h f9, f24, f31, rtz # perform operation
fmul.h f9, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fmul.h f21, f29, f13, dyn # perform operation
fmul.h f21, f29, f13, rdn # perform operation
fmul.h f21, f29, f13, rmm # perform operation
fmul.h f21, f29, f13, rne # perform operation
fmul.h f21, f29, f13, rtz # perform operation
fmul.h f21, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f30, f8, f31, dyn # perform operation
fmul.h f30, f8, f31, rdn # perform operation
fmul.h f30, f8, f31, rmm # perform operation
fmul.h f30, f8, f31, rne # perform operation
fmul.h f30, f8, f31, rtz # perform operation
fmul.h f30, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmul.h f10, f14, f6, dyn # perform operation
fmul.h f10, f14, f6, rdn # perform operation
fmul.h f10, f14, f6, rmm # perform operation
fmul.h f10, f14, f6, rne # perform operation
fmul.h f10, f14, f6, rtz # perform operation
fmul.h f10, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fmul.h f11, f19, f30, dyn # perform operation
fmul.h f11, f19, f30, rdn # perform operation
fmul.h f11, f19, f30, rmm # perform operation
fmul.h f11, f19, f30, rne # perform operation
fmul.h f11, f19, f30, rtz # perform operation
fmul.h f11, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmul.h f17, f9, f14, dyn # perform operation
fmul.h f17, f9, f14, rdn # perform operation
fmul.h f17, f9, f14, rmm # perform operation
fmul.h f17, f9, f14, rne # perform operation
fmul.h f17, f9, f14, rtz # perform operation
fmul.h f17, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmul.h f15, f21, f2, dyn # perform operation
fmul.h f15, f21, f2, rdn # perform operation
fmul.h f15, f21, f2, rmm # perform operation
fmul.h f15, f21, f2, rne # perform operation
fmul.h f15, f21, f2, rtz # perform operation
fmul.h f15, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmul.h f26, f7, f18, dyn # perform operation
fmul.h f26, f7, f18, rdn # perform operation
fmul.h f26, f7, f18, rmm # perform operation
fmul.h f26, f7, f18, rne # perform operation
fmul.h f26, f7, f18, rtz # perform operation
fmul.h f26, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmul.h f27, f18, f11, dyn # perform operation
fmul.h f27, f18, f11, rdn # perform operation
fmul.h f27, f18, f11, rmm # perform operation
fmul.h f27, f18, f11, rne # perform operation
fmul.h f27, f18, f11, rtz # perform operation
fmul.h f27, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmul.h f15, f10, f27, dyn # perform operation
fmul.h f15, f10, f27, rdn # perform operation
fmul.h f15, f10, f27, rmm # perform operation
fmul.h f15, f10, f27, rne # perform operation
fmul.h f15, f10, f27, rtz # perform operation
fmul.h f15, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fmul.h f19, f23, f9, dyn # perform operation
fmul.h f19, f23, f9, rdn # perform operation
fmul.h f19, f23, f9, rmm # perform operation
fmul.h f19, f23, f9, rne # perform operation
fmul.h f19, f23, f9, rtz # perform operation
fmul.h f19, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmul.h f16, f8, f17, dyn # perform operation
fmul.h f16, f8, f17, rdn # perform operation
fmul.h f16, f8, f17, rmm # perform operation
fmul.h f16, f8, f17, rne # perform operation
fmul.h f16, f8, f17, rtz # perform operation
fmul.h f16, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmul.h f26, f27, f7, dyn # perform operation
fmul.h f26, f27, f7, rdn # perform operation
fmul.h f26, f27, f7, rmm # perform operation
fmul.h f26, f27, f7, rne # perform operation
fmul.h f26, f27, f7, rtz # perform operation
fmul.h f26, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fmul.h f15, f25, f20, dyn # perform operation
fmul.h f15, f25, f20, rdn # perform operation
fmul.h f15, f25, f20, rmm # perform operation
fmul.h f15, f25, f20, rne # perform operation
fmul.h f15, f25, f20, rtz # perform operation
fmul.h f15, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f19, f7, f18, dyn # perform operation
fmul.h f19, f7, f18, rdn # perform operation
fmul.h f19, f7, f18, rmm # perform operation
fmul.h f19, f7, f18, rne # perform operation
fmul.h f19, f7, f18, rtz # perform operation
fmul.h f19, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmul.h f19, f10, f16, dyn # perform operation
fmul.h f19, f10, f16, rdn # perform operation
fmul.h f19, f10, f16, rmm # perform operation
fmul.h f19, f10, f16, rne # perform operation
fmul.h f19, f10, f16, rtz # perform operation
fmul.h f19, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmul.h f13, f28, f24, dyn # perform operation
fmul.h f13, f28, f24, rdn # perform operation
fmul.h f13, f28, f24, rmm # perform operation
fmul.h f13, f28, f24, rne # perform operation
fmul.h f13, f28, f24, rtz # perform operation
fmul.h f13, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fmul.h f27, f30, f5, dyn # perform operation
fmul.h f27, f30, f5, rdn # perform operation
fmul.h f27, f30, f5, rmm # perform operation
fmul.h f27, f30, f5, rne # perform operation
fmul.h f27, f30, f5, rtz # perform operation
fmul.h f27, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fmul.h f27, f16, f21, dyn # perform operation
fmul.h f27, f16, f21, rdn # perform operation
fmul.h f27, f16, f21, rmm # perform operation
fmul.h f27, f16, f21, rne # perform operation
fmul.h f27, f16, f21, rtz # perform operation
fmul.h f27, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fmul.h f26, f23, f5, dyn # perform operation
fmul.h f26, f23, f5, rdn # perform operation
fmul.h f26, f23, f5, rmm # perform operation
fmul.h f26, f23, f5, rne # perform operation
fmul.h f26, f23, f5, rtz # perform operation
fmul.h f26, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fmul.h f14, f28, f24, dyn # perform operation
fmul.h f14, f28, f24, rdn # perform operation
fmul.h f14, f28, f24, rmm # perform operation
fmul.h f14, f28, f24, rne # perform operation
fmul.h f14, f28, f24, rtz # perform operation
fmul.h f14, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f10, f9, f15, dyn # perform operation
fmul.h f10, f9, f15, rdn # perform operation
fmul.h f10, f9, f15, rmm # perform operation
fmul.h f10, f9, f15, rne # perform operation
fmul.h f10, f9, f15, rtz # perform operation
fmul.h f10, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmul.h f21, f18, f1, dyn # perform operation
fmul.h f21, f18, f1, rdn # perform operation
fmul.h f21, f18, f1, rmm # perform operation
fmul.h f21, f18, f1, rne # perform operation
fmul.h f21, f18, f1, rtz # perform operation
fmul.h f21, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fmul.h f23, f9, f22, dyn # perform operation
fmul.h f23, f9, f22, rdn # perform operation
fmul.h f23, f9, f22, rmm # perform operation
fmul.h f23, f9, f22, rne # perform operation
fmul.h f23, f9, f22, rtz # perform operation
fmul.h f23, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmul.h f15, f3, f7, dyn # perform operation
fmul.h f15, f3, f7, rdn # perform operation
fmul.h f15, f3, f7, rmm # perform operation
fmul.h f15, f3, f7, rne # perform operation
fmul.h f15, f3, f7, rtz # perform operation
fmul.h f15, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmul.h f11, f15, f21, dyn # perform operation
fmul.h f11, f15, f21, rdn # perform operation
fmul.h f11, f15, f21, rmm # perform operation
fmul.h f11, f15, f21, rne # perform operation
fmul.h f11, f15, f21, rtz # perform operation
fmul.h f11, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmul.h f30, f21, f17, dyn # perform operation
fmul.h f30, f21, f17, rdn # perform operation
fmul.h f30, f21, f17, rmm # perform operation
fmul.h f30, f21, f17, rne # perform operation
fmul.h f30, f21, f17, rtz # perform operation
fmul.h f30, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fmul.h f28, f25, f24, dyn # perform operation
fmul.h f28, f25, f24, rdn # perform operation
fmul.h f28, f25, f24, rmm # perform operation
fmul.h f28, f25, f24, rne # perform operation
fmul.h f28, f25, f24, rtz # perform operation
fmul.h f28, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmul.h f15, f14, f27, dyn # perform operation
fmul.h f15, f14, f27, rdn # perform operation
fmul.h f15, f14, f27, rmm # perform operation
fmul.h f15, f14, f27, rne # perform operation
fmul.h f15, f14, f27, rtz # perform operation
fmul.h f15, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fmul.h f5, f6, f18, dyn # perform operation
fmul.h f5, f6, f18, rdn # perform operation
fmul.h f5, f6, f18, rmm # perform operation
fmul.h f5, f6, f18, rne # perform operation
fmul.h f5, f6, f18, rtz # perform operation
fmul.h f5, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmul.h f25, f27, f13, dyn # perform operation
fmul.h f25, f27, f13, rdn # perform operation
fmul.h f25, f27, f13, rmm # perform operation
fmul.h f25, f27, f13, rne # perform operation
fmul.h f25, f27, f13, rtz # perform operation
fmul.h f25, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fmul.h f27, f3, f17, dyn # perform operation
fmul.h f27, f3, f17, rdn # perform operation
fmul.h f27, f3, f17, rmm # perform operation
fmul.h f27, f3, f17, rne # perform operation
fmul.h f27, f3, f17, rtz # perform operation
fmul.h f27, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fmul.h f26, f22, f3, dyn # perform operation
fmul.h f26, f22, f3, rdn # perform operation
fmul.h f26, f22, f3, rmm # perform operation
fmul.h f26, f22, f3, rne # perform operation
fmul.h f26, f22, f3, rtz # perform operation
fmul.h f26, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmul.h f2, f30, f16, dyn # perform operation
fmul.h f2, f30, f16, rdn # perform operation
fmul.h f2, f30, f16, rmm # perform operation
fmul.h f2, f30, f16, rne # perform operation
fmul.h f2, f30, f16, rtz # perform operation
fmul.h f2, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fmul.h f13, f29, f21, dyn # perform operation
fmul.h f13, f29, f21, rdn # perform operation
fmul.h f13, f29, f21, rmm # perform operation
fmul.h f13, f29, f21, rne # perform operation
fmul.h f13, f29, f21, rtz # perform operation
fmul.h f13, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fmul.h f14, f28, f21, dyn # perform operation
fmul.h f14, f28, f21, rdn # perform operation
fmul.h f14, f28, f21, rmm # perform operation
fmul.h f14, f28, f21, rne # perform operation
fmul.h f14, f28, f21, rtz # perform operation
fmul.h f14, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmul.h f31, f19, f16, dyn # perform operation
fmul.h f31, f19, f16, rdn # perform operation
fmul.h f31, f19, f16, rmm # perform operation
fmul.h f31, f19, f16, rne # perform operation
fmul.h f31, f19, f16, rtz # perform operation
fmul.h f31, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f2, f29, f12, dyn # perform operation
fmul.h f2, f29, f12, rdn # perform operation
fmul.h f2, f29, f12, rmm # perform operation
fmul.h f2, f29, f12, rne # perform operation
fmul.h f2, f29, f12, rtz # perform operation
fmul.h f2, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fmul.h f29, f23, f13, dyn # perform operation
fmul.h f29, f23, f13, rdn # perform operation
fmul.h f29, f23, f13, rmm # perform operation
fmul.h f29, f23, f13, rne # perform operation
fmul.h f29, f23, f13, rtz # perform operation
fmul.h f29, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f5, f25, f14, dyn # perform operation
fmul.h f5, f25, f14, rdn # perform operation
fmul.h f5, f25, f14, rmm # perform operation
fmul.h f5, f25, f14, rne # perform operation
fmul.h f5, f25, f14, rtz # perform operation
fmul.h f5, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f10, f12, f21, dyn # perform operation
fmul.h f10, f12, f21, rdn # perform operation
fmul.h f10, f12, f21, rmm # perform operation
fmul.h f10, f12, f21, rne # perform operation
fmul.h f10, f12, f21, rtz # perform operation
fmul.h f10, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmul.h f24, f6, f5, dyn # perform operation
fmul.h f24, f6, f5, rdn # perform operation
fmul.h f24, f6, f5, rmm # perform operation
fmul.h f24, f6, f5, rne # perform operation
fmul.h f24, f6, f5, rtz # perform operation
fmul.h f24, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmul.h f1, f22, f2, dyn # perform operation
fmul.h f1, f22, f2, rdn # perform operation
fmul.h f1, f22, f2, rmm # perform operation
fmul.h f1, f22, f2, rne # perform operation
fmul.h f1, f22, f2, rtz # perform operation
fmul.h f1, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmul.h f30, f18, f22, dyn # perform operation
fmul.h f30, f18, f22, rdn # perform operation
fmul.h f30, f18, f22, rmm # perform operation
fmul.h f30, f18, f22, rne # perform operation
fmul.h f30, f18, f22, rtz # perform operation
fmul.h f30, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmul.h f16, f13, f5, dyn # perform operation
fmul.h f16, f13, f5, rdn # perform operation
fmul.h f16, f13, f5, rmm # perform operation
fmul.h f16, f13, f5, rne # perform operation
fmul.h f16, f13, f5, rtz # perform operation
fmul.h f16, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fmul.h f25, f18, f9, dyn # perform operation
fmul.h f25, f18, f9, rdn # perform operation
fmul.h f25, f18, f9, rmm # perform operation
fmul.h f25, f18, f9, rne # perform operation
fmul.h f25, f18, f9, rtz # perform operation
fmul.h f25, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmul.h f15, f8, f20, dyn # perform operation
fmul.h f15, f8, f20, rdn # perform operation
fmul.h f15, f8, f20, rmm # perform operation
fmul.h f15, f8, f20, rne # perform operation
fmul.h f15, f8, f20, rtz # perform operation
fmul.h f15, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmul.h f29, f18, f9, dyn # perform operation
fmul.h f29, f18, f9, rdn # perform operation
fmul.h f29, f18, f9, rmm # perform operation
fmul.h f29, f18, f9, rne # perform operation
fmul.h f29, f18, f9, rtz # perform operation
fmul.h f29, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmul.h f3, f23, f17, dyn # perform operation
fmul.h f3, f23, f17, rdn # perform operation
fmul.h f3, f23, f17, rmm # perform operation
fmul.h f3, f23, f17, rne # perform operation
fmul.h f3, f23, f17, rtz # perform operation
fmul.h f3, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmul.h f30, f15, f16, dyn # perform operation
fmul.h f30, f15, f16, rdn # perform operation
fmul.h f30, f15, f16, rmm # perform operation
fmul.h f30, f15, f16, rne # perform operation
fmul.h f30, f15, f16, rtz # perform operation
fmul.h f30, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmul.h f22, f2, f19, dyn # perform operation
fmul.h f22, f2, f19, rdn # perform operation
fmul.h f22, f2, f19, rmm # perform operation
fmul.h f22, f2, f19, rne # perform operation
fmul.h f22, f2, f19, rtz # perform operation
fmul.h f22, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fmul.h f22, f29, f5, dyn # perform operation
fmul.h f22, f29, f5, rdn # perform operation
fmul.h f22, f29, f5, rmm # perform operation
fmul.h f22, f29, f5, rne # perform operation
fmul.h f22, f29, f5, rtz # perform operation
fmul.h f22, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmul.h f15, f25, f6, dyn # perform operation
fmul.h f15, f25, f6, rdn # perform operation
fmul.h f15, f25, f6, rmm # perform operation
fmul.h f15, f25, f6, rne # perform operation
fmul.h f15, f25, f6, rtz # perform operation
fmul.h f15, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f16, f23, f30, dyn # perform operation
fmul.h f16, f23, f30, rdn # perform operation
fmul.h f16, f23, f30, rmm # perform operation
fmul.h f16, f23, f30, rne # perform operation
fmul.h f16, f23, f30, rtz # perform operation
fmul.h f16, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f22, f3, f26, dyn # perform operation
fmul.h f22, f3, f26, rdn # perform operation
fmul.h f22, f3, f26, rmm # perform operation
fmul.h f22, f3, f26, rne # perform operation
fmul.h f22, f3, f26, rtz # perform operation
fmul.h f22, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmul.h f20, f12, f27, dyn # perform operation
fmul.h f20, f12, f27, rdn # perform operation
fmul.h f20, f12, f27, rmm # perform operation
fmul.h f20, f12, f27, rne # perform operation
fmul.h f20, f12, f27, rtz # perform operation
fmul.h f20, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmul.h f30, f8, f12, dyn # perform operation
fmul.h f30, f8, f12, rdn # perform operation
fmul.h f30, f8, f12, rmm # perform operation
fmul.h f30, f8, f12, rne # perform operation
fmul.h f30, f8, f12, rtz # perform operation
fmul.h f30, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
fmul.h f28, f31, f24, dyn # perform operation
fmul.h f28, f31, f24, rdn # perform operation
fmul.h f28, f31, f24, rmm # perform operation
fmul.h f28, f31, f24, rne # perform operation
fmul.h f28, f31, f24, rtz # perform operation
fmul.h f28, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmul.h f16, f28, f13, dyn # perform operation
fmul.h f16, f28, f13, rdn # perform operation
fmul.h f16, f28, f13, rmm # perform operation
fmul.h f16, f28, f13, rne # perform operation
fmul.h f16, f28, f13, rtz # perform operation
fmul.h f16, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fmul.h f10, f18, f12, dyn # perform operation
fmul.h f10, f18, f12, rdn # perform operation
fmul.h f10, f18, f12, rmm # perform operation
fmul.h f10, f18, f12, rne # perform operation
fmul.h f10, f18, f12, rtz # perform operation
fmul.h f10, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
fmul.h f22, f16, f2, dyn # perform operation
fmul.h f22, f16, f2, rdn # perform operation
fmul.h f22, f16, f2, rmm # perform operation
fmul.h f22, f16, f2, rne # perform operation
fmul.h f22, f16, f2, rtz # perform operation
fmul.h f22, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fmul.h f8, f30, f21, dyn # perform operation
fmul.h f8, f30, f21, rdn # perform operation
fmul.h f8, f30, f21, rmm # perform operation
fmul.h f8, f30, f21, rne # perform operation
fmul.h f8, f30, f21, rtz # perform operation
fmul.h f8, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmul.h f8, f17, f26, dyn # perform operation
fmul.h f8, f17, f26, rdn # perform operation
fmul.h f8, f17, f26, rmm # perform operation
fmul.h f8, f17, f26, rne # perform operation
fmul.h f8, f17, f26, rtz # perform operation
fmul.h f8, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmul.h f16, f3, f11, dyn # perform operation
fmul.h f16, f3, f11, rdn # perform operation
fmul.h f16, f3, f11, rmm # perform operation
fmul.h f16, f3, f11, rne # perform operation
fmul.h f16, f3, f11, rtz # perform operation
fmul.h f16, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmul.h f1, f12, f11, dyn # perform operation
fmul.h f1, f12, f11, rdn # perform operation
fmul.h f1, f12, f11, rmm # perform operation
fmul.h f1, f12, f11, rne # perform operation
fmul.h f1, f12, f11, rtz # perform operation
fmul.h f1, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fmul.h f19, f11, f20, dyn # perform operation
fmul.h f19, f11, f20, rdn # perform operation
fmul.h f19, f11, f20, rmm # perform operation
fmul.h f19, f11, f20, rne # perform operation
fmul.h f19, f11, f20, rtz # perform operation
fmul.h f19, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmul.h f13, f23, f1, dyn # perform operation
fmul.h f13, f23, f1, rdn # perform operation
fmul.h f13, f23, f1, rmm # perform operation
fmul.h f13, f23, f1, rne # perform operation
fmul.h f13, f23, f1, rtz # perform operation
fmul.h f13, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmul.h f5, f21, f11, dyn # perform operation
fmul.h f5, f21, f11, rdn # perform operation
fmul.h f5, f21, f11, rmm # perform operation
fmul.h f5, f21, f11, rne # perform operation
fmul.h f5, f21, f11, rtz # perform operation
fmul.h f5, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmul.h f11, f24, f6, dyn # perform operation
fmul.h f11, f24, f6, rdn # perform operation
fmul.h f11, f24, f6, rmm # perform operation
fmul.h f11, f24, f6, rne # perform operation
fmul.h f11, f24, f6, rtz # perform operation
fmul.h f11, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fmul.h f25, f10, f20, dyn # perform operation
fmul.h f25, f10, f20, rdn # perform operation
fmul.h f25, f10, f20, rmm # perform operation
fmul.h f25, f10, f20, rne # perform operation
fmul.h f25, f10, f20, rtz # perform operation
fmul.h f25, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmul.h f7, f16, f13, dyn # perform operation
fmul.h f7, f16, f13, rdn # perform operation
fmul.h f7, f16, f13, rmm # perform operation
fmul.h f7, f16, f13, rne # perform operation
fmul.h f7, f16, f13, rtz # perform operation
fmul.h f7, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f16, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmul.h f25, f31, f9, dyn # perform operation
fmul.h f25, f31, f9, rdn # perform operation
fmul.h f25, f31, f9, rmm # perform operation
fmul.h f25, f31, f9, rne # perform operation
fmul.h f25, f31, f9, rtz # perform operation
fmul.h f25, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmul.h f16, f30, f20, dyn # perform operation
fmul.h f16, f30, f20, rdn # perform operation
fmul.h f16, f30, f20, rmm # perform operation
fmul.h f16, f30, f20, rne # perform operation
fmul.h f16, f30, f20, rtz # perform operation
fmul.h f16, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmul.h f1, f20, f26, dyn # perform operation
fmul.h f1, f20, f26, rdn # perform operation
fmul.h f1, f20, f26, rmm # perform operation
fmul.h f1, f20, f26, rne # perform operation
fmul.h f1, f20, f26, rtz # perform operation
fmul.h f1, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmul.h f9, f17, f24, dyn # perform operation
fmul.h f9, f17, f24, rdn # perform operation
fmul.h f9, f17, f24, rmm # perform operation
fmul.h f9, f17, f24, rne # perform operation
fmul.h f9, f17, f24, rtz # perform operation
fmul.h f9, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f10, f8, f15, dyn # perform operation
fmul.h f10, f8, f15, rdn # perform operation
fmul.h f10, f8, f15, rmm # perform operation
fmul.h f10, f8, f15, rne # perform operation
fmul.h f10, f8, f15, rtz # perform operation
fmul.h f10, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f22, f19, f23, dyn # perform operation
fmul.h f22, f19, f23, rdn # perform operation
fmul.h f22, f19, f23, rmm # perform operation
fmul.h f22, f19, f23, rne # perform operation
fmul.h f22, f19, f23, rtz # perform operation
fmul.h f22, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmul.h f18, f31, f16, dyn # perform operation
fmul.h f18, f31, f16, rdn # perform operation
fmul.h f18, f31, f16, rmm # perform operation
fmul.h f18, f31, f16, rne # perform operation
fmul.h f18, f31, f16, rtz # perform operation
fmul.h f18, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmul.h f3, f16, f31, dyn # perform operation
fmul.h f3, f16, f31, rdn # perform operation
fmul.h f3, f16, f31, rmm # perform operation
fmul.h f3, f16, f31, rne # perform operation
fmul.h f3, f16, f31, rtz # perform operation
fmul.h f3, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmul.h f6, f31, f14, dyn # perform operation
fmul.h f6, f31, f14, rdn # perform operation
fmul.h f6, f31, f14, rmm # perform operation
fmul.h f6, f31, f14, rne # perform operation
fmul.h f6, f31, f14, rtz # perform operation
fmul.h f6, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmul.h f7, f1, f30, dyn # perform operation
fmul.h f7, f1, f30, rdn # perform operation
fmul.h f7, f1, f30, rmm # perform operation
fmul.h f7, f1, f30, rne # perform operation
fmul.h f7, f1, f30, rtz # perform operation
fmul.h f7, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmul.h f19, f26, f21, dyn # perform operation
fmul.h f19, f26, f21, rdn # perform operation
fmul.h f19, f26, f21, rmm # perform operation
fmul.h f19, f26, f21, rne # perform operation
fmul.h f19, f26, f21, rtz # perform operation
fmul.h f19, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmul.h f16, f14, f28, dyn # perform operation
fmul.h f16, f14, f28, rdn # perform operation
fmul.h f16, f14, f28, rmm # perform operation
fmul.h f16, f14, f28, rne # perform operation
fmul.h f16, f14, f28, rtz # perform operation
fmul.h f16, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmul.h f28, f23, f3, dyn # perform operation
fmul.h f28, f23, f3, rdn # perform operation
fmul.h f28, f23, f3, rmm # perform operation
fmul.h f28, f23, f3, rne # perform operation
fmul.h f28, f23, f3, rtz # perform operation
fmul.h f28, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fmul.h f31, f29, f14, dyn # perform operation
fmul.h f31, f29, f14, rdn # perform operation
fmul.h f31, f29, f14, rmm # perform operation
fmul.h f31, f29, f14, rne # perform operation
fmul.h f31, f29, f14, rtz # perform operation
fmul.h f31, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fmul.h f5, f31, f23, dyn # perform operation
fmul.h f5, f31, f23, rdn # perform operation
fmul.h f5, f31, f23, rmm # perform operation
fmul.h f5, f31, f23, rne # perform operation
fmul.h f5, f31, f23, rtz # perform operation
fmul.h f5, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmul.h f27, f13, f12, dyn # perform operation
fmul.h f27, f13, f12, rdn # perform operation
fmul.h f27, f13, f12, rmm # perform operation
fmul.h f27, f13, f12, rne # perform operation
fmul.h f27, f13, f12, rtz # perform operation
fmul.h f27, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fmul.h f21, f27, f17, dyn # perform operation
fmul.h f21, f27, f17, rdn # perform operation
fmul.h f21, f27, f17, rmm # perform operation
fmul.h f21, f27, f17, rne # perform operation
fmul.h f21, f27, f17, rtz # perform operation
fmul.h f21, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fmul.h f16, f29, f23, dyn # perform operation
fmul.h f16, f29, f23, rdn # perform operation
fmul.h f16, f29, f23, rmm # perform operation
fmul.h f16, f29, f23, rne # perform operation
fmul.h f16, f29, f23, rtz # perform operation
fmul.h f16, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f12, f15, f10, dyn # perform operation
fmul.h f12, f15, f10, rdn # perform operation
fmul.h f12, f15, f10, rmm # perform operation
fmul.h f12, f15, f10, rne # perform operation
fmul.h f12, f15, f10, rtz # perform operation
fmul.h f12, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fmul.h f23, f25, f14, dyn # perform operation
fmul.h f23, f25, f14, rdn # perform operation
fmul.h f23, f25, f14, rmm # perform operation
fmul.h f23, f25, f14, rne # perform operation
fmul.h f23, f25, f14, rtz # perform operation
fmul.h f23, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmul.h f17, f22, f16, dyn # perform operation
fmul.h f17, f22, f16, rdn # perform operation
fmul.h f17, f22, f16, rmm # perform operation
fmul.h f17, f22, f16, rne # perform operation
fmul.h f17, f22, f16, rtz # perform operation
fmul.h f17, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmul.h f3, f15, f2, dyn # perform operation
fmul.h f3, f15, f2, rdn # perform operation
fmul.h f3, f15, f2, rmm # perform operation
fmul.h f3, f15, f2, rne # perform operation
fmul.h f3, f15, f2, rtz # perform operation
fmul.h f3, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fmul.h f14, f17, f24, dyn # perform operation
fmul.h f14, f17, f24, rdn # perform operation
fmul.h f14, f17, f24, rmm # perform operation
fmul.h f14, f17, f24, rne # perform operation
fmul.h f14, f17, f24, rtz # perform operation
fmul.h f14, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmul.h f3, f25, f7, dyn # perform operation
fmul.h f3, f25, f7, rdn # perform operation
fmul.h f3, f25, f7, rmm # perform operation
fmul.h f3, f25, f7, rne # perform operation
fmul.h f3, f25, f7, rtz # perform operation
fmul.h f3, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fmul.h f20, f12, f29, dyn # perform operation
fmul.h f20, f12, f29, rdn # perform operation
fmul.h f20, f12, f29, rmm # perform operation
fmul.h f20, f12, f29, rne # perform operation
fmul.h f20, f12, f29, rtz # perform operation
fmul.h f20, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmul.h f8, f30, f28, dyn # perform operation
fmul.h f8, f30, f28, rdn # perform operation
fmul.h f8, f30, f28, rmm # perform operation
fmul.h f8, f30, f28, rne # perform operation
fmul.h f8, f30, f28, rtz # perform operation
fmul.h f8, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f9, f10, f27, dyn # perform operation
fmul.h f9, f10, f27, rdn # perform operation
fmul.h f9, f10, f27, rmm # perform operation
fmul.h f9, f10, f27, rne # perform operation
fmul.h f9, f10, f27, rtz # perform operation
fmul.h f9, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmul.h f26, f3, f24, dyn # perform operation
fmul.h f26, f3, f24, rdn # perform operation
fmul.h f26, f3, f24, rmm # perform operation
fmul.h f26, f3, f24, rne # perform operation
fmul.h f26, f3, f24, rtz # perform operation
fmul.h f26, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmul.h f8, f31, f18, dyn # perform operation
fmul.h f8, f31, f18, rdn # perform operation
fmul.h f8, f31, f18, rmm # perform operation
fmul.h f8, f31, f18, rne # perform operation
fmul.h f8, f31, f18, rtz # perform operation
fmul.h f8, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fmul.h f30, f23, f9, dyn # perform operation
fmul.h f30, f23, f9, rdn # perform operation
fmul.h f30, f23, f9, rmm # perform operation
fmul.h f30, f23, f9, rne # perform operation
fmul.h f30, f23, f9, rtz # perform operation
fmul.h f30, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmul.h f27, f10, f2, dyn # perform operation
fmul.h f27, f10, f2, rdn # perform operation
fmul.h f27, f10, f2, rmm # perform operation
fmul.h f27, f10, f2, rne # perform operation
fmul.h f27, f10, f2, rtz # perform operation
fmul.h f27, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmul.h f29, f10, f8, dyn # perform operation
fmul.h f29, f10, f8, rdn # perform operation
fmul.h f29, f10, f8, rmm # perform operation
fmul.h f29, f10, f8, rne # perform operation
fmul.h f29, f10, f8, rtz # perform operation
fmul.h f29, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmul.h f28, f20, f8, dyn # perform operation
fmul.h f28, f20, f8, rdn # perform operation
fmul.h f28, f20, f8, rmm # perform operation
fmul.h f28, f20, f8, rne # perform operation
fmul.h f28, f20, f8, rtz # perform operation
fmul.h f28, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fmul.h f22, f11, f19, dyn # perform operation
fmul.h f22, f11, f19, rdn # perform operation
fmul.h f22, f11, f19, rmm # perform operation
fmul.h f22, f11, f19, rne # perform operation
fmul.h f22, f11, f19, rtz # perform operation
fmul.h f22, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f26, f25, f9, dyn # perform operation
fmul.h f26, f25, f9, rdn # perform operation
fmul.h f26, f25, f9, rmm # perform operation
fmul.h f26, f25, f9, rne # perform operation
fmul.h f26, f25, f9, rtz # perform operation
fmul.h f26, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f21, f20, f25, dyn # perform operation
fmul.h f21, f20, f25, rdn # perform operation
fmul.h f21, f20, f25, rmm # perform operation
fmul.h f21, f20, f25, rne # perform operation
fmul.h f21, f20, f25, rtz # perform operation
fmul.h f21, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fmul.h f20, f29, f8, dyn # perform operation
fmul.h f20, f29, f8, rdn # perform operation
fmul.h f20, f29, f8, rmm # perform operation
fmul.h f20, f29, f8, rne # perform operation
fmul.h f20, f29, f8, rtz # perform operation
fmul.h f20, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fmul.h f19, f6, f12, dyn # perform operation
fmul.h f19, f6, f12, rdn # perform operation
fmul.h f19, f6, f12, rmm # perform operation
fmul.h f19, f6, f12, rne # perform operation
fmul.h f19, f6, f12, rtz # perform operation
fmul.h f19, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fmul.h f11, f9, f18, dyn # perform operation
fmul.h f11, f9, f18, rdn # perform operation
fmul.h f11, f9, f18, rmm # perform operation
fmul.h f11, f9, f18, rne # perform operation
fmul.h f11, f9, f18, rtz # perform operation
fmul.h f11, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fmul.h f5, f29, f2, dyn # perform operation
fmul.h f5, f29, f2, rdn # perform operation
fmul.h f5, f29, f2, rmm # perform operation
fmul.h f5, f29, f2, rne # perform operation
fmul.h f5, f29, f2, rtz # perform operation
fmul.h f5, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmul.h f11, f6, f2, dyn # perform operation
fmul.h f11, f6, f2, rdn # perform operation
fmul.h f11, f6, f2, rmm # perform operation
fmul.h f11, f6, f2, rne # perform operation
fmul.h f11, f6, f2, rtz # perform operation
fmul.h f11, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmul.h f24, f14, f20, dyn # perform operation
fmul.h f24, f14, f20, rdn # perform operation
fmul.h f24, f14, f20, rmm # perform operation
fmul.h f24, f14, f20, rne # perform operation
fmul.h f24, f14, f20, rtz # perform operation
fmul.h f24, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fmul.h f16, f25, f11, dyn # perform operation
fmul.h f16, f25, f11, rdn # perform operation
fmul.h f16, f25, f11, rmm # perform operation
fmul.h f16, f25, f11, rne # perform operation
fmul.h f16, f25, f11, rtz # perform operation
fmul.h f16, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmul.h f6, f9, f25, dyn # perform operation
fmul.h f6, f9, f25, rdn # perform operation
fmul.h f6, f9, f25, rmm # perform operation
fmul.h f6, f9, f25, rne # perform operation
fmul.h f6, f9, f25, rtz # perform operation
fmul.h f6, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f22, f11, f7, dyn # perform operation
fmul.h f22, f11, f7, rdn # perform operation
fmul.h f22, f11, f7, rmm # perform operation
fmul.h f22, f11, f7, rne # perform operation
fmul.h f22, f11, f7, rtz # perform operation
fmul.h f22, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fmul.h f13, f17, f10, dyn # perform operation
fmul.h f13, f17, f10, rdn # perform operation
fmul.h f13, f17, f10, rmm # perform operation
fmul.h f13, f17, f10, rne # perform operation
fmul.h f13, f17, f10, rtz # perform operation
fmul.h f13, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fmul.h f16, f28, f3, dyn # perform operation
fmul.h f16, f28, f3, rdn # perform operation
fmul.h f16, f28, f3, rmm # perform operation
fmul.h f16, f28, f3, rne # perform operation
fmul.h f16, f28, f3, rtz # perform operation
fmul.h f16, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmul.h f15, f3, f23, dyn # perform operation
fmul.h f15, f3, f23, rdn # perform operation
fmul.h f15, f3, f23, rmm # perform operation
fmul.h f15, f3, f23, rne # perform operation
fmul.h f15, f3, f23, rtz # perform operation
fmul.h f15, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fmul.h f24, f19, f25, dyn # perform operation
fmul.h f24, f19, f25, rdn # perform operation
fmul.h f24, f19, f25, rmm # perform operation
fmul.h f24, f19, f25, rne # perform operation
fmul.h f24, f19, f25, rtz # perform operation
fmul.h f24, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmul.h f30, f31, f17, dyn # perform operation
fmul.h f30, f31, f17, rdn # perform operation
fmul.h f30, f31, f17, rmm # perform operation
fmul.h f30, f31, f17, rne # perform operation
fmul.h f30, f31, f17, rtz # perform operation
fmul.h f30, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmul.h f20, f24, f16, dyn # perform operation
fmul.h f20, f24, f16, rdn # perform operation
fmul.h f20, f24, f16, rmm # perform operation
fmul.h f20, f24, f16, rne # perform operation
fmul.h f20, f24, f16, rtz # perform operation
fmul.h f20, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmul.h f7, f26, f21, dyn # perform operation
fmul.h f7, f26, f21, rdn # perform operation
fmul.h f7, f26, f21, rmm # perform operation
fmul.h f7, f26, f21, rne # perform operation
fmul.h f7, f26, f21, rtz # perform operation
fmul.h f7, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmul.h f5, f6, f25, dyn # perform operation
fmul.h f5, f6, f25, rdn # perform operation
fmul.h f5, f6, f25, rmm # perform operation
fmul.h f5, f6, f25, rne # perform operation
fmul.h f5, f6, f25, rtz # perform operation
fmul.h f5, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f25, f13, f3, dyn # perform operation
fmul.h f25, f13, f3, rdn # perform operation
fmul.h f25, f13, f3, rmm # perform operation
fmul.h f25, f13, f3, rne # perform operation
fmul.h f25, f13, f3, rtz # perform operation
fmul.h f25, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmul.h f22, f14, f29, dyn # perform operation
fmul.h f22, f14, f29, rdn # perform operation
fmul.h f22, f14, f29, rmm # perform operation
fmul.h f22, f14, f29, rne # perform operation
fmul.h f22, f14, f29, rtz # perform operation
fmul.h f22, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f16, f12, f1, dyn # perform operation
fmul.h f16, f12, f1, rdn # perform operation
fmul.h f16, f12, f1, rmm # perform operation
fmul.h f16, f12, f1, rne # perform operation
fmul.h f16, f12, f1, rtz # perform operation
fmul.h f16, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fmul.h f28, f1, f21, dyn # perform operation
fmul.h f28, f1, f21, rdn # perform operation
fmul.h f28, f1, f21, rmm # perform operation
fmul.h f28, f1, f21, rne # perform operation
fmul.h f28, f1, f21, rtz # perform operation
fmul.h f28, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmul.h f23, f20, f19, dyn # perform operation
fmul.h f23, f20, f19, rdn # perform operation
fmul.h f23, f20, f19, rmm # perform operation
fmul.h f23, f20, f19, rne # perform operation
fmul.h f23, f20, f19, rtz # perform operation
fmul.h f23, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fmul.h f21, f22, f28, dyn # perform operation
fmul.h f21, f22, f28, rdn # perform operation
fmul.h f21, f22, f28, rmm # perform operation
fmul.h f21, f22, f28, rne # perform operation
fmul.h f21, f22, f28, rtz # perform operation
fmul.h f21, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmul.h f26, f24, f27, dyn # perform operation
fmul.h f26, f24, f27, rdn # perform operation
fmul.h f26, f24, f27, rmm # perform operation
fmul.h f26, f24, f27, rne # perform operation
fmul.h f26, f24, f27, rtz # perform operation
fmul.h f26, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmul.h f6, f3, f29, dyn # perform operation
fmul.h f6, f3, f29, rdn # perform operation
fmul.h f6, f3, f29, rmm # perform operation
fmul.h f6, f3, f29, rne # perform operation
fmul.h f6, f3, f29, rtz # perform operation
fmul.h f6, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fmul.h f29, f22, f6, dyn # perform operation
fmul.h f29, f22, f6, rdn # perform operation
fmul.h f29, f22, f6, rmm # perform operation
fmul.h f29, f22, f6, rne # perform operation
fmul.h f29, f22, f6, rtz # perform operation
fmul.h f29, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fmul.h f30, f14, f7, dyn # perform operation
fmul.h f30, f14, f7, rdn # perform operation
fmul.h f30, f14, f7, rmm # perform operation
fmul.h f30, f14, f7, rne # perform operation
fmul.h f30, f14, f7, rtz # perform operation
fmul.h f30, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmul.h f1, f3, f31, dyn # perform operation
fmul.h f1, f3, f31, rdn # perform operation
fmul.h f1, f3, f31, rmm # perform operation
fmul.h f1, f3, f31, rne # perform operation
fmul.h f1, f3, f31, rtz # perform operation
fmul.h f1, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmul.h f27, f14, f12, dyn # perform operation
fmul.h f27, f14, f12, rdn # perform operation
fmul.h f27, f14, f12, rmm # perform operation
fmul.h f27, f14, f12, rne # perform operation
fmul.h f27, f14, f12, rtz # perform operation
fmul.h f27, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f14, f12 # perform operation


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
fmul.h f29, f22, f13, dyn # perform operation
fmul.h f29, f22, f13, rdn # perform operation
fmul.h f29, f22, f13, rmm # perform operation
fmul.h f29, f22, f13, rne # perform operation
fmul.h f29, f22, f13, rtz # perform operation
fmul.h f29, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmul.h f17, f2, f13, dyn # perform operation
fmul.h f17, f2, f13, rdn # perform operation
fmul.h f17, f2, f13, rmm # perform operation
fmul.h f17, f2, f13, rne # perform operation
fmul.h f17, f2, f13, rtz # perform operation
fmul.h f17, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmul.h f31, f12, f8, dyn # perform operation
fmul.h f31, f12, f8, rdn # perform operation
fmul.h f31, f12, f8, rmm # perform operation
fmul.h f31, f12, f8, rne # perform operation
fmul.h f31, f12, f8, rtz # perform operation
fmul.h f31, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmul.h f15, f16, f9, dyn # perform operation
fmul.h f15, f16, f9, rdn # perform operation
fmul.h f15, f16, f9, rmm # perform operation
fmul.h f15, f16, f9, rne # perform operation
fmul.h f15, f16, f9, rtz # perform operation
fmul.h f15, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmul.h f23, f19, f30, dyn # perform operation
fmul.h f23, f19, f30, rdn # perform operation
fmul.h f23, f19, f30, rmm # perform operation
fmul.h f23, f19, f30, rne # perform operation
fmul.h f23, f19, f30, rtz # perform operation
fmul.h f23, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
fmul.h f18, f3, f31, dyn # perform operation
fmul.h f18, f3, f31, rdn # perform operation
fmul.h f18, f3, f31, rmm # perform operation
fmul.h f18, f3, f31, rne # perform operation
fmul.h f18, f3, f31, rtz # perform operation
fmul.h f18, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmul.h f5, f12, f7, dyn # perform operation
fmul.h f5, f12, f7, rdn # perform operation
fmul.h f5, f12, f7, rmm # perform operation
fmul.h f5, f12, f7, rne # perform operation
fmul.h f5, f12, f7, rtz # perform operation
fmul.h f5, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmul.h f29, f10, f25, dyn # perform operation
fmul.h f29, f10, f25, rdn # perform operation
fmul.h f29, f10, f25, rmm # perform operation
fmul.h f29, f10, f25, rne # perform operation
fmul.h f29, f10, f25, rtz # perform operation
fmul.h f29, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmul.h f17, f6, f8, dyn # perform operation
fmul.h f17, f6, f8, rdn # perform operation
fmul.h f17, f6, f8, rmm # perform operation
fmul.h f17, f6, f8, rne # perform operation
fmul.h f17, f6, f8, rtz # perform operation
fmul.h f17, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmul.h f30, f17, f5, dyn # perform operation
fmul.h f30, f17, f5, rdn # perform operation
fmul.h f30, f17, f5, rmm # perform operation
fmul.h f30, f17, f5, rne # perform operation
fmul.h f30, f17, f5, rtz # perform operation
fmul.h f30, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmul.h f13, f22, f10, dyn # perform operation
fmul.h f13, f22, f10, rdn # perform operation
fmul.h f13, f22, f10, rmm # perform operation
fmul.h f13, f22, f10, rne # perform operation
fmul.h f13, f22, f10, rtz # perform operation
fmul.h f13, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f10, f8, f14, dyn # perform operation
fmul.h f10, f8, f14, rdn # perform operation
fmul.h f10, f8, f14, rmm # perform operation
fmul.h f10, f8, f14, rne # perform operation
fmul.h f10, f8, f14, rtz # perform operation
fmul.h f10, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmul.h f1, f31, f10, dyn # perform operation
fmul.h f1, f31, f10, rdn # perform operation
fmul.h f1, f31, f10, rmm # perform operation
fmul.h f1, f31, f10, rne # perform operation
fmul.h f1, f31, f10, rtz # perform operation
fmul.h f1, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmul.h f9, f24, f27, dyn # perform operation
fmul.h f9, f24, f27, rdn # perform operation
fmul.h f9, f24, f27, rmm # perform operation
fmul.h f9, f24, f27, rne # perform operation
fmul.h f9, f24, f27, rtz # perform operation
fmul.h f9, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmul.h f14, f2, f3, dyn # perform operation
fmul.h f14, f2, f3, rdn # perform operation
fmul.h f14, f2, f3, rmm # perform operation
fmul.h f14, f2, f3, rne # perform operation
fmul.h f14, f2, f3, rtz # perform operation
fmul.h f14, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fmul.h f14, f21, f31, dyn # perform operation
fmul.h f14, f21, f31, rdn # perform operation
fmul.h f14, f21, f31, rmm # perform operation
fmul.h f14, f21, f31, rne # perform operation
fmul.h f14, f21, f31, rtz # perform operation
fmul.h f14, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fmul.h f12, f21, f18, dyn # perform operation
fmul.h f12, f21, f18, rdn # perform operation
fmul.h f12, f21, f18, rmm # perform operation
fmul.h f12, f21, f18, rne # perform operation
fmul.h f12, f21, f18, rtz # perform operation
fmul.h f12, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmul.h f29, f15, f18, dyn # perform operation
fmul.h f29, f15, f18, rdn # perform operation
fmul.h f29, f15, f18, rmm # perform operation
fmul.h f29, f15, f18, rne # perform operation
fmul.h f29, f15, f18, rtz # perform operation
fmul.h f29, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmul.h f1, f8, f29, dyn # perform operation
fmul.h f1, f8, f29, rdn # perform operation
fmul.h f1, f8, f29, rmm # perform operation
fmul.h f1, f8, f29, rne # perform operation
fmul.h f1, f8, f29, rtz # perform operation
fmul.h f1, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fmul.h f22, f25, f21, dyn # perform operation
fmul.h f22, f25, f21, rdn # perform operation
fmul.h f22, f25, f21, rmm # perform operation
fmul.h f22, f25, f21, rne # perform operation
fmul.h f22, f25, f21, rtz # perform operation
fmul.h f22, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fmul.h f10, f5, f15, dyn # perform operation
fmul.h f10, f5, f15, rdn # perform operation
fmul.h f10, f5, f15, rmm # perform operation
fmul.h f10, f5, f15, rne # perform operation
fmul.h f10, f5, f15, rtz # perform operation
fmul.h f10, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f12, f10, f16, dyn # perform operation
fmul.h f12, f10, f16, rdn # perform operation
fmul.h f12, f10, f16, rmm # perform operation
fmul.h f12, f10, f16, rne # perform operation
fmul.h f12, f10, f16, rtz # perform operation
fmul.h f12, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmul.h f12, f20, f5, dyn # perform operation
fmul.h f12, f20, f5, rdn # perform operation
fmul.h f12, f20, f5, rmm # perform operation
fmul.h f12, f20, f5, rne # perform operation
fmul.h f12, f20, f5, rtz # perform operation
fmul.h f12, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmul.h f12, f24, f10, dyn # perform operation
fmul.h f12, f24, f10, rdn # perform operation
fmul.h f12, f24, f10, rmm # perform operation
fmul.h f12, f24, f10, rne # perform operation
fmul.h f12, f24, f10, rtz # perform operation
fmul.h f12, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fmul.h f30, f19, f2, dyn # perform operation
fmul.h f30, f19, f2, rdn # perform operation
fmul.h f30, f19, f2, rmm # perform operation
fmul.h f30, f19, f2, rne # perform operation
fmul.h f30, f19, f2, rtz # perform operation
fmul.h f30, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fmul.h f15, f1, f27, dyn # perform operation
fmul.h f15, f1, f27, rdn # perform operation
fmul.h f15, f1, f27, rmm # perform operation
fmul.h f15, f1, f27, rne # perform operation
fmul.h f15, f1, f27, rtz # perform operation
fmul.h f15, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmul.h f5, f6, f19, dyn # perform operation
fmul.h f5, f6, f19, rdn # perform operation
fmul.h f5, f6, f19, rmm # perform operation
fmul.h f5, f6, f19, rne # perform operation
fmul.h f5, f6, f19, rtz # perform operation
fmul.h f5, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fmul.h f31, f8, f23, dyn # perform operation
fmul.h f31, f8, f23, rdn # perform operation
fmul.h f31, f8, f23, rmm # perform operation
fmul.h f31, f8, f23, rne # perform operation
fmul.h f31, f8, f23, rtz # perform operation
fmul.h f31, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmul.h f23, f29, f31, dyn # perform operation
fmul.h f23, f29, f31, rdn # perform operation
fmul.h f23, f29, f31, rmm # perform operation
fmul.h f23, f29, f31, rne # perform operation
fmul.h f23, f29, f31, rtz # perform operation
fmul.h f23, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f16, f19, f1, dyn # perform operation
fmul.h f16, f19, f1, rdn # perform operation
fmul.h f16, f19, f1, rmm # perform operation
fmul.h f16, f19, f1, rne # perform operation
fmul.h f16, f19, f1, rtz # perform operation
fmul.h f16, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmul.h f8, f9, f14, dyn # perform operation
fmul.h f8, f9, f14, rdn # perform operation
fmul.h f8, f9, f14, rmm # perform operation
fmul.h f8, f9, f14, rne # perform operation
fmul.h f8, f9, f14, rtz # perform operation
fmul.h f8, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fmul.h f14, f6, f13, dyn # perform operation
fmul.h f14, f6, f13, rdn # perform operation
fmul.h f14, f6, f13, rmm # perform operation
fmul.h f14, f6, f13, rne # perform operation
fmul.h f14, f6, f13, rtz # perform operation
fmul.h f14, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f18, f25, f23, dyn # perform operation
fmul.h f18, f25, f23, rdn # perform operation
fmul.h f18, f25, f23, rmm # perform operation
fmul.h f18, f25, f23, rne # perform operation
fmul.h f18, f25, f23, rtz # perform operation
fmul.h f18, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fmul.h f27, f18, f23, dyn # perform operation
fmul.h f27, f18, f23, rdn # perform operation
fmul.h f27, f18, f23, rmm # perform operation
fmul.h f27, f18, f23, rne # perform operation
fmul.h f27, f18, f23, rtz # perform operation
fmul.h f27, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f28, f13, f31, dyn # perform operation
fmul.h f28, f13, f31, rdn # perform operation
fmul.h f28, f13, f31, rmm # perform operation
fmul.h f28, f13, f31, rne # perform operation
fmul.h f28, f13, f31, rtz # perform operation
fmul.h f28, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmul.h f19, f24, f13, dyn # perform operation
fmul.h f19, f24, f13, rdn # perform operation
fmul.h f19, f24, f13, rmm # perform operation
fmul.h f19, f24, f13, rne # perform operation
fmul.h f19, f24, f13, rtz # perform operation
fmul.h f19, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fmul.h f12, f28, f5, dyn # perform operation
fmul.h f12, f28, f5, rdn # perform operation
fmul.h f12, f28, f5, rmm # perform operation
fmul.h f12, f28, f5, rne # perform operation
fmul.h f12, f28, f5, rtz # perform operation
fmul.h f12, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmul.h f19, f18, f16, dyn # perform operation
fmul.h f19, f18, f16, rdn # perform operation
fmul.h f19, f18, f16, rmm # perform operation
fmul.h f19, f18, f16, rne # perform operation
fmul.h f19, f18, f16, rtz # perform operation
fmul.h f19, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmul.h f17, f18, f15, dyn # perform operation
fmul.h f17, f18, f15, rdn # perform operation
fmul.h f17, f18, f15, rmm # perform operation
fmul.h f17, f18, f15, rne # perform operation
fmul.h f17, f18, f15, rtz # perform operation
fmul.h f17, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f3, f2, f13, dyn # perform operation
fmul.h f3, f2, f13, rdn # perform operation
fmul.h f3, f2, f13, rmm # perform operation
fmul.h f3, f2, f13, rne # perform operation
fmul.h f3, f2, f13, rtz # perform operation
fmul.h f3, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmul.h f15, f29, f11, dyn # perform operation
fmul.h f15, f29, f11, rdn # perform operation
fmul.h f15, f29, f11, rmm # perform operation
fmul.h f15, f29, f11, rne # perform operation
fmul.h f15, f29, f11, rtz # perform operation
fmul.h f15, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fmul.h f30, f3, f8, dyn # perform operation
fmul.h f30, f3, f8, rdn # perform operation
fmul.h f30, f3, f8, rmm # perform operation
fmul.h f30, f3, f8, rne # perform operation
fmul.h f30, f3, f8, rtz # perform operation
fmul.h f30, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmul.h f12, f11, f16, dyn # perform operation
fmul.h f12, f11, f16, rdn # perform operation
fmul.h f12, f11, f16, rmm # perform operation
fmul.h f12, f11, f16, rne # perform operation
fmul.h f12, f11, f16, rtz # perform operation
fmul.h f12, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmul.h f11, f6, f28, dyn # perform operation
fmul.h f11, f6, f28, rdn # perform operation
fmul.h f11, f6, f28, rmm # perform operation
fmul.h f11, f6, f28, rne # perform operation
fmul.h f11, f6, f28, rtz # perform operation
fmul.h f11, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmul.h f26, f5, f31, dyn # perform operation
fmul.h f26, f5, f31, rdn # perform operation
fmul.h f26, f5, f31, rmm # perform operation
fmul.h f26, f5, f31, rne # perform operation
fmul.h f26, f5, f31, rtz # perform operation
fmul.h f26, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmul.h f6, f15, f9, dyn # perform operation
fmul.h f6, f15, f9, rdn # perform operation
fmul.h f6, f15, f9, rmm # perform operation
fmul.h f6, f15, f9, rne # perform operation
fmul.h f6, f15, f9, rtz # perform operation
fmul.h f6, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmul.h f27, f21, f15, dyn # perform operation
fmul.h f27, f21, f15, rdn # perform operation
fmul.h f27, f21, f15, rmm # perform operation
fmul.h f27, f21, f15, rne # perform operation
fmul.h f27, f21, f15, rtz # perform operation
fmul.h f27, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmul.h f2, f10, f16, dyn # perform operation
fmul.h f2, f10, f16, rdn # perform operation
fmul.h f2, f10, f16, rmm # perform operation
fmul.h f2, f10, f16, rne # perform operation
fmul.h f2, f10, f16, rtz # perform operation
fmul.h f2, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmul.h f20, f31, f5, dyn # perform operation
fmul.h f20, f31, f5, rdn # perform operation
fmul.h f20, f31, f5, rmm # perform operation
fmul.h f20, f31, f5, rne # perform operation
fmul.h f20, f31, f5, rtz # perform operation
fmul.h f20, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmul.h f12, f2, f14, dyn # perform operation
fmul.h f12, f2, f14, rdn # perform operation
fmul.h f12, f2, f14, rmm # perform operation
fmul.h f12, f2, f14, rne # perform operation
fmul.h f12, f2, f14, rtz # perform operation
fmul.h f12, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmul.h f24, f31, f8, dyn # perform operation
fmul.h f24, f31, f8, rdn # perform operation
fmul.h f24, f31, f8, rmm # perform operation
fmul.h f24, f31, f8, rne # perform operation
fmul.h f24, f31, f8, rtz # perform operation
fmul.h f24, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmul.h f6, f18, f25, dyn # perform operation
fmul.h f6, f18, f25, rdn # perform operation
fmul.h f6, f18, f25, rmm # perform operation
fmul.h f6, f18, f25, rne # perform operation
fmul.h f6, f18, f25, rtz # perform operation
fmul.h f6, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmul.h f14, f24, f28, dyn # perform operation
fmul.h f14, f24, f28, rdn # perform operation
fmul.h f14, f24, f28, rmm # perform operation
fmul.h f14, f24, f28, rne # perform operation
fmul.h f14, f24, f28, rtz # perform operation
fmul.h f14, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fmul.h f30, f11, f10, dyn # perform operation
fmul.h f30, f11, f10, rdn # perform operation
fmul.h f30, f11, f10, rmm # perform operation
fmul.h f30, f11, f10, rne # perform operation
fmul.h f30, f11, f10, rtz # perform operation
fmul.h f30, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmul.h f6, f30, f21, dyn # perform operation
fmul.h f6, f30, f21, rdn # perform operation
fmul.h f6, f30, f21, rmm # perform operation
fmul.h f6, f30, f21, rne # perform operation
fmul.h f6, f30, f21, rtz # perform operation
fmul.h f6, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmul.h f23, f26, f27, dyn # perform operation
fmul.h f23, f26, f27, rdn # perform operation
fmul.h f23, f26, f27, rmm # perform operation
fmul.h f23, f26, f27, rne # perform operation
fmul.h f23, f26, f27, rtz # perform operation
fmul.h f23, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fmul.h f20, f8, f9, dyn # perform operation
fmul.h f20, f8, f9, rdn # perform operation
fmul.h f20, f8, f9, rmm # perform operation
fmul.h f20, f8, f9, rne # perform operation
fmul.h f20, f8, f9, rtz # perform operation
fmul.h f20, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmul.h f6, f8, f17, dyn # perform operation
fmul.h f6, f8, f17, rdn # perform operation
fmul.h f6, f8, f17, rmm # perform operation
fmul.h f6, f8, f17, rne # perform operation
fmul.h f6, f8, f17, rtz # perform operation
fmul.h f6, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmul.h f28, f7, f13, dyn # perform operation
fmul.h f28, f7, f13, rdn # perform operation
fmul.h f28, f7, f13, rmm # perform operation
fmul.h f28, f7, f13, rne # perform operation
fmul.h f28, f7, f13, rtz # perform operation
fmul.h f28, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmul.h f13, f2, f8, dyn # perform operation
fmul.h f13, f2, f8, rdn # perform operation
fmul.h f13, f2, f8, rmm # perform operation
fmul.h f13, f2, f8, rne # perform operation
fmul.h f13, f2, f8, rtz # perform operation
fmul.h f13, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmul.h f15, f24, f17, dyn # perform operation
fmul.h f15, f24, f17, rdn # perform operation
fmul.h f15, f24, f17, rmm # perform operation
fmul.h f15, f24, f17, rne # perform operation
fmul.h f15, f24, f17, rtz # perform operation
fmul.h f15, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fmul.h f26, f15, f11, dyn # perform operation
fmul.h f26, f15, f11, rdn # perform operation
fmul.h f26, f15, f11, rmm # perform operation
fmul.h f26, f15, f11, rne # perform operation
fmul.h f26, f15, f11, rtz # perform operation
fmul.h f26, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f25, f16, f21, dyn # perform operation
fmul.h f25, f16, f21, rdn # perform operation
fmul.h f25, f16, f21, rmm # perform operation
fmul.h f25, f16, f21, rne # perform operation
fmul.h f25, f16, f21, rtz # perform operation
fmul.h f25, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmul.h f29, f23, f20, dyn # perform operation
fmul.h f29, f23, f20, rdn # perform operation
fmul.h f29, f23, f20, rmm # perform operation
fmul.h f29, f23, f20, rne # perform operation
fmul.h f29, f23, f20, rtz # perform operation
fmul.h f29, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fmul.h f3, f16, f27, dyn # perform operation
fmul.h f3, f16, f27, rdn # perform operation
fmul.h f3, f16, f27, rmm # perform operation
fmul.h f3, f16, f27, rne # perform operation
fmul.h f3, f16, f27, rtz # perform operation
fmul.h f3, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmul.h f28, f25, f14, dyn # perform operation
fmul.h f28, f25, f14, rdn # perform operation
fmul.h f28, f25, f14, rmm # perform operation
fmul.h f28, f25, f14, rne # perform operation
fmul.h f28, f25, f14, rtz # perform operation
fmul.h f28, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmul.h f30, f24, f2, dyn # perform operation
fmul.h f30, f24, f2, rdn # perform operation
fmul.h f30, f24, f2, rmm # perform operation
fmul.h f30, f24, f2, rne # perform operation
fmul.h f30, f24, f2, rtz # perform operation
fmul.h f30, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmul.h f6, f30, f10, dyn # perform operation
fmul.h f6, f30, f10, rdn # perform operation
fmul.h f6, f30, f10, rmm # perform operation
fmul.h f6, f30, f10, rne # perform operation
fmul.h f6, f30, f10, rtz # perform operation
fmul.h f6, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmul.h f20, f19, f27, dyn # perform operation
fmul.h f20, f19, f27, rdn # perform operation
fmul.h f20, f19, f27, rmm # perform operation
fmul.h f20, f19, f27, rne # perform operation
fmul.h f20, f19, f27, rtz # perform operation
fmul.h f20, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f19, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmul.h f13, f28, f7, dyn # perform operation
fmul.h f13, f28, f7, rdn # perform operation
fmul.h f13, f28, f7, rmm # perform operation
fmul.h f13, f28, f7, rne # perform operation
fmul.h f13, f28, f7, rtz # perform operation
fmul.h f13, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f13, f27, f28, dyn # perform operation
fmul.h f13, f27, f28, rdn # perform operation
fmul.h f13, f27, f28, rmm # perform operation
fmul.h f13, f27, f28, rne # perform operation
fmul.h f13, f27, f28, rtz # perform operation
fmul.h f13, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmul.h f2, f28, f27, dyn # perform operation
fmul.h f2, f28, f27, rdn # perform operation
fmul.h f2, f28, f27, rmm # perform operation
fmul.h f2, f28, f27, rne # perform operation
fmul.h f2, f28, f27, rtz # perform operation
fmul.h f2, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmul.h f16, f17, f31, dyn # perform operation
fmul.h f16, f17, f31, rdn # perform operation
fmul.h f16, f17, f31, rmm # perform operation
fmul.h f16, f17, f31, rne # perform operation
fmul.h f16, f17, f31, rtz # perform operation
fmul.h f16, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmul.h f8, f1, f11, dyn # perform operation
fmul.h f8, f1, f11, rdn # perform operation
fmul.h f8, f1, f11, rmm # perform operation
fmul.h f8, f1, f11, rne # perform operation
fmul.h f8, f1, f11, rtz # perform operation
fmul.h f8, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f22, f26, f1, dyn # perform operation
fmul.h f22, f26, f1, rdn # perform operation
fmul.h f22, f26, f1, rmm # perform operation
fmul.h f22, f26, f1, rne # perform operation
fmul.h f22, f26, f1, rtz # perform operation
fmul.h f22, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f26, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmul.h f10, f23, f20, dyn # perform operation
fmul.h f10, f23, f20, rdn # perform operation
fmul.h f10, f23, f20, rmm # perform operation
fmul.h f10, f23, f20, rne # perform operation
fmul.h f10, f23, f20, rtz # perform operation
fmul.h f10, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmul.h f7, f18, f20, dyn # perform operation
fmul.h f7, f18, f20, rdn # perform operation
fmul.h f7, f18, f20, rmm # perform operation
fmul.h f7, f18, f20, rne # perform operation
fmul.h f7, f18, f20, rtz # perform operation
fmul.h f7, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmul.h f17, f7, f2, dyn # perform operation
fmul.h f17, f7, f2, rdn # perform operation
fmul.h f17, f7, f2, rmm # perform operation
fmul.h f17, f7, f2, rne # perform operation
fmul.h f17, f7, f2, rtz # perform operation
fmul.h f17, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fmul.h f1, f30, f6, dyn # perform operation
fmul.h f1, f30, f6, rdn # perform operation
fmul.h f1, f30, f6, rmm # perform operation
fmul.h f1, f30, f6, rne # perform operation
fmul.h f1, f30, f6, rtz # perform operation
fmul.h f1, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmul.h f15, f13, f26, dyn # perform operation
fmul.h f15, f13, f26, rdn # perform operation
fmul.h f15, f13, f26, rmm # perform operation
fmul.h f15, f13, f26, rne # perform operation
fmul.h f15, f13, f26, rtz # perform operation
fmul.h f15, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmul.h f3, f16, f22, dyn # perform operation
fmul.h f3, f16, f22, rdn # perform operation
fmul.h f3, f16, f22, rmm # perform operation
fmul.h f3, f16, f22, rne # perform operation
fmul.h f3, f16, f22, rtz # perform operation
fmul.h f3, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f12, f6, f28, dyn # perform operation
fmul.h f12, f6, f28, rdn # perform operation
fmul.h f12, f6, f28, rmm # perform operation
fmul.h f12, f6, f28, rne # perform operation
fmul.h f12, f6, f28, rtz # perform operation
fmul.h f12, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fmul.h f15, f31, f13, dyn # perform operation
fmul.h f15, f31, f13, rdn # perform operation
fmul.h f15, f31, f13, rmm # perform operation
fmul.h f15, f31, f13, rne # perform operation
fmul.h f15, f31, f13, rtz # perform operation
fmul.h f15, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmul.h f29, f24, f11, dyn # perform operation
fmul.h f29, f24, f11, rdn # perform operation
fmul.h f29, f24, f11, rmm # perform operation
fmul.h f29, f24, f11, rne # perform operation
fmul.h f29, f24, f11, rtz # perform operation
fmul.h f29, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fmul.h f28, f30, f27, dyn # perform operation
fmul.h f28, f30, f27, rdn # perform operation
fmul.h f28, f30, f27, rmm # perform operation
fmul.h f28, f30, f27, rne # perform operation
fmul.h f28, f30, f27, rtz # perform operation
fmul.h f28, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmul.h f6, f5, f27, dyn # perform operation
fmul.h f6, f5, f27, rdn # perform operation
fmul.h f6, f5, f27, rmm # perform operation
fmul.h f6, f5, f27, rne # perform operation
fmul.h f6, f5, f27, rtz # perform operation
fmul.h f6, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f22, f27, f11, dyn # perform operation
fmul.h f22, f27, f11, rdn # perform operation
fmul.h f22, f27, f11, rmm # perform operation
fmul.h f22, f27, f11, rne # perform operation
fmul.h f22, f27, f11, rtz # perform operation
fmul.h f22, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmul.h f11, f2, f30, dyn # perform operation
fmul.h f11, f2, f30, rdn # perform operation
fmul.h f11, f2, f30, rmm # perform operation
fmul.h f11, f2, f30, rne # perform operation
fmul.h f11, f2, f30, rtz # perform operation
fmul.h f11, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmul.h f16, f15, f6, dyn # perform operation
fmul.h f16, f15, f6, rdn # perform operation
fmul.h f16, f15, f6, rmm # perform operation
fmul.h f16, f15, f6, rne # perform operation
fmul.h f16, f15, f6, rtz # perform operation
fmul.h f16, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fmul.h f9, f26, f12, dyn # perform operation
fmul.h f9, f26, f12, rdn # perform operation
fmul.h f9, f26, f12, rmm # perform operation
fmul.h f9, f26, f12, rne # perform operation
fmul.h f9, f26, f12, rtz # perform operation
fmul.h f9, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fmul.h f9, f29, f27, dyn # perform operation
fmul.h f9, f29, f27, rdn # perform operation
fmul.h f9, f29, f27, rmm # perform operation
fmul.h f9, f29, f27, rne # perform operation
fmul.h f9, f29, f27, rtz # perform operation
fmul.h f9, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f25, f3, f2, dyn # perform operation
fmul.h f25, f3, f2, rdn # perform operation
fmul.h f25, f3, f2, rmm # perform operation
fmul.h f25, f3, f2, rne # perform operation
fmul.h f25, f3, f2, rtz # perform operation
fmul.h f25, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fmul.h f17, f25, f21, dyn # perform operation
fmul.h f17, f25, f21, rdn # perform operation
fmul.h f17, f25, f21, rmm # perform operation
fmul.h f17, f25, f21, rne # perform operation
fmul.h f17, f25, f21, rtz # perform operation
fmul.h f17, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmul.h f16, f14, f5, dyn # perform operation
fmul.h f16, f14, f5, rdn # perform operation
fmul.h f16, f14, f5, rmm # perform operation
fmul.h f16, f14, f5, rne # perform operation
fmul.h f16, f14, f5, rtz # perform operation
fmul.h f16, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmul.h f12, f7, f29, dyn # perform operation
fmul.h f12, f7, f29, rdn # perform operation
fmul.h f12, f7, f29, rmm # perform operation
fmul.h f12, f7, f29, rne # perform operation
fmul.h f12, f7, f29, rtz # perform operation
fmul.h f12, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmul.h f8, f25, f15, dyn # perform operation
fmul.h f8, f25, f15, rdn # perform operation
fmul.h f8, f25, f15, rmm # perform operation
fmul.h f8, f25, f15, rne # perform operation
fmul.h f8, f25, f15, rtz # perform operation
fmul.h f8, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fmul.h f31, f14, f25, dyn # perform operation
fmul.h f31, f14, f25, rdn # perform operation
fmul.h f31, f14, f25, rmm # perform operation
fmul.h f31, f14, f25, rne # perform operation
fmul.h f31, f14, f25, rtz # perform operation
fmul.h f31, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f2, f26, f30, dyn # perform operation
fmul.h f2, f26, f30, rdn # perform operation
fmul.h f2, f26, f30, rmm # perform operation
fmul.h f2, f26, f30, rne # perform operation
fmul.h f2, f26, f30, rtz # perform operation
fmul.h f2, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmul.h f30, f19, f7, dyn # perform operation
fmul.h f30, f19, f7, rdn # perform operation
fmul.h f30, f19, f7, rmm # perform operation
fmul.h f30, f19, f7, rne # perform operation
fmul.h f30, f19, f7, rtz # perform operation
fmul.h f30, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f8, f7, f14, dyn # perform operation
fmul.h f8, f7, f14, rdn # perform operation
fmul.h f8, f7, f14, rmm # perform operation
fmul.h f8, f7, f14, rne # perform operation
fmul.h f8, f7, f14, rtz # perform operation
fmul.h f8, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmul.h f29, f6, f10, dyn # perform operation
fmul.h f29, f6, f10, rdn # perform operation
fmul.h f29, f6, f10, rmm # perform operation
fmul.h f29, f6, f10, rne # perform operation
fmul.h f29, f6, f10, rtz # perform operation
fmul.h f29, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmul.h f6, f10, f17, dyn # perform operation
fmul.h f6, f10, f17, rdn # perform operation
fmul.h f6, f10, f17, rmm # perform operation
fmul.h f6, f10, f17, rne # perform operation
fmul.h f6, f10, f17, rtz # perform operation
fmul.h f6, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f6, f31, f18, dyn # perform operation
fmul.h f6, f31, f18, rdn # perform operation
fmul.h f6, f31, f18, rmm # perform operation
fmul.h f6, f31, f18, rne # perform operation
fmul.h f6, f31, f18, rtz # perform operation
fmul.h f6, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fmul.h f12, f15, f27, dyn # perform operation
fmul.h f12, f15, f27, rdn # perform operation
fmul.h f12, f15, f27, rmm # perform operation
fmul.h f12, f15, f27, rne # perform operation
fmul.h f12, f15, f27, rtz # perform operation
fmul.h f12, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmul.h f16, f11, f8, dyn # perform operation
fmul.h f16, f11, f8, rdn # perform operation
fmul.h f16, f11, f8, rmm # perform operation
fmul.h f16, f11, f8, rne # perform operation
fmul.h f16, f11, f8, rtz # perform operation
fmul.h f16, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmul.h f30, f14, f2, dyn # perform operation
fmul.h f30, f14, f2, rdn # perform operation
fmul.h f30, f14, f2, rmm # perform operation
fmul.h f30, f14, f2, rne # perform operation
fmul.h f30, f14, f2, rtz # perform operation
fmul.h f30, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmul.h f13, f9, f28, dyn # perform operation
fmul.h f13, f9, f28, rdn # perform operation
fmul.h f13, f9, f28, rmm # perform operation
fmul.h f13, f9, f28, rne # perform operation
fmul.h f13, f9, f28, rtz # perform operation
fmul.h f13, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fmul.h f22, f3, f12, dyn # perform operation
fmul.h f22, f3, f12, rdn # perform operation
fmul.h f22, f3, f12, rmm # perform operation
fmul.h f22, f3, f12, rne # perform operation
fmul.h f22, f3, f12, rtz # perform operation
fmul.h f22, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmul.h f22, f7, f10, dyn # perform operation
fmul.h f22, f7, f10, rdn # perform operation
fmul.h f22, f7, f10, rmm # perform operation
fmul.h f22, f7, f10, rne # perform operation
fmul.h f22, f7, f10, rtz # perform operation
fmul.h f22, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmul.h f9, f3, f16, dyn # perform operation
fmul.h f9, f3, f16, rdn # perform operation
fmul.h f9, f3, f16, rmm # perform operation
fmul.h f9, f3, f16, rne # perform operation
fmul.h f9, f3, f16, rtz # perform operation
fmul.h f9, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmul.h f10, f13, f21, dyn # perform operation
fmul.h f10, f13, f21, rdn # perform operation
fmul.h f10, f13, f21, rmm # perform operation
fmul.h f10, f13, f21, rne # perform operation
fmul.h f10, f13, f21, rtz # perform operation
fmul.h f10, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmul.h f7, f28, f12, dyn # perform operation
fmul.h f7, f28, f12, rdn # perform operation
fmul.h f7, f28, f12, rmm # perform operation
fmul.h f7, f28, f12, rne # perform operation
fmul.h f7, f28, f12, rtz # perform operation
fmul.h f7, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmul.h f20, f28, f21, dyn # perform operation
fmul.h f20, f28, f21, rdn # perform operation
fmul.h f20, f28, f21, rmm # perform operation
fmul.h f20, f28, f21, rne # perform operation
fmul.h f20, f28, f21, rtz # perform operation
fmul.h f20, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmul.h f25, f16, f17, dyn # perform operation
fmul.h f25, f16, f17, rdn # perform operation
fmul.h f25, f16, f17, rmm # perform operation
fmul.h f25, f16, f17, rne # perform operation
fmul.h f25, f16, f17, rtz # perform operation
fmul.h f25, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fmul.h f2, f27, f16, dyn # perform operation
fmul.h f2, f27, f16, rdn # perform operation
fmul.h f2, f27, f16, rmm # perform operation
fmul.h f2, f27, f16, rne # perform operation
fmul.h f2, f27, f16, rtz # perform operation
fmul.h f2, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmul.h f19, f24, f15, dyn # perform operation
fmul.h f19, f24, f15, rdn # perform operation
fmul.h f19, f24, f15, rmm # perform operation
fmul.h f19, f24, f15, rne # perform operation
fmul.h f19, f24, f15, rtz # perform operation
fmul.h f19, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmul.h f10, f8, f21, dyn # perform operation
fmul.h f10, f8, f21, rdn # perform operation
fmul.h f10, f8, f21, rmm # perform operation
fmul.h f10, f8, f21, rne # perform operation
fmul.h f10, f8, f21, rtz # perform operation
fmul.h f10, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fmul.h f13, f17, f9, dyn # perform operation
fmul.h f13, f17, f9, rdn # perform operation
fmul.h f13, f17, f9, rmm # perform operation
fmul.h f13, f17, f9, rne # perform operation
fmul.h f13, f17, f9, rtz # perform operation
fmul.h f13, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmul.h f20, f23, f1, dyn # perform operation
fmul.h f20, f23, f1, rdn # perform operation
fmul.h f20, f23, f1, rmm # perform operation
fmul.h f20, f23, f1, rne # perform operation
fmul.h f20, f23, f1, rtz # perform operation
fmul.h f20, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmul.h f1, f18, f24, dyn # perform operation
fmul.h f1, f18, f24, rdn # perform operation
fmul.h f1, f18, f24, rmm # perform operation
fmul.h f1, f18, f24, rne # perform operation
fmul.h f1, f18, f24, rtz # perform operation
fmul.h f1, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
fmul.h f29, f23, f22, dyn # perform operation
fmul.h f29, f23, f22, rdn # perform operation
fmul.h f29, f23, f22, rmm # perform operation
fmul.h f29, f23, f22, rne # perform operation
fmul.h f29, f23, f22, rtz # perform operation
fmul.h f29, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fmul.h f29, f10, f20, dyn # perform operation
fmul.h f29, f10, f20, rdn # perform operation
fmul.h f29, f10, f20, rmm # perform operation
fmul.h f29, f10, f20, rne # perform operation
fmul.h f29, f10, f20, rtz # perform operation
fmul.h f29, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmul.h f1, f6, f20, dyn # perform operation
fmul.h f1, f6, f20, rdn # perform operation
fmul.h f1, f6, f20, rmm # perform operation
fmul.h f1, f6, f20, rne # perform operation
fmul.h f1, f6, f20, rtz # perform operation
fmul.h f1, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmul.h f27, f22, f10, dyn # perform operation
fmul.h f27, f22, f10, rdn # perform operation
fmul.h f27, f22, f10, rmm # perform operation
fmul.h f27, f22, f10, rne # perform operation
fmul.h f27, f22, f10, rtz # perform operation
fmul.h f27, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmul.h f9, f16, f27, dyn # perform operation
fmul.h f9, f16, f27, rdn # perform operation
fmul.h f9, f16, f27, rmm # perform operation
fmul.h f9, f16, f27, rne # perform operation
fmul.h f9, f16, f27, rtz # perform operation
fmul.h f9, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmul.h f3, f17, f16, dyn # perform operation
fmul.h f3, f17, f16, rdn # perform operation
fmul.h f3, f17, f16, rmm # perform operation
fmul.h f3, f17, f16, rne # perform operation
fmul.h f3, f17, f16, rtz # perform operation
fmul.h f3, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fmul.h f17, f31, f20, dyn # perform operation
fmul.h f17, f31, f20, rdn # perform operation
fmul.h f17, f31, f20, rmm # perform operation
fmul.h f17, f31, f20, rne # perform operation
fmul.h f17, f31, f20, rtz # perform operation
fmul.h f17, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f25, f16, f10, dyn # perform operation
fmul.h f25, f16, f10, rdn # perform operation
fmul.h f25, f16, f10, rmm # perform operation
fmul.h f25, f16, f10, rne # perform operation
fmul.h f25, f16, f10, rtz # perform operation
fmul.h f25, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmul.h f13, f3, f10, dyn # perform operation
fmul.h f13, f3, f10, rdn # perform operation
fmul.h f13, f3, f10, rmm # perform operation
fmul.h f13, f3, f10, rne # perform operation
fmul.h f13, f3, f10, rtz # perform operation
fmul.h f13, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmul.h f24, f30, f6, dyn # perform operation
fmul.h f24, f30, f6, rdn # perform operation
fmul.h f24, f30, f6, rmm # perform operation
fmul.h f24, f30, f6, rne # perform operation
fmul.h f24, f30, f6, rtz # perform operation
fmul.h f24, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmul.h f13, f17, f2, dyn # perform operation
fmul.h f13, f17, f2, rdn # perform operation
fmul.h f13, f17, f2, rmm # perform operation
fmul.h f13, f17, f2, rne # perform operation
fmul.h f13, f17, f2, rtz # perform operation
fmul.h f13, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmul.h f20, f9, f24, dyn # perform operation
fmul.h f20, f9, f24, rdn # perform operation
fmul.h f20, f9, f24, rmm # perform operation
fmul.h f20, f9, f24, rne # perform operation
fmul.h f20, f9, f24, rtz # perform operation
fmul.h f20, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmul.h f25, f14, f17, dyn # perform operation
fmul.h f25, f14, f17, rdn # perform operation
fmul.h f25, f14, f17, rmm # perform operation
fmul.h f25, f14, f17, rne # perform operation
fmul.h f25, f14, f17, rtz # perform operation
fmul.h f25, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmul.h f1, f16, f7, dyn # perform operation
fmul.h f1, f16, f7, rdn # perform operation
fmul.h f1, f16, f7, rmm # perform operation
fmul.h f1, f16, f7, rne # perform operation
fmul.h f1, f16, f7, rtz # perform operation
fmul.h f1, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmul.h f6, f18, f27, dyn # perform operation
fmul.h f6, f18, f27, rdn # perform operation
fmul.h f6, f18, f27, rmm # perform operation
fmul.h f6, f18, f27, rne # perform operation
fmul.h f6, f18, f27, rtz # perform operation
fmul.h f6, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmul.h f21, f26, f31, dyn # perform operation
fmul.h f21, f26, f31, rdn # perform operation
fmul.h f21, f26, f31, rmm # perform operation
fmul.h f21, f26, f31, rne # perform operation
fmul.h f21, f26, f31, rtz # perform operation
fmul.h f21, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f10, f27, f23, dyn # perform operation
fmul.h f10, f27, f23, rdn # perform operation
fmul.h f10, f27, f23, rmm # perform operation
fmul.h f10, f27, f23, rne # perform operation
fmul.h f10, f27, f23, rtz # perform operation
fmul.h f10, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmul.h f7, f27, f30, dyn # perform operation
fmul.h f7, f27, f30, rdn # perform operation
fmul.h f7, f27, f30, rmm # perform operation
fmul.h f7, f27, f30, rne # perform operation
fmul.h f7, f27, f30, rtz # perform operation
fmul.h f7, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f9, f10, f23, dyn # perform operation
fmul.h f9, f10, f23, rdn # perform operation
fmul.h f9, f10, f23, rmm # perform operation
fmul.h f9, f10, f23, rne # perform operation
fmul.h f9, f10, f23, rtz # perform operation
fmul.h f9, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fmul.h f15, f16, f5, dyn # perform operation
fmul.h f15, f16, f5, rdn # perform operation
fmul.h f15, f16, f5, rmm # perform operation
fmul.h f15, f16, f5, rne # perform operation
fmul.h f15, f16, f5, rtz # perform operation
fmul.h f15, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmul.h f25, f16, f11, dyn # perform operation
fmul.h f25, f16, f11, rdn # perform operation
fmul.h f25, f16, f11, rmm # perform operation
fmul.h f25, f16, f11, rne # perform operation
fmul.h f25, f16, f11, rtz # perform operation
fmul.h f25, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f5, f19, f16, dyn # perform operation
fmul.h f5, f19, f16, rdn # perform operation
fmul.h f5, f19, f16, rmm # perform operation
fmul.h f5, f19, f16, rne # perform operation
fmul.h f5, f19, f16, rtz # perform operation
fmul.h f5, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f12, f17, f26, dyn # perform operation
fmul.h f12, f17, f26, rdn # perform operation
fmul.h f12, f17, f26, rmm # perform operation
fmul.h f12, f17, f26, rne # perform operation
fmul.h f12, f17, f26, rtz # perform operation
fmul.h f12, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fmul.h f26, f29, f28, dyn # perform operation
fmul.h f26, f29, f28, rdn # perform operation
fmul.h f26, f29, f28, rmm # perform operation
fmul.h f26, f29, f28, rne # perform operation
fmul.h f26, f29, f28, rtz # perform operation
fmul.h f26, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmul.h f25, f2, f30, dyn # perform operation
fmul.h f25, f2, f30, rdn # perform operation
fmul.h f25, f2, f30, rmm # perform operation
fmul.h f25, f2, f30, rne # perform operation
fmul.h f25, f2, f30, rtz # perform operation
fmul.h f25, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fmul.h f21, f5, f9, dyn # perform operation
fmul.h f21, f5, f9, rdn # perform operation
fmul.h f21, f5, f9, rmm # perform operation
fmul.h f21, f5, f9, rne # perform operation
fmul.h f21, f5, f9, rtz # perform operation
fmul.h f21, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fmul.h f23, f6, f29, dyn # perform operation
fmul.h f23, f6, f29, rdn # perform operation
fmul.h f23, f6, f29, rmm # perform operation
fmul.h f23, f6, f29, rne # perform operation
fmul.h f23, f6, f29, rtz # perform operation
fmul.h f23, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmul.h f15, f21, f28, dyn # perform operation
fmul.h f15, f21, f28, rdn # perform operation
fmul.h f15, f21, f28, rmm # perform operation
fmul.h f15, f21, f28, rne # perform operation
fmul.h f15, f21, f28, rtz # perform operation
fmul.h f15, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fmul.h f31, f22, f30, dyn # perform operation
fmul.h f31, f22, f30, rdn # perform operation
fmul.h f31, f22, f30, rmm # perform operation
fmul.h f31, f22, f30, rne # perform operation
fmul.h f31, f22, f30, rtz # perform operation
fmul.h f31, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f7, f8, f10, dyn # perform operation
fmul.h f7, f8, f10, rdn # perform operation
fmul.h f7, f8, f10, rmm # perform operation
fmul.h f7, f8, f10, rne # perform operation
fmul.h f7, f8, f10, rtz # perform operation
fmul.h f7, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmul.h f28, f27, f24, dyn # perform operation
fmul.h f28, f27, f24, rdn # perform operation
fmul.h f28, f27, f24, rmm # perform operation
fmul.h f28, f27, f24, rne # perform operation
fmul.h f28, f27, f24, rtz # perform operation
fmul.h f28, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fmul.h f31, f14, f26, dyn # perform operation
fmul.h f31, f14, f26, rdn # perform operation
fmul.h f31, f14, f26, rmm # perform operation
fmul.h f31, f14, f26, rne # perform operation
fmul.h f31, f14, f26, rtz # perform operation
fmul.h f31, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f13, f20, f19, dyn # perform operation
fmul.h f13, f20, f19, rdn # perform operation
fmul.h f13, f20, f19, rmm # perform operation
fmul.h f13, f20, f19, rne # perform operation
fmul.h f13, f20, f19, rtz # perform operation
fmul.h f13, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmul.h f9, f25, f27, dyn # perform operation
fmul.h f9, f25, f27, rdn # perform operation
fmul.h f9, f25, f27, rmm # perform operation
fmul.h f9, f25, f27, rne # perform operation
fmul.h f9, f25, f27, rtz # perform operation
fmul.h f9, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmul.h f10, f17, f3, dyn # perform operation
fmul.h f10, f17, f3, rdn # perform operation
fmul.h f10, f17, f3, rmm # perform operation
fmul.h f10, f17, f3, rne # perform operation
fmul.h f10, f17, f3, rtz # perform operation
fmul.h f10, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fmul.h f25, f13, f2, dyn # perform operation
fmul.h f25, f13, f2, rdn # perform operation
fmul.h f25, f13, f2, rmm # perform operation
fmul.h f25, f13, f2, rne # perform operation
fmul.h f25, f13, f2, rtz # perform operation
fmul.h f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmul.h f20, f27, f25, dyn # perform operation
fmul.h f20, f27, f25, rdn # perform operation
fmul.h f20, f27, f25, rmm # perform operation
fmul.h f20, f27, f25, rne # perform operation
fmul.h f20, f27, f25, rtz # perform operation
fmul.h f20, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f25, f26, f22, dyn # perform operation
fmul.h f25, f26, f22, rdn # perform operation
fmul.h f25, f26, f22, rmm # perform operation
fmul.h f25, f26, f22, rne # perform operation
fmul.h f25, f26, f22, rtz # perform operation
fmul.h f25, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f6, f11, f1, dyn # perform operation
fmul.h f6, f11, f1, rdn # perform operation
fmul.h f6, f11, f1, rmm # perform operation
fmul.h f6, f11, f1, rne # perform operation
fmul.h f6, f11, f1, rtz # perform operation
fmul.h f6, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmul.h f13, f29, f31, dyn # perform operation
fmul.h f13, f29, f31, rdn # perform operation
fmul.h f13, f29, f31, rmm # perform operation
fmul.h f13, f29, f31, rne # perform operation
fmul.h f13, f29, f31, rtz # perform operation
fmul.h f13, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmul.h f23, f31, f26, dyn # perform operation
fmul.h f23, f31, f26, rdn # perform operation
fmul.h f23, f31, f26, rmm # perform operation
fmul.h f23, f31, f26, rne # perform operation
fmul.h f23, f31, f26, rtz # perform operation
fmul.h f23, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fmul.h f26, f16, f28, dyn # perform operation
fmul.h f26, f16, f28, rdn # perform operation
fmul.h f26, f16, f28, rmm # perform operation
fmul.h f26, f16, f28, rne # perform operation
fmul.h f26, f16, f28, rtz # perform operation
fmul.h f26, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fmul.h f19, f3, f10, dyn # perform operation
fmul.h f19, f3, f10, rdn # perform operation
fmul.h f19, f3, f10, rmm # perform operation
fmul.h f19, f3, f10, rne # perform operation
fmul.h f19, f3, f10, rtz # perform operation
fmul.h f19, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmul.h f21, f22, f16, dyn # perform operation
fmul.h f21, f22, f16, rdn # perform operation
fmul.h f21, f22, f16, rmm # perform operation
fmul.h f21, f22, f16, rne # perform operation
fmul.h f21, f22, f16, rtz # perform operation
fmul.h f21, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fmul.h f17, f5, f27, dyn # perform operation
fmul.h f17, f5, f27, rdn # perform operation
fmul.h f17, f5, f27, rmm # perform operation
fmul.h f17, f5, f27, rne # perform operation
fmul.h f17, f5, f27, rtz # perform operation
fmul.h f17, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmul.h f5, f29, f22, dyn # perform operation
fmul.h f5, f29, f22, rdn # perform operation
fmul.h f5, f29, f22, rmm # perform operation
fmul.h f5, f29, f22, rne # perform operation
fmul.h f5, f29, f22, rtz # perform operation
fmul.h f5, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f22, f16, f20, dyn # perform operation
fmul.h f22, f16, f20, rdn # perform operation
fmul.h f22, f16, f20, rmm # perform operation
fmul.h f22, f16, f20, rne # perform operation
fmul.h f22, f16, f20, rtz # perform operation
fmul.h f22, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmul.h f13, f6, f14, dyn # perform operation
fmul.h f13, f6, f14, rdn # perform operation
fmul.h f13, f6, f14, rmm # perform operation
fmul.h f13, f6, f14, rne # perform operation
fmul.h f13, f6, f14, rtz # perform operation
fmul.h f13, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmul.h f15, f29, f24, dyn # perform operation
fmul.h f15, f29, f24, rdn # perform operation
fmul.h f15, f29, f24, rmm # perform operation
fmul.h f15, f29, f24, rne # perform operation
fmul.h f15, f29, f24, rtz # perform operation
fmul.h f15, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fmul.h f6, f14, f7, dyn # perform operation
fmul.h f6, f14, f7, rdn # perform operation
fmul.h f6, f14, f7, rmm # perform operation
fmul.h f6, f14, f7, rne # perform operation
fmul.h f6, f14, f7, rtz # perform operation
fmul.h f6, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmul.h f13, f26, f21, dyn # perform operation
fmul.h f13, f26, f21, rdn # perform operation
fmul.h f13, f26, f21, rmm # perform operation
fmul.h f13, f26, f21, rne # perform operation
fmul.h f13, f26, f21, rtz # perform operation
fmul.h f13, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmul.h f26, f7, f30, dyn # perform operation
fmul.h f26, f7, f30, rdn # perform operation
fmul.h f26, f7, f30, rmm # perform operation
fmul.h f26, f7, f30, rne # perform operation
fmul.h f26, f7, f30, rtz # perform operation
fmul.h f26, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmul.h f2, f30, f9, dyn # perform operation
fmul.h f2, f30, f9, rdn # perform operation
fmul.h f2, f30, f9, rmm # perform operation
fmul.h f2, f30, f9, rne # perform operation
fmul.h f2, f30, f9, rtz # perform operation
fmul.h f2, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fmul.h f20, f22, f29, dyn # perform operation
fmul.h f20, f22, f29, rdn # perform operation
fmul.h f20, f22, f29, rmm # perform operation
fmul.h f20, f22, f29, rne # perform operation
fmul.h f20, f22, f29, rtz # perform operation
fmul.h f20, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmul.h f12, f14, f25, dyn # perform operation
fmul.h f12, f14, f25, rdn # perform operation
fmul.h f12, f14, f25, rmm # perform operation
fmul.h f12, f14, f25, rne # perform operation
fmul.h f12, f14, f25, rtz # perform operation
fmul.h f12, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fmul.h f10, f11, f5, dyn # perform operation
fmul.h f10, f11, f5, rdn # perform operation
fmul.h f10, f11, f5, rmm # perform operation
fmul.h f10, f11, f5, rne # perform operation
fmul.h f10, f11, f5, rtz # perform operation
fmul.h f10, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
fmul.h f16, f5, f11, dyn # perform operation
fmul.h f16, f5, f11, rdn # perform operation
fmul.h f16, f5, f11, rmm # perform operation
fmul.h f16, f5, f11, rne # perform operation
fmul.h f16, f5, f11, rtz # perform operation
fmul.h f16, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f5, f1, f10, dyn # perform operation
fmul.h f5, f1, f10, rdn # perform operation
fmul.h f5, f1, f10, rmm # perform operation
fmul.h f5, f1, f10, rne # perform operation
fmul.h f5, f1, f10, rtz # perform operation
fmul.h f5, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fmul.h f15, f23, f27, dyn # perform operation
fmul.h f15, f23, f27, rdn # perform operation
fmul.h f15, f23, f27, rmm # perform operation
fmul.h f15, f23, f27, rne # perform operation
fmul.h f15, f23, f27, rtz # perform operation
fmul.h f15, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmul.h f12, f10, f2, dyn # perform operation
fmul.h f12, f10, f2, rdn # perform operation
fmul.h f12, f10, f2, rmm # perform operation
fmul.h f12, f10, f2, rne # perform operation
fmul.h f12, f10, f2, rtz # perform operation
fmul.h f12, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmul.h f18, f14, f24, dyn # perform operation
fmul.h f18, f14, f24, rdn # perform operation
fmul.h f18, f14, f24, rmm # perform operation
fmul.h f18, f14, f24, rne # perform operation
fmul.h f18, f14, f24, rtz # perform operation
fmul.h f18, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f6, f19, f12, dyn # perform operation
fmul.h f6, f19, f12, rdn # perform operation
fmul.h f6, f19, f12, rmm # perform operation
fmul.h f6, f19, f12, rne # perform operation
fmul.h f6, f19, f12, rtz # perform operation
fmul.h f6, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmul.h f11, f18, f5, dyn # perform operation
fmul.h f11, f18, f5, rdn # perform operation
fmul.h f11, f18, f5, rmm # perform operation
fmul.h f11, f18, f5, rne # perform operation
fmul.h f11, f18, f5, rtz # perform operation
fmul.h f11, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fmul.h f12, f16, f30, dyn # perform operation
fmul.h f12, f16, f30, rdn # perform operation
fmul.h f12, f16, f30, rmm # perform operation
fmul.h f12, f16, f30, rne # perform operation
fmul.h f12, f16, f30, rtz # perform operation
fmul.h f12, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fmul.h f31, f18, f8, dyn # perform operation
fmul.h f31, f18, f8, rdn # perform operation
fmul.h f31, f18, f8, rmm # perform operation
fmul.h f31, f18, f8, rne # perform operation
fmul.h f31, f18, f8, rtz # perform operation
fmul.h f31, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmul.h f19, f26, f21, dyn # perform operation
fmul.h f19, f26, f21, rdn # perform operation
fmul.h f19, f26, f21, rmm # perform operation
fmul.h f19, f26, f21, rne # perform operation
fmul.h f19, f26, f21, rtz # perform operation
fmul.h f19, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fmul.h f12, f24, f27, dyn # perform operation
fmul.h f12, f24, f27, rdn # perform operation
fmul.h f12, f24, f27, rmm # perform operation
fmul.h f12, f24, f27, rne # perform operation
fmul.h f12, f24, f27, rtz # perform operation
fmul.h f12, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmul.h f16, f27, f19, dyn # perform operation
fmul.h f16, f27, f19, rdn # perform operation
fmul.h f16, f27, f19, rmm # perform operation
fmul.h f16, f27, f19, rne # perform operation
fmul.h f16, f27, f19, rtz # perform operation
fmul.h f16, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmul.h f5, f9, f29, dyn # perform operation
fmul.h f5, f9, f29, rdn # perform operation
fmul.h f5, f9, f29, rmm # perform operation
fmul.h f5, f9, f29, rne # perform operation
fmul.h f5, f9, f29, rtz # perform operation
fmul.h f5, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f17, f27, f21, dyn # perform operation
fmul.h f17, f27, f21, rdn # perform operation
fmul.h f17, f27, f21, rmm # perform operation
fmul.h f17, f27, f21, rne # perform operation
fmul.h f17, f27, f21, rtz # perform operation
fmul.h f17, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f13, f15, f3, dyn # perform operation
fmul.h f13, f15, f3, rdn # perform operation
fmul.h f13, f15, f3, rmm # perform operation
fmul.h f13, f15, f3, rne # perform operation
fmul.h f13, f15, f3, rtz # perform operation
fmul.h f13, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmul.h f3, f23, f25, dyn # perform operation
fmul.h f3, f23, f25, rdn # perform operation
fmul.h f3, f23, f25, rmm # perform operation
fmul.h f3, f23, f25, rne # perform operation
fmul.h f3, f23, f25, rtz # perform operation
fmul.h f3, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmul.h f15, f23, f18, dyn # perform operation
fmul.h f15, f23, f18, rdn # perform operation
fmul.h f15, f23, f18, rmm # perform operation
fmul.h f15, f23, f18, rne # perform operation
fmul.h f15, f23, f18, rtz # perform operation
fmul.h f15, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fmul.h f15, f30, f7, dyn # perform operation
fmul.h f15, f30, f7, rdn # perform operation
fmul.h f15, f30, f7, rmm # perform operation
fmul.h f15, f30, f7, rne # perform operation
fmul.h f15, f30, f7, rtz # perform operation
fmul.h f15, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmul.h f30, f16, f14, dyn # perform operation
fmul.h f30, f16, f14, rdn # perform operation
fmul.h f30, f16, f14, rmm # perform operation
fmul.h f30, f16, f14, rne # perform operation
fmul.h f30, f16, f14, rtz # perform operation
fmul.h f30, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fmul.h f18, f11, f24, dyn # perform operation
fmul.h f18, f11, f24, rdn # perform operation
fmul.h f18, f11, f24, rmm # perform operation
fmul.h f18, f11, f24, rne # perform operation
fmul.h f18, f11, f24, rtz # perform operation
fmul.h f18, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmul.h f3, f15, f5, dyn # perform operation
fmul.h f3, f15, f5, rdn # perform operation
fmul.h f3, f15, f5, rmm # perform operation
fmul.h f3, f15, f5, rne # perform operation
fmul.h f3, f15, f5, rtz # perform operation
fmul.h f3, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmul.h f20, f14, f25, dyn # perform operation
fmul.h f20, f14, f25, rdn # perform operation
fmul.h f20, f14, f25, rmm # perform operation
fmul.h f20, f14, f25, rne # perform operation
fmul.h f20, f14, f25, rtz # perform operation
fmul.h f20, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmul.h f17, f11, f25, dyn # perform operation
fmul.h f17, f11, f25, rdn # perform operation
fmul.h f17, f11, f25, rmm # perform operation
fmul.h f17, f11, f25, rne # perform operation
fmul.h f17, f11, f25, rtz # perform operation
fmul.h f17, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmul.h f19, f20, f14, dyn # perform operation
fmul.h f19, f20, f14, rdn # perform operation
fmul.h f19, f20, f14, rmm # perform operation
fmul.h f19, f20, f14, rne # perform operation
fmul.h f19, f20, f14, rtz # perform operation
fmul.h f19, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fmul.h f7, f1, f2, dyn # perform operation
fmul.h f7, f1, f2, rdn # perform operation
fmul.h f7, f1, f2, rmm # perform operation
fmul.h f7, f1, f2, rne # perform operation
fmul.h f7, f1, f2, rtz # perform operation
fmul.h f7, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fmul.h f14, f16, f27, dyn # perform operation
fmul.h f14, f16, f27, rdn # perform operation
fmul.h f14, f16, f27, rmm # perform operation
fmul.h f14, f16, f27, rne # perform operation
fmul.h f14, f16, f27, rtz # perform operation
fmul.h f14, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fmul.h f13, f14, f28, dyn # perform operation
fmul.h f13, f14, f28, rdn # perform operation
fmul.h f13, f14, f28, rmm # perform operation
fmul.h f13, f14, f28, rne # perform operation
fmul.h f13, f14, f28, rtz # perform operation
fmul.h f13, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fmul.h f16, f28, f10, dyn # perform operation
fmul.h f16, f28, f10, rdn # perform operation
fmul.h f16, f28, f10, rmm # perform operation
fmul.h f16, f28, f10, rne # perform operation
fmul.h f16, f28, f10, rtz # perform operation
fmul.h f16, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fmul.h f23, f18, f25, dyn # perform operation
fmul.h f23, f18, f25, rdn # perform operation
fmul.h f23, f18, f25, rmm # perform operation
fmul.h f23, f18, f25, rne # perform operation
fmul.h f23, f18, f25, rtz # perform operation
fmul.h f23, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f7, f26, f10, dyn # perform operation
fmul.h f7, f26, f10, rdn # perform operation
fmul.h f7, f26, f10, rmm # perform operation
fmul.h f7, f26, f10, rne # perform operation
fmul.h f7, f26, f10, rtz # perform operation
fmul.h f7, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fmul.h f15, f23, f1, dyn # perform operation
fmul.h f15, f23, f1, rdn # perform operation
fmul.h f15, f23, f1, rmm # perform operation
fmul.h f15, f23, f1, rne # perform operation
fmul.h f15, f23, f1, rtz # perform operation
fmul.h f15, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmul.h f13, f16, f27, dyn # perform operation
fmul.h f13, f16, f27, rdn # perform operation
fmul.h f13, f16, f27, rmm # perform operation
fmul.h f13, f16, f27, rne # perform operation
fmul.h f13, f16, f27, rtz # perform operation
fmul.h f13, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmul.h f1, f16, f26, dyn # perform operation
fmul.h f1, f16, f26, rdn # perform operation
fmul.h f1, f16, f26, rmm # perform operation
fmul.h f1, f16, f26, rne # perform operation
fmul.h f1, f16, f26, rtz # perform operation
fmul.h f1, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmul.h f27, f23, f18, dyn # perform operation
fmul.h f27, f23, f18, rdn # perform operation
fmul.h f27, f23, f18, rmm # perform operation
fmul.h f27, f23, f18, rne # perform operation
fmul.h f27, f23, f18, rtz # perform operation
fmul.h f27, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmul.h f2, f25, f5, dyn # perform operation
fmul.h f2, f25, f5, rdn # perform operation
fmul.h f2, f25, f5, rmm # perform operation
fmul.h f2, f25, f5, rne # perform operation
fmul.h f2, f25, f5, rtz # perform operation
fmul.h f2, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fmul.h f30, f8, f19, dyn # perform operation
fmul.h f30, f8, f19, rdn # perform operation
fmul.h f30, f8, f19, rmm # perform operation
fmul.h f30, f8, f19, rne # perform operation
fmul.h f30, f8, f19, rtz # perform operation
fmul.h f30, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fmul.h f8, f20, f16, dyn # perform operation
fmul.h f8, f20, f16, rdn # perform operation
fmul.h f8, f20, f16, rmm # perform operation
fmul.h f8, f20, f16, rne # perform operation
fmul.h f8, f20, f16, rtz # perform operation
fmul.h f8, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f30, f19, f14, dyn # perform operation
fmul.h f30, f19, f14, rdn # perform operation
fmul.h f30, f19, f14, rmm # perform operation
fmul.h f30, f19, f14, rne # perform operation
fmul.h f30, f19, f14, rtz # perform operation
fmul.h f30, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fmul.h f23, f28, f6, dyn # perform operation
fmul.h f23, f28, f6, rdn # perform operation
fmul.h f23, f28, f6, rmm # perform operation
fmul.h f23, f28, f6, rne # perform operation
fmul.h f23, f28, f6, rtz # perform operation
fmul.h f23, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmul.h f25, f15, f28, dyn # perform operation
fmul.h f25, f15, f28, rdn # perform operation
fmul.h f25, f15, f28, rmm # perform operation
fmul.h f25, f15, f28, rne # perform operation
fmul.h f25, f15, f28, rtz # perform operation
fmul.h f25, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmul.h f22, f30, f3, dyn # perform operation
fmul.h f22, f30, f3, rdn # perform operation
fmul.h f22, f30, f3, rmm # perform operation
fmul.h f22, f30, f3, rne # perform operation
fmul.h f22, f30, f3, rtz # perform operation
fmul.h f22, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fmul.h f9, f14, f6, dyn # perform operation
fmul.h f9, f14, f6, rdn # perform operation
fmul.h f9, f14, f6, rmm # perform operation
fmul.h f9, f14, f6, rne # perform operation
fmul.h f9, f14, f6, rtz # perform operation
fmul.h f9, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fmul.h f12, f18, f26, dyn # perform operation
fmul.h f12, f18, f26, rdn # perform operation
fmul.h f12, f18, f26, rmm # perform operation
fmul.h f12, f18, f26, rne # perform operation
fmul.h f12, f18, f26, rtz # perform operation
fmul.h f12, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmul.h f26, f18, f9, dyn # perform operation
fmul.h f26, f18, f9, rdn # perform operation
fmul.h f26, f18, f9, rmm # perform operation
fmul.h f26, f18, f9, rne # perform operation
fmul.h f26, f18, f9, rtz # perform operation
fmul.h f26, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fmul.h f13, f24, f27, dyn # perform operation
fmul.h f13, f24, f27, rdn # perform operation
fmul.h f13, f24, f27, rmm # perform operation
fmul.h f13, f24, f27, rne # perform operation
fmul.h f13, f24, f27, rtz # perform operation
fmul.h f13, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmul.h f22, f23, f20, dyn # perform operation
fmul.h f22, f23, f20, rdn # perform operation
fmul.h f22, f23, f20, rmm # perform operation
fmul.h f22, f23, f20, rne # perform operation
fmul.h f22, f23, f20, rtz # perform operation
fmul.h f22, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f24, f29, f23, dyn # perform operation
fmul.h f24, f29, f23, rdn # perform operation
fmul.h f24, f29, f23, rmm # perform operation
fmul.h f24, f29, f23, rne # perform operation
fmul.h f24, f29, f23, rtz # perform operation
fmul.h f24, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fmul.h f9, f26, f8, dyn # perform operation
fmul.h f9, f26, f8, rdn # perform operation
fmul.h f9, f26, f8, rmm # perform operation
fmul.h f9, f26, f8, rne # perform operation
fmul.h f9, f26, f8, rtz # perform operation
fmul.h f9, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmul.h f2, f16, f21, dyn # perform operation
fmul.h f2, f16, f21, rdn # perform operation
fmul.h f2, f16, f21, rmm # perform operation
fmul.h f2, f16, f21, rne # perform operation
fmul.h f2, f16, f21, rtz # perform operation
fmul.h f2, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fmul.h f15, f11, f19, dyn # perform operation
fmul.h f15, f11, f19, rdn # perform operation
fmul.h f15, f11, f19, rmm # perform operation
fmul.h f15, f11, f19, rne # perform operation
fmul.h f15, f11, f19, rtz # perform operation
fmul.h f15, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmul.h f8, f5, f13, dyn # perform operation
fmul.h f8, f5, f13, rdn # perform operation
fmul.h f8, f5, f13, rmm # perform operation
fmul.h f8, f5, f13, rne # perform operation
fmul.h f8, f5, f13, rtz # perform operation
fmul.h f8, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmul.h f7, f27, f12, dyn # perform operation
fmul.h f7, f27, f12, rdn # perform operation
fmul.h f7, f27, f12, rmm # perform operation
fmul.h f7, f27, f12, rne # perform operation
fmul.h f7, f27, f12, rtz # perform operation
fmul.h f7, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fmul.h f16, f3, f26, dyn # perform operation
fmul.h f16, f3, f26, rdn # perform operation
fmul.h f16, f3, f26, rmm # perform operation
fmul.h f16, f3, f26, rne # perform operation
fmul.h f16, f3, f26, rtz # perform operation
fmul.h f16, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fmul.h f29, f16, f27, dyn # perform operation
fmul.h f29, f16, f27, rdn # perform operation
fmul.h f29, f16, f27, rmm # perform operation
fmul.h f29, f16, f27, rne # perform operation
fmul.h f29, f16, f27, rtz # perform operation
fmul.h f29, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fmul.h f5, f17, f3, dyn # perform operation
fmul.h f5, f17, f3, rdn # perform operation
fmul.h f5, f17, f3, rmm # perform operation
fmul.h f5, f17, f3, rne # perform operation
fmul.h f5, f17, f3, rtz # perform operation
fmul.h f5, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fmul.h f19, f24, f27, dyn # perform operation
fmul.h f19, f24, f27, rdn # perform operation
fmul.h f19, f24, f27, rmm # perform operation
fmul.h f19, f24, f27, rne # perform operation
fmul.h f19, f24, f27, rtz # perform operation
fmul.h f19, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fmul.h f24, f5, f29, dyn # perform operation
fmul.h f24, f5, f29, rdn # perform operation
fmul.h f24, f5, f29, rmm # perform operation
fmul.h f24, f5, f29, rne # perform operation
fmul.h f24, f5, f29, rtz # perform operation
fmul.h f24, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f5, f27, f30, dyn # perform operation
fmul.h f5, f27, f30, rdn # perform operation
fmul.h f5, f27, f30, rmm # perform operation
fmul.h f5, f27, f30, rne # perform operation
fmul.h f5, f27, f30, rtz # perform operation
fmul.h f5, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmul.h f8, f14, f22, dyn # perform operation
fmul.h f8, f14, f22, rdn # perform operation
fmul.h f8, f14, f22, rmm # perform operation
fmul.h f8, f14, f22, rne # perform operation
fmul.h f8, f14, f22, rtz # perform operation
fmul.h f8, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f20, f23, f5, dyn # perform operation
fmul.h f20, f23, f5, rdn # perform operation
fmul.h f20, f23, f5, rmm # perform operation
fmul.h f20, f23, f5, rne # perform operation
fmul.h f20, f23, f5, rtz # perform operation
fmul.h f20, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f31, f1, f19, dyn # perform operation
fmul.h f31, f1, f19, rdn # perform operation
fmul.h f31, f1, f19, rmm # perform operation
fmul.h f31, f1, f19, rne # perform operation
fmul.h f31, f1, f19, rtz # perform operation
fmul.h f31, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fmul.h f30, f13, f17, dyn # perform operation
fmul.h f30, f13, f17, rdn # perform operation
fmul.h f30, f13, f17, rmm # perform operation
fmul.h f30, f13, f17, rne # perform operation
fmul.h f30, f13, f17, rtz # perform operation
fmul.h f30, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmul.h f5, f19, f17, dyn # perform operation
fmul.h f5, f19, f17, rdn # perform operation
fmul.h f5, f19, f17, rmm # perform operation
fmul.h f5, f19, f17, rne # perform operation
fmul.h f5, f19, f17, rtz # perform operation
fmul.h f5, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmul.h f15, f1, f18, dyn # perform operation
fmul.h f15, f1, f18, rdn # perform operation
fmul.h f15, f1, f18, rmm # perform operation
fmul.h f15, f1, f18, rne # perform operation
fmul.h f15, f1, f18, rtz # perform operation
fmul.h f15, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fmul.h f7, f29, f16, dyn # perform operation
fmul.h f7, f29, f16, rdn # perform operation
fmul.h f7, f29, f16, rmm # perform operation
fmul.h f7, f29, f16, rne # perform operation
fmul.h f7, f29, f16, rtz # perform operation
fmul.h f7, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmul.h f10, f17, f6, dyn # perform operation
fmul.h f10, f17, f6, rdn # perform operation
fmul.h f10, f17, f6, rmm # perform operation
fmul.h f10, f17, f6, rne # perform operation
fmul.h f10, f17, f6, rtz # perform operation
fmul.h f10, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fmul.h f18, f31, f30, dyn # perform operation
fmul.h f18, f31, f30, rdn # perform operation
fmul.h f18, f31, f30, rmm # perform operation
fmul.h f18, f31, f30, rne # perform operation
fmul.h f18, f31, f30, rtz # perform operation
fmul.h f18, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmul.h f11, f9, f28, dyn # perform operation
fmul.h f11, f9, f28, rdn # perform operation
fmul.h f11, f9, f28, rmm # perform operation
fmul.h f11, f9, f28, rne # perform operation
fmul.h f11, f9, f28, rtz # perform operation
fmul.h f11, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmul.h f29, f17, f12, dyn # perform operation
fmul.h f29, f17, f12, rdn # perform operation
fmul.h f29, f17, f12, rmm # perform operation
fmul.h f29, f17, f12, rne # perform operation
fmul.h f29, f17, f12, rtz # perform operation
fmul.h f29, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fmul.h f29, f17, f6, dyn # perform operation
fmul.h f29, f17, f6, rdn # perform operation
fmul.h f29, f17, f6, rmm # perform operation
fmul.h f29, f17, f6, rne # perform operation
fmul.h f29, f17, f6, rtz # perform operation
fmul.h f29, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmul.h f14, f27, f28, dyn # perform operation
fmul.h f14, f27, f28, rdn # perform operation
fmul.h f14, f27, f28, rmm # perform operation
fmul.h f14, f27, f28, rne # perform operation
fmul.h f14, f27, f28, rtz # perform operation
fmul.h f14, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmul.h f15, f26, f16, dyn # perform operation
fmul.h f15, f26, f16, rdn # perform operation
fmul.h f15, f26, f16, rmm # perform operation
fmul.h f15, f26, f16, rne # perform operation
fmul.h f15, f26, f16, rtz # perform operation
fmul.h f15, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmul.h f12, f13, f16, dyn # perform operation
fmul.h f12, f13, f16, rdn # perform operation
fmul.h f12, f13, f16, rmm # perform operation
fmul.h f12, f13, f16, rne # perform operation
fmul.h f12, f13, f16, rtz # perform operation
fmul.h f12, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fmul.h f26, f3, f8, dyn # perform operation
fmul.h f26, f3, f8, rdn # perform operation
fmul.h f26, f3, f8, rmm # perform operation
fmul.h f26, f3, f8, rne # perform operation
fmul.h f26, f3, f8, rtz # perform operation
fmul.h f26, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f6, f8, f20, dyn # perform operation
fmul.h f6, f8, f20, rdn # perform operation
fmul.h f6, f8, f20, rmm # perform operation
fmul.h f6, f8, f20, rne # perform operation
fmul.h f6, f8, f20, rtz # perform operation
fmul.h f6, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fmul.h f17, f27, f8, dyn # perform operation
fmul.h f17, f27, f8, rdn # perform operation
fmul.h f17, f27, f8, rmm # perform operation
fmul.h f17, f27, f8, rne # perform operation
fmul.h f17, f27, f8, rtz # perform operation
fmul.h f17, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmul.h f6, f15, f16, dyn # perform operation
fmul.h f6, f15, f16, rdn # perform operation
fmul.h f6, f15, f16, rmm # perform operation
fmul.h f6, f15, f16, rne # perform operation
fmul.h f6, f15, f16, rtz # perform operation
fmul.h f6, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmul.h f7, f29, f2, dyn # perform operation
fmul.h f7, f29, f2, rdn # perform operation
fmul.h f7, f29, f2, rmm # perform operation
fmul.h f7, f29, f2, rne # perform operation
fmul.h f7, f29, f2, rtz # perform operation
fmul.h f7, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f6, f13, f11, dyn # perform operation
fmul.h f6, f13, f11, rdn # perform operation
fmul.h f6, f13, f11, rmm # perform operation
fmul.h f6, f13, f11, rne # perform operation
fmul.h f6, f13, f11, rtz # perform operation
fmul.h f6, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fmul.h f2, f5, f17, dyn # perform operation
fmul.h f2, f5, f17, rdn # perform operation
fmul.h f2, f5, f17, rmm # perform operation
fmul.h f2, f5, f17, rne # perform operation
fmul.h f2, f5, f17, rtz # perform operation
fmul.h f2, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmul.h f15, f14, f9, dyn # perform operation
fmul.h f15, f14, f9, rdn # perform operation
fmul.h f15, f14, f9, rmm # perform operation
fmul.h f15, f14, f9, rne # perform operation
fmul.h f15, f14, f9, rtz # perform operation
fmul.h f15, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fmul.h f25, f26, f27, dyn # perform operation
fmul.h f25, f26, f27, rdn # perform operation
fmul.h f25, f26, f27, rmm # perform operation
fmul.h f25, f26, f27, rne # perform operation
fmul.h f25, f26, f27, rtz # perform operation
fmul.h f25, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmul.h f8, f20, f1, dyn # perform operation
fmul.h f8, f20, f1, rdn # perform operation
fmul.h f8, f20, f1, rmm # perform operation
fmul.h f8, f20, f1, rne # perform operation
fmul.h f8, f20, f1, rtz # perform operation
fmul.h f8, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f16, f6, f23, dyn # perform operation
fmul.h f16, f6, f23, rdn # perform operation
fmul.h f16, f6, f23, rmm # perform operation
fmul.h f16, f6, f23, rne # perform operation
fmul.h f16, f6, f23, rtz # perform operation
fmul.h f16, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fmul.h f6, f2, f7, dyn # perform operation
fmul.h f6, f2, f7, rdn # perform operation
fmul.h f6, f2, f7, rmm # perform operation
fmul.h f6, f2, f7, rne # perform operation
fmul.h f6, f2, f7, rtz # perform operation
fmul.h f6, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmul.h f30, f22, f12, dyn # perform operation
fmul.h f30, f22, f12, rdn # perform operation
fmul.h f30, f22, f12, rmm # perform operation
fmul.h f30, f22, f12, rne # perform operation
fmul.h f30, f22, f12, rtz # perform operation
fmul.h f30, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmul.h f26, f13, f20, dyn # perform operation
fmul.h f26, f13, f20, rdn # perform operation
fmul.h f26, f13, f20, rmm # perform operation
fmul.h f26, f13, f20, rne # perform operation
fmul.h f26, f13, f20, rtz # perform operation
fmul.h f26, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f19, f22, f14, dyn # perform operation
fmul.h f19, f22, f14, rdn # perform operation
fmul.h f19, f22, f14, rmm # perform operation
fmul.h f19, f22, f14, rne # perform operation
fmul.h f19, f22, f14, rtz # perform operation
fmul.h f19, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmul.h f18, f29, f13, dyn # perform operation
fmul.h f18, f29, f13, rdn # perform operation
fmul.h f18, f29, f13, rmm # perform operation
fmul.h f18, f29, f13, rne # perform operation
fmul.h f18, f29, f13, rtz # perform operation
fmul.h f18, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fmul.h f12, f11, f25, dyn # perform operation
fmul.h f12, f11, f25, rdn # perform operation
fmul.h f12, f11, f25, rmm # perform operation
fmul.h f12, f11, f25, rne # perform operation
fmul.h f12, f11, f25, rtz # perform operation
fmul.h f12, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fmul.h f12, f7, f15, dyn # perform operation
fmul.h f12, f7, f15, rdn # perform operation
fmul.h f12, f7, f15, rmm # perform operation
fmul.h f12, f7, f15, rne # perform operation
fmul.h f12, f7, f15, rtz # perform operation
fmul.h f12, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f14, f13, f10, dyn # perform operation
fmul.h f14, f13, f10, rdn # perform operation
fmul.h f14, f13, f10, rmm # perform operation
fmul.h f14, f13, f10, rne # perform operation
fmul.h f14, f13, f10, rtz # perform operation
fmul.h f14, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fmul.h f17, f31, f11, dyn # perform operation
fmul.h f17, f31, f11, rdn # perform operation
fmul.h f17, f31, f11, rmm # perform operation
fmul.h f17, f31, f11, rne # perform operation
fmul.h f17, f31, f11, rtz # perform operation
fmul.h f17, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f6, f11, f23, dyn # perform operation
fmul.h f6, f11, f23, rdn # perform operation
fmul.h f6, f11, f23, rmm # perform operation
fmul.h f6, f11, f23, rne # perform operation
fmul.h f6, f11, f23, rtz # perform operation
fmul.h f6, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmul.h f26, f10, f21, dyn # perform operation
fmul.h f26, f10, f21, rdn # perform operation
fmul.h f26, f10, f21, rmm # perform operation
fmul.h f26, f10, f21, rne # perform operation
fmul.h f26, f10, f21, rtz # perform operation
fmul.h f26, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmul.h f3, f13, f20, dyn # perform operation
fmul.h f3, f13, f20, rdn # perform operation
fmul.h f3, f13, f20, rmm # perform operation
fmul.h f3, f13, f20, rne # perform operation
fmul.h f3, f13, f20, rtz # perform operation
fmul.h f3, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fmul.h f8, f15, f7, dyn # perform operation
fmul.h f8, f15, f7, rdn # perform operation
fmul.h f8, f15, f7, rmm # perform operation
fmul.h f8, f15, f7, rne # perform operation
fmul.h f8, f15, f7, rtz # perform operation
fmul.h f8, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fmul.h f25, f14, f11, dyn # perform operation
fmul.h f25, f14, f11, rdn # perform operation
fmul.h f25, f14, f11, rmm # perform operation
fmul.h f25, f14, f11, rne # perform operation
fmul.h f25, f14, f11, rtz # perform operation
fmul.h f25, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fmul.h f5, f8, f14, dyn # perform operation
fmul.h f5, f8, f14, rdn # perform operation
fmul.h f5, f8, f14, rmm # perform operation
fmul.h f5, f8, f14, rne # perform operation
fmul.h f5, f8, f14, rtz # perform operation
fmul.h f5, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmul.h f26, f19, f14, dyn # perform operation
fmul.h f26, f19, f14, rdn # perform operation
fmul.h f26, f19, f14, rmm # perform operation
fmul.h f26, f19, f14, rne # perform operation
fmul.h f26, f19, f14, rtz # perform operation
fmul.h f26, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f19, f29, f23, dyn # perform operation
fmul.h f19, f29, f23, rdn # perform operation
fmul.h f19, f29, f23, rmm # perform operation
fmul.h f19, f29, f23, rne # perform operation
fmul.h f19, f29, f23, rtz # perform operation
fmul.h f19, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fmul.h f25, f1, f17, dyn # perform operation
fmul.h f25, f1, f17, rdn # perform operation
fmul.h f25, f1, f17, rmm # perform operation
fmul.h f25, f1, f17, rne # perform operation
fmul.h f25, f1, f17, rtz # perform operation
fmul.h f25, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fmul.h f5, f12, f9, dyn # perform operation
fmul.h f5, f12, f9, rdn # perform operation
fmul.h f5, f12, f9, rmm # perform operation
fmul.h f5, f12, f9, rne # perform operation
fmul.h f5, f12, f9, rtz # perform operation
fmul.h f5, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmul.h f26, f23, f17, dyn # perform operation
fmul.h f26, f23, f17, rdn # perform operation
fmul.h f26, f23, f17, rmm # perform operation
fmul.h f26, f23, f17, rne # perform operation
fmul.h f26, f23, f17, rtz # perform operation
fmul.h f26, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmul.h f11, f20, f1, dyn # perform operation
fmul.h f11, f20, f1, rdn # perform operation
fmul.h f11, f20, f1, rmm # perform operation
fmul.h f11, f20, f1, rne # perform operation
fmul.h f11, f20, f1, rtz # perform operation
fmul.h f11, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f31, f29, f30, dyn # perform operation
fmul.h f31, f29, f30, rdn # perform operation
fmul.h f31, f29, f30, rmm # perform operation
fmul.h f31, f29, f30, rne # perform operation
fmul.h f31, f29, f30, rtz # perform operation
fmul.h f31, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmul.h f6, f13, f17, dyn # perform operation
fmul.h f6, f13, f17, rdn # perform operation
fmul.h f6, f13, f17, rmm # perform operation
fmul.h f6, f13, f17, rne # perform operation
fmul.h f6, f13, f17, rtz # perform operation
fmul.h f6, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmul.h f14, f22, f19, dyn # perform operation
fmul.h f14, f22, f19, rdn # perform operation
fmul.h f14, f22, f19, rmm # perform operation
fmul.h f14, f22, f19, rne # perform operation
fmul.h f14, f22, f19, rtz # perform operation
fmul.h f14, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmul.h f5, f3, f29, dyn # perform operation
fmul.h f5, f3, f29, rdn # perform operation
fmul.h f5, f3, f29, rmm # perform operation
fmul.h f5, f3, f29, rne # perform operation
fmul.h f5, f3, f29, rtz # perform operation
fmul.h f5, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
fmul.h f18, f17, f8, dyn # perform operation
fmul.h f18, f17, f8, rdn # perform operation
fmul.h f18, f17, f8, rmm # perform operation
fmul.h f18, f17, f8, rne # perform operation
fmul.h f18, f17, f8, rtz # perform operation
fmul.h f18, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmul.h f1, f31, f12, dyn # perform operation
fmul.h f1, f31, f12, rdn # perform operation
fmul.h f1, f31, f12, rmm # perform operation
fmul.h f1, f31, f12, rne # perform operation
fmul.h f1, f31, f12, rtz # perform operation
fmul.h f1, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f15, f18, f2, dyn # perform operation
fmul.h f15, f18, f2, rdn # perform operation
fmul.h f15, f18, f2, rmm # perform operation
fmul.h f15, f18, f2, rne # perform operation
fmul.h f15, f18, f2, rtz # perform operation
fmul.h f15, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fmul.h f15, f6, f31, dyn # perform operation
fmul.h f15, f6, f31, rdn # perform operation
fmul.h f15, f6, f31, rmm # perform operation
fmul.h f15, f6, f31, rne # perform operation
fmul.h f15, f6, f31, rtz # perform operation
fmul.h f15, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f11, f2, f10, dyn # perform operation
fmul.h f11, f2, f10, rdn # perform operation
fmul.h f11, f2, f10, rmm # perform operation
fmul.h f11, f2, f10, rne # perform operation
fmul.h f11, f2, f10, rtz # perform operation
fmul.h f11, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmul.h f19, f11, f2, dyn # perform operation
fmul.h f19, f11, f2, rdn # perform operation
fmul.h f19, f11, f2, rmm # perform operation
fmul.h f19, f11, f2, rne # perform operation
fmul.h f19, f11, f2, rtz # perform operation
fmul.h f19, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fmul.h f27, f15, f21, dyn # perform operation
fmul.h f27, f15, f21, rdn # perform operation
fmul.h f27, f15, f21, rmm # perform operation
fmul.h f27, f15, f21, rne # perform operation
fmul.h f27, f15, f21, rtz # perform operation
fmul.h f27, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmul.h f30, f10, f7, dyn # perform operation
fmul.h f30, f10, f7, rdn # perform operation
fmul.h f30, f10, f7, rmm # perform operation
fmul.h f30, f10, f7, rne # perform operation
fmul.h f30, f10, f7, rtz # perform operation
fmul.h f30, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmul.h f19, f14, f21, dyn # perform operation
fmul.h f19, f14, f21, rdn # perform operation
fmul.h f19, f14, f21, rmm # perform operation
fmul.h f19, f14, f21, rne # perform operation
fmul.h f19, f14, f21, rtz # perform operation
fmul.h f19, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmul.h f19, f6, f23, dyn # perform operation
fmul.h f19, f6, f23, rdn # perform operation
fmul.h f19, f6, f23, rmm # perform operation
fmul.h f19, f6, f23, rne # perform operation
fmul.h f19, f6, f23, rtz # perform operation
fmul.h f19, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f5, f20, f10, dyn # perform operation
fmul.h f5, f20, f10, rdn # perform operation
fmul.h f5, f20, f10, rmm # perform operation
fmul.h f5, f20, f10, rne # perform operation
fmul.h f5, f20, f10, rtz # perform operation
fmul.h f5, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f29, f17, f21, dyn # perform operation
fmul.h f29, f17, f21, rdn # perform operation
fmul.h f29, f17, f21, rmm # perform operation
fmul.h f29, f17, f21, rne # perform operation
fmul.h f29, f17, f21, rtz # perform operation
fmul.h f29, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f6, f18, f23, dyn # perform operation
fmul.h f6, f18, f23, rdn # perform operation
fmul.h f6, f18, f23, rmm # perform operation
fmul.h f6, f18, f23, rne # perform operation
fmul.h f6, f18, f23, rtz # perform operation
fmul.h f6, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmul.h f14, f1, f13, dyn # perform operation
fmul.h f14, f1, f13, rdn # perform operation
fmul.h f14, f1, f13, rmm # perform operation
fmul.h f14, f1, f13, rne # perform operation
fmul.h f14, f1, f13, rtz # perform operation
fmul.h f14, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmul.h f16, f6, f7, dyn # perform operation
fmul.h f16, f6, f7, rdn # perform operation
fmul.h f16, f6, f7, rmm # perform operation
fmul.h f16, f6, f7, rne # perform operation
fmul.h f16, f6, f7, rtz # perform operation
fmul.h f16, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmul.h f30, f16, f18, dyn # perform operation
fmul.h f30, f16, f18, rdn # perform operation
fmul.h f30, f16, f18, rmm # perform operation
fmul.h f30, f16, f18, rne # perform operation
fmul.h f30, f16, f18, rtz # perform operation
fmul.h f30, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmul.h f14, f3, f30, dyn # perform operation
fmul.h f14, f3, f30, rdn # perform operation
fmul.h f14, f3, f30, rmm # perform operation
fmul.h f14, f3, f30, rne # perform operation
fmul.h f14, f3, f30, rtz # perform operation
fmul.h f14, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmul.h f16, f1, f19, dyn # perform operation
fmul.h f16, f1, f19, rdn # perform operation
fmul.h f16, f1, f19, rmm # perform operation
fmul.h f16, f1, f19, rne # perform operation
fmul.h f16, f1, f19, rtz # perform operation
fmul.h f16, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmul.h f13, f6, f3, dyn # perform operation
fmul.h f13, f6, f3, rdn # perform operation
fmul.h f13, f6, f3, rmm # perform operation
fmul.h f13, f6, f3, rne # perform operation
fmul.h f13, f6, f3, rtz # perform operation
fmul.h f13, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmul.h f16, f18, f10, dyn # perform operation
fmul.h f16, f18, f10, rdn # perform operation
fmul.h f16, f18, f10, rmm # perform operation
fmul.h f16, f18, f10, rne # perform operation
fmul.h f16, f18, f10, rtz # perform operation
fmul.h f16, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmul.h f3, f6, f5, dyn # perform operation
fmul.h f3, f6, f5, rdn # perform operation
fmul.h f3, f6, f5, rmm # perform operation
fmul.h f3, f6, f5, rne # perform operation
fmul.h f3, f6, f5, rtz # perform operation
fmul.h f3, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmul.h f15, f20, f22, dyn # perform operation
fmul.h f15, f20, f22, rdn # perform operation
fmul.h f15, f20, f22, rmm # perform operation
fmul.h f15, f20, f22, rne # perform operation
fmul.h f15, f20, f22, rtz # perform operation
fmul.h f15, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f29, f17, f16, dyn # perform operation
fmul.h f29, f17, f16, rdn # perform operation
fmul.h f29, f17, f16, rmm # perform operation
fmul.h f29, f17, f16, rne # perform operation
fmul.h f29, f17, f16, rtz # perform operation
fmul.h f29, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmul.h f8, f23, f25, dyn # perform operation
fmul.h f8, f23, f25, rdn # perform operation
fmul.h f8, f23, f25, rmm # perform operation
fmul.h f8, f23, f25, rne # perform operation
fmul.h f8, f23, f25, rtz # perform operation
fmul.h f8, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f29, f26, f16, dyn # perform operation
fmul.h f29, f26, f16, rdn # perform operation
fmul.h f29, f26, f16, rmm # perform operation
fmul.h f29, f26, f16, rne # perform operation
fmul.h f29, f26, f16, rtz # perform operation
fmul.h f29, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fmul.h f16, f13, f31, dyn # perform operation
fmul.h f16, f13, f31, rdn # perform operation
fmul.h f16, f13, f31, rmm # perform operation
fmul.h f16, f13, f31, rne # perform operation
fmul.h f16, f13, f31, rtz # perform operation
fmul.h f16, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fmul.h f7, f8, f24, dyn # perform operation
fmul.h f7, f8, f24, rdn # perform operation
fmul.h f7, f8, f24, rmm # perform operation
fmul.h f7, f8, f24, rne # perform operation
fmul.h f7, f8, f24, rtz # perform operation
fmul.h f7, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmul.h f20, f8, f17, dyn # perform operation
fmul.h f20, f8, f17, rdn # perform operation
fmul.h f20, f8, f17, rmm # perform operation
fmul.h f20, f8, f17, rne # perform operation
fmul.h f20, f8, f17, rtz # perform operation
fmul.h f20, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fmul.h f31, f24, f25, dyn # perform operation
fmul.h f31, f24, f25, rdn # perform operation
fmul.h f31, f24, f25, rmm # perform operation
fmul.h f31, f24, f25, rne # perform operation
fmul.h f31, f24, f25, rtz # perform operation
fmul.h f31, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmul.h f13, f27, f26, dyn # perform operation
fmul.h f13, f27, f26, rdn # perform operation
fmul.h f13, f27, f26, rmm # perform operation
fmul.h f13, f27, f26, rne # perform operation
fmul.h f13, f27, f26, rtz # perform operation
fmul.h f13, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f24, f17, f7, dyn # perform operation
fmul.h f24, f17, f7, rdn # perform operation
fmul.h f24, f17, f7, rmm # perform operation
fmul.h f24, f17, f7, rne # perform operation
fmul.h f24, f17, f7, rtz # perform operation
fmul.h f24, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
fmul.h f25, f15, f12, dyn # perform operation
fmul.h f25, f15, f12, rdn # perform operation
fmul.h f25, f15, f12, rmm # perform operation
fmul.h f25, f15, f12, rne # perform operation
fmul.h f25, f15, f12, rtz # perform operation
fmul.h f25, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmul.h f5, f18, f2, dyn # perform operation
fmul.h f5, f18, f2, rdn # perform operation
fmul.h f5, f18, f2, rmm # perform operation
fmul.h f5, f18, f2, rne # perform operation
fmul.h f5, f18, f2, rtz # perform operation
fmul.h f5, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fmul.h f3, f1, f13, dyn # perform operation
fmul.h f3, f1, f13, rdn # perform operation
fmul.h f3, f1, f13, rmm # perform operation
fmul.h f3, f1, f13, rne # perform operation
fmul.h f3, f1, f13, rtz # perform operation
fmul.h f3, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmul.h f13, f9, f7, dyn # perform operation
fmul.h f13, f9, f7, rdn # perform operation
fmul.h f13, f9, f7, rmm # perform operation
fmul.h f13, f9, f7, rne # perform operation
fmul.h f13, f9, f7, rtz # perform operation
fmul.h f13, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmul.h f2, f1, f3, dyn # perform operation
fmul.h f2, f1, f3, rdn # perform operation
fmul.h f2, f1, f3, rmm # perform operation
fmul.h f2, f1, f3, rne # perform operation
fmul.h f2, f1, f3, rtz # perform operation
fmul.h f2, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fmul.h f22, f16, f10, dyn # perform operation
fmul.h f22, f16, f10, rdn # perform operation
fmul.h f22, f16, f10, rmm # perform operation
fmul.h f22, f16, f10, rne # perform operation
fmul.h f22, f16, f10, rtz # perform operation
fmul.h f22, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmul.h f24, f25, f26, dyn # perform operation
fmul.h f24, f25, f26, rdn # perform operation
fmul.h f24, f25, f26, rmm # perform operation
fmul.h f24, f25, f26, rne # perform operation
fmul.h f24, f25, f26, rtz # perform operation
fmul.h f24, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmul.h f12, f10, f11, dyn # perform operation
fmul.h f12, f10, f11, rdn # perform operation
fmul.h f12, f10, f11, rmm # perform operation
fmul.h f12, f10, f11, rne # perform operation
fmul.h f12, f10, f11, rtz # perform operation
fmul.h f12, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmul.h f21, f12, f10, dyn # perform operation
fmul.h f21, f12, f10, rdn # perform operation
fmul.h f21, f12, f10, rmm # perform operation
fmul.h f21, f12, f10, rne # perform operation
fmul.h f21, f12, f10, rtz # perform operation
fmul.h f21, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f14, f25, f27, dyn # perform operation
fmul.h f14, f25, f27, rdn # perform operation
fmul.h f14, f25, f27, rmm # perform operation
fmul.h f14, f25, f27, rne # perform operation
fmul.h f14, f25, f27, rtz # perform operation
fmul.h f14, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmul.h f28, f13, f26, dyn # perform operation
fmul.h f28, f13, f26, rdn # perform operation
fmul.h f28, f13, f26, rmm # perform operation
fmul.h f28, f13, f26, rne # perform operation
fmul.h f28, f13, f26, rtz # perform operation
fmul.h f28, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmul.h f9, f15, f28, dyn # perform operation
fmul.h f9, f15, f28, rdn # perform operation
fmul.h f9, f15, f28, rmm # perform operation
fmul.h f9, f15, f28, rne # perform operation
fmul.h f9, f15, f28, rtz # perform operation
fmul.h f9, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fmul.h f6, f24, f15, dyn # perform operation
fmul.h f6, f24, f15, rdn # perform operation
fmul.h f6, f24, f15, rmm # perform operation
fmul.h f6, f24, f15, rne # perform operation
fmul.h f6, f24, f15, rtz # perform operation
fmul.h f6, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f23, f26, f16, dyn # perform operation
fmul.h f23, f26, f16, rdn # perform operation
fmul.h f23, f26, f16, rmm # perform operation
fmul.h f23, f26, f16, rne # perform operation
fmul.h f23, f26, f16, rtz # perform operation
fmul.h f23, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f26, f16, f3, dyn # perform operation
fmul.h f26, f16, f3, rdn # perform operation
fmul.h f26, f16, f3, rmm # perform operation
fmul.h f26, f16, f3, rne # perform operation
fmul.h f26, f16, f3, rtz # perform operation
fmul.h f26, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmul.h f22, f1, f31, dyn # perform operation
fmul.h f22, f1, f31, rdn # perform operation
fmul.h f22, f1, f31, rmm # perform operation
fmul.h f22, f1, f31, rne # perform operation
fmul.h f22, f1, f31, rtz # perform operation
fmul.h f22, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmul.h f15, f20, f17, dyn # perform operation
fmul.h f15, f20, f17, rdn # perform operation
fmul.h f15, f20, f17, rmm # perform operation
fmul.h f15, f20, f17, rne # perform operation
fmul.h f15, f20, f17, rtz # perform operation
fmul.h f15, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fmul.h f3, f22, f8, dyn # perform operation
fmul.h f3, f22, f8, rdn # perform operation
fmul.h f3, f22, f8, rmm # perform operation
fmul.h f3, f22, f8, rne # perform operation
fmul.h f3, f22, f8, rtz # perform operation
fmul.h f3, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmul.h f8, f23, f19, dyn # perform operation
fmul.h f8, f23, f19, rdn # perform operation
fmul.h f8, f23, f19, rmm # perform operation
fmul.h f8, f23, f19, rne # perform operation
fmul.h f8, f23, f19, rtz # perform operation
fmul.h f8, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmul.h f19, f29, f18, dyn # perform operation
fmul.h f19, f29, f18, rdn # perform operation
fmul.h f19, f29, f18, rmm # perform operation
fmul.h f19, f29, f18, rne # perform operation
fmul.h f19, f29, f18, rtz # perform operation
fmul.h f19, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmul.h f17, f16, f21, dyn # perform operation
fmul.h f17, f16, f21, rdn # perform operation
fmul.h f17, f16, f21, rmm # perform operation
fmul.h f17, f16, f21, rne # perform operation
fmul.h f17, f16, f21, rtz # perform operation
fmul.h f17, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fmul.h f2, f27, f10, dyn # perform operation
fmul.h f2, f27, f10, rdn # perform operation
fmul.h f2, f27, f10, rmm # perform operation
fmul.h f2, f27, f10, rne # perform operation
fmul.h f2, f27, f10, rtz # perform operation
fmul.h f2, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmul.h f26, f11, f19, dyn # perform operation
fmul.h f26, f11, f19, rdn # perform operation
fmul.h f26, f11, f19, rmm # perform operation
fmul.h f26, f11, f19, rne # perform operation
fmul.h f26, f11, f19, rtz # perform operation
fmul.h f26, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f28, f7, f31, dyn # perform operation
fmul.h f28, f7, f31, rdn # perform operation
fmul.h f28, f7, f31, rmm # perform operation
fmul.h f28, f7, f31, rne # perform operation
fmul.h f28, f7, f31, rtz # perform operation
fmul.h f28, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmul.h f28, f8, f25, dyn # perform operation
fmul.h f28, f8, f25, rdn # perform operation
fmul.h f28, f8, f25, rmm # perform operation
fmul.h f28, f8, f25, rne # perform operation
fmul.h f28, f8, f25, rtz # perform operation
fmul.h f28, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fmul.h f21, f26, f28, dyn # perform operation
fmul.h f21, f26, f28, rdn # perform operation
fmul.h f21, f26, f28, rmm # perform operation
fmul.h f21, f26, f28, rne # perform operation
fmul.h f21, f26, f28, rtz # perform operation
fmul.h f21, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmul.h f13, f30, f24, dyn # perform operation
fmul.h f13, f30, f24, rdn # perform operation
fmul.h f13, f30, f24, rmm # perform operation
fmul.h f13, f30, f24, rne # perform operation
fmul.h f13, f30, f24, rtz # perform operation
fmul.h f13, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fmul.h f10, f18, f19, dyn # perform operation
fmul.h f10, f18, f19, rdn # perform operation
fmul.h f10, f18, f19, rmm # perform operation
fmul.h f10, f18, f19, rne # perform operation
fmul.h f10, f18, f19, rtz # perform operation
fmul.h f10, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fmul.h f24, f20, f10, dyn # perform operation
fmul.h f24, f20, f10, rdn # perform operation
fmul.h f24, f20, f10, rmm # perform operation
fmul.h f24, f20, f10, rne # perform operation
fmul.h f24, f20, f10, rtz # perform operation
fmul.h f24, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fmul.h f29, f27, f24, dyn # perform operation
fmul.h f29, f27, f24, rdn # perform operation
fmul.h f29, f27, f24, rmm # perform operation
fmul.h f29, f27, f24, rne # perform operation
fmul.h f29, f27, f24, rtz # perform operation
fmul.h f29, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmul.h f30, f25, f18, dyn # perform operation
fmul.h f30, f25, f18, rdn # perform operation
fmul.h f30, f25, f18, rmm # perform operation
fmul.h f30, f25, f18, rne # perform operation
fmul.h f30, f25, f18, rtz # perform operation
fmul.h f30, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f22, f6, f13, dyn # perform operation
fmul.h f22, f6, f13, rdn # perform operation
fmul.h f22, f6, f13, rmm # perform operation
fmul.h f22, f6, f13, rne # perform operation
fmul.h f22, f6, f13, rtz # perform operation
fmul.h f22, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmul.h f29, f31, f2, dyn # perform operation
fmul.h f29, f31, f2, rdn # perform operation
fmul.h f29, f31, f2, rmm # perform operation
fmul.h f29, f31, f2, rne # perform operation
fmul.h f29, f31, f2, rtz # perform operation
fmul.h f29, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmul.h f30, f3, f21, dyn # perform operation
fmul.h f30, f3, f21, rdn # perform operation
fmul.h f30, f3, f21, rmm # perform operation
fmul.h f30, f3, f21, rne # perform operation
fmul.h f30, f3, f21, rtz # perform operation
fmul.h f30, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmul.h f5, f24, f17, dyn # perform operation
fmul.h f5, f24, f17, rdn # perform operation
fmul.h f5, f24, f17, rmm # perform operation
fmul.h f5, f24, f17, rne # perform operation
fmul.h f5, f24, f17, rtz # perform operation
fmul.h f5, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fmul.h f8, f23, f19, dyn # perform operation
fmul.h f8, f23, f19, rdn # perform operation
fmul.h f8, f23, f19, rmm # perform operation
fmul.h f8, f23, f19, rne # perform operation
fmul.h f8, f23, f19, rtz # perform operation
fmul.h f8, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmul.h f25, f1, f9, dyn # perform operation
fmul.h f25, f1, f9, rdn # perform operation
fmul.h f25, f1, f9, rmm # perform operation
fmul.h f25, f1, f9, rne # perform operation
fmul.h f25, f1, f9, rtz # perform operation
fmul.h f25, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fmul.h f27, f22, f26, dyn # perform operation
fmul.h f27, f22, f26, rdn # perform operation
fmul.h f27, f22, f26, rmm # perform operation
fmul.h f27, f22, f26, rne # perform operation
fmul.h f27, f22, f26, rtz # perform operation
fmul.h f27, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmul.h f13, f9, f5, dyn # perform operation
fmul.h f13, f9, f5, rdn # perform operation
fmul.h f13, f9, f5, rmm # perform operation
fmul.h f13, f9, f5, rne # perform operation
fmul.h f13, f9, f5, rtz # perform operation
fmul.h f13, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmul.h f25, f8, f16, dyn # perform operation
fmul.h f25, f8, f16, rdn # perform operation
fmul.h f25, f8, f16, rmm # perform operation
fmul.h f25, f8, f16, rne # perform operation
fmul.h f25, f8, f16, rtz # perform operation
fmul.h f25, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmul.h f29, f13, f17, dyn # perform operation
fmul.h f29, f13, f17, rdn # perform operation
fmul.h f29, f13, f17, rmm # perform operation
fmul.h f29, f13, f17, rne # perform operation
fmul.h f29, f13, f17, rtz # perform operation
fmul.h f29, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f19, f10, f16, dyn # perform operation
fmul.h f19, f10, f16, rdn # perform operation
fmul.h f19, f10, f16, rmm # perform operation
fmul.h f19, f10, f16, rne # perform operation
fmul.h f19, f10, f16, rtz # perform operation
fmul.h f19, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmul.h f2, f15, f12, dyn # perform operation
fmul.h f2, f15, f12, rdn # perform operation
fmul.h f2, f15, f12, rmm # perform operation
fmul.h f2, f15, f12, rne # perform operation
fmul.h f2, f15, f12, rtz # perform operation
fmul.h f2, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fmul.h f11, f23, f12, dyn # perform operation
fmul.h f11, f23, f12, rdn # perform operation
fmul.h f11, f23, f12, rmm # perform operation
fmul.h f11, f23, f12, rne # perform operation
fmul.h f11, f23, f12, rtz # perform operation
fmul.h f11, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmul.h f7, f23, f16, dyn # perform operation
fmul.h f7, f23, f16, rdn # perform operation
fmul.h f7, f23, f16, rmm # perform operation
fmul.h f7, f23, f16, rne # perform operation
fmul.h f7, f23, f16, rtz # perform operation
fmul.h f7, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmul.h f12, f5, f2, dyn # perform operation
fmul.h f12, f5, f2, rdn # perform operation
fmul.h f12, f5, f2, rmm # perform operation
fmul.h f12, f5, f2, rne # perform operation
fmul.h f12, f5, f2, rtz # perform operation
fmul.h f12, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f11, f28, f25, dyn # perform operation
fmul.h f11, f28, f25, rdn # perform operation
fmul.h f11, f28, f25, rmm # perform operation
fmul.h f11, f28, f25, rne # perform operation
fmul.h f11, f28, f25, rtz # perform operation
fmul.h f11, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f14, f28, f21, dyn # perform operation
fmul.h f14, f28, f21, rdn # perform operation
fmul.h f14, f28, f21, rmm # perform operation
fmul.h f14, f28, f21, rne # perform operation
fmul.h f14, f28, f21, rtz # perform operation
fmul.h f14, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmul.h f2, f6, f28, dyn # perform operation
fmul.h f2, f6, f28, rdn # perform operation
fmul.h f2, f6, f28, rmm # perform operation
fmul.h f2, f6, f28, rne # perform operation
fmul.h f2, f6, f28, rtz # perform operation
fmul.h f2, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmul.h f3, f16, f8, dyn # perform operation
fmul.h f3, f16, f8, rdn # perform operation
fmul.h f3, f16, f8, rmm # perform operation
fmul.h f3, f16, f8, rne # perform operation
fmul.h f3, f16, f8, rtz # perform operation
fmul.h f3, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fmul.h f17, f15, f22, dyn # perform operation
fmul.h f17, f15, f22, rdn # perform operation
fmul.h f17, f15, f22, rmm # perform operation
fmul.h f17, f15, f22, rne # perform operation
fmul.h f17, f15, f22, rtz # perform operation
fmul.h f17, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmul.h f17, f26, f10, dyn # perform operation
fmul.h f17, f26, f10, rdn # perform operation
fmul.h f17, f26, f10, rmm # perform operation
fmul.h f17, f26, f10, rne # perform operation
fmul.h f17, f26, f10, rtz # perform operation
fmul.h f17, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmul.h f16, f30, f29, dyn # perform operation
fmul.h f16, f30, f29, rdn # perform operation
fmul.h f16, f30, f29, rmm # perform operation
fmul.h f16, f30, f29, rne # perform operation
fmul.h f16, f30, f29, rtz # perform operation
fmul.h f16, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fmul.h f6, f2, f29, dyn # perform operation
fmul.h f6, f2, f29, rdn # perform operation
fmul.h f6, f2, f29, rmm # perform operation
fmul.h f6, f2, f29, rne # perform operation
fmul.h f6, f2, f29, rtz # perform operation
fmul.h f6, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fmul.h f7, f18, f27, dyn # perform operation
fmul.h f7, f18, f27, rdn # perform operation
fmul.h f7, f18, f27, rmm # perform operation
fmul.h f7, f18, f27, rne # perform operation
fmul.h f7, f18, f27, rtz # perform operation
fmul.h f7, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fmul.h f24, f21, f8, dyn # perform operation
fmul.h f24, f21, f8, rdn # perform operation
fmul.h f24, f21, f8, rmm # perform operation
fmul.h f24, f21, f8, rne # perform operation
fmul.h f24, f21, f8, rtz # perform operation
fmul.h f24, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fmul.h f10, f16, f19, dyn # perform operation
fmul.h f10, f16, f19, rdn # perform operation
fmul.h f10, f16, f19, rmm # perform operation
fmul.h f10, f16, f19, rne # perform operation
fmul.h f10, f16, f19, rtz # perform operation
fmul.h f10, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fmul.h f12, f25, f24, dyn # perform operation
fmul.h f12, f25, f24, rdn # perform operation
fmul.h f12, f25, f24, rmm # perform operation
fmul.h f12, f25, f24, rne # perform operation
fmul.h f12, f25, f24, rtz # perform operation
fmul.h f12, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fmul.h f27, f11, f30, dyn # perform operation
fmul.h f27, f11, f30, rdn # perform operation
fmul.h f27, f11, f30, rmm # perform operation
fmul.h f27, f11, f30, rne # perform operation
fmul.h f27, f11, f30, rtz # perform operation
fmul.h f27, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmul.h f3, f27, f24, dyn # perform operation
fmul.h f3, f27, f24, rdn # perform operation
fmul.h f3, f27, f24, rmm # perform operation
fmul.h f3, f27, f24, rne # perform operation
fmul.h f3, f27, f24, rtz # perform operation
fmul.h f3, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f7, f1, f19, dyn # perform operation
fmul.h f7, f1, f19, rdn # perform operation
fmul.h f7, f1, f19, rmm # perform operation
fmul.h f7, f1, f19, rne # perform operation
fmul.h f7, f1, f19, rtz # perform operation
fmul.h f7, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f27, f6, f30, dyn # perform operation
fmul.h f27, f6, f30, rdn # perform operation
fmul.h f27, f6, f30, rmm # perform operation
fmul.h f27, f6, f30, rne # perform operation
fmul.h f27, f6, f30, rtz # perform operation
fmul.h f27, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fmul.h f26, f3, f8, dyn # perform operation
fmul.h f26, f3, f8, rdn # perform operation
fmul.h f26, f3, f8, rmm # perform operation
fmul.h f26, f3, f8, rne # perform operation
fmul.h f26, f3, f8, rtz # perform operation
fmul.h f26, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmul.h f1, f17, f27, dyn # perform operation
fmul.h f1, f17, f27, rdn # perform operation
fmul.h f1, f17, f27, rmm # perform operation
fmul.h f1, f17, f27, rne # perform operation
fmul.h f1, f17, f27, rtz # perform operation
fmul.h f1, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fmul.h f13, f15, f8, dyn # perform operation
fmul.h f13, f15, f8, rdn # perform operation
fmul.h f13, f15, f8, rmm # perform operation
fmul.h f13, f15, f8, rne # perform operation
fmul.h f13, f15, f8, rtz # perform operation
fmul.h f13, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmul.h f18, f26, f9, dyn # perform operation
fmul.h f18, f26, f9, rdn # perform operation
fmul.h f18, f26, f9, rmm # perform operation
fmul.h f18, f26, f9, rne # perform operation
fmul.h f18, f26, f9, rtz # perform operation
fmul.h f18, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fmul.h f14, f12, f20, dyn # perform operation
fmul.h f14, f12, f20, rdn # perform operation
fmul.h f14, f12, f20, rmm # perform operation
fmul.h f14, f12, f20, rne # perform operation
fmul.h f14, f12, f20, rtz # perform operation
fmul.h f14, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmul.h f8, f24, f18, dyn # perform operation
fmul.h f8, f24, f18, rdn # perform operation
fmul.h f8, f24, f18, rmm # perform operation
fmul.h f8, f24, f18, rne # perform operation
fmul.h f8, f24, f18, rtz # perform operation
fmul.h f8, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmul.h f23, f11, f17, dyn # perform operation
fmul.h f23, f11, f17, rdn # perform operation
fmul.h f23, f11, f17, rmm # perform operation
fmul.h f23, f11, f17, rne # perform operation
fmul.h f23, f11, f17, rtz # perform operation
fmul.h f23, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fmul.h f2, f11, f10, dyn # perform operation
fmul.h f2, f11, f10, rdn # perform operation
fmul.h f2, f11, f10, rmm # perform operation
fmul.h f2, f11, f10, rne # perform operation
fmul.h f2, f11, f10, rtz # perform operation
fmul.h f2, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmul.h f30, f10, f5, dyn # perform operation
fmul.h f30, f10, f5, rdn # perform operation
fmul.h f30, f10, f5, rmm # perform operation
fmul.h f30, f10, f5, rne # perform operation
fmul.h f30, f10, f5, rtz # perform operation
fmul.h f30, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmul.h f26, f23, f31, dyn # perform operation
fmul.h f26, f23, f31, rdn # perform operation
fmul.h f26, f23, f31, rmm # perform operation
fmul.h f26, f23, f31, rne # perform operation
fmul.h f26, f23, f31, rtz # perform operation
fmul.h f26, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmul.h f17, f18, f1, dyn # perform operation
fmul.h f17, f18, f1, rdn # perform operation
fmul.h f17, f18, f1, rmm # perform operation
fmul.h f17, f18, f1, rne # perform operation
fmul.h f17, f18, f1, rtz # perform operation
fmul.h f17, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmul.h f23, f2, f5, dyn # perform operation
fmul.h f23, f2, f5, rdn # perform operation
fmul.h f23, f2, f5, rmm # perform operation
fmul.h f23, f2, f5, rne # perform operation
fmul.h f23, f2, f5, rtz # perform operation
fmul.h f23, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f6, f28, f20, dyn # perform operation
fmul.h f6, f28, f20, rdn # perform operation
fmul.h f6, f28, f20, rmm # perform operation
fmul.h f6, f28, f20, rne # perform operation
fmul.h f6, f28, f20, rtz # perform operation
fmul.h f6, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmul.h f13, f20, f17, dyn # perform operation
fmul.h f13, f20, f17, rdn # perform operation
fmul.h f13, f20, f17, rmm # perform operation
fmul.h f13, f20, f17, rne # perform operation
fmul.h f13, f20, f17, rtz # perform operation
fmul.h f13, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fmul.h f7, f13, f8, dyn # perform operation
fmul.h f7, f13, f8, rdn # perform operation
fmul.h f7, f13, f8, rmm # perform operation
fmul.h f7, f13, f8, rne # perform operation
fmul.h f7, f13, f8, rtz # perform operation
fmul.h f7, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fmul.h f16, f19, f26, dyn # perform operation
fmul.h f16, f19, f26, rdn # perform operation
fmul.h f16, f19, f26, rmm # perform operation
fmul.h f16, f19, f26, rne # perform operation
fmul.h f16, f19, f26, rtz # perform operation
fmul.h f16, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fmul.h f9, f2, f5, dyn # perform operation
fmul.h f9, f2, f5, rdn # perform operation
fmul.h f9, f2, f5, rmm # perform operation
fmul.h f9, f2, f5, rne # perform operation
fmul.h f9, f2, f5, rtz # perform operation
fmul.h f9, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmul.h f22, f18, f3, dyn # perform operation
fmul.h f22, f18, f3, rdn # perform operation
fmul.h f22, f18, f3, rmm # perform operation
fmul.h f22, f18, f3, rne # perform operation
fmul.h f22, f18, f3, rtz # perform operation
fmul.h f22, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmul.h f7, f26, f15, dyn # perform operation
fmul.h f7, f26, f15, rdn # perform operation
fmul.h f7, f26, f15, rmm # perform operation
fmul.h f7, f26, f15, rne # perform operation
fmul.h f7, f26, f15, rtz # perform operation
fmul.h f7, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fmul.h f27, f15, f28, dyn # perform operation
fmul.h f27, f15, f28, rdn # perform operation
fmul.h f27, f15, f28, rmm # perform operation
fmul.h f27, f15, f28, rne # perform operation
fmul.h f27, f15, f28, rtz # perform operation
fmul.h f27, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmul.h f24, f20, f9, dyn # perform operation
fmul.h f24, f20, f9, rdn # perform operation
fmul.h f24, f20, f9, rmm # perform operation
fmul.h f24, f20, f9, rne # perform operation
fmul.h f24, f20, f9, rtz # perform operation
fmul.h f24, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fmul.h f17, f7, f27, dyn # perform operation
fmul.h f17, f7, f27, rdn # perform operation
fmul.h f17, f7, f27, rmm # perform operation
fmul.h f17, f7, f27, rne # perform operation
fmul.h f17, f7, f27, rtz # perform operation
fmul.h f17, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
fmul.h f10, f22, f13, dyn # perform operation
fmul.h f10, f22, f13, rdn # perform operation
fmul.h f10, f22, f13, rmm # perform operation
fmul.h f10, f22, f13, rne # perform operation
fmul.h f10, f22, f13, rtz # perform operation
fmul.h f10, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f24, f2, f23, dyn # perform operation
fmul.h f24, f2, f23, rdn # perform operation
fmul.h f24, f2, f23, rmm # perform operation
fmul.h f24, f2, f23, rne # perform operation
fmul.h f24, f2, f23, rtz # perform operation
fmul.h f24, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fmul.h f2, f8, f25, dyn # perform operation
fmul.h f2, f8, f25, rdn # perform operation
fmul.h f2, f8, f25, rmm # perform operation
fmul.h f2, f8, f25, rne # perform operation
fmul.h f2, f8, f25, rtz # perform operation
fmul.h f2, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f8, f25 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x3b5772f9 # load x3 with value 0x3b5772f9
sw x3, 0(x2) # store 0x3b5772f9 in memory
flh f11, 0(x2) # load 0x3b5772f9 from memory into f11
la x2, scratch
li x3, 0x57dfbda5 # load x3 with value 0x57dfbda5
sw x3, 0(x2) # store 0x57dfbda5 in memory
flh f28, 0(x2) # load 0x57dfbda5 from memory into f28
fmul.h f25, f11, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0xc3a46d93 # load x3 with value 0xc3a46d93
sw x3, 0(x2) # store 0xc3a46d93 in memory
flw f21, 0(x2) # load 0xc3a46d93 from memory into f21
fmul.h f1, f20, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f23, 0(x2) # load 0xfffe8000 from memory into f23
la x2, scratch
li x3, 0x10312def # load x3 with value 0x10312def
sw x3, 0(x2) # store 0x10312def in memory
flw f31, 0(x2) # load 0x10312def from memory into f31
fmul.h f11, f23, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f25, 0(x2) # load 0x7fff3c00 from memory into f25
la x2, scratch
li x3, 0xab6c6fbd # load x3 with value 0xab6c6fbd
sw x3, 0(x2) # store 0xab6c6fbd in memory
flw f21, 0(x2) # load 0xab6c6fbd from memory into f21
fmul.h f16, f25, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f14, 0(x2) # load 0xbeefbc00 from memory into f14
la x2, scratch
li x3, 0x6f8bfafe # load x3 with value 0x6f8bfafe
sw x3, 0(x2) # store 0x6f8bfafe in memory
flw f26, 0(x2) # load 0x6f8bfafe from memory into f26
fmul.h f8, f14, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f17, 0(x2) # load 0xfeff0400 from memory into f17
la x2, scratch
li x3, 0x003d092f # load x3 with value 0x003d092f
sw x3, 0(x2) # store 0x003d092f in memory
flw f20, 0(x2) # load 0x003d092f from memory into f20
fmul.h f8, f17, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f29, 0(x2) # load 0x0fff8400 from memory into f29
la x2, scratch
li x3, 0xfe7ab201 # load x3 with value 0xfe7ab201
sw x3, 0(x2) # store 0xfe7ab201 in memory
flw f13, 0(x2) # load 0xfe7ab201 from memory into f13
fmul.h f24, f29, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f17, 0(x2) # load 0xefff7bff from memory into f17
la x2, scratch
li x3, 0x952646fd # load x3 with value 0x952646fd
sw x3, 0(x2) # store 0x952646fd in memory
flw f10, 0(x2) # load 0x952646fd from memory into f10
fmul.h f3, f17, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f25, 0(x2) # load 0xc0defbff from memory into f25
la x2, scratch
li x3, 0xb8642b2e # load x3 with value 0xb8642b2e
sw x3, 0(x2) # store 0xb8642b2e in memory
flw f26, 0(x2) # load 0xb8642b2e from memory into f26
fmul.h f20, f25, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f6, 0(x2) # load 0x4f1a7c00 from memory into f6
la x2, scratch
li x3, 0xc4a2a409 # load x3 with value 0xc4a2a409
sw x3, 0(x2) # store 0xc4a2a409 in memory
flw f15, 0(x2) # load 0xc4a2a409 from memory into f15
fmul.h f25, f6, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f9, 0(x2) # load 0x0ffffc00 from memory into f9
la x2, scratch
li x3, 0x2dd809c2 # load x3 with value 0x2dd809c2
sw x3, 0(x2) # store 0x2dd809c2 in memory
flw f18, 0(x2) # load 0x2dd809c2 from memory into f18
fmul.h f29, f9, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f22, 0(x2) # load 0xffef7e00 from memory into f22
la x2, scratch
li x3, 0xad71393d # load x3 with value 0xad71393d
sw x3, 0(x2) # store 0xad71393d in memory
flw f20, 0(x2) # load 0xad71393d from memory into f20
fmul.h f26, f22, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f30, 0(x2) # load 0xfeef7fff from memory into f30
la x2, scratch
li x3, 0xee3ffdfa # load x3 with value 0xee3ffdfa
sw x3, 0(x2) # store 0xee3ffdfa in memory
flw f11, 0(x2) # load 0xee3ffdfa from memory into f11
fmul.h f27, f30, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f1, 0(x2) # load 0xa1b27c01 from memory into f1
la x2, scratch
li x3, 0x512413a8 # load x3 with value 0x512413a8
sw x3, 0(x2) # store 0x512413a8 in memory
flw f31, 0(x2) # load 0x512413a8 from memory into f31
fmul.h f25, f1, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f27, 0(x2) # load 0x4fd77dff from memory into f27
la x2, scratch
li x3, 0x3d0be05f # load x3 with value 0x3d0be05f
sw x3, 0(x2) # store 0x3d0be05f in memory
flw f17, 0(x2) # load 0x3d0be05f from memory into f17
fmul.h f8, f27, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x5c7ae10b # load x3 with value 0x5c7ae10b
sw x3, 0(x2) # store 0x5c7ae10b in memory
flw f24, 0(x2) # load 0x5c7ae10b from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f10, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0x88dd8b70 # load x3 with value 0x88dd8b70
sw x3, 0(x2) # store 0x88dd8b70 in memory
flw f23, 0(x2) # load 0x88dd8b70 from memory into f23
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f16, 0(x2) # load 0xfffe8000 from memory into f16
fmul.h f11, f23, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x9033b563 # load x3 with value 0x9033b563
sw x3, 0(x2) # store 0x9033b563 in memory
flw f21, 0(x2) # load 0x9033b563 from memory into f21
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f10, 0(x2) # load 0x7fff3c00 from memory into f10
fmul.h f31, f21, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xb4ec8860 # load x3 with value 0xb4ec8860
sw x3, 0(x2) # store 0xb4ec8860 in memory
flw f11, 0(x2) # load 0xb4ec8860 from memory into f11
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f10, 0(x2) # load 0xbeefbc00 from memory into f10
fmul.h f27, f11, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0x7ad61a0c # load x3 with value 0x7ad61a0c
sw x3, 0(x2) # store 0x7ad61a0c in memory
flw f12, 0(x2) # load 0x7ad61a0c from memory into f12
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f7, 0(x2) # load 0xfeff0400 from memory into f7
fmul.h f3, f12, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0xf12dbf66 # load x3 with value 0xf12dbf66
sw x3, 0(x2) # store 0xf12dbf66 in memory
flw f1, 0(x2) # load 0xf12dbf66 from memory into f1
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f11, 0(x2) # load 0x0fff8400 from memory into f11
fmul.h f12, f1, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xe7cb36fd # load x3 with value 0xe7cb36fd
sw x3, 0(x2) # store 0xe7cb36fd in memory
flw f25, 0(x2) # load 0xe7cb36fd from memory into f25
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f16, 0(x2) # load 0xefff7bff from memory into f16
fmul.h f14, f25, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xe5a18d53 # load x3 with value 0xe5a18d53
sw x3, 0(x2) # store 0xe5a18d53 in memory
flw f29, 0(x2) # load 0xe5a18d53 from memory into f29
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f6, 0(x2) # load 0xc0defbff from memory into f6
fmul.h f24, f29, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x42a08d95 # load x3 with value 0x42a08d95
sw x3, 0(x2) # store 0x42a08d95 in memory
flw f26, 0(x2) # load 0x42a08d95 from memory into f26
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f23, 0(x2) # load 0x4f1a7c00 from memory into f23
fmul.h f31, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0xf7949c2a # load x3 with value 0xf7949c2a
sw x3, 0(x2) # store 0xf7949c2a in memory
flw f9, 0(x2) # load 0xf7949c2a from memory into f9
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f25, 0(x2) # load 0x0ffffc00 from memory into f25
fmul.h f10, f9, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x5d19cec6 # load x3 with value 0x5d19cec6
sw x3, 0(x2) # store 0x5d19cec6 in memory
flw f14, 0(x2) # load 0x5d19cec6 from memory into f14
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f6, 0(x2) # load 0xffef7e00 from memory into f6
fmul.h f19, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0x9897801f # load x3 with value 0x9897801f
sw x3, 0(x2) # store 0x9897801f in memory
flw f20, 0(x2) # load 0x9897801f from memory into f20
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f22, 0(x2) # load 0xfeef7fff from memory into f22
fmul.h f25, f20, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xe11d6c13 # load x3 with value 0xe11d6c13
sw x3, 0(x2) # store 0xe11d6c13 in memory
flw f20, 0(x2) # load 0xe11d6c13 from memory into f20
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f12, 0(x2) # load 0xa1b27c01 from memory into f12
fmul.h f26, f20, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x5cab5c82 # load x3 with value 0x5cab5c82
sw x3, 0(x2) # store 0x5cab5c82 in memory
flw f30, 0(x2) # load 0x5cab5c82 from memory into f30
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f14, 0(x2) # load 0x4fd77dff from memory into f14
fmul.h f8, f30, f14 # perform operation

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
