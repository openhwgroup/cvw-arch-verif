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

    

// ******************
// Tests from: WALLY-COV-fcvt.s.h.S
// ******************


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

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fmv.x.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0xca00ceb2 # load x3 with value 0xca00ceb2
sw x3, 0(x2) # store 0xca00ceb2 in memory
flh f21, 0(x2) # load 0xca00ceb2 from memory into f21
fmv.x.h x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x95dead27 # load x3 with value 0x95dead27
sw x3, 0(x2) # store 0x95dead27 in memory
flh f21, 0(x2) # load 0x95dead27 from memory into f21
fmv.x.h x1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x2bcee733 # load x3 with value 0x2bcee733
sw x3, 0(x2) # store 0x2bcee733 in memory
flh f3, 0(x2) # load 0x2bcee733 from memory into f3
fmv.x.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xe4413bfe # load x3 with value 0xe4413bfe
sw x3, 0(x2) # store 0xe4413bfe in memory
flh f30, 0(x2) # load 0xe4413bfe from memory into f30
fmv.x.h x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5ccb021a # load x3 with value 0x5ccb021a
sw x3, 0(x2) # store 0x5ccb021a in memory
flh f1, 0(x2) # load 0x5ccb021a from memory into f1
fmv.x.h x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdfc93acc # load x3 with value 0xdfc93acc
sw x3, 0(x2) # store 0xdfc93acc in memory
flh f30, 0(x2) # load 0xdfc93acc from memory into f30
fmv.x.h x5, f30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x41c6bd1a # load x3 with value 0x41c6bd1a
sw x3, 0(x2) # store 0x41c6bd1a in memory
flh f3, 0(x2) # load 0x41c6bd1a from memory into f3
fmv.x.h x6, f3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc3edd186 # load x3 with value 0xc3edd186
sw x3, 0(x2) # store 0xc3edd186 in memory
flh f6, 0(x2) # load 0xc3edd186 from memory into f6
fmv.x.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x86602103 # load x3 with value 0x86602103
sw x3, 0(x2) # store 0x86602103 in memory
flh f7, 0(x2) # load 0x86602103 from memory into f7
fmv.x.h x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xeec2f25b # load x3 with value 0xeec2f25b
sw x3, 0(x2) # store 0xeec2f25b in memory
flh f7, 0(x2) # load 0xeec2f25b from memory into f7
fmv.x.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x4f5e86d9 # load x3 with value 0x4f5e86d9
sw x3, 0(x2) # store 0x4f5e86d9 in memory
flh f6, 0(x2) # load 0x4f5e86d9 from memory into f6
fmv.x.h x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x3452d83c # load x3 with value 0x3452d83c
sw x3, 0(x2) # store 0x3452d83c in memory
flh f25, 0(x2) # load 0x3452d83c from memory into f25
fmv.x.h x11, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xdbeba487 # load x3 with value 0xdbeba487
sw x3, 0(x2) # store 0xdbeba487 in memory
flh f30, 0(x2) # load 0xdbeba487 from memory into f30
fmv.x.h x12, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x8b79b679 # load x3 with value 0x8b79b679
sw x3, 0(x2) # store 0x8b79b679 in memory
flh f15, 0(x2) # load 0x8b79b679 from memory into f15
fmv.x.h x13, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x1cd45c9e # load x3 with value 0x1cd45c9e
sw x3, 0(x2) # store 0x1cd45c9e in memory
flh f21, 0(x2) # load 0x1cd45c9e from memory into f21
fmv.x.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x6d96cf2c # load x3 with value 0x6d96cf2c
sw x3, 0(x2) # store 0x6d96cf2c in memory
flh f13, 0(x2) # load 0x6d96cf2c from memory into f13
fmv.x.h x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xf8e1a480 # load x3 with value 0xf8e1a480
sw x3, 0(x2) # store 0xf8e1a480 in memory
flh f11, 0(x2) # load 0xf8e1a480 from memory into f11
fmv.x.h x16, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xf35dee5f # load x3 with value 0xf35dee5f
sw x3, 0(x2) # store 0xf35dee5f in memory
flh f22, 0(x2) # load 0xf35dee5f from memory into f22
fmv.x.h x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x03ce7452 # load x3 with value 0x03ce7452
sw x3, 0(x2) # store 0x03ce7452 in memory
flh f11, 0(x2) # load 0x03ce7452 from memory into f11
fmv.x.h x18, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x0cc65592 # load x3 with value 0x0cc65592
sw x3, 0(x2) # store 0x0cc65592 in memory
flh f19, 0(x2) # load 0x0cc65592 from memory into f19
fmv.x.h x19, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x8b542ce6 # load x3 with value 0x8b542ce6
sw x3, 0(x2) # store 0x8b542ce6 in memory
flh f5, 0(x2) # load 0x8b542ce6 from memory into f5
fmv.x.h x20, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xa0ecd276 # load x3 with value 0xa0ecd276
sw x3, 0(x2) # store 0xa0ecd276 in memory
flh f24, 0(x2) # load 0xa0ecd276 from memory into f24
fmv.x.h x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xb82c15ae # load x3 with value 0xb82c15ae
sw x3, 0(x2) # store 0xb82c15ae in memory
flh f5, 0(x2) # load 0xb82c15ae from memory into f5
fmv.x.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x35f3e40a # load x3 with value 0x35f3e40a
sw x3, 0(x2) # store 0x35f3e40a in memory
flh f19, 0(x2) # load 0x35f3e40a from memory into f19
fmv.x.h x23, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x8d6db883 # load x3 with value 0x8d6db883
sw x3, 0(x2) # store 0x8d6db883 in memory
flh f12, 0(x2) # load 0x8d6db883 from memory into f12
fmv.x.h x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x8696aa50 # load x3 with value 0x8696aa50
sw x3, 0(x2) # store 0x8696aa50 in memory
flh f28, 0(x2) # load 0x8696aa50 from memory into f28
fmv.x.h x25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xfffd71b9 # load x3 with value 0xfffd71b9
sw x3, 0(x2) # store 0xfffd71b9 in memory
flh f31, 0(x2) # load 0xfffd71b9 from memory into f31
fmv.x.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xdadc8c2f # load x3 with value 0xdadc8c2f
sw x3, 0(x2) # store 0xdadc8c2f in memory
flh f12, 0(x2) # load 0xdadc8c2f from memory into f12
fmv.x.h x27, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x594bfbe5 # load x3 with value 0x594bfbe5
sw x3, 0(x2) # store 0x594bfbe5 in memory
flh f28, 0(x2) # load 0x594bfbe5 from memory into f28
fmv.x.h x28, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x659c3449 # load x3 with value 0x659c3449
sw x3, 0(x2) # store 0x659c3449 in memory
flh f25, 0(x2) # load 0x659c3449 from memory into f25
fmv.x.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x00b15417 # load x3 with value 0x00b15417
sw x3, 0(x2) # store 0x00b15417 in memory
flh f28, 0(x2) # load 0x00b15417 from memory into f28
fmv.x.h x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x5dacd603 # load x3 with value 0x5dacd603
sw x3, 0(x2) # store 0x5dacd603 in memory
flh f7, 0(x2) # load 0x5dacd603 from memory into f7
fmv.x.h x31, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x22, x26 # perform first operation
fmv.x.h x9, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x20, x12 # perform first operation
fmv.x.h x19, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x29, x12 # perform first operation
fmv.x.h x17, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f24, f27, f6 # perform first operation
fmv.x.h x27, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x16, x9 # perform first operation
fmv.x.h x9, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x11, x21 # perform first operation
fmv.x.h x30, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x28, x1 # perform first operation
fmv.x.h x14, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x23, x11 # perform first operation
fmv.x.h x17, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x10, x20 # perform first operation
fmv.x.h x3, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x11, x22 # perform first operation
fmv.x.h x3, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x26, x1 # perform first operation
fmv.x.h x9, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x29, x17 # perform first operation
fmv.x.h x21, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x12, x30 # perform first operation
fmv.x.h x12, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x22, x21 # perform first operation
fmv.x.h x21, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x27, x20 # perform first operation
fmv.x.h x9, f31 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x7040cb32 # load x3 with value 0x7040cb32
sw x3, 0(x2) # store 0x7040cb32 in memory
flh f0, 0(x2) # load 0x7040cb32 from memory into f0
fmv.x.h x1, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xae2e437d # load x3 with value 0xae2e437d
sw x3, 0(x2) # store 0xae2e437d in memory
flh f1, 0(x2) # load 0xae2e437d from memory into f1
fmv.x.h x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xfa5d9efc # load x3 with value 0xfa5d9efc
sw x3, 0(x2) # store 0xfa5d9efc in memory
flh f2, 0(x2) # load 0xfa5d9efc from memory into f2
fmv.x.h x23, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xe998067c # load x3 with value 0xe998067c
sw x3, 0(x2) # store 0xe998067c in memory
flh f3, 0(x2) # load 0xe998067c from memory into f3
fmv.x.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf1b04ed7 # load x3 with value 0xf1b04ed7
sw x3, 0(x2) # store 0xf1b04ed7 in memory
flh f4, 0(x2) # load 0xf1b04ed7 from memory into f4
fmv.x.h x25, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfe37c080 # load x3 with value 0xfe37c080
sw x3, 0(x2) # store 0xfe37c080 in memory
flh f5, 0(x2) # load 0xfe37c080 from memory into f5
fmv.x.h x22, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x42b7a0e1 # load x3 with value 0x42b7a0e1
sw x3, 0(x2) # store 0x42b7a0e1 in memory
flh f6, 0(x2) # load 0x42b7a0e1 from memory into f6
fmv.x.h x12, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3b0640e3 # load x3 with value 0x3b0640e3
sw x3, 0(x2) # store 0x3b0640e3 in memory
flh f7, 0(x2) # load 0x3b0640e3 from memory into f7
fmv.x.h x13, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x89ae7a62 # load x3 with value 0x89ae7a62
sw x3, 0(x2) # store 0x89ae7a62 in memory
flh f8, 0(x2) # load 0x89ae7a62 from memory into f8
fmv.x.h x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x9a0d1269 # load x3 with value 0x9a0d1269
sw x3, 0(x2) # store 0x9a0d1269 in memory
flh f9, 0(x2) # load 0x9a0d1269 from memory into f9
fmv.x.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x9ebd54ee # load x3 with value 0x9ebd54ee
sw x3, 0(x2) # store 0x9ebd54ee in memory
flh f10, 0(x2) # load 0x9ebd54ee from memory into f10
fmv.x.h x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xb6e8f63d # load x3 with value 0xb6e8f63d
sw x3, 0(x2) # store 0xb6e8f63d in memory
flh f11, 0(x2) # load 0xb6e8f63d from memory into f11
fmv.x.h x10, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xdec627a5 # load x3 with value 0xdec627a5
sw x3, 0(x2) # store 0xdec627a5 in memory
flh f12, 0(x2) # load 0xdec627a5 from memory into f12
fmv.x.h x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xdeaa6561 # load x3 with value 0xdeaa6561
sw x3, 0(x2) # store 0xdeaa6561 in memory
flh f13, 0(x2) # load 0xdeaa6561 from memory into f13
fmv.x.h x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xf8ebae1d # load x3 with value 0xf8ebae1d
sw x3, 0(x2) # store 0xf8ebae1d in memory
flh f14, 0(x2) # load 0xf8ebae1d from memory into f14
fmv.x.h x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x303c9be9 # load x3 with value 0x303c9be9
sw x3, 0(x2) # store 0x303c9be9 in memory
flh f15, 0(x2) # load 0x303c9be9 from memory into f15
fmv.x.h x24, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x8ffb8ec8 # load x3 with value 0x8ffb8ec8
sw x3, 0(x2) # store 0x8ffb8ec8 in memory
flh f16, 0(x2) # load 0x8ffb8ec8 from memory into f16
fmv.x.h x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x24483964 # load x3 with value 0x24483964
sw x3, 0(x2) # store 0x24483964 in memory
flh f17, 0(x2) # load 0x24483964 from memory into f17
fmv.x.h x6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x81035793 # load x3 with value 0x81035793
sw x3, 0(x2) # store 0x81035793 in memory
flh f18, 0(x2) # load 0x81035793 from memory into f18
fmv.x.h x28, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3e02f7a0 # load x3 with value 0x3e02f7a0
sw x3, 0(x2) # store 0x3e02f7a0 in memory
flh f19, 0(x2) # load 0x3e02f7a0 from memory into f19
fmv.x.h x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x454cac6b # load x3 with value 0x454cac6b
sw x3, 0(x2) # store 0x454cac6b in memory
flh f20, 0(x2) # load 0x454cac6b from memory into f20
fmv.x.h x8, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xb2be72c5 # load x3 with value 0xb2be72c5
sw x3, 0(x2) # store 0xb2be72c5 in memory
flh f21, 0(x2) # load 0xb2be72c5 from memory into f21
fmv.x.h x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x9b6d8cda # load x3 with value 0x9b6d8cda
sw x3, 0(x2) # store 0x9b6d8cda in memory
flh f22, 0(x2) # load 0x9b6d8cda from memory into f22
fmv.x.h x13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x70f69492 # load x3 with value 0x70f69492
sw x3, 0(x2) # store 0x70f69492 in memory
flh f23, 0(x2) # load 0x70f69492 from memory into f23
fmv.x.h x19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x55432e08 # load x3 with value 0x55432e08
sw x3, 0(x2) # store 0x55432e08 in memory
flh f24, 0(x2) # load 0x55432e08 from memory into f24
fmv.x.h x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x74eb96e4 # load x3 with value 0x74eb96e4
sw x3, 0(x2) # store 0x74eb96e4 in memory
flh f25, 0(x2) # load 0x74eb96e4 from memory into f25
fmv.x.h x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x008ae877 # load x3 with value 0x008ae877
sw x3, 0(x2) # store 0x008ae877 in memory
flh f26, 0(x2) # load 0x008ae877 from memory into f26
fmv.x.h x18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xedb0ff26 # load x3 with value 0xedb0ff26
sw x3, 0(x2) # store 0xedb0ff26 in memory
flh f27, 0(x2) # load 0xedb0ff26 from memory into f27
fmv.x.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x459db56e # load x3 with value 0x459db56e
sw x3, 0(x2) # store 0x459db56e in memory
flh f28, 0(x2) # load 0x459db56e from memory into f28
fmv.x.h x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x837aff3d # load x3 with value 0x837aff3d
sw x3, 0(x2) # store 0x837aff3d in memory
flh f29, 0(x2) # load 0x837aff3d from memory into f29
fmv.x.h x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xb659093f # load x3 with value 0xb659093f
sw x3, 0(x2) # store 0xb659093f in memory
flh f30, 0(x2) # load 0xb659093f from memory into f30
fmv.x.h x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x1fc1c7f1 # load x3 with value 0x1fc1c7f1
sw x3, 0(x2) # store 0x1fc1c7f1 in memory
flh f31, 0(x2) # load 0x1fc1c7f1 from memory into f31
fmv.x.h x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmv.x.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmv.x.h x25, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fmv.x.h x11, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmv.x.h x27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmv.x.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmv.x.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fmv.x.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmv.x.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmv.x.h x22, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmv.x.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmv.x.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmv.x.h x18, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmv.x.h x29, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmv.x.h x9, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmv.x.h x25, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmv.x.h x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fmv.x.h x29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmv.x.h x19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmv.x.h x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmv.x.h x5, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmv.x.h x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmv.x.h x14, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fmv.x.h x1, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fmv.x.h x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmv.x.h x2, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmv.x.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fmv.x.h x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmv.x.h x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 364)

