///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfhmin/WALLY-COV-fcvt.s.h.S
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
add x15, x24, x2 # perform first operation
fcvt.s.h f18, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x2, x17 # perform first operation
fcvt.s.h f27, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x27, x30 # perform first operation
fcvt.s.h f11, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f8, f3, f30 # perform first operation
fcvt.s.h f3, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x31, x13 # perform first operation
fcvt.s.h f13, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x17, x12 # perform first operation
fcvt.s.h f17, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f25, f27 # perform first operation
fcvt.s.h f5, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f23, f2 # perform first operation
fcvt.s.h f29, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f5, f29 # perform first operation
fcvt.s.h f31, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f14, f28 # perform first operation
fcvt.s.h f14, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f18, f28, f24 # perform first operation
fcvt.s.h f24, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f28, f15 # perform first operation
fcvt.s.h f25, f16 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f970971 # load x3 with value 0x8f970971
sw x3, 0(x2) # store 0x8f970971 in memory
flh f0, 0(x2) # load 0x8f970971 from memory into f0
fcvt.s.h f7, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64db40f9 # load x3 with value 0x64db40f9
sw x3, 0(x2) # store 0x64db40f9 in memory
flh f1, 0(x2) # load 0x64db40f9 from memory into f1
fcvt.s.h f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x851e19fe # load x3 with value 0x851e19fe
sw x3, 0(x2) # store 0x851e19fe in memory
flh f2, 0(x2) # load 0x851e19fe from memory into f2
fcvt.s.h f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30a3de79 # load x3 with value 0x30a3de79
sw x3, 0(x2) # store 0x30a3de79 in memory
flh f3, 0(x2) # load 0x30a3de79 from memory into f3
fcvt.s.h f1, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x10aaefc6 # load x3 with value 0x10aaefc6
sw x3, 0(x2) # store 0x10aaefc6 in memory
flh f4, 0(x2) # load 0x10aaefc6 from memory into f4
fcvt.s.h f26, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47065779 # load x3 with value 0x47065779
sw x3, 0(x2) # store 0x47065779 in memory
flh f5, 0(x2) # load 0x47065779 from memory into f5
fcvt.s.h f24, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xded21723 # load x3 with value 0xded21723
sw x3, 0(x2) # store 0xded21723 in memory
flh f6, 0(x2) # load 0xded21723 from memory into f6
fcvt.s.h f16, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0f5efea # load x3 with value 0xd0f5efea
sw x3, 0(x2) # store 0xd0f5efea in memory
flh f7, 0(x2) # load 0xd0f5efea from memory into f7
fcvt.s.h f1, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x300cccb5 # load x3 with value 0x300cccb5
sw x3, 0(x2) # store 0x300cccb5 in memory
flh f8, 0(x2) # load 0x300cccb5 from memory into f8
fcvt.s.h f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe69a6bc8 # load x3 with value 0xe69a6bc8
sw x3, 0(x2) # store 0xe69a6bc8 in memory
flh f9, 0(x2) # load 0xe69a6bc8 from memory into f9
fcvt.s.h f6, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64cdaaa8 # load x3 with value 0x64cdaaa8
sw x3, 0(x2) # store 0x64cdaaa8 in memory
flh f10, 0(x2) # load 0x64cdaaa8 from memory into f10
fcvt.s.h f9, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x91a2d4ab # load x3 with value 0x91a2d4ab
sw x3, 0(x2) # store 0x91a2d4ab in memory
flh f11, 0(x2) # load 0x91a2d4ab from memory into f11
fcvt.s.h f14, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdd19ec00 # load x3 with value 0xdd19ec00
sw x3, 0(x2) # store 0xdd19ec00 in memory
flh f12, 0(x2) # load 0xdd19ec00 from memory into f12
fcvt.s.h f15, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2867ab5a # load x3 with value 0x2867ab5a
sw x3, 0(x2) # store 0x2867ab5a in memory
flh f13, 0(x2) # load 0x2867ab5a from memory into f13
fcvt.s.h f12, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x89bf8dcb # load x3 with value 0x89bf8dcb
sw x3, 0(x2) # store 0x89bf8dcb in memory
flh f14, 0(x2) # load 0x89bf8dcb from memory into f14
fcvt.s.h f25, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81464a08 # load x3 with value 0x81464a08
sw x3, 0(x2) # store 0x81464a08 in memory
flh f15, 0(x2) # load 0x81464a08 from memory into f15
fcvt.s.h f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54d258b4 # load x3 with value 0x54d258b4
sw x3, 0(x2) # store 0x54d258b4 in memory
flh f16, 0(x2) # load 0x54d258b4 from memory into f16
fcvt.s.h f8, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c254fd0 # load x3 with value 0x5c254fd0
sw x3, 0(x2) # store 0x5c254fd0 in memory
flh f17, 0(x2) # load 0x5c254fd0 from memory into f17
fcvt.s.h f3, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1975561 # load x3 with value 0xa1975561
sw x3, 0(x2) # store 0xa1975561 in memory
flh f18, 0(x2) # load 0xa1975561 from memory into f18
fcvt.s.h f7, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf69d2127 # load x3 with value 0xf69d2127
sw x3, 0(x2) # store 0xf69d2127 in memory
flh f19, 0(x2) # load 0xf69d2127 from memory into f19
fcvt.s.h f20, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd91cff6f # load x3 with value 0xd91cff6f
sw x3, 0(x2) # store 0xd91cff6f in memory
flh f20, 0(x2) # load 0xd91cff6f from memory into f20
fcvt.s.h f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x76557286 # load x3 with value 0x76557286
sw x3, 0(x2) # store 0x76557286 in memory
flh f21, 0(x2) # load 0x76557286 from memory into f21
fcvt.s.h f15, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x898e9454 # load x3 with value 0x898e9454
sw x3, 0(x2) # store 0x898e9454 in memory
flh f22, 0(x2) # load 0x898e9454 from memory into f22
fcvt.s.h f28, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee4e80e0 # load x3 with value 0xee4e80e0
sw x3, 0(x2) # store 0xee4e80e0 in memory
flh f23, 0(x2) # load 0xee4e80e0 from memory into f23
fcvt.s.h f15, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb0d82e1 # load x3 with value 0xdb0d82e1
sw x3, 0(x2) # store 0xdb0d82e1 in memory
flh f24, 0(x2) # load 0xdb0d82e1 from memory into f24
fcvt.s.h f25, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8533c2d # load x3 with value 0xa8533c2d
sw x3, 0(x2) # store 0xa8533c2d in memory
flh f25, 0(x2) # load 0xa8533c2d from memory into f25
fcvt.s.h f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64cf4443 # load x3 with value 0x64cf4443
sw x3, 0(x2) # store 0x64cf4443 in memory
flh f26, 0(x2) # load 0x64cf4443 from memory into f26
fcvt.s.h f7, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45c09a05 # load x3 with value 0x45c09a05
sw x3, 0(x2) # store 0x45c09a05 in memory
flh f27, 0(x2) # load 0x45c09a05 from memory into f27
fcvt.s.h f30, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67f1a89f # load x3 with value 0x67f1a89f
sw x3, 0(x2) # store 0x67f1a89f in memory
flh f28, 0(x2) # load 0x67f1a89f from memory into f28
fcvt.s.h f3, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x31238b34 # load x3 with value 0x31238b34
sw x3, 0(x2) # store 0x31238b34 in memory
flh f29, 0(x2) # load 0x31238b34 from memory into f29
fcvt.s.h f24, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbc7d1f2d # load x3 with value 0xbc7d1f2d
sw x3, 0(x2) # store 0xbc7d1f2d in memory
flh f30, 0(x2) # load 0xbc7d1f2d from memory into f30
fcvt.s.h f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7faef12a # load x3 with value 0x7faef12a
sw x3, 0(x2) # store 0x7faef12a in memory
flh f31, 0(x2) # load 0x7faef12a from memory into f31
fcvt.s.h f17, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1efcb51a # load x3 with value 0x1efcb51a
sw x3, 0(x2) # store 0x1efcb51a in memory
flh f15, 0(x2) # load 0x1efcb51a from memory into f15
fcvt.s.h f0, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe94a7812 # load x3 with value 0xe94a7812
sw x3, 0(x2) # store 0xe94a7812 in memory
flh f10, 0(x2) # load 0xe94a7812 from memory into f10
fcvt.s.h f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a932c85 # load x3 with value 0x3a932c85
sw x3, 0(x2) # store 0x3a932c85 in memory
flh f3, 0(x2) # load 0x3a932c85 from memory into f3
fcvt.s.h f2, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xba7898ae # load x3 with value 0xba7898ae
sw x3, 0(x2) # store 0xba7898ae in memory
flh f15, 0(x2) # load 0xba7898ae from memory into f15
fcvt.s.h f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee5888a8 # load x3 with value 0xee5888a8
sw x3, 0(x2) # store 0xee5888a8 in memory
flh f1, 0(x2) # load 0xee5888a8 from memory into f1
fcvt.s.h f4, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f7b9150 # load x3 with value 0x4f7b9150
sw x3, 0(x2) # store 0x4f7b9150 in memory
flh f8, 0(x2) # load 0x4f7b9150 from memory into f8
fcvt.s.h f5, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x09eba378 # load x3 with value 0x09eba378
sw x3, 0(x2) # store 0x09eba378 in memory
flh f25, 0(x2) # load 0x09eba378 from memory into f25
fcvt.s.h f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbaecc2d2 # load x3 with value 0xbaecc2d2
sw x3, 0(x2) # store 0xbaecc2d2 in memory
flh f30, 0(x2) # load 0xbaecc2d2 from memory into f30
fcvt.s.h f7, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4510fed2 # load x3 with value 0x4510fed2
sw x3, 0(x2) # store 0x4510fed2 in memory
flh f3, 0(x2) # load 0x4510fed2 from memory into f3
fcvt.s.h f8, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa877f9cb # load x3 with value 0xa877f9cb
sw x3, 0(x2) # store 0xa877f9cb in memory
flh f26, 0(x2) # load 0xa877f9cb from memory into f26
fcvt.s.h f9, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x681fcc64 # load x3 with value 0x681fcc64
sw x3, 0(x2) # store 0x681fcc64 in memory
flh f27, 0(x2) # load 0x681fcc64 from memory into f27
fcvt.s.h f10, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7c6de7a # load x3 with value 0xf7c6de7a
sw x3, 0(x2) # store 0xf7c6de7a in memory
flh f9, 0(x2) # load 0xf7c6de7a from memory into f9
fcvt.s.h f11, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7766b9a # load x3 with value 0xb7766b9a
sw x3, 0(x2) # store 0xb7766b9a in memory
flh f8, 0(x2) # load 0xb7766b9a from memory into f8
fcvt.s.h f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a5e0c7f # load x3 with value 0x2a5e0c7f
sw x3, 0(x2) # store 0x2a5e0c7f in memory
flh f31, 0(x2) # load 0x2a5e0c7f from memory into f31
fcvt.s.h f13, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x985f1461 # load x3 with value 0x985f1461
sw x3, 0(x2) # store 0x985f1461 in memory
flh f18, 0(x2) # load 0x985f1461 from memory into f18
fcvt.s.h f14, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf047e4c # load x3 with value 0xaf047e4c
sw x3, 0(x2) # store 0xaf047e4c in memory
flh f15, 0(x2) # load 0xaf047e4c from memory into f15
fcvt.s.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26f8f191 # load x3 with value 0x26f8f191
sw x3, 0(x2) # store 0x26f8f191 in memory
flh f30, 0(x2) # load 0x26f8f191 from memory into f30
fcvt.s.h f16, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a5a27c5 # load x3 with value 0x5a5a27c5
sw x3, 0(x2) # store 0x5a5a27c5 in memory
flh f18, 0(x2) # load 0x5a5a27c5 from memory into f18
fcvt.s.h f17, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc7e90177 # load x3 with value 0xc7e90177
sw x3, 0(x2) # store 0xc7e90177 in memory
flh f20, 0(x2) # load 0xc7e90177 from memory into f20
fcvt.s.h f18, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x59a65a4b # load x3 with value 0x59a65a4b
sw x3, 0(x2) # store 0x59a65a4b in memory
flh f9, 0(x2) # load 0x59a65a4b from memory into f9
fcvt.s.h f19, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe46a116d # load x3 with value 0xe46a116d
sw x3, 0(x2) # store 0xe46a116d in memory
flh f31, 0(x2) # load 0xe46a116d from memory into f31
fcvt.s.h f20, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0a3651b5 # load x3 with value 0x0a3651b5
sw x3, 0(x2) # store 0x0a3651b5 in memory
flh f3, 0(x2) # load 0x0a3651b5 from memory into f3
fcvt.s.h f21, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38f2ac50 # load x3 with value 0x38f2ac50
sw x3, 0(x2) # store 0x38f2ac50 in memory
flh f1, 0(x2) # load 0x38f2ac50 from memory into f1
fcvt.s.h f22, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf81ed4cc # load x3 with value 0xf81ed4cc
sw x3, 0(x2) # store 0xf81ed4cc in memory
flh f5, 0(x2) # load 0xf81ed4cc from memory into f5
fcvt.s.h f23, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x837939e7 # load x3 with value 0x837939e7
sw x3, 0(x2) # store 0x837939e7 in memory
flh f11, 0(x2) # load 0x837939e7 from memory into f11
fcvt.s.h f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00875ef5 # load x3 with value 0x00875ef5
sw x3, 0(x2) # store 0x00875ef5 in memory
flh f11, 0(x2) # load 0x00875ef5 from memory into f11
fcvt.s.h f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0a4ca8be # load x3 with value 0x0a4ca8be
sw x3, 0(x2) # store 0x0a4ca8be in memory
flh f29, 0(x2) # load 0x0a4ca8be from memory into f29
fcvt.s.h f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63788e34 # load x3 with value 0x63788e34
sw x3, 0(x2) # store 0x63788e34 in memory
flh f20, 0(x2) # load 0x63788e34 from memory into f20
fcvt.s.h f27, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1bedeb98 # load x3 with value 0x1bedeb98
sw x3, 0(x2) # store 0x1bedeb98 in memory
flh f21, 0(x2) # load 0x1bedeb98 from memory into f21
fcvt.s.h f28, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3321a23e # load x3 with value 0x3321a23e
sw x3, 0(x2) # store 0x3321a23e in memory
flh f10, 0(x2) # load 0x3321a23e from memory into f10
fcvt.s.h f29, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60a8e7c8 # load x3 with value 0x60a8e7c8
sw x3, 0(x2) # store 0x60a8e7c8 in memory
flh f14, 0(x2) # load 0x60a8e7c8 from memory into f14
fcvt.s.h f30, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x01fea6ce # load x3 with value 0x01fea6ce
sw x3, 0(x2) # store 0x01fea6ce in memory
flh f28, 0(x2) # load 0x01fea6ce from memory into f28
fcvt.s.h f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fcvt.s.h f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fcvt.s.h f6, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fcvt.s.h f8, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fcvt.s.h f7, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fcvt.s.h f18, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fcvt.s.h f7, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fcvt.s.h f10, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fcvt.s.h f28, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fcvt.s.h f2, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fcvt.s.h f15, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fcvt.s.h f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fcvt.s.h f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fcvt.s.h f15, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fcvt.s.h f21, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fcvt.s.h f11, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fcvt.s.h f14, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fcvt.s.h f10, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fcvt.s.h f5, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fcvt.s.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fcvt.s.h f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fcvt.s.h f31, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fcvt.s.h f19, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fcvt.s.h f30, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fcvt.s.h f9, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fcvt.s.h f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
fcvt.s.h f19, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fcvt.s.h f19, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fcvt.s.h f17, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x488ea36a # load x3 with value 0x488ea36a
sw x3, 0(x2) # store 0x488ea36a in memory
flh f0, 0(x2) # load 0x488ea36a from memory into f0
fcvt.s.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xccf144b1 # load x3 with value 0xccf144b1
sw x3, 0(x2) # store 0xccf144b1 in memory
flh f1, 0(x2) # load 0xccf144b1 from memory into f1
fcvt.s.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a51714c # load x3 with value 0x7a51714c
sw x3, 0(x2) # store 0x7a51714c in memory
flh f2, 0(x2) # load 0x7a51714c from memory into f2
fcvt.s.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35a04dac # load x3 with value 0x35a04dac
sw x3, 0(x2) # store 0x35a04dac in memory
flh f3, 0(x2) # load 0x35a04dac from memory into f3
fcvt.s.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52b39c5f # load x3 with value 0x52b39c5f
sw x3, 0(x2) # store 0x52b39c5f in memory
flh f4, 0(x2) # load 0x52b39c5f from memory into f4
fcvt.s.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86206bb9 # load x3 with value 0x86206bb9
sw x3, 0(x2) # store 0x86206bb9 in memory
flh f5, 0(x2) # load 0x86206bb9 from memory into f5
fcvt.s.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2369d24a # load x3 with value 0x2369d24a
sw x3, 0(x2) # store 0x2369d24a in memory
flh f6, 0(x2) # load 0x2369d24a from memory into f6
fcvt.s.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbb056012 # load x3 with value 0xbb056012
sw x3, 0(x2) # store 0xbb056012 in memory
flh f7, 0(x2) # load 0xbb056012 from memory into f7
fcvt.s.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbbfec9e2 # load x3 with value 0xbbfec9e2
sw x3, 0(x2) # store 0xbbfec9e2 in memory
flh f8, 0(x2) # load 0xbbfec9e2 from memory into f8
fcvt.s.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x747865fd # load x3 with value 0x747865fd
sw x3, 0(x2) # store 0x747865fd in memory
flh f9, 0(x2) # load 0x747865fd from memory into f9
fcvt.s.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb13d4bf8 # load x3 with value 0xb13d4bf8
sw x3, 0(x2) # store 0xb13d4bf8 in memory
flh f10, 0(x2) # load 0xb13d4bf8 from memory into f10
fcvt.s.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf3c75d5e # load x3 with value 0xf3c75d5e
sw x3, 0(x2) # store 0xf3c75d5e in memory
flh f11, 0(x2) # load 0xf3c75d5e from memory into f11
fcvt.s.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8abdf35e # load x3 with value 0x8abdf35e
sw x3, 0(x2) # store 0x8abdf35e in memory
flh f12, 0(x2) # load 0x8abdf35e from memory into f12
fcvt.s.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b8031ce # load x3 with value 0x1b8031ce
sw x3, 0(x2) # store 0x1b8031ce in memory
flh f13, 0(x2) # load 0x1b8031ce from memory into f13
fcvt.s.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9aed91a8 # load x3 with value 0x9aed91a8
sw x3, 0(x2) # store 0x9aed91a8 in memory
flh f14, 0(x2) # load 0x9aed91a8 from memory into f14
fcvt.s.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe779c0e0 # load x3 with value 0xe779c0e0
sw x3, 0(x2) # store 0xe779c0e0 in memory
flh f15, 0(x2) # load 0xe779c0e0 from memory into f15
fcvt.s.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c79e563 # load x3 with value 0x1c79e563
sw x3, 0(x2) # store 0x1c79e563 in memory
flh f16, 0(x2) # load 0x1c79e563 from memory into f16
fcvt.s.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3d58e896 # load x3 with value 0x3d58e896
sw x3, 0(x2) # store 0x3d58e896 in memory
flh f17, 0(x2) # load 0x3d58e896 from memory into f17
fcvt.s.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8fcf4ae # load x3 with value 0xa8fcf4ae
sw x3, 0(x2) # store 0xa8fcf4ae in memory
flh f18, 0(x2) # load 0xa8fcf4ae from memory into f18
fcvt.s.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef5d7f61 # load x3 with value 0xef5d7f61
sw x3, 0(x2) # store 0xef5d7f61 in memory
flh f19, 0(x2) # load 0xef5d7f61 from memory into f19
fcvt.s.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xede83743 # load x3 with value 0xede83743
sw x3, 0(x2) # store 0xede83743 in memory
flh f20, 0(x2) # load 0xede83743 from memory into f20
fcvt.s.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc8995f7e # load x3 with value 0xc8995f7e
sw x3, 0(x2) # store 0xc8995f7e in memory
flh f21, 0(x2) # load 0xc8995f7e from memory into f21
fcvt.s.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x03a196ae # load x3 with value 0x03a196ae
sw x3, 0(x2) # store 0x03a196ae in memory
flh f22, 0(x2) # load 0x03a196ae from memory into f22
fcvt.s.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0c2a509a # load x3 with value 0x0c2a509a
sw x3, 0(x2) # store 0x0c2a509a in memory
flh f23, 0(x2) # load 0x0c2a509a from memory into f23
fcvt.s.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9efb454d # load x3 with value 0x9efb454d
sw x3, 0(x2) # store 0x9efb454d in memory
flh f24, 0(x2) # load 0x9efb454d from memory into f24
fcvt.s.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e5a23ce # load x3 with value 0x2e5a23ce
sw x3, 0(x2) # store 0x2e5a23ce in memory
flh f25, 0(x2) # load 0x2e5a23ce from memory into f25
fcvt.s.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b97c86a # load x3 with value 0x3b97c86a
sw x3, 0(x2) # store 0x3b97c86a in memory
flh f26, 0(x2) # load 0x3b97c86a from memory into f26
fcvt.s.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8b2cab2a # load x3 with value 0x8b2cab2a
sw x3, 0(x2) # store 0x8b2cab2a in memory
flh f27, 0(x2) # load 0x8b2cab2a from memory into f27
fcvt.s.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5b340f0 # load x3 with value 0xc5b340f0
sw x3, 0(x2) # store 0xc5b340f0 in memory
flh f28, 0(x2) # load 0xc5b340f0 from memory into f28
fcvt.s.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7da912c3 # load x3 with value 0x7da912c3
sw x3, 0(x2) # store 0x7da912c3 in memory
flh f29, 0(x2) # load 0x7da912c3 from memory into f29
fcvt.s.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x815198ec # load x3 with value 0x815198ec
sw x3, 0(x2) # store 0x815198ec in memory
flh f30, 0(x2) # load 0x815198ec from memory into f30
fcvt.s.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4304aa90 # load x3 with value 0x4304aa90
sw x3, 0(x2) # store 0x4304aa90 in memory
flh f31, 0(x2) # load 0x4304aa90 from memory into f31
fcvt.s.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fcvt.s.h f26, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f10, 0(x2) # load 0xfffe8000 from memory into f10
fcvt.s.h f24, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f29, 0(x2) # load 0x7fff3c00 from memory into f29
fcvt.s.h f25, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f23, 0(x2) # load 0xbeefbc00 from memory into f23
fcvt.s.h f27, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f27, 0(x2) # load 0xfeff0400 from memory into f27
fcvt.s.h f3, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f28, 0(x2) # load 0x0fff8400 from memory into f28
fcvt.s.h f7, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f6, 0(x2) # load 0xefff7bff from memory into f6
fcvt.s.h f14, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f8, 0(x2) # load 0xc0defbff from memory into f8
fcvt.s.h f17, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f17, 0(x2) # load 0x4f1a7c00 from memory into f17
fcvt.s.h f8, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f12, 0(x2) # load 0x0ffffc00 from memory into f12
fcvt.s.h f17, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f13, 0(x2) # load 0xffef7e00 from memory into f13
fcvt.s.h f29, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f23, 0(x2) # load 0xfeef7fff from memory into f23
fcvt.s.h f18, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f14, 0(x2) # load 0xa1b27c01 from memory into f14
fcvt.s.h f28, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f21, 0(x2) # load 0x4fd77dff from memory into f21
fcvt.s.h f8, f21 # perform operation second time to make sure flags don't change

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
