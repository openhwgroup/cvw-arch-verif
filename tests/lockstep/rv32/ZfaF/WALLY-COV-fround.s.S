///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaF/WALLY-COV-fround.s.S
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
add x31, x19, x29 # perform first operation
fround.s f22, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x16, x2 # perform first operation
fround.s f8, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x16, x1 # perform first operation
fround.s f31, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f25, f14, f22 # perform first operation
fround.s f22, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x9, x30 # perform first operation
fround.s f22, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x1, x10 # perform first operation
fround.s f10, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f17, f8, f10 # perform first operation
fround.s f17, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f22, f11 # perform first operation
fround.s f27, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f23, f12, f30 # perform first operation
fround.s f23, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f27, f11 # perform first operation
fround.s f27, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f5, f27 # perform first operation
fround.s f27, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f5, f27, f20 # perform first operation
fround.s f11, f1 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x357f687d # load x3 with value 0x357f687d
sw x3, 0(x2) # store 0x357f687d in memory
flw f0, 0(x2) # load 0x357f687d from memory into f0
fround.s f14, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ba086da # load x3 with value 0x1ba086da
sw x3, 0(x2) # store 0x1ba086da in memory
flw f1, 0(x2) # load 0x1ba086da from memory into f1
fround.s f24, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd37ba664 # load x3 with value 0xd37ba664
sw x3, 0(x2) # store 0xd37ba664 in memory
flw f2, 0(x2) # load 0xd37ba664 from memory into f2
fround.s f23, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1fc2e512 # load x3 with value 0x1fc2e512
sw x3, 0(x2) # store 0x1fc2e512 in memory
flw f3, 0(x2) # load 0x1fc2e512 from memory into f3
fround.s f13, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2aa57d48 # load x3 with value 0x2aa57d48
sw x3, 0(x2) # store 0x2aa57d48 in memory
flw f4, 0(x2) # load 0x2aa57d48 from memory into f4
fround.s f27, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbed843b7 # load x3 with value 0xbed843b7
sw x3, 0(x2) # store 0xbed843b7 in memory
flw f5, 0(x2) # load 0xbed843b7 from memory into f5
fround.s f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a071623 # load x3 with value 0x5a071623
sw x3, 0(x2) # store 0x5a071623 in memory
flw f6, 0(x2) # load 0x5a071623 from memory into f6
fround.s f5, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa991b1ac # load x3 with value 0xa991b1ac
sw x3, 0(x2) # store 0xa991b1ac in memory
flw f7, 0(x2) # load 0xa991b1ac from memory into f7
fround.s f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x661676bb # load x3 with value 0x661676bb
sw x3, 0(x2) # store 0x661676bb in memory
flw f8, 0(x2) # load 0x661676bb from memory into f8
fround.s f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc4073be5 # load x3 with value 0xc4073be5
sw x3, 0(x2) # store 0xc4073be5 in memory
flw f9, 0(x2) # load 0xc4073be5 from memory into f9
fround.s f8, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26b798fc # load x3 with value 0x26b798fc
sw x3, 0(x2) # store 0x26b798fc in memory
flw f10, 0(x2) # load 0x26b798fc from memory into f10
fround.s f21, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77f14168 # load x3 with value 0x77f14168
sw x3, 0(x2) # store 0x77f14168 in memory
flw f11, 0(x2) # load 0x77f14168 from memory into f11
fround.s f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a9c4a7c # load x3 with value 0x2a9c4a7c
sw x3, 0(x2) # store 0x2a9c4a7c in memory
flw f12, 0(x2) # load 0x2a9c4a7c from memory into f12
fround.s f30, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3be90d76 # load x3 with value 0x3be90d76
sw x3, 0(x2) # store 0x3be90d76 in memory
flw f13, 0(x2) # load 0x3be90d76 from memory into f13
fround.s f25, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d6a3749 # load x3 with value 0x2d6a3749
sw x3, 0(x2) # store 0x2d6a3749 in memory
flw f14, 0(x2) # load 0x2d6a3749 from memory into f14
fround.s f30, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fc9aff6 # load x3 with value 0x4fc9aff6
sw x3, 0(x2) # store 0x4fc9aff6 in memory
flw f15, 0(x2) # load 0x4fc9aff6 from memory into f15
fround.s f29, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x21f79cdb # load x3 with value 0x21f79cdb
sw x3, 0(x2) # store 0x21f79cdb in memory
flw f16, 0(x2) # load 0x21f79cdb from memory into f16
fround.s f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12bbd7fb # load x3 with value 0x12bbd7fb
sw x3, 0(x2) # store 0x12bbd7fb in memory
flw f17, 0(x2) # load 0x12bbd7fb from memory into f17
fround.s f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8fca0824 # load x3 with value 0x8fca0824
sw x3, 0(x2) # store 0x8fca0824 in memory
flw f18, 0(x2) # load 0x8fca0824 from memory into f18
fround.s f2, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8aa73fa1 # load x3 with value 0x8aa73fa1
sw x3, 0(x2) # store 0x8aa73fa1 in memory
flw f19, 0(x2) # load 0x8aa73fa1 from memory into f19
fround.s f29, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x826dff12 # load x3 with value 0x826dff12
sw x3, 0(x2) # store 0x826dff12 in memory
flw f20, 0(x2) # load 0x826dff12 from memory into f20
fround.s f18, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5f587244 # load x3 with value 0x5f587244
sw x3, 0(x2) # store 0x5f587244 in memory
flw f21, 0(x2) # load 0x5f587244 from memory into f21
fround.s f20, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf05a610 # load x3 with value 0xbf05a610
sw x3, 0(x2) # store 0xbf05a610 in memory
flw f22, 0(x2) # load 0xbf05a610 from memory into f22
fround.s f5, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfb4b9494 # load x3 with value 0xfb4b9494
sw x3, 0(x2) # store 0xfb4b9494 in memory
flw f23, 0(x2) # load 0xfb4b9494 from memory into f23
fround.s f9, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbc19224 # load x3 with value 0xfbc19224
sw x3, 0(x2) # store 0xfbc19224 in memory
flw f24, 0(x2) # load 0xfbc19224 from memory into f24
fround.s f23, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c98ac09 # load x3 with value 0x2c98ac09
sw x3, 0(x2) # store 0x2c98ac09 in memory
flw f25, 0(x2) # load 0x2c98ac09 from memory into f25
fround.s f7, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f5c3f7a # load x3 with value 0x0f5c3f7a
sw x3, 0(x2) # store 0x0f5c3f7a in memory
flw f26, 0(x2) # load 0x0f5c3f7a from memory into f26
fround.s f3, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde465d68 # load x3 with value 0xde465d68
sw x3, 0(x2) # store 0xde465d68 in memory
flw f27, 0(x2) # load 0xde465d68 from memory into f27
fround.s f20, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7aa27bea # load x3 with value 0x7aa27bea
sw x3, 0(x2) # store 0x7aa27bea in memory
flw f28, 0(x2) # load 0x7aa27bea from memory into f28
fround.s f20, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5cd78ba # load x3 with value 0xb5cd78ba
sw x3, 0(x2) # store 0xb5cd78ba in memory
flw f29, 0(x2) # load 0xb5cd78ba from memory into f29
fround.s f8, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x812619f3 # load x3 with value 0x812619f3
sw x3, 0(x2) # store 0x812619f3 in memory
flw f30, 0(x2) # load 0x812619f3 from memory into f30
fround.s f9, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b744e4d # load x3 with value 0x3b744e4d
sw x3, 0(x2) # store 0x3b744e4d in memory
flw f31, 0(x2) # load 0x3b744e4d from memory into f31
fround.s f29, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x384b1345 # load x3 with value 0x384b1345
sw x3, 0(x2) # store 0x384b1345 in memory
flw f8, 0(x2) # load 0x384b1345 from memory into f8
fround.s f0, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46e11486 # load x3 with value 0x46e11486
sw x3, 0(x2) # store 0x46e11486 in memory
flw f11, 0(x2) # load 0x46e11486 from memory into f11
fround.s f1, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7923108 # load x3 with value 0xe7923108
sw x3, 0(x2) # store 0xe7923108 in memory
flw f9, 0(x2) # load 0xe7923108 from memory into f9
fround.s f2, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1fee949e # load x3 with value 0x1fee949e
sw x3, 0(x2) # store 0x1fee949e in memory
flw f23, 0(x2) # load 0x1fee949e from memory into f23
fround.s f3, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57b177fb # load x3 with value 0x57b177fb
sw x3, 0(x2) # store 0x57b177fb in memory
flw f18, 0(x2) # load 0x57b177fb from memory into f18
fround.s f4, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x461028e1 # load x3 with value 0x461028e1
sw x3, 0(x2) # store 0x461028e1 in memory
flw f8, 0(x2) # load 0x461028e1 from memory into f8
fround.s f5, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66bda81a # load x3 with value 0x66bda81a
sw x3, 0(x2) # store 0x66bda81a in memory
flw f14, 0(x2) # load 0x66bda81a from memory into f14
fround.s f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x319fea0a # load x3 with value 0x319fea0a
sw x3, 0(x2) # store 0x319fea0a in memory
flw f12, 0(x2) # load 0x319fea0a from memory into f12
fround.s f7, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23d15f77 # load x3 with value 0x23d15f77
sw x3, 0(x2) # store 0x23d15f77 in memory
flw f12, 0(x2) # load 0x23d15f77 from memory into f12
fround.s f8, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5920600 # load x3 with value 0xd5920600
sw x3, 0(x2) # store 0xd5920600 in memory
flw f5, 0(x2) # load 0xd5920600 from memory into f5
fround.s f9, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35805d11 # load x3 with value 0x35805d11
sw x3, 0(x2) # store 0x35805d11 in memory
flw f29, 0(x2) # load 0x35805d11 from memory into f29
fround.s f10, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81e04207 # load x3 with value 0x81e04207
sw x3, 0(x2) # store 0x81e04207 in memory
flw f13, 0(x2) # load 0x81e04207 from memory into f13
fround.s f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ba8d717 # load x3 with value 0x6ba8d717
sw x3, 0(x2) # store 0x6ba8d717 in memory
flw f2, 0(x2) # load 0x6ba8d717 from memory into f2
fround.s f12, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd49afd9f # load x3 with value 0xd49afd9f
sw x3, 0(x2) # store 0xd49afd9f in memory
flw f8, 0(x2) # load 0xd49afd9f from memory into f8
fround.s f13, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf026a6b1 # load x3 with value 0xf026a6b1
sw x3, 0(x2) # store 0xf026a6b1 in memory
flw f30, 0(x2) # load 0xf026a6b1 from memory into f30
fround.s f14, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff286507 # load x3 with value 0xff286507
sw x3, 0(x2) # store 0xff286507 in memory
flw f31, 0(x2) # load 0xff286507 from memory into f31
fround.s f15, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x44ad476c # load x3 with value 0x44ad476c
sw x3, 0(x2) # store 0x44ad476c in memory
flw f12, 0(x2) # load 0x44ad476c from memory into f12
fround.s f16, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78aaf42c # load x3 with value 0x78aaf42c
sw x3, 0(x2) # store 0x78aaf42c in memory
flw f25, 0(x2) # load 0x78aaf42c from memory into f25
fround.s f17, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x973b0a22 # load x3 with value 0x973b0a22
sw x3, 0(x2) # store 0x973b0a22 in memory
flw f31, 0(x2) # load 0x973b0a22 from memory into f31
fround.s f18, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x122f1985 # load x3 with value 0x122f1985
sw x3, 0(x2) # store 0x122f1985 in memory
flw f1, 0(x2) # load 0x122f1985 from memory into f1
fround.s f19, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x70d8134a # load x3 with value 0x70d8134a
sw x3, 0(x2) # store 0x70d8134a in memory
flw f12, 0(x2) # load 0x70d8134a from memory into f12
fround.s f20, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0822ea83 # load x3 with value 0x0822ea83
sw x3, 0(x2) # store 0x0822ea83 in memory
flw f31, 0(x2) # load 0x0822ea83 from memory into f31
fround.s f21, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c939bc8 # load x3 with value 0x7c939bc8
sw x3, 0(x2) # store 0x7c939bc8 in memory
flw f22, 0(x2) # load 0x7c939bc8 from memory into f22
fround.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5bd347cd # load x3 with value 0x5bd347cd
sw x3, 0(x2) # store 0x5bd347cd in memory
flw f14, 0(x2) # load 0x5bd347cd from memory into f14
fround.s f23, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeb0a631 # load x3 with value 0xdeb0a631
sw x3, 0(x2) # store 0xdeb0a631 in memory
flw f20, 0(x2) # load 0xdeb0a631 from memory into f20
fround.s f24, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48b5e702 # load x3 with value 0x48b5e702
sw x3, 0(x2) # store 0x48b5e702 in memory
flw f2, 0(x2) # load 0x48b5e702 from memory into f2
fround.s f25, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9b9a134 # load x3 with value 0xd9b9a134
sw x3, 0(x2) # store 0xd9b9a134 in memory
flw f8, 0(x2) # load 0xd9b9a134 from memory into f8
fround.s f26, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04f0c028 # load x3 with value 0x04f0c028
sw x3, 0(x2) # store 0x04f0c028 in memory
flw f12, 0(x2) # load 0x04f0c028 from memory into f12
fround.s f27, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x05b60bd2 # load x3 with value 0x05b60bd2
sw x3, 0(x2) # store 0x05b60bd2 in memory
flw f15, 0(x2) # load 0x05b60bd2 from memory into f15
fround.s f28, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6bc00fea # load x3 with value 0x6bc00fea
sw x3, 0(x2) # store 0x6bc00fea in memory
flw f6, 0(x2) # load 0x6bc00fea from memory into f6
fround.s f29, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe443115c # load x3 with value 0xe443115c
sw x3, 0(x2) # store 0xe443115c in memory
flw f17, 0(x2) # load 0xe443115c from memory into f17
fround.s f30, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7ed404a # load x3 with value 0xd7ed404a
sw x3, 0(x2) # store 0xd7ed404a in memory
flw f10, 0(x2) # load 0xd7ed404a from memory into f10
fround.s f31, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fround.s f2, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fround.s f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fround.s f24, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fround.s f10, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fround.s f10, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fround.s f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fround.s f15, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fround.s f6, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fround.s f21, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fround.s f8, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fround.s f22, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fround.s f5, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fround.s f17, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fround.s f1, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fround.s f20, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fround.s f17, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fround.s f21, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fround.s f19, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fround.s f17, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fround.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fround.s f13, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fround.s f20, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fround.s f26, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fround.s f13, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fround.s f28, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fround.s f23, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fround.s f26, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fround.s f19, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e2b9294 # load x3 with value 0x1e2b9294
sw x3, 0(x2) # store 0x1e2b9294 in memory
flw f0, 0(x2) # load 0x1e2b9294 from memory into f0
fround.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb5f1409 # load x3 with value 0xdb5f1409
sw x3, 0(x2) # store 0xdb5f1409 in memory
flw f1, 0(x2) # load 0xdb5f1409 from memory into f1
fround.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2b45b18e # load x3 with value 0x2b45b18e
sw x3, 0(x2) # store 0x2b45b18e in memory
flw f2, 0(x2) # load 0x2b45b18e from memory into f2
fround.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a4b7c06 # load x3 with value 0x5a4b7c06
sw x3, 0(x2) # store 0x5a4b7c06 in memory
flw f3, 0(x2) # load 0x5a4b7c06 from memory into f3
fround.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfa444599 # load x3 with value 0xfa444599
sw x3, 0(x2) # store 0xfa444599 in memory
flw f4, 0(x2) # load 0xfa444599 from memory into f4
fround.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79a9a4ad # load x3 with value 0x79a9a4ad
sw x3, 0(x2) # store 0x79a9a4ad in memory
flw f5, 0(x2) # load 0x79a9a4ad from memory into f5
fround.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaee23c3d # load x3 with value 0xaee23c3d
sw x3, 0(x2) # store 0xaee23c3d in memory
flw f6, 0(x2) # load 0xaee23c3d from memory into f6
fround.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3e2637fe # load x3 with value 0x3e2637fe
sw x3, 0(x2) # store 0x3e2637fe in memory
flw f7, 0(x2) # load 0x3e2637fe from memory into f7
fround.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x006df037 # load x3 with value 0x006df037
sw x3, 0(x2) # store 0x006df037 in memory
flw f8, 0(x2) # load 0x006df037 from memory into f8
fround.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb836b514 # load x3 with value 0xb836b514
sw x3, 0(x2) # store 0xb836b514 in memory
flw f9, 0(x2) # load 0xb836b514 from memory into f9
fround.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8bebd723 # load x3 with value 0x8bebd723
sw x3, 0(x2) # store 0x8bebd723 in memory
flw f10, 0(x2) # load 0x8bebd723 from memory into f10
fround.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f99c2ac # load x3 with value 0x6f99c2ac
sw x3, 0(x2) # store 0x6f99c2ac in memory
flw f11, 0(x2) # load 0x6f99c2ac from memory into f11
fround.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83998846 # load x3 with value 0x83998846
sw x3, 0(x2) # store 0x83998846 in memory
flw f12, 0(x2) # load 0x83998846 from memory into f12
fround.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5fb9b7ee # load x3 with value 0x5fb9b7ee
sw x3, 0(x2) # store 0x5fb9b7ee in memory
flw f13, 0(x2) # load 0x5fb9b7ee from memory into f13
fround.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a9dd636 # load x3 with value 0x2a9dd636
sw x3, 0(x2) # store 0x2a9dd636 in memory
flw f14, 0(x2) # load 0x2a9dd636 from memory into f14
fround.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f39b885 # load x3 with value 0x6f39b885
sw x3, 0(x2) # store 0x6f39b885 in memory
flw f15, 0(x2) # load 0x6f39b885 from memory into f15
fround.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4369415d # load x3 with value 0x4369415d
sw x3, 0(x2) # store 0x4369415d in memory
flw f16, 0(x2) # load 0x4369415d from memory into f16
fround.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d6f0c8b # load x3 with value 0x4d6f0c8b
sw x3, 0(x2) # store 0x4d6f0c8b in memory
flw f17, 0(x2) # load 0x4d6f0c8b from memory into f17
fround.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c7a8c18 # load x3 with value 0x5c7a8c18
sw x3, 0(x2) # store 0x5c7a8c18 in memory
flw f18, 0(x2) # load 0x5c7a8c18 from memory into f18
fround.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a78da3c # load x3 with value 0x7a78da3c
sw x3, 0(x2) # store 0x7a78da3c in memory
flw f19, 0(x2) # load 0x7a78da3c from memory into f19
fround.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1cefbb5b # load x3 with value 0x1cefbb5b
sw x3, 0(x2) # store 0x1cefbb5b in memory
flw f20, 0(x2) # load 0x1cefbb5b from memory into f20
fround.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6f173c6 # load x3 with value 0xf6f173c6
sw x3, 0(x2) # store 0xf6f173c6 in memory
flw f21, 0(x2) # load 0xf6f173c6 from memory into f21
fround.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2291950f # load x3 with value 0x2291950f
sw x3, 0(x2) # store 0x2291950f in memory
flw f22, 0(x2) # load 0x2291950f from memory into f22
fround.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf45a0090 # load x3 with value 0xf45a0090
sw x3, 0(x2) # store 0xf45a0090 in memory
flw f23, 0(x2) # load 0xf45a0090 from memory into f23
fround.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0fac47e # load x3 with value 0xd0fac47e
sw x3, 0(x2) # store 0xd0fac47e in memory
flw f24, 0(x2) # load 0xd0fac47e from memory into f24
fround.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54e1f523 # load x3 with value 0x54e1f523
sw x3, 0(x2) # store 0x54e1f523 in memory
flw f25, 0(x2) # load 0x54e1f523 from memory into f25
fround.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77ad4c00 # load x3 with value 0x77ad4c00
sw x3, 0(x2) # store 0x77ad4c00 in memory
flw f26, 0(x2) # load 0x77ad4c00 from memory into f26
fround.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe1422b07 # load x3 with value 0xe1422b07
sw x3, 0(x2) # store 0xe1422b07 in memory
flw f27, 0(x2) # load 0xe1422b07 from memory into f27
fround.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5705d3ae # load x3 with value 0x5705d3ae
sw x3, 0(x2) # store 0x5705d3ae in memory
flw f28, 0(x2) # load 0x5705d3ae from memory into f28
fround.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4d5b3b4 # load x3 with value 0xd4d5b3b4
sw x3, 0(x2) # store 0xd4d5b3b4 in memory
flw f29, 0(x2) # load 0xd4d5b3b4 from memory into f29
fround.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04ec7b5c # load x3 with value 0x04ec7b5c
sw x3, 0(x2) # store 0x04ec7b5c in memory
flw f30, 0(x2) # load 0x04ec7b5c from memory into f30
fround.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x90f007e3 # load x3 with value 0x90f007e3
sw x3, 0(x2) # store 0x90f007e3 in memory
flw f31, 0(x2) # load 0x90f007e3 from memory into f31
fround.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80985fbd # load x3 with value 0x80985fbd
sw x3, 0(x2) # store 0x80985fbd in memory
flw f7, 0(x2) # load 0x80985fbd from memory into f7
fround.s f2, f7, dyn # perform operation
fround.s f2, f7, rdn # perform operation
fround.s f2, f7, rmm # perform operation
fround.s f2, f7, rne # perform operation
fround.s f2, f7, rtz # perform operation
fround.s f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.s f2, f7 # perform operation


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