# Testcase Improper NaNBoxed argument test (Value 0x0 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmv.x.h x18, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f21, 0(x2) # load 0xfffe8000 from memory into f21
fmv.x.h x28, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 372)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f2, 0(x2) # load 0x7fff3c00 from memory into f2
fmv.x.h x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f11, 0(x2) # load 0xbeefbc00 from memory into f11
fmv.x.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 380)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f24, 0(x2) # load 0xfeff0400 from memory into f24
fmv.x.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f10, 0(x2) # load 0x0fff8400 from memory into f10
fmv.x.h x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 388)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f15, 0(x2) # load 0xefff7bff from memory into f15
fmv.x.h x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f18, 0(x2) # load 0xc0defbff from memory into f18
fmv.x.h x1, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 396)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f10, 0(x2) # load 0x4f1a7c00 from memory into f10
fmv.x.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f1, 0(x2) # load 0x0ffffc00 from memory into f1
fmv.x.h x7, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f6, 0(x2) # load 0xffef7e00 from memory into f6
fmv.x.h x18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f19, 0(x2) # load 0xfeef7fff from memory into f19
fmv.x.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 412)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f19, 0(x2) # load 0xa1b27c01 from memory into f19
fmv.x.h x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f20, 0(x2) # load 0x4fd77dff from memory into f20
fmv.x.h x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 420)

#.EQU SIGSIZE,424


// ******************
// Tests from: WALLY-COV-fmv.h.x.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x0)
fsflagsi 0b00000 # clear all fflags
li x0, 0xe7277035 # load immediate value into integer register
fmv.h.x f1, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x07998c3c # load immediate value into integer register
fmv.h.x f5, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x3e5f9ffb # load immediate value into integer register
fmv.h.x f20, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x6ae04e3a # load immediate value into integer register
fmv.h.x f29, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x3eb12db8 # load immediate value into integer register
fmv.h.x f29, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x20314453 # load immediate value into integer register
fmv.h.x f7, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xe472d485 # load immediate value into integer register
fmv.h.x f23, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xeba865e2 # load immediate value into integer register
fmv.h.x f20, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xfeae54c4 # load immediate value into integer register
fmv.h.x f2, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x122085b4 # load immediate value into integer register
fmv.h.x f13, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x239d4806 # load immediate value into integer register
fmv.h.x f16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xa233bcda # load immediate value into integer register
fmv.h.x f30, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x90fab891 # load immediate value into integer register
fmv.h.x f20, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xe2655675 # load immediate value into integer register
fmv.h.x f23, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0xb84667a8 # load immediate value into integer register
fmv.h.x f20, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x1f37ca47 # load immediate value into integer register
fmv.h.x f30, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0x207a6858 # load immediate value into integer register
fmv.h.x f10, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x4f126800 # load immediate value into integer register
fmv.h.x f31, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x55d34602 # load immediate value into integer register
fmv.h.x f27, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x51eb7907 # load immediate value into integer register
fmv.h.x f28, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x310b2650 # load immediate value into integer register
fmv.h.x f3, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x75c6b402 # load immediate value into integer register
fmv.h.x f2, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0xf92ea4bc # load immediate value into integer register
fmv.h.x f13, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x64569278 # load immediate value into integer register
fmv.h.x f21, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xad40e4f7 # load immediate value into integer register
fmv.h.x f15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0xa9a9e6fe # load immediate value into integer register
fmv.h.x f14, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x6dd5e5cd # load immediate value into integer register
fmv.h.x f28, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xe91a757d # load immediate value into integer register
fmv.h.x f10, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xefad6a9c # load immediate value into integer register
fmv.h.x f20, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x1f2332a4 # load immediate value into integer register
fmv.h.x f5, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xf758be43 # load immediate value into integer register
fmv.h.x f7, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x5e218e9b # load immediate value into integer register
fmv.h.x f25, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x23, 0x00000000 # load immediate value into integer register
fmv.h.x f11, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x15, 0x00000001 # load immediate value into integer register
fmv.h.x f9, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0x00000002 # load immediate value into integer register
fmv.h.x f29, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
li x31, 0x80000000 # load immediate value into integer register
fmv.h.x f12, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
li x2, 0x80000001 # load immediate value into integer register
fmv.h.x f23, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
li x28, 0x7fffffff # load immediate value into integer register
fmv.h.x f12, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
fsflagsi 0b00000 # clear all fflags
li x30, 0x7ffffffe # load immediate value into integer register
fmv.h.x f1, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x11, 0xffffffff # load immediate value into integer register
fmv.h.x f21, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x11, 0xfffffffe # load immediate value into integer register
fmv.h.x f13, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
fsflagsi 0b00000 # clear all fflags
li x25, 0x5bbc8872 # load immediate value into integer register
fmv.h.x f14, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x25, 0xaaaaaaaa # load immediate value into integer register
fmv.h.x f18, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
fsflagsi 0b00000 # clear all fflags
li x23, 0x55555555 # load immediate value into integer register
fmv.h.x f6, x23 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x24, x16 # perform first operation
fmv.h.x f17, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x15, x30 # perform first operation
fmv.h.x f6, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x27 # perform first operation
fmv.h.x f17, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f23, f31 # perform first operation
fmv.h.x f28, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f24, f10 # perform first operation
fmv.h.x f21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f26, f15 # perform first operation
fmv.h.x f16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f29, f28 # perform first operation
fmv.h.x f29, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f16, f23 # perform first operation
fmv.h.x f23, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f31, f21 # perform first operation
fmv.h.x f30, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x27, x21 # perform first operation
fmv.h.x f22, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x22, x18 # perform first operation
fmv.h.x f12, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x26, x12 # perform first operation
fmv.h.x f30, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x24, x18 # perform first operation
fmv.h.x f26, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x9, x10 # perform first operation
fmv.h.x f9, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x15, x14 # perform first operation
fmv.h.x f15, x31 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x18, 0xa66ee81e # load immediate value into integer register
fmv.h.x f0, x18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x7, 0x445c6c64 # load immediate value into integer register
fmv.h.x f1, x7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x16, 0x61ee5731 # load immediate value into integer register
fmv.h.x f2, x16 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x25, 0x72f38350 # load immediate value into integer register
fmv.h.x f3, x25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x24, 0xd00f70af # load immediate value into integer register
fmv.h.x f4, x24 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0xad105a80 # load immediate value into integer register
fmv.h.x f5, x16 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0x70a5ca3a # load immediate value into integer register
fmv.h.x f6, x16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x28, 0x70c40e89 # load immediate value into integer register
fmv.h.x f7, x28 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x16, 0x79fee92b # load immediate value into integer register
fmv.h.x f8, x16 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x26, 0x8fe5d417 # load immediate value into integer register
fmv.h.x f9, x26 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x11, 0x733d5067 # load immediate value into integer register
fmv.h.x f10, x11 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x13, 0x9750b650 # load immediate value into integer register
fmv.h.x f11, x13 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x6, 0xd71cf46b # load immediate value into integer register
fmv.h.x f12, x6 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x31, 0x54affc98 # load immediate value into integer register
fmv.h.x f13, x31 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x18, 0x1f5ddbcf # load immediate value into integer register
fmv.h.x f14, x18 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x26, 0xca7c66fb # load immediate value into integer register
fmv.h.x f15, x26 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x23, 0x6144a64c # load immediate value into integer register
fmv.h.x f16, x23 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x10, 0x8c6e235c # load immediate value into integer register
fmv.h.x f17, x10 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x23, 0x9dc671c7 # load immediate value into integer register
fmv.h.x f18, x23 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x20, 0x81f47c30 # load immediate value into integer register
fmv.h.x f19, x20 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x14, 0x4c72bc59 # load immediate value into integer register
fmv.h.x f20, x14 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x30, 0x8d5de388 # load immediate value into integer register
fmv.h.x f21, x30 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x24, 0x321ea368 # load immediate value into integer register
fmv.h.x f22, x24 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x18, 0x390bdeb9 # load immediate value into integer register
fmv.h.x f23, x18 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x27, 0x58b4b87c # load immediate value into integer register
fmv.h.x f24, x27 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x19, 0x4e60076e # load immediate value into integer register
fmv.h.x f25, x19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x12, 0x73b69705 # load immediate value into integer register
fmv.h.x f26, x12 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x25, 0xf6ea9464 # load immediate value into integer register
fmv.h.x f27, x25 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x26, 0xd6805cc0 # load immediate value into integer register
fmv.h.x f28, x26 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x18, 0x66286eab # load immediate value into integer register
fmv.h.x f29, x18 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x3, 0x949a785e # load immediate value into integer register
fmv.h.x f30, x3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x15, 0xa6240794 # load immediate value into integer register
fmv.h.x f31, x15 # perform operation

# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x11, 0x6895d780 # load immediate value into integer register
fmv.h.x f8, x11 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.s.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x20, x3 # perform first operation
fcvt.h.s f29, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x6, x18 # perform first operation
fcvt.h.s f20, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x2, x12 # perform first operation
fcvt.h.s f26, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f7, f24, f18 # perform first operation
fcvt.h.s f20, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x24, x7 # perform first operation
fcvt.h.s f24, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x8, x18 # perform first operation
fcvt.h.s f18, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f26, f7 # perform first operation
fcvt.h.s f8, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f23, f2, f7 # perform first operation
fcvt.h.s f23, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f9, f26 # perform first operation
fcvt.h.s f24, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f27, f31 # perform first operation
fcvt.h.s f27, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f13, f24, f15 # perform first operation
fcvt.h.s f15, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f23, f8 # perform first operation
fcvt.h.s f30, f17 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5532934 # load x3 with value 0xc5532934
sw x3, 0(x2) # store 0xc5532934 in memory
flw f0, 0(x2) # load 0xc5532934 from memory into f0
fcvt.h.s f9, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e6887e0 # load x3 with value 0x5e6887e0
sw x3, 0(x2) # store 0x5e6887e0 in memory
flw f1, 0(x2) # load 0x5e6887e0 from memory into f1
fcvt.h.s f12, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x37816f5a # load x3 with value 0x37816f5a
sw x3, 0(x2) # store 0x37816f5a in memory
flw f2, 0(x2) # load 0x37816f5a from memory into f2
fcvt.h.s f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefdff5b7 # load x3 with value 0xefdff5b7
sw x3, 0(x2) # store 0xefdff5b7 in memory
flw f3, 0(x2) # load 0xefdff5b7 from memory into f3
fcvt.h.s f9, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78e86bf5 # load x3 with value 0x78e86bf5
sw x3, 0(x2) # store 0x78e86bf5 in memory
flw f4, 0(x2) # load 0x78e86bf5 from memory into f4
fcvt.h.s f27, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xafbf64ae # load x3 with value 0xafbf64ae
sw x3, 0(x2) # store 0xafbf64ae in memory
flw f5, 0(x2) # load 0xafbf64ae from memory into f5
fcvt.h.s f21, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xea0398c0 # load x3 with value 0xea0398c0
sw x3, 0(x2) # store 0xea0398c0 in memory
flw f6, 0(x2) # load 0xea0398c0 from memory into f6
fcvt.h.s f31, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c6771ee # load x3 with value 0x1c6771ee
sw x3, 0(x2) # store 0x1c6771ee in memory
flw f7, 0(x2) # load 0x1c6771ee from memory into f7
fcvt.h.s f10, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb73d83ba # load x3 with value 0xb73d83ba
sw x3, 0(x2) # store 0xb73d83ba in memory
flw f8, 0(x2) # load 0xb73d83ba from memory into f8
fcvt.h.s f14, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c7d21b7 # load x3 with value 0x7c7d21b7
sw x3, 0(x2) # store 0x7c7d21b7 in memory
flw f9, 0(x2) # load 0x7c7d21b7 from memory into f9
fcvt.h.s f11, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc4639dad # load x3 with value 0xc4639dad
sw x3, 0(x2) # store 0xc4639dad in memory
flw f10, 0(x2) # load 0xc4639dad from memory into f10
fcvt.h.s f24, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfddc8378 # load x3 with value 0xfddc8378
sw x3, 0(x2) # store 0xfddc8378 in memory
flw f11, 0(x2) # load 0xfddc8378 from memory into f11
fcvt.h.s f1, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14465770 # load x3 with value 0x14465770
sw x3, 0(x2) # store 0x14465770 in memory
flw f12, 0(x2) # load 0x14465770 from memory into f12
fcvt.h.s f29, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf7a2130 # load x3 with value 0xaf7a2130
sw x3, 0(x2) # store 0xaf7a2130 in memory
flw f13, 0(x2) # load 0xaf7a2130 from memory into f13
fcvt.h.s f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbcad04d3 # load x3 with value 0xbcad04d3
sw x3, 0(x2) # store 0xbcad04d3 in memory
flw f14, 0(x2) # load 0xbcad04d3 from memory into f14
fcvt.h.s f26, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1564153b # load x3 with value 0x1564153b
sw x3, 0(x2) # store 0x1564153b in memory
flw f15, 0(x2) # load 0x1564153b from memory into f15
fcvt.h.s f8, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcdc74fa9 # load x3 with value 0xcdc74fa9
sw x3, 0(x2) # store 0xcdc74fa9 in memory
flw f16, 0(x2) # load 0xcdc74fa9 from memory into f16
fcvt.h.s f18, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a0f4b58 # load x3 with value 0x1a0f4b58
sw x3, 0(x2) # store 0x1a0f4b58 in memory
flw f17, 0(x2) # load 0x1a0f4b58 from memory into f17
fcvt.h.s f2, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc77d9781 # load x3 with value 0xc77d9781
sw x3, 0(x2) # store 0xc77d9781 in memory
flw f18, 0(x2) # load 0xc77d9781 from memory into f18
fcvt.h.s f9, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f5ee2e1 # load x3 with value 0x8f5ee2e1
sw x3, 0(x2) # store 0x8f5ee2e1 in memory
flw f19, 0(x2) # load 0x8f5ee2e1 from memory into f19
fcvt.h.s f16, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e451cd1 # load x3 with value 0x1e451cd1
sw x3, 0(x2) # store 0x1e451cd1 in memory
flw f20, 0(x2) # load 0x1e451cd1 from memory into f20
fcvt.h.s f10, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0d3764e7 # load x3 with value 0x0d3764e7
sw x3, 0(x2) # store 0x0d3764e7 in memory
flw f21, 0(x2) # load 0x0d3764e7 from memory into f21
fcvt.h.s f14, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8285b63b # load x3 with value 0x8285b63b
sw x3, 0(x2) # store 0x8285b63b in memory
flw f22, 0(x2) # load 0x8285b63b from memory into f22
fcvt.h.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe990f49c # load x3 with value 0xe990f49c
sw x3, 0(x2) # store 0xe990f49c in memory
flw f23, 0(x2) # load 0xe990f49c from memory into f23
fcvt.h.s f31, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb47241ed # load x3 with value 0xb47241ed
sw x3, 0(x2) # store 0xb47241ed in memory
flw f24, 0(x2) # load 0xb47241ed from memory into f24
fcvt.h.s f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b0e807f # load x3 with value 0x7b0e807f
sw x3, 0(x2) # store 0x7b0e807f in memory
flw f25, 0(x2) # load 0x7b0e807f from memory into f25
fcvt.h.s f26, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e463e92 # load x3 with value 0x1e463e92
sw x3, 0(x2) # store 0x1e463e92 in memory
flw f26, 0(x2) # load 0x1e463e92 from memory into f26
fcvt.h.s f28, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc3faf5d # load x3 with value 0xfc3faf5d
sw x3, 0(x2) # store 0xfc3faf5d in memory
flw f27, 0(x2) # load 0xfc3faf5d from memory into f27
fcvt.h.s f19, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13969b0e # load x3 with value 0x13969b0e
sw x3, 0(x2) # store 0x13969b0e in memory
flw f28, 0(x2) # load 0x13969b0e from memory into f28
fcvt.h.s f6, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae0a2efc # load x3 with value 0xae0a2efc
sw x3, 0(x2) # store 0xae0a2efc in memory
flw f29, 0(x2) # load 0xae0a2efc from memory into f29
fcvt.h.s f22, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79748a1c # load x3 with value 0x79748a1c
sw x3, 0(x2) # store 0x79748a1c in memory
flw f30, 0(x2) # load 0x79748a1c from memory into f30
fcvt.h.s f11, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa32e81bb # load x3 with value 0xa32e81bb
sw x3, 0(x2) # store 0xa32e81bb in memory
flw f31, 0(x2) # load 0xa32e81bb from memory into f31
fcvt.h.s f15, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x142bdc4b # load x3 with value 0x142bdc4b
sw x3, 0(x2) # store 0x142bdc4b in memory
flw f23, 0(x2) # load 0x142bdc4b from memory into f23
fcvt.h.s f0, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92199fc7 # load x3 with value 0x92199fc7
sw x3, 0(x2) # store 0x92199fc7 in memory
flw f27, 0(x2) # load 0x92199fc7 from memory into f27
fcvt.h.s f1, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96ed986e # load x3 with value 0x96ed986e
sw x3, 0(x2) # store 0x96ed986e in memory
flw f25, 0(x2) # load 0x96ed986e from memory into f25
fcvt.h.s f2, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x020e838c # load x3 with value 0x020e838c
sw x3, 0(x2) # store 0x020e838c in memory
flw f9, 0(x2) # load 0x020e838c from memory into f9
fcvt.h.s f3, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ed166a7 # load x3 with value 0x0ed166a7
sw x3, 0(x2) # store 0x0ed166a7 in memory
flw f17, 0(x2) # load 0x0ed166a7 from memory into f17
fcvt.h.s f4, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbe428bc # load x3 with value 0xfbe428bc
sw x3, 0(x2) # store 0xfbe428bc in memory
flw f23, 0(x2) # load 0xfbe428bc from memory into f23
fcvt.h.s f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07be5d45 # load x3 with value 0x07be5d45
sw x3, 0(x2) # store 0x07be5d45 in memory
flw f28, 0(x2) # load 0x07be5d45 from memory into f28
fcvt.h.s f6, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0302bc9 # load x3 with value 0xe0302bc9
sw x3, 0(x2) # store 0xe0302bc9 in memory
flw f8, 0(x2) # load 0xe0302bc9 from memory into f8
fcvt.h.s f7, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4314d2a # load x3 with value 0xb4314d2a
sw x3, 0(x2) # store 0xb4314d2a in memory
flw f22, 0(x2) # load 0xb4314d2a from memory into f22
fcvt.h.s f8, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdcbfcddf # load x3 with value 0xdcbfcddf
sw x3, 0(x2) # store 0xdcbfcddf in memory
flw f9, 0(x2) # load 0xdcbfcddf from memory into f9
fcvt.h.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6b8e9e40 # load x3 with value 0x6b8e9e40
sw x3, 0(x2) # store 0x6b8e9e40 in memory
flw f13, 0(x2) # load 0x6b8e9e40 from memory into f13
fcvt.h.s f10, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd58c9e5 # load x3 with value 0xbd58c9e5
sw x3, 0(x2) # store 0xbd58c9e5 in memory
flw f19, 0(x2) # load 0xbd58c9e5 from memory into f19
fcvt.h.s f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e3e90ac # load x3 with value 0x9e3e90ac
sw x3, 0(x2) # store 0x9e3e90ac in memory
flw f11, 0(x2) # load 0x9e3e90ac from memory into f11
fcvt.h.s f12, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x583d0976 # load x3 with value 0x583d0976
sw x3, 0(x2) # store 0x583d0976 in memory
flw f9, 0(x2) # load 0x583d0976 from memory into f9
fcvt.h.s f13, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0811f64 # load x3 with value 0xb0811f64
sw x3, 0(x2) # store 0xb0811f64 in memory
flw f30, 0(x2) # load 0xb0811f64 from memory into f30
fcvt.h.s f14, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbe8551ed # load x3 with value 0xbe8551ed
sw x3, 0(x2) # store 0xbe8551ed in memory
flw f24, 0(x2) # load 0xbe8551ed from memory into f24
fcvt.h.s f15, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1ec6fc0 # load x3 with value 0xa1ec6fc0
sw x3, 0(x2) # store 0xa1ec6fc0 in memory
flw f3, 0(x2) # load 0xa1ec6fc0 from memory into f3
fcvt.h.s f16, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd99f77a4 # load x3 with value 0xd99f77a4
sw x3, 0(x2) # store 0xd99f77a4 in memory
flw f7, 0(x2) # load 0xd99f77a4 from memory into f7
fcvt.h.s f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x89ecc6ea # load x3 with value 0x89ecc6ea
sw x3, 0(x2) # store 0x89ecc6ea in memory
flw f28, 0(x2) # load 0x89ecc6ea from memory into f28
fcvt.h.s f18, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xca0c3e18 # load x3 with value 0xca0c3e18
sw x3, 0(x2) # store 0xca0c3e18 in memory
flw f3, 0(x2) # load 0xca0c3e18 from memory into f3
fcvt.h.s f19, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb109b8fa # load x3 with value 0xb109b8fa
sw x3, 0(x2) # store 0xb109b8fa in memory
flw f12, 0(x2) # load 0xb109b8fa from memory into f12
fcvt.h.s f20, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c97482a # load x3 with value 0x2c97482a
sw x3, 0(x2) # store 0x2c97482a in memory
flw f15, 0(x2) # load 0x2c97482a from memory into f15
fcvt.h.s f21, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a07f6e5 # load x3 with value 0x2a07f6e5
sw x3, 0(x2) # store 0x2a07f6e5 in memory
flw f10, 0(x2) # load 0x2a07f6e5 from memory into f10
fcvt.h.s f22, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7367789 # load x3 with value 0xf7367789
sw x3, 0(x2) # store 0xf7367789 in memory
flw f7, 0(x2) # load 0xf7367789 from memory into f7
fcvt.h.s f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65bc1bf9 # load x3 with value 0x65bc1bf9
sw x3, 0(x2) # store 0x65bc1bf9 in memory
flw f11, 0(x2) # load 0x65bc1bf9 from memory into f11
fcvt.h.s f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x966f05e9 # load x3 with value 0x966f05e9
sw x3, 0(x2) # store 0x966f05e9 in memory
flw f19, 0(x2) # load 0x966f05e9 from memory into f19
fcvt.h.s f25, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7a5656 # load x3 with value 0xff7a5656
sw x3, 0(x2) # store 0xff7a5656 in memory
flw f5, 0(x2) # load 0xff7a5656 from memory into f5
fcvt.h.s f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x411eb442 # load x3 with value 0x411eb442
sw x3, 0(x2) # store 0x411eb442 in memory
flw f13, 0(x2) # load 0x411eb442 from memory into f13
fcvt.h.s f27, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92002d42 # load x3 with value 0x92002d42
sw x3, 0(x2) # store 0x92002d42 in memory
flw f13, 0(x2) # load 0x92002d42 from memory into f13
fcvt.h.s f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa544c49c # load x3 with value 0xa544c49c
sw x3, 0(x2) # store 0xa544c49c in memory
flw f17, 0(x2) # load 0xa544c49c from memory into f17
fcvt.h.s f29, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xafddb8f1 # load x3 with value 0xafddb8f1
sw x3, 0(x2) # store 0xafddb8f1 in memory
flw f18, 0(x2) # load 0xafddb8f1 from memory into f18
fcvt.h.s f30, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f28cad7 # load x3 with value 0x4f28cad7
sw x3, 0(x2) # store 0x4f28cad7 in memory
flw f26, 0(x2) # load 0x4f28cad7 from memory into f26
fcvt.h.s f31, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fcvt.h.s f22, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fcvt.h.s f25, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fcvt.h.s f9, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fcvt.h.s f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fcvt.h.s f30, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fcvt.h.s f14, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fcvt.h.s f29, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fcvt.h.s f24, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fcvt.h.s f22, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fcvt.h.s f10, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fcvt.h.s f18, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fcvt.h.s f13, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fcvt.h.s f12, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fcvt.h.s f16, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fcvt.h.s f31, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fcvt.h.s f12, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fcvt.h.s f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fcvt.h.s f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fcvt.h.s f25, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fcvt.h.s f17, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fcvt.h.s f30, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fcvt.h.s f20, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fcvt.h.s f5, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fcvt.h.s f7, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fcvt.h.s f20, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fcvt.h.s f2, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fcvt.h.s f7, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fcvt.h.s f24, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3ce2a80 # load x3 with value 0xd3ce2a80
sw x3, 0(x2) # store 0xd3ce2a80 in memory
flw f0, 0(x2) # load 0xd3ce2a80 from memory into f0
fcvt.h.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75e0405d # load x3 with value 0x75e0405d
sw x3, 0(x2) # store 0x75e0405d in memory
flw f1, 0(x2) # load 0x75e0405d from memory into f1
fcvt.h.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe96608a1 # load x3 with value 0xe96608a1
sw x3, 0(x2) # store 0xe96608a1 in memory
flw f2, 0(x2) # load 0xe96608a1 from memory into f2
fcvt.h.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0cb0e9af # load x3 with value 0x0cb0e9af
sw x3, 0(x2) # store 0x0cb0e9af in memory
flw f3, 0(x2) # load 0x0cb0e9af from memory into f3
fcvt.h.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf3e84bb0 # load x3 with value 0xf3e84bb0
sw x3, 0(x2) # store 0xf3e84bb0 in memory
flw f4, 0(x2) # load 0xf3e84bb0 from memory into f4
fcvt.h.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x56f4657c # load x3 with value 0x56f4657c
sw x3, 0(x2) # store 0x56f4657c in memory
flw f5, 0(x2) # load 0x56f4657c from memory into f5
fcvt.h.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x88dbf970 # load x3 with value 0x88dbf970
sw x3, 0(x2) # store 0x88dbf970 in memory
flw f6, 0(x2) # load 0x88dbf970 from memory into f6
fcvt.h.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ee02574 # load x3 with value 0x1ee02574
sw x3, 0(x2) # store 0x1ee02574 in memory
flw f7, 0(x2) # load 0x1ee02574 from memory into f7
fcvt.h.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfb16a683 # load x3 with value 0xfb16a683
sw x3, 0(x2) # store 0xfb16a683 in memory
flw f8, 0(x2) # load 0xfb16a683 from memory into f8
fcvt.h.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdfcd4a5c # load x3 with value 0xdfcd4a5c
sw x3, 0(x2) # store 0xdfcd4a5c in memory
flw f9, 0(x2) # load 0xdfcd4a5c from memory into f9
fcvt.h.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x37406fd1 # load x3 with value 0x37406fd1
sw x3, 0(x2) # store 0x37406fd1 in memory
flw f10, 0(x2) # load 0x37406fd1 from memory into f10
fcvt.h.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda1be458 # load x3 with value 0xda1be458
sw x3, 0(x2) # store 0xda1be458 in memory
flw f11, 0(x2) # load 0xda1be458 from memory into f11
fcvt.h.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9449c26e # load x3 with value 0x9449c26e
sw x3, 0(x2) # store 0x9449c26e in memory
flw f12, 0(x2) # load 0x9449c26e from memory into f12
fcvt.h.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd91ff9d # load x3 with value 0xbd91ff9d
sw x3, 0(x2) # store 0xbd91ff9d in memory
flw f13, 0(x2) # load 0xbd91ff9d from memory into f13
fcvt.h.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6454c0d7 # load x3 with value 0x6454c0d7
sw x3, 0(x2) # store 0x6454c0d7 in memory
flw f14, 0(x2) # load 0x6454c0d7 from memory into f14
fcvt.h.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc840df71 # load x3 with value 0xc840df71
sw x3, 0(x2) # store 0xc840df71 in memory
flw f15, 0(x2) # load 0xc840df71 from memory into f15
fcvt.h.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60353880 # load x3 with value 0x60353880
sw x3, 0(x2) # store 0x60353880 in memory
flw f16, 0(x2) # load 0x60353880 from memory into f16
fcvt.h.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29d67f33 # load x3 with value 0x29d67f33
sw x3, 0(x2) # store 0x29d67f33 in memory
flw f17, 0(x2) # load 0x29d67f33 from memory into f17
fcvt.h.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefe5faaf # load x3 with value 0xefe5faaf
sw x3, 0(x2) # store 0xefe5faaf in memory
flw f18, 0(x2) # load 0xefe5faaf from memory into f18
fcvt.h.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa9af1fc4 # load x3 with value 0xa9af1fc4
sw x3, 0(x2) # store 0xa9af1fc4 in memory
flw f19, 0(x2) # load 0xa9af1fc4 from memory into f19
fcvt.h.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3d716209 # load x3 with value 0x3d716209
sw x3, 0(x2) # store 0x3d716209 in memory
flw f20, 0(x2) # load 0x3d716209 from memory into f20
fcvt.h.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x82392c54 # load x3 with value 0x82392c54
sw x3, 0(x2) # store 0x82392c54 in memory
flw f21, 0(x2) # load 0x82392c54 from memory into f21
fcvt.h.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x44d6736c # load x3 with value 0x44d6736c
sw x3, 0(x2) # store 0x44d6736c in memory
flw f22, 0(x2) # load 0x44d6736c from memory into f22
fcvt.h.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94062468 # load x3 with value 0x94062468
sw x3, 0(x2) # store 0x94062468 in memory
flw f23, 0(x2) # load 0x94062468 from memory into f23
fcvt.h.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5799c6a # load x3 with value 0xe5799c6a
sw x3, 0(x2) # store 0xe5799c6a in memory
flw f24, 0(x2) # load 0xe5799c6a from memory into f24
fcvt.h.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbdfb6c1e # load x3 with value 0xbdfb6c1e
sw x3, 0(x2) # store 0xbdfb6c1e in memory
flw f25, 0(x2) # load 0xbdfb6c1e from memory into f25
fcvt.h.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x918fe416 # load x3 with value 0x918fe416
sw x3, 0(x2) # store 0x918fe416 in memory
flw f26, 0(x2) # load 0x918fe416 from memory into f26
fcvt.h.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13e466c1 # load x3 with value 0x13e466c1
sw x3, 0(x2) # store 0x13e466c1 in memory
flw f27, 0(x2) # load 0x13e466c1 from memory into f27
fcvt.h.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5eea0ba # load x3 with value 0xf5eea0ba
sw x3, 0(x2) # store 0xf5eea0ba in memory
flw f28, 0(x2) # load 0xf5eea0ba from memory into f28
fcvt.h.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec1924fe # load x3 with value 0xec1924fe
sw x3, 0(x2) # store 0xec1924fe in memory
flw f29, 0(x2) # load 0xec1924fe from memory into f29
fcvt.h.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d822789 # load x3 with value 0x7d822789
sw x3, 0(x2) # store 0x7d822789 in memory
flw f30, 0(x2) # load 0x7d822789 from memory into f30
fcvt.h.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa32830fc # load x3 with value 0xa32830fc
sw x3, 0(x2) # store 0xa32830fc in memory
flw f31, 0(x2) # load 0xa32830fc from memory into f31
fcvt.h.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4dd3db5 # load x3 with value 0xd4dd3db5
sw x3, 0(x2) # store 0xd4dd3db5 in memory
flw f1, 0(x2) # load 0xd4dd3db5 from memory into f1
fcvt.h.s f5, f1, dyn # perform operation
fcvt.h.s f5, f1, rdn # perform operation
fcvt.h.s f5, f1, rmm # perform operation
fcvt.h.s f5, f1, rne # perform operation
fcvt.h.s f5, f1, rtz # perform operation
fcvt.h.s f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f5, f1 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b3d6ea1 # load x3 with value 0x3b3d6ea1
sw x3, 0(x2) # store 0x3b3d6ea1 in memory
flw f15, 0(x2) # load 0x3b3d6ea1 from memory into f15
fcvt.h.s f7, f15 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
la x2, scratch
li x3, 0xcaa7c69d # load x3 with value 0xcaa7c69d
sw x3, 0(x2) # store 0xcaa7c69d in memory
flh f3, 0(x2) # load 0xcaa7c69d from memory into f3
la x1, scratch # base address
addi x1, x1, -1679 # sub immediate from rs1 to counter offset
fsh f3, 1679(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0xed8c1c8b # load x3 with value 0xed8c1c8b
sw x3, 0(x2) # store 0xed8c1c8b in memory
flh f10, 0(x2) # load 0xed8c1c8b from memory into f10
la x2, scratch # base address
addi x2, x2, -705 # sub immediate from rs1 to counter offset
fsh f10, 705(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x7363f894 # load x3 with value 0x7363f894
sw x3, 0(x2) # store 0x7363f894 in memory
flh f7, 0(x2) # load 0x7363f894 from memory into f7
la x3, scratch # base address
addi x3, x3, -1143 # sub immediate from rs1 to counter offset
fsh f7, 1143(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1e3432cd # load x3 with value 0x1e3432cd
sw x3, 0(x2) # store 0x1e3432cd in memory
flh f17, 0(x2) # load 0x1e3432cd from memory into f17
la x4, scratch # base address
addi x4, x4, 654 # sub immediate from rs1 to counter offset
fsh f17, -654(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa43d2ef5 # load x3 with value 0xa43d2ef5
sw x3, 0(x2) # store 0xa43d2ef5 in memory
flh f25, 0(x2) # load 0xa43d2ef5 from memory into f25
la x5, scratch # base address
addi x5, x5, -1636 # sub immediate from rs1 to counter offset
fsh f25, 1636(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd4b17825 # load x3 with value 0xd4b17825
sw x3, 0(x2) # store 0xd4b17825 in memory
flh f17, 0(x2) # load 0xd4b17825 from memory into f17
la x6, scratch # base address
addi x6, x6, 946 # sub immediate from rs1 to counter offset
fsh f17, -946(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x53a04207 # load x3 with value 0x53a04207
sw x3, 0(x2) # store 0x53a04207 in memory
flh f31, 0(x2) # load 0x53a04207 from memory into f31
la x7, scratch # base address
addi x7, x7, -415 # sub immediate from rs1 to counter offset
fsh f31, 415(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0xfc9bd3e8 # load x3 with value 0xfc9bd3e8
sw x3, 0(x2) # store 0xfc9bd3e8 in memory
flh f18, 0(x2) # load 0xfc9bd3e8 from memory into f18
la x8, scratch # base address
addi x8, x8, -279 # sub immediate from rs1 to counter offset
fsh f18, 279(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0x32c7b36d # load x3 with value 0x32c7b36d
sw x3, 0(x2) # store 0x32c7b36d in memory
flh f31, 0(x2) # load 0x32c7b36d from memory into f31
la x9, scratch # base address
addi x9, x9, 988 # sub immediate from rs1 to counter offset
fsh f31, -988(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0x865cf9d1 # load x3 with value 0x865cf9d1
sw x3, 0(x2) # store 0x865cf9d1 in memory
flh f5, 0(x2) # load 0x865cf9d1 from memory into f5
la x10, scratch # base address
addi x10, x10, 1763 # sub immediate from rs1 to counter offset
fsh f5, -1763(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0xe3e0f8db # load x3 with value 0xe3e0f8db
sw x3, 0(x2) # store 0xe3e0f8db in memory
flh f25, 0(x2) # load 0xe3e0f8db from memory into f25
la x11, scratch # base address
addi x11, x11, -600 # sub immediate from rs1 to counter offset
fsh f25, 600(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0xc0c91010 # load x3 with value 0xc0c91010
sw x3, 0(x2) # store 0xc0c91010 in memory
flh f6, 0(x2) # load 0xc0c91010 from memory into f6
la x12, scratch # base address
addi x12, x12, -1258 # sub immediate from rs1 to counter offset
fsh f6, 1258(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0xd3a1dd0f # load x3 with value 0xd3a1dd0f
sw x3, 0(x2) # store 0xd3a1dd0f in memory
flh f28, 0(x2) # load 0xd3a1dd0f from memory into f28
la x13, scratch # base address
addi x13, x13, -1345 # sub immediate from rs1 to counter offset
fsh f28, 1345(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0xc8969bf2 # load x3 with value 0xc8969bf2
sw x3, 0(x2) # store 0xc8969bf2 in memory
flh f6, 0(x2) # load 0xc8969bf2 from memory into f6
la x14, scratch # base address
addi x14, x14, -1457 # sub immediate from rs1 to counter offset
fsh f6, 1457(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0x55b2c669 # load x3 with value 0x55b2c669
sw x3, 0(x2) # store 0x55b2c669 in memory
flh f10, 0(x2) # load 0x55b2c669 from memory into f10
la x15, scratch # base address
addi x15, x15, 535 # sub immediate from rs1 to counter offset
fsh f10, -535(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0x53f17f03 # load x3 with value 0x53f17f03
sw x3, 0(x2) # store 0x53f17f03 in memory
flh f26, 0(x2) # load 0x53f17f03 from memory into f26
la x16, scratch # base address
addi x16, x16, -1676 # sub immediate from rs1 to counter offset
fsh f26, 1676(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0x95726855 # load x3 with value 0x95726855
sw x3, 0(x2) # store 0x95726855 in memory
flh f3, 0(x2) # load 0x95726855 from memory into f3
la x17, scratch # base address
addi x17, x17, 1434 # sub immediate from rs1 to counter offset
fsh f3, -1434(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0xa4665036 # load x3 with value 0xa4665036
sw x3, 0(x2) # store 0xa4665036 in memory
flh f6, 0(x2) # load 0xa4665036 from memory into f6
la x18, scratch # base address
addi x18, x18, 1163 # sub immediate from rs1 to counter offset
fsh f6, -1163(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0x4538abae # load x3 with value 0x4538abae
sw x3, 0(x2) # store 0x4538abae in memory
flh f31, 0(x2) # load 0x4538abae from memory into f31
la x19, scratch # base address
addi x19, x19, -1443 # sub immediate from rs1 to counter offset
fsh f31, 1443(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0xbada11e2 # load x3 with value 0xbada11e2
sw x3, 0(x2) # store 0xbada11e2 in memory
flh f13, 0(x2) # load 0xbada11e2 from memory into f13
la x20, scratch # base address
addi x20, x20, -343 # sub immediate from rs1 to counter offset
fsh f13, 343(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0xeccaf231 # load x3 with value 0xeccaf231
sw x3, 0(x2) # store 0xeccaf231 in memory
flh f20, 0(x2) # load 0xeccaf231 from memory into f20
la x21, scratch # base address
addi x21, x21, 1320 # sub immediate from rs1 to counter offset
fsh f20, -1320(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0x1448aa1a # load x3 with value 0x1448aa1a
sw x3, 0(x2) # store 0x1448aa1a in memory
flh f9, 0(x2) # load 0x1448aa1a from memory into f9
la x22, scratch # base address
addi x22, x22, 1970 # sub immediate from rs1 to counter offset
fsh f9, -1970(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0x68067853 # load x3 with value 0x68067853
sw x3, 0(x2) # store 0x68067853 in memory
flh f30, 0(x2) # load 0x68067853 from memory into f30
la x23, scratch # base address
addi x23, x23, 1745 # sub immediate from rs1 to counter offset
fsh f30, -1745(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0x0926d962 # load x3 with value 0x0926d962
sw x3, 0(x2) # store 0x0926d962 in memory
flh f22, 0(x2) # load 0x0926d962 from memory into f22
la x24, scratch # base address
addi x24, x24, 438 # sub immediate from rs1 to counter offset
fsh f22, -438(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0xc8184e5c # load x3 with value 0xc8184e5c
sw x3, 0(x2) # store 0xc8184e5c in memory
flh f29, 0(x2) # load 0xc8184e5c from memory into f29
la x25, scratch # base address
addi x25, x25, -2 # sub immediate from rs1 to counter offset
fsh f29, 2(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0x405ef6bb # load x3 with value 0x405ef6bb
sw x3, 0(x2) # store 0x405ef6bb in memory
flh f8, 0(x2) # load 0x405ef6bb from memory into f8
la x26, scratch # base address
addi x26, x26, 1725 # sub immediate from rs1 to counter offset
fsh f8, -1725(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0xa677b47f # load x3 with value 0xa677b47f
sw x3, 0(x2) # store 0xa677b47f in memory
flh f25, 0(x2) # load 0xa677b47f from memory into f25
la x27, scratch # base address
addi x27, x27, 181 # sub immediate from rs1 to counter offset
fsh f25, -181(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0xeb8a3126 # load x3 with value 0xeb8a3126
sw x3, 0(x2) # store 0xeb8a3126 in memory
flh f18, 0(x2) # load 0xeb8a3126 from memory into f18
la x28, scratch # base address
addi x28, x28, 159 # sub immediate from rs1 to counter offset
fsh f18, -159(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0xe053471a # load x3 with value 0xe053471a
sw x3, 0(x2) # store 0xe053471a in memory
flh f23, 0(x2) # load 0xe053471a from memory into f23
la x29, scratch # base address
addi x29, x29, -1685 # sub immediate from rs1 to counter offset
fsh f23, 1685(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0xa5a30d96 # load x3 with value 0xa5a30d96
sw x3, 0(x2) # store 0xa5a30d96 in memory
flh f1, 0(x2) # load 0xa5a30d96 from memory into f1
la x30, scratch # base address
addi x30, x30, 1367 # sub immediate from rs1 to counter offset
fsh f1, -1367(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0xdcd89225 # load x3 with value 0xdcd89225
sw x3, 0(x2) # store 0xdcd89225 in memory
flh f20, 0(x2) # load 0xdcd89225 from memory into f20
la x31, scratch # base address
addi x31, x31, -264 # sub immediate from rs1 to counter offset
fsh f20, 264(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x3de07086 # load x3 with value 0x3de07086
sw x3, 0(x2) # store 0x3de07086 in memory
flh f3, 0(x2) # load 0x3de07086 from memory into f3
la x10, scratch # base address
addi x10, x10, 0 # sub immediate from rs1 to counter offset
fsh f3, 0(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7b4be287 # load x3 with value 0x7b4be287
sw x3, 0(x2) # store 0x7b4be287 in memory
flh f3, 0(x2) # load 0x7b4be287 from memory into f3
la x7, scratch # base address
addi x7, x7, -1 # sub immediate from rs1 to counter offset
fsh f3, 1(x7) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x41aaf407 # load x3 with value 0x41aaf407
sw x3, 0(x2) # store 0x41aaf407 in memory
flh f8, 0(x2) # load 0x41aaf407 from memory into f8
la x3, scratch # base address
addi x3, x3, -2 # sub immediate from rs1 to counter offset
fsh f8, 2(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xee758936 # load x3 with value 0xee758936
sw x3, 0(x2) # store 0xee758936 in memory
flh f21, 0(x2) # load 0xee758936 from memory into f21
la x2, scratch # base address
addi x2, x2, -3 # sub immediate from rs1 to counter offset
fsh f21, 3(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x24d9cae7 # load x3 with value 0x24d9cae7
sw x3, 0(x2) # store 0x24d9cae7 in memory
flh f11, 0(x2) # load 0x24d9cae7 from memory into f11
la x29, scratch # base address
addi x29, x29, -4 # sub immediate from rs1 to counter offset
fsh f11, 4(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x9cfd3f4b # load x3 with value 0x9cfd3f4b
sw x3, 0(x2) # store 0x9cfd3f4b in memory
flh f12, 0(x2) # load 0x9cfd3f4b from memory into f12
la x3, scratch # base address
addi x3, x3, -8 # sub immediate from rs1 to counter offset
fsh f12, 8(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2ea79d1c # load x3 with value 0x2ea79d1c
sw x3, 0(x2) # store 0x2ea79d1c in memory
flh f2, 0(x2) # load 0x2ea79d1c from memory into f2
la x28, scratch # base address
addi x28, x28, -16 # sub immediate from rs1 to counter offset
fsh f2, 16(x28) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x270e0fce # load x3 with value 0x270e0fce
sw x3, 0(x2) # store 0x270e0fce in memory
flh f30, 0(x2) # load 0x270e0fce from memory into f30
la x9, scratch # base address
addi x9, x9, -32 # sub immediate from rs1 to counter offset
fsh f30, 32(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x011ed34e # load x3 with value 0x011ed34e
sw x3, 0(x2) # store 0x011ed34e in memory
flh f26, 0(x2) # load 0x011ed34e from memory into f26
la x29, scratch # base address
addi x29, x29, -64 # sub immediate from rs1 to counter offset
fsh f26, 64(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x6c2dd052 # load x3 with value 0x6c2dd052
sw x3, 0(x2) # store 0x6c2dd052 in memory
flh f18, 0(x2) # load 0x6c2dd052 from memory into f18
la x5, scratch # base address
addi x5, x5, -128 # sub immediate from rs1 to counter offset
fsh f18, 128(x5) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xf7eae316 # load x3 with value 0xf7eae316
sw x3, 0(x2) # store 0xf7eae316 in memory
flh f3, 0(x2) # load 0xf7eae316 from memory into f3
la x23, scratch # base address
addi x23, x23, -256 # sub immediate from rs1 to counter offset
fsh f3, 256(x23) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc8686516 # load x3 with value 0xc8686516
sw x3, 0(x2) # store 0xc8686516 in memory
flh f8, 0(x2) # load 0xc8686516 from memory into f8
la x14, scratch # base address
addi x14, x14, -512 # sub immediate from rs1 to counter offset
fsh f8, 512(x14) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x4b0abe92 # load x3 with value 0x4b0abe92
sw x3, 0(x2) # store 0x4b0abe92 in memory
flh f12, 0(x2) # load 0x4b0abe92 from memory into f12
la x3, scratch # base address
addi x3, x3, -1023 # sub immediate from rs1 to counter offset
fsh f12, 1023(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7749ba50 # load x3 with value 0x7749ba50
sw x3, 0(x2) # store 0x7749ba50 in memory
flh f7, 0(x2) # load 0x7749ba50 from memory into f7
la x11, scratch # base address
addi x11, x11, -1024 # sub immediate from rs1 to counter offset
fsh f7, 1024(x11) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xcf19db21 # load x3 with value 0xcf19db21
sw x3, 0(x2) # store 0xcf19db21 in memory
flh f16, 0(x2) # load 0xcf19db21 from memory into f16
la x22, scratch # base address
addi x22, x22, -1795 # sub immediate from rs1 to counter offset
fsh f16, 1795(x22) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2f3e0be2 # load x3 with value 0x2f3e0be2
sw x3, 0(x2) # store 0x2f3e0be2 in memory
flh f8, 0(x2) # load 0x2f3e0be2 from memory into f8
la x26, scratch # base address
addi x26, x26, -2047 # sub immediate from rs1 to counter offset
fsh f8, 2047(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xeeb93217 # load x3 with value 0xeeb93217
sw x3, 0(x2) # store 0xeeb93217 in memory
flh f27, 0(x2) # load 0xeeb93217 from memory into f27
la x2, scratch # base address
addi x2, x2, 2047 # increment rs1 by 2047 
addi x2, x2, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsh f27, -2048(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe1b7737e # load x3 with value 0xe1b7737e
sw x3, 0(x2) # store 0xe1b7737e in memory
flh f20, 0(x2) # load 0xe1b7737e from memory into f20
la x15, scratch # base address
addi x15, x15, 2047 # sub immediate from rs1 to counter offset
fsh f20, -2047(x15) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x00e9ccda # load x3 with value 0x00e9ccda
sw x3, 0(x2) # store 0x00e9ccda in memory
flh f24, 0(x2) # load 0x00e9ccda from memory into f24
la x18, scratch # base address
addi x18, x18, 2 # sub immediate from rs1 to counter offset
fsh f24, -2(x18) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x38e278c4 # load x3 with value 0x38e278c4
sw x3, 0(x2) # store 0x38e278c4 in memory
flh f14, 0(x2) # load 0x38e278c4 from memory into f14
la x2, scratch # base address
addi x2, x2, 1 # sub immediate from rs1 to counter offset
fsh f14, -1(x2) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
addi x15, x15, -558
add x23, x30, x28 # perform first operation
fsh f24, 558(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -832
add x31, x11, x3 # perform first operation
fsh f6, 832(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
addi x31, x31, 381
add x21, x25, x30 # perform first operation
fsh f7, -381(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
addi x19, x19, 1177
add x19, x19, x0 # perform first operation
fsh f9, -1177(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, 418
fmul.s f28, f28, f0 # perform first operation
fsh f28, -418(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
addi x13, x13, 363
add x31, x31, x0 # perform first operation
fsh f25, -363(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
addi x30, x30, -870
add x10, x12, x27 # perform first operation
fsh f17, 870(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 1993
add x13, x14, x12 # perform first operation
fsh f5, -1993(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, -1492
add x5, x6, x15 # perform first operation
fsh f18, 1492(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, 1064
add x29, x29, x0 # perform first operation
fsh f19, -1064(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x1, scratch
addi x1, x1, -1371
fmul.s f23, f23, f0 # perform first operation
fsh f23, 1371(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
addi x13, x13, 281
add x23, x23, x0 # perform first operation
fsh f30, -281(x13) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xd4707a63 # load x3 with value 0xd4707a63
sw x3, 0(x2) # store 0xd4707a63 in memory
flh f0, 0(x2) # load 0xd4707a63 from memory into f0
la x15, scratch # base address
addi x15, x15, -1543 # sub immediate from rs1 to counter offset
fsh f0, 1543(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x9f4bc36b # load x3 with value 0x9f4bc36b
sw x3, 0(x2) # store 0x9f4bc36b in memory
flh f1, 0(x2) # load 0x9f4bc36b from memory into f1
la x15, scratch # base address
addi x15, x15, 1888 # sub immediate from rs1 to counter offset
fsh f1, -1888(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0xb624fbde # load x3 with value 0xb624fbde
sw x3, 0(x2) # store 0xb624fbde in memory
flh f2, 0(x2) # load 0xb624fbde from memory into f2
la x9, scratch # base address
addi x9, x9, 1276 # sub immediate from rs1 to counter offset
fsh f2, -1276(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x59de8a9e # load x3 with value 0x59de8a9e
sw x3, 0(x2) # store 0x59de8a9e in memory
flh f3, 0(x2) # load 0x59de8a9e from memory into f3
la x1, scratch # base address
addi x1, x1, 1067 # sub immediate from rs1 to counter offset
fsh f3, -1067(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe702a683 # load x3 with value 0xe702a683
sw x3, 0(x2) # store 0xe702a683 in memory
flh f4, 0(x2) # load 0xe702a683 from memory into f4
la x13, scratch # base address
addi x13, x13, 1755 # sub immediate from rs1 to counter offset
fsh f4, -1755(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x76688d82 # load x3 with value 0x76688d82
sw x3, 0(x2) # store 0x76688d82 in memory
flh f5, 0(x2) # load 0x76688d82 from memory into f5
la x2, scratch # base address
addi x2, x2, -1804 # sub immediate from rs1 to counter offset
fsh f5, 1804(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa988cade # load x3 with value 0xa988cade
sw x3, 0(x2) # store 0xa988cade in memory
flh f6, 0(x2) # load 0xa988cade from memory into f6
la x10, scratch # base address
addi x10, x10, -1586 # sub immediate from rs1 to counter offset
fsh f6, 1586(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0322147a # load x3 with value 0x0322147a
sw x3, 0(x2) # store 0x0322147a in memory
flh f7, 0(x2) # load 0x0322147a from memory into f7
la x12, scratch # base address
addi x12, x12, -1567 # sub immediate from rs1 to counter offset
fsh f7, 1567(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x35b1ba87 # load x3 with value 0x35b1ba87
sw x3, 0(x2) # store 0x35b1ba87 in memory
flh f8, 0(x2) # load 0x35b1ba87 from memory into f8
la x29, scratch # base address
addi x29, x29, 849 # sub immediate from rs1 to counter offset
fsh f8, -849(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xec76a4b4 # load x3 with value 0xec76a4b4
sw x3, 0(x2) # store 0xec76a4b4 in memory
flh f9, 0(x2) # load 0xec76a4b4 from memory into f9
la x31, scratch # base address
addi x31, x31, 924 # sub immediate from rs1 to counter offset
fsh f9, -924(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x06f84d65 # load x3 with value 0x06f84d65
sw x3, 0(x2) # store 0x06f84d65 in memory
flh f10, 0(x2) # load 0x06f84d65 from memory into f10
la x19, scratch # base address
addi x19, x19, -325 # sub immediate from rs1 to counter offset
fsh f10, 325(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x0819d1b8 # load x3 with value 0x0819d1b8
sw x3, 0(x2) # store 0x0819d1b8 in memory
flh f11, 0(x2) # load 0x0819d1b8 from memory into f11
la x29, scratch # base address
addi x29, x29, -726 # sub immediate from rs1 to counter offset
fsh f11, 726(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x0cd5b8da # load x3 with value 0x0cd5b8da
sw x3, 0(x2) # store 0x0cd5b8da in memory
flh f12, 0(x2) # load 0x0cd5b8da from memory into f12
la x14, scratch # base address
addi x14, x14, -1157 # sub immediate from rs1 to counter offset
fsh f12, 1157(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xcbdd76e5 # load x3 with value 0xcbdd76e5
sw x3, 0(x2) # store 0xcbdd76e5 in memory
flh f13, 0(x2) # load 0xcbdd76e5 from memory into f13
la x22, scratch # base address
addi x22, x22, -1885 # sub immediate from rs1 to counter offset
fsh f13, 1885(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xb2f5e209 # load x3 with value 0xb2f5e209
sw x3, 0(x2) # store 0xb2f5e209 in memory
flh f14, 0(x2) # load 0xb2f5e209 from memory into f14
la x6, scratch # base address
addi x6, x6, -878 # sub immediate from rs1 to counter offset
fsh f14, 878(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xa87e1a11 # load x3 with value 0xa87e1a11
sw x3, 0(x2) # store 0xa87e1a11 in memory
flh f15, 0(x2) # load 0xa87e1a11 from memory into f15
la x7, scratch # base address
addi x7, x7, -445 # sub immediate from rs1 to counter offset
fsh f15, 445(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x0a806080 # load x3 with value 0x0a806080
sw x3, 0(x2) # store 0x0a806080 in memory
flh f16, 0(x2) # load 0x0a806080 from memory into f16
la x31, scratch # base address
addi x31, x31, -1015 # sub immediate from rs1 to counter offset
fsh f16, 1015(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x90204e59 # load x3 with value 0x90204e59
sw x3, 0(x2) # store 0x90204e59 in memory
flh f17, 0(x2) # load 0x90204e59 from memory into f17
la x30, scratch # base address
addi x30, x30, -248 # sub immediate from rs1 to counter offset
fsh f17, 248(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x4b170bde # load x3 with value 0x4b170bde
sw x3, 0(x2) # store 0x4b170bde in memory
flh f18, 0(x2) # load 0x4b170bde from memory into f18
la x2, scratch # base address
addi x2, x2, -537 # sub immediate from rs1 to counter offset
fsh f18, 537(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x6b2b6b56 # load x3 with value 0x6b2b6b56
sw x3, 0(x2) # store 0x6b2b6b56 in memory
flh f19, 0(x2) # load 0x6b2b6b56 from memory into f19
la x27, scratch # base address
addi x27, x27, 647 # sub immediate from rs1 to counter offset
fsh f19, -647(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xb24714da # load x3 with value 0xb24714da
sw x3, 0(x2) # store 0xb24714da in memory
flh f20, 0(x2) # load 0xb24714da from memory into f20
la x23, scratch # base address
addi x23, x23, -988 # sub immediate from rs1 to counter offset
fsh f20, 988(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x6244e45e # load x3 with value 0x6244e45e
sw x3, 0(x2) # store 0x6244e45e in memory
flh f21, 0(x2) # load 0x6244e45e from memory into f21
la x18, scratch # base address
addi x18, x18, 1377 # sub immediate from rs1 to counter offset
fsh f21, -1377(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x79a95c45 # load x3 with value 0x79a95c45
sw x3, 0(x2) # store 0x79a95c45 in memory
flh f22, 0(x2) # load 0x79a95c45 from memory into f22
la x17, scratch # base address
addi x17, x17, -1534 # sub immediate from rs1 to counter offset
fsh f22, 1534(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xbb8fbb0f # load x3 with value 0xbb8fbb0f
sw x3, 0(x2) # store 0xbb8fbb0f in memory
flh f23, 0(x2) # load 0xbb8fbb0f from memory into f23
la x29, scratch # base address
addi x29, x29, -139 # sub immediate from rs1 to counter offset
fsh f23, 139(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xa45661e6 # load x3 with value 0xa45661e6
sw x3, 0(x2) # store 0xa45661e6 in memory
flh f24, 0(x2) # load 0xa45661e6 from memory into f24
la x13, scratch # base address
addi x13, x13, -1278 # sub immediate from rs1 to counter offset
fsh f24, 1278(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x04a5ab4c # load x3 with value 0x04a5ab4c
sw x3, 0(x2) # store 0x04a5ab4c in memory
flh f25, 0(x2) # load 0x04a5ab4c from memory into f25
la x1, scratch # base address
addi x1, x1, -769 # sub immediate from rs1 to counter offset
fsh f25, 769(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x66f6b52a # load x3 with value 0x66f6b52a
sw x3, 0(x2) # store 0x66f6b52a in memory
flh f26, 0(x2) # load 0x66f6b52a from memory into f26
la x30, scratch # base address
addi x30, x30, 759 # sub immediate from rs1 to counter offset
fsh f26, -759(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xcf07a9e8 # load x3 with value 0xcf07a9e8
sw x3, 0(x2) # store 0xcf07a9e8 in memory
flh f27, 0(x2) # load 0xcf07a9e8 from memory into f27
la x11, scratch # base address
addi x11, x11, 404 # sub immediate from rs1 to counter offset
fsh f27, -404(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xec1f1f6c # load x3 with value 0xec1f1f6c
sw x3, 0(x2) # store 0xec1f1f6c in memory
flh f28, 0(x2) # load 0xec1f1f6c from memory into f28
la x25, scratch # base address
addi x25, x25, 193 # sub immediate from rs1 to counter offset
fsh f28, -193(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x80a66588 # load x3 with value 0x80a66588
sw x3, 0(x2) # store 0x80a66588 in memory
flh f29, 0(x2) # load 0x80a66588 from memory into f29
la x7, scratch # base address
addi x7, x7, -1819 # sub immediate from rs1 to counter offset
fsh f29, 1819(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xd2205668 # load x3 with value 0xd2205668
sw x3, 0(x2) # store 0xd2205668 in memory
flh f30, 0(x2) # load 0xd2205668 from memory into f30
la x10, scratch # base address
addi x10, x10, -1525 # sub immediate from rs1 to counter offset
fsh f30, 1525(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x429c286c # load x3 with value 0x429c286c
sw x3, 0(x2) # store 0x429c286c in memory
flh f31, 0(x2) # load 0x429c286c from memory into f31
la x19, scratch # base address
addi x19, x19, -1953 # sub immediate from rs1 to counter offset
fsh f31, 1953(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x16, scratch # base address
addi x16, x16, 2007 # sub immediate from rs1 to counter offset
fsh f3, -2007(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x17, scratch # base address
addi x17, x17, -1131 # sub immediate from rs1 to counter offset
fsh f2, 1131(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x11, scratch # base address
addi x11, x11, -93 # sub immediate from rs1 to counter offset
fsh f23, 93(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x27, scratch # base address
addi x27, x27, -1614 # sub immediate from rs1 to counter offset
fsh f31, 1614(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x19, scratch # base address
addi x19, x19, 376 # sub immediate from rs1 to counter offset
fsh f6, -376(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
la x25, scratch # base address
addi x25, x25, 1912 # sub immediate from rs1 to counter offset
fsh f10, -1912(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x23, scratch # base address
addi x23, x23, 720 # sub immediate from rs1 to counter offset
fsh f21, -720(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x8, scratch # base address
addi x8, x8, -381 # sub immediate from rs1 to counter offset
fsh f1, 381(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x9, scratch # base address
addi x9, x9, -933 # sub immediate from rs1 to counter offset
fsh f12, 933(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x25, scratch # base address
addi x25, x25, 2 # sub immediate from rs1 to counter offset
fsh f24, -2(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch # base address
addi x2, x2, -279 # sub immediate from rs1 to counter offset
fsh f13, 279(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x6, scratch # base address
addi x6, x6, 550 # sub immediate from rs1 to counter offset
fsh f16, -550(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x19, scratch # base address
addi x19, x19, 483 # sub immediate from rs1 to counter offset
fsh f2, -483(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x28, scratch # base address
addi x28, x28, 1373 # sub immediate from rs1 to counter offset
fsh f26, -1373(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x23, scratch # base address
addi x23, x23, -229 # sub immediate from rs1 to counter offset
fsh f12, 229(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x22, scratch # base address
addi x22, x22, 685 # sub immediate from rs1 to counter offset
fsh f28, -685(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
la x6, scratch # base address
addi x6, x6, -437 # sub immediate from rs1 to counter offset
fsh f10, 437(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x1, scratch # base address
addi x1, x1, 1195 # sub immediate from rs1 to counter offset
fsh f3, -1195(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x23, scratch # base address
addi x23, x23, 928 # sub immediate from rs1 to counter offset
fsh f13, -928(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x6, scratch # base address
addi x6, x6, 1815 # sub immediate from rs1 to counter offset
fsh f11, -1815(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x9, scratch # base address
addi x9, x9, -1257 # sub immediate from rs1 to counter offset
fsh f1, 1257(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x25, scratch # base address
addi x25, x25, -974 # sub immediate from rs1 to counter offset
fsh f22, 974(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x7, scratch # base address
addi x7, x7, 219 # sub immediate from rs1 to counter offset
fsh f23, -219(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x5, scratch # base address
addi x5, x5, 463 # sub immediate from rs1 to counter offset
fsh f15, -463(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x15, scratch # base address
addi x15, x15, 985 # sub immediate from rs1 to counter offset
fsh f19, -985(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x7, scratch # base address
addi x7, x7, -279 # sub immediate from rs1 to counter offset
fsh f20, 279(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x25, scratch # base address
addi x25, x25, -1338 # sub immediate from rs1 to counter offset
fsh f13, 1338(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x22, scratch # base address
addi x22, x22, 1439 # sub immediate from rs1 to counter offset
fsh f28, -1439(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x8, scratch # base address
addi x8, x8, 974 # sub immediate from rs1 to counter offset
fsh f9, -974(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f9, 0(x2) # load 0xfffe8000 from memory into f9
la x14, scratch # base address
addi x14, x14, 1988 # sub immediate from rs1 to counter offset
fsh f9, -1988(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f30, 0(x2) # load 0x7fff3c00 from memory into f30
la x13, scratch # base address
addi x13, x13, -557 # sub immediate from rs1 to counter offset
fsh f30, 557(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f10, 0(x2) # load 0xbeefbc00 from memory into f10
la x12, scratch # base address
addi x12, x12, -1110 # sub immediate from rs1 to counter offset
fsh f10, 1110(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f24, 0(x2) # load 0xfeff0400 from memory into f24
la x19, scratch # base address
addi x19, x19, 626 # sub immediate from rs1 to counter offset
fsh f24, -626(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f13, 0(x2) # load 0x0fff8400 from memory into f13
la x2, scratch # base address
addi x2, x2, -917 # sub immediate from rs1 to counter offset
fsh f13, 917(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f10, 0(x2) # load 0xefff7bff from memory into f10
la x25, scratch # base address
addi x25, x25, -22 # sub immediate from rs1 to counter offset
fsh f10, 22(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f21, 0(x2) # load 0xc0defbff from memory into f21
la x19, scratch # base address
addi x19, x19, -2005 # sub immediate from rs1 to counter offset
fsh f21, 2005(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f18, 0(x2) # load 0x4f1a7c00 from memory into f18
la x30, scratch # base address
addi x30, x30, -291 # sub immediate from rs1 to counter offset
fsh f18, 291(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f29, 0(x2) # load 0x0ffffc00 from memory into f29
la x24, scratch # base address
addi x24, x24, 318 # sub immediate from rs1 to counter offset
fsh f29, -318(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f5, 0(x2) # load 0xffef7e00 from memory into f5
la x30, scratch # base address
addi x30, x30, -1587 # sub immediate from rs1 to counter offset
fsh f5, 1587(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f14, 0(x2) # load 0xfeef7fff from memory into f14
la x2, scratch # base address
addi x2, x2, 1310 # sub immediate from rs1 to counter offset
fsh f14, -1310(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f6, 0(x2) # load 0xa1b27c01 from memory into f6
la x14, scratch # base address
addi x14, x14, -1958 # sub immediate from rs1 to counter offset
fsh f6, 1958(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f27, 0(x2) # load 0x4fd77dff from memory into f27
la x8, scratch # base address
addi x8, x8, -49 # sub immediate from rs1 to counter offset
fsh f27, 49(x8) # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-flh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
la x1, scratch # base address 
addi x1, x1, 455 # sub immediate from rs1 to counter offset
li x10, 0x9726a2d2 # load x3 with value 0x9726a2d2
sw x10, -455(x1) # store 0x9726a2d2 in memory
flh f16, -455(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -2043 # sub immediate from rs1 to counter offset
li x6, 0x1a927f11 # load x3 with value 0x1a927f11
sw x6, 2043(x2) # store 0x1a927f11 in memory
flh f29, 2043(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, 1547 # sub immediate from rs1 to counter offset
li x26, 0x40f5eebe # load x3 with value 0x40f5eebe
sw x26, -1547(x3) # store 0x40f5eebe in memory
flh f13, -1547(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, 373 # sub immediate from rs1 to counter offset
li x12, 0x73930e44 # load x3 with value 0x73930e44
sw x12, -373(x4) # store 0x73930e44 in memory
flh f30, -373(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 1309 # sub immediate from rs1 to counter offset
li x20, 0x21667fad # load x3 with value 0x21667fad
sw x20, -1309(x5) # store 0x21667fad in memory
flh f14, -1309(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, -9 # sub immediate from rs1 to counter offset
li x22, 0x4e25fe83 # load x3 with value 0x4e25fe83
sw x22, 9(x6) # store 0x4e25fe83 in memory
flh f2, 9(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -1891 # sub immediate from rs1 to counter offset
li x13, 0xd92d5717 # load x3 with value 0xd92d5717
sw x13, 1891(x7) # store 0xd92d5717 in memory
flh f9, 1891(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, 1301 # sub immediate from rs1 to counter offset
li x20, 0x7c150da7 # load x3 with value 0x7c150da7
sw x20, -1301(x8) # store 0x7c150da7 in memory
flh f15, -1301(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 336 # sub immediate from rs1 to counter offset
li x27, 0xe831fa76 # load x3 with value 0xe831fa76
sw x27, -336(x9) # store 0xe831fa76 in memory
flh f6, -336(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 197 # sub immediate from rs1 to counter offset
li x2, 0xb99c7a4f # load x3 with value 0xb99c7a4f
sw x2, -197(x10) # store 0xb99c7a4f in memory
flh f12, -197(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 1106 # sub immediate from rs1 to counter offset
li x6, 0x908dd8a0 # load x3 with value 0x908dd8a0
sw x6, -1106(x11) # store 0x908dd8a0 in memory
flh f3, -1106(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 1844 # sub immediate from rs1 to counter offset
li x15, 0x3f8a4a8a # load x3 with value 0x3f8a4a8a
sw x15, -1844(x12) # store 0x3f8a4a8a in memory
flh f22, -1844(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, 480 # sub immediate from rs1 to counter offset
li x3, 0x93da507e # load x3 with value 0x93da507e
sw x3, -480(x13) # store 0x93da507e in memory
flh f26, -480(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -366 # sub immediate from rs1 to counter offset
li x18, 0x624bf504 # load x3 with value 0x624bf504
sw x18, 366(x14) # store 0x624bf504 in memory
flh f13, 366(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, -548 # sub immediate from rs1 to counter offset
li x10, 0x9261b5d4 # load x3 with value 0x9261b5d4
sw x10, 548(x15) # store 0x9261b5d4 in memory
flh f14, 548(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, 598 # sub immediate from rs1 to counter offset
li x30, 0xd6d2be62 # load x3 with value 0xd6d2be62
sw x30, -598(x16) # store 0xd6d2be62 in memory
flh f2, -598(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, 61 # sub immediate from rs1 to counter offset
li x21, 0xdc6662ba # load x3 with value 0xdc6662ba
sw x21, -61(x17) # store 0xdc6662ba in memory
flh f5, -61(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, -1746 # sub immediate from rs1 to counter offset
li x30, 0x83f5bccb # load x3 with value 0x83f5bccb
sw x30, 1746(x18) # store 0x83f5bccb in memory
flh f2, 1746(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, -961 # sub immediate from rs1 to counter offset
li x30, 0x8e80ce5b # load x3 with value 0x8e80ce5b
sw x30, 961(x19) # store 0x8e80ce5b in memory
flh f28, 961(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, -666 # sub immediate from rs1 to counter offset
li x19, 0x1e9cc045 # load x3 with value 0x1e9cc045
sw x19, 666(x20) # store 0x1e9cc045 in memory
flh f7, 666(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -1696 # sub immediate from rs1 to counter offset
li x31, 0xd36162c8 # load x3 with value 0xd36162c8
sw x31, 1696(x21) # store 0xd36162c8 in memory
flh f1, 1696(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, 1445 # sub immediate from rs1 to counter offset
li x3, 0x279c2878 # load x3 with value 0x279c2878
sw x3, -1445(x22) # store 0x279c2878 in memory
flh f21, -1445(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, -2012 # sub immediate from rs1 to counter offset
li x16, 0x734fcc50 # load x3 with value 0x734fcc50
sw x16, 2012(x23) # store 0x734fcc50 in memory
flh f12, 2012(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, 1500 # sub immediate from rs1 to counter offset
li x31, 0x952e4a34 # load x3 with value 0x952e4a34
sw x31, -1500(x24) # store 0x952e4a34 in memory
flh f9, -1500(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, -136 # sub immediate from rs1 to counter offset
li x26, 0xb6d20a56 # load x3 with value 0xb6d20a56
sw x26, 136(x25) # store 0xb6d20a56 in memory
flh f29, 136(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, 426 # sub immediate from rs1 to counter offset
li x22, 0x4001f50a # load x3 with value 0x4001f50a
sw x22, -426(x26) # store 0x4001f50a in memory
flh f8, -426(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, -1015 # sub immediate from rs1 to counter offset
li x9, 0xa78989f5 # load x3 with value 0xa78989f5
sw x9, 1015(x27) # store 0xa78989f5 in memory
flh f20, 1015(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, 1689 # sub immediate from rs1 to counter offset
li x19, 0x1b177ed8 # load x3 with value 0x1b177ed8
sw x19, -1689(x28) # store 0x1b177ed8 in memory
flh f13, -1689(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, -937 # sub immediate from rs1 to counter offset
li x17, 0x1aec32c6 # load x3 with value 0x1aec32c6
sw x17, 937(x29) # store 0x1aec32c6 in memory
flh f10, 937(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, 205 # sub immediate from rs1 to counter offset
li x14, 0x1cf337b9 # load x3 with value 0x1cf337b9
sw x14, -205(x30) # store 0x1cf337b9 in memory
flh f13, -205(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, 404 # sub immediate from rs1 to counter offset
li x1, 0xbf2caf37 # load x3 with value 0xbf2caf37
sw x1, -404(x31) # store 0xbf2caf37 in memory
flh f3, -404(x31) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
li x13, 0x221d136e # load x3 with value 0x221d136e
sw x13, 0(x9) # store 0x221d136e in memory
flh f24, 0(x9) # perform operation

# Testcase cp_imm_corners
la x29, scratch # base address 
addi x29, x29, -1 # sub immediate from rs1 to counter offset
li x9, 0x674f2273 # load x3 with value 0x674f2273
sw x9, 1(x29) # store 0x674f2273 in memory
flh f17, 1(x29) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -2 # sub immediate from rs1 to counter offset
li x23, 0x23067ec1 # load x3 with value 0x23067ec1
sw x23, 2(x3) # store 0x23067ec1 in memory
flh f10, 2(x3) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, -3 # sub immediate from rs1 to counter offset
li x20, 0xe26eb9d5 # load x3 with value 0xe26eb9d5
sw x20, 3(x24) # store 0xe26eb9d5 in memory
flh f28, 3(x24) # perform operation

# Testcase cp_imm_corners
la x12, scratch # base address 
addi x12, x12, -4 # sub immediate from rs1 to counter offset
li x18, 0xe5f08976 # load x3 with value 0xe5f08976
sw x18, 4(x12) # store 0xe5f08976 in memory
flh f7, 4(x12) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -8 # sub immediate from rs1 to counter offset
li x14, 0x73fb92e5 # load x3 with value 0x73fb92e5
sw x14, 8(x20) # store 0x73fb92e5 in memory
flh f7, 8(x20) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -16 # sub immediate from rs1 to counter offset
li x1, 0x5b6e3aaf # load x3 with value 0x5b6e3aaf
sw x1, 16(x18) # store 0x5b6e3aaf in memory
flh f17, 16(x18) # perform operation

# Testcase cp_imm_corners
la x6, scratch # base address 
addi x6, x6, -32 # sub immediate from rs1 to counter offset
li x23, 0x7462a0c0 # load x3 with value 0x7462a0c0
sw x23, 32(x6) # store 0x7462a0c0 in memory
flh f27, 32(x6) # perform operation

# Testcase cp_imm_corners
la x23, scratch # base address 
addi x23, x23, -64 # sub immediate from rs1 to counter offset
li x9, 0x4b9587ea # load x3 with value 0x4b9587ea
sw x9, 64(x23) # store 0x4b9587ea in memory
flh f17, 64(x23) # perform operation

# Testcase cp_imm_corners
la x19, scratch # base address 
addi x19, x19, -128 # sub immediate from rs1 to counter offset
li x17, 0x0ed937f9 # load x3 with value 0x0ed937f9
sw x17, 128(x19) # store 0x0ed937f9 in memory
flh f18, 128(x19) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, -256 # sub immediate from rs1 to counter offset
li x29, 0x7777ddf1 # load x3 with value 0x7777ddf1
sw x29, 256(x21) # store 0x7777ddf1 in memory
flh f14, 256(x21) # perform operation

# Testcase cp_imm_corners
la x2, scratch # base address 
addi x2, x2, -512 # sub immediate from rs1 to counter offset
li x30, 0x92dc42a2 # load x3 with value 0x92dc42a2
sw x30, 512(x2) # store 0x92dc42a2 in memory
flh f18, 512(x2) # perform operation

# Testcase cp_imm_corners
la x26, scratch # base address 
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
li x9, 0xc950a8cc # load x3 with value 0xc950a8cc
sw x9, 1023(x26) # store 0xc950a8cc in memory
flh f13, 1023(x26) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, -1024 # sub immediate from rs1 to counter offset
li x23, 0xdb313207 # load x3 with value 0xdb313207
sw x23, 1024(x28) # store 0xdb313207 in memory
flh f29, 1024(x28) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -1795 # sub immediate from rs1 to counter offset
li x28, 0x2ce53189 # load x3 with value 0x2ce53189
sw x28, 1795(x3) # store 0x2ce53189 in memory
flh f20, 1795(x3) # perform operation

# Testcase cp_imm_corners
la x23, scratch # base address 
addi x23, x23, -2047 # sub immediate from rs1 to counter offset
li x25, 0xb6a30134 # load x3 with value 0xb6a30134
sw x25, 2047(x23) # store 0xb6a30134 in memory
flh f18, 2047(x23) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, 2047 # increment rs1 by 2047 
addi x28, x28, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x9, 0x3219aadc # load x3 with value 0x3219aadc
sw x9, -2048(x28) # store 0x3219aadc in memory
flh f19, -2048(x28) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, 2047 # sub immediate from rs1 to counter offset
li x1, 0x4bc01fde # load x3 with value 0x4bc01fde
sw x1, -2047(x3) # store 0x4bc01fde in memory
flh f21, -2047(x3) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, 2 # sub immediate from rs1 to counter offset
li x16, 0x58686093 # load x3 with value 0x58686093
sw x16, -2(x7) # store 0x58686093 in memory
flh f22, -2(x7) # perform operation

# Testcase cp_imm_corners
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
li x21, 0xdaae753e # load x3 with value 0xdaae753e
sw x21, -1(x31) # store 0xdaae753e in memory
flh f29, -1(x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
addi x12, x12, -1333
add x20, x11, x7 # perform first operation
flh f3, 1333(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, 2039
add x13, x23, x26 # perform first operation
flh f19, -2039(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 1623
add x26, x13, x30 # perform first operation
flh f21, -1623(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
addi x13, x13, -1813
fmul.s f24, f2, f18 # perform first operation
flh f24, 1813(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
addi x26, x26, -1287
fmul.s f18, f13, f2 # perform first operation
flh f18, 1287(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x17, scratch
addi x17, x17, -1649
fmul.s f18, f26, f12 # perform first operation
flh f18, 1649(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x13, scratch
addi x13, x13, -279
fmul.s f2, f11, f28 # perform first operation
flh f11, 279(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
addi x22, x22, 1031
fmul.s f23, f12, f28 # perform first operation
flh f28, -1031(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
addi x9, x9, 1457
fmul.s f7, f17, f28 # perform first operation
flh f30, -1457(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, -840
add x12, x13, x18 # perform first operation
flh f26, 840(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, 734
add x5, x20, x16 # perform first operation
flh f18, -734(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 104
add x26, x20, x18 # perform first operation
flh f31, -104(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
addi x23, x23, 885
add x23, x23, x0 # perform first operation
flh f22, -885(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
addi x8, x8, 1302
add x8, x8, x0 # perform first operation
flh f24, -1302(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, 891
add x30, x30, x0 # perform first operation
flh f21, -891(x30) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x20, scratch # base address 
addi x20, x20, 946 # sub immediate from rs1 to counter offset
li x25, 0x7078f7ab # load x3 with value 0x7078f7ab
sw x25, -946(x20) # store 0x7078f7ab in memory
flh f0, -946(x20) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x9, scratch # base address 
addi x9, x9, 566 # sub immediate from rs1 to counter offset
li x21, 0xe6256089 # load x3 with value 0xe6256089
sw x21, -566(x9) # store 0xe6256089 in memory
flh f1, -566(x9) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x3, scratch # base address 
addi x3, x3, 1217 # sub immediate from rs1 to counter offset
li x6, 0xe09e8ca9 # load x3 with value 0xe09e8ca9
sw x6, -1217(x3) # store 0xe09e8ca9 in memory
flh f2, -1217(x3) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x10, scratch # base address 
addi x10, x10, -1193 # sub immediate from rs1 to counter offset
li x21, 0x2660e6ab # load x3 with value 0x2660e6ab
sw x21, 1193(x10) # store 0x2660e6ab in memory
flh f3, 1193(x10) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x9, scratch # base address 
addi x9, x9, 1659 # sub immediate from rs1 to counter offset
li x26, 0x58b522fc # load x3 with value 0x58b522fc
sw x26, -1659(x9) # store 0x58b522fc in memory
flh f4, -1659(x9) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x10, scratch # base address 
addi x10, x10, -517 # sub immediate from rs1 to counter offset
li x14, 0x3d0c8e66 # load x3 with value 0x3d0c8e66
sw x14, 517(x10) # store 0x3d0c8e66 in memory
flh f5, 517(x10) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x13, scratch # base address 
addi x13, x13, -1430 # sub immediate from rs1 to counter offset
li x17, 0x80d2aac0 # load x3 with value 0x80d2aac0
sw x17, 1430(x13) # store 0x80d2aac0 in memory
flh f6, 1430(x13) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, -1007 # sub immediate from rs1 to counter offset
li x27, 0x5108a321 # load x3 with value 0x5108a321
sw x27, 1007(x5) # store 0x5108a321 in memory
flh f7, 1007(x5) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x25, scratch # base address 
addi x25, x25, 210 # sub immediate from rs1 to counter offset
li x5, 0x29a37144 # load x3 with value 0x29a37144
sw x5, -210(x25) # store 0x29a37144 in memory
flh f8, -210(x25) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x7, scratch # base address 
addi x7, x7, 550 # sub immediate from rs1 to counter offset
li x16, 0x43b5468d # load x3 with value 0x43b5468d
sw x16, -550(x7) # store 0x43b5468d in memory
flh f9, -550(x7) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x6, scratch # base address 
addi x6, x6, -1390 # sub immediate from rs1 to counter offset
li x9, 0x65ef909f # load x3 with value 0x65ef909f
sw x9, 1390(x6) # store 0x65ef909f in memory
flh f10, 1390(x6) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x16, scratch # base address 
addi x16, x16, 553 # sub immediate from rs1 to counter offset
li x1, 0x9a64c15f # load x3 with value 0x9a64c15f
sw x1, -553(x16) # store 0x9a64c15f in memory
flh f11, -553(x16) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x7, scratch # base address 
addi x7, x7, -1395 # sub immediate from rs1 to counter offset
li x11, 0xb369174e # load x3 with value 0xb369174e
sw x11, 1395(x7) # store 0xb369174e in memory
flh f12, 1395(x7) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x18, scratch # base address 
addi x18, x18, 335 # sub immediate from rs1 to counter offset
li x29, 0x7bed1723 # load x3 with value 0x7bed1723
sw x29, -335(x18) # store 0x7bed1723 in memory
flh f13, -335(x18) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x28, scratch # base address 
addi x28, x28, -1510 # sub immediate from rs1 to counter offset
li x16, 0x9d9ef3be # load x3 with value 0x9d9ef3be
sw x16, 1510(x28) # store 0x9d9ef3be in memory
flh f14, 1510(x28) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x10, scratch # base address 
addi x10, x10, -6 # sub immediate from rs1 to counter offset
li x14, 0xe519c305 # load x3 with value 0xe519c305
sw x14, 6(x10) # store 0xe519c305 in memory
flh f15, 6(x10) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x10, scratch # base address 
addi x10, x10, 593 # sub immediate from rs1 to counter offset
li x27, 0xf7141713 # load x3 with value 0xf7141713
sw x27, -593(x10) # store 0xf7141713 in memory
flh f16, -593(x10) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x7, scratch # base address 
addi x7, x7, 1236 # sub immediate from rs1 to counter offset
li x11, 0x4ae87e00 # load x3 with value 0x4ae87e00
sw x11, -1236(x7) # store 0x4ae87e00 in memory
flh f17, -1236(x7) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x3, scratch # base address 
addi x3, x3, -285 # sub immediate from rs1 to counter offset
li x25, 0x8d1d790d # load x3 with value 0x8d1d790d
sw x25, 285(x3) # store 0x8d1d790d in memory
flh f18, 285(x3) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x28, scratch # base address 
addi x28, x28, 1282 # sub immediate from rs1 to counter offset
li x11, 0x748f3a1f # load x3 with value 0x748f3a1f
sw x11, -1282(x28) # store 0x748f3a1f in memory
flh f19, -1282(x28) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x30, scratch # base address 
addi x30, x30, 534 # sub immediate from rs1 to counter offset
li x9, 0x28f97c84 # load x3 with value 0x28f97c84
sw x9, -534(x30) # store 0x28f97c84 in memory
flh f20, -534(x30) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x8, scratch # base address 
addi x8, x8, -1653 # sub immediate from rs1 to counter offset
li x24, 0xc596b34b # load x3 with value 0xc596b34b
sw x24, 1653(x8) # store 0xc596b34b in memory
flh f21, 1653(x8) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x15, scratch # base address 
addi x15, x15, 1318 # sub immediate from rs1 to counter offset
li x9, 0x73cfcf08 # load x3 with value 0x73cfcf08
sw x9, -1318(x15) # store 0x73cfcf08 in memory
flh f22, -1318(x15) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x8, scratch # base address 
addi x8, x8, 229 # sub immediate from rs1 to counter offset
li x6, 0x2a667207 # load x3 with value 0x2a667207
sw x6, -229(x8) # store 0x2a667207 in memory
flh f23, -229(x8) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x27, scratch # base address 
addi x27, x27, 1273 # sub immediate from rs1 to counter offset
li x17, 0x9ad2ec8e # load x3 with value 0x9ad2ec8e
sw x17, -1273(x27) # store 0x9ad2ec8e in memory
flh f24, -1273(x27) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x5, scratch # base address 
addi x5, x5, -1912 # sub immediate from rs1 to counter offset
li x31, 0xcff4564c # load x3 with value 0xcff4564c
sw x31, 1912(x5) # store 0xcff4564c in memory
flh f25, 1912(x5) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x8, scratch # base address 
addi x8, x8, 881 # sub immediate from rs1 to counter offset
li x2, 0x3b849fe5 # load x3 with value 0x3b849fe5
sw x2, -881(x8) # store 0x3b849fe5 in memory
flh f26, -881(x8) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x22, scratch # base address 
addi x22, x22, 94 # sub immediate from rs1 to counter offset
li x20, 0x5e3cf1e0 # load x3 with value 0x5e3cf1e0
sw x20, -94(x22) # store 0x5e3cf1e0 in memory
flh f27, -94(x22) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x8, scratch # base address 
addi x8, x8, 168 # sub immediate from rs1 to counter offset
li x11, 0x580e84a0 # load x3 with value 0x580e84a0
sw x11, -168(x8) # store 0x580e84a0 in memory
flh f28, -168(x8) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x30, scratch # base address 
addi x30, x30, 891 # sub immediate from rs1 to counter offset
li x17, 0x5af2cce6 # load x3 with value 0x5af2cce6
sw x17, -891(x30) # store 0x5af2cce6 in memory
flh f29, -891(x30) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x24, scratch # base address 
addi x24, x24, -1198 # sub immediate from rs1 to counter offset
li x15, 0x52aa13e1 # load x3 with value 0x52aa13e1
sw x15, 1198(x24) # store 0x52aa13e1 in memory
flh f30, 1198(x24) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x26, scratch # base address 
addi x26, x26, -269 # sub immediate from rs1 to counter offset
li x17, 0x63d757bf # load x3 with value 0x63d757bf
sw x17, 269(x26) # store 0x63d757bf in memory
flh f31, 269(x26) # perform operation

# Testcase Random test for cp_NaNBox 
la x31, scratch # base address 
addi x31, x31, 1349 # sub immediate from rs1 to counter offset
li x6, 0xe9a7bce9 # load x3 with value 0xe9a7bce9
sw x6, -1349(x31) # store 0xe9a7bce9 in memory
flh f23, -1349(x31) # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,424 #combined


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
