///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsqrt.d.S
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
add x15, x23, x9 # perform first operation
fsqrt.d f2, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x14, x22 # perform first operation
fsqrt.d f26, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x26 # perform first operation
fsqrt.d f17, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f6, f26 # perform first operation
fsqrt.d f6, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x3, x25 # perform first operation
fsqrt.d f11, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x12, x21 # perform first operation
fsqrt.d f21, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f1, f28 # perform first operation
fsqrt.d f29, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f28, f25 # perform first operation
fsqrt.d f18, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f20, f18 # perform first operation
fsqrt.d f31, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f30, f20 # perform first operation
fsqrt.d f30, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f13, f15, f14 # perform first operation
fsqrt.d f14, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f25, f12 # perform first operation
fsqrt.d f18, f28 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f8f3db47d9f9916 # load x3 with value 0x0f8f3db47d9f9916
sd x3, 0(x2) # store 0x0f8f3db47d9f9916 in memory
fld f0, 0(x2) # load 0x0f8f3db47d9f9916 from memory into f0
fsqrt.d f20, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a0fa7cb336656b2 # load x3 with value 0x7a0fa7cb336656b2
sd x3, 0(x2) # store 0x7a0fa7cb336656b2 in memory
fld f1, 0(x2) # load 0x7a0fa7cb336656b2 from memory into f1
fsqrt.d f5, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda7c295548ec624b # load x3 with value 0xda7c295548ec624b
sd x3, 0(x2) # store 0xda7c295548ec624b in memory
fld f2, 0(x2) # load 0xda7c295548ec624b from memory into f2
fsqrt.d f11, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcf3bc4d81a100a4c # load x3 with value 0xcf3bc4d81a100a4c
sd x3, 0(x2) # store 0xcf3bc4d81a100a4c in memory
fld f3, 0(x2) # load 0xcf3bc4d81a100a4c from memory into f3
fsqrt.d f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d46ef9106532237 # load x3 with value 0x4d46ef9106532237
sd x3, 0(x2) # store 0x4d46ef9106532237 in memory
fld f4, 0(x2) # load 0x4d46ef9106532237 from memory into f4
fsqrt.d f22, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdbea6095803cc2c3 # load x3 with value 0xdbea6095803cc2c3
sd x3, 0(x2) # store 0xdbea6095803cc2c3 in memory
fld f5, 0(x2) # load 0xdbea6095803cc2c3 from memory into f5
fsqrt.d f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc125aded47c5b2d7 # load x3 with value 0xc125aded47c5b2d7
sd x3, 0(x2) # store 0xc125aded47c5b2d7 in memory
fld f6, 0(x2) # load 0xc125aded47c5b2d7 from memory into f6
fsqrt.d f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdbcb8558ee71d358 # load x3 with value 0xdbcb8558ee71d358
sd x3, 0(x2) # store 0xdbcb8558ee71d358 in memory
fld f7, 0(x2) # load 0xdbcb8558ee71d358 from memory into f7
fsqrt.d f4, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94ed64eccaf0351b # load x3 with value 0x94ed64eccaf0351b
sd x3, 0(x2) # store 0x94ed64eccaf0351b in memory
fld f8, 0(x2) # load 0x94ed64eccaf0351b from memory into f8
fsqrt.d f31, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x239ab646d44136a2 # load x3 with value 0x239ab646d44136a2
sd x3, 0(x2) # store 0x239ab646d44136a2 in memory
fld f9, 0(x2) # load 0x239ab646d44136a2 from memory into f9
fsqrt.d f18, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30cb0987cfcf5a50 # load x3 with value 0x30cb0987cfcf5a50
sd x3, 0(x2) # store 0x30cb0987cfcf5a50 in memory
fld f10, 0(x2) # load 0x30cb0987cfcf5a50 from memory into f10
fsqrt.d f7, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb88b9e4b4d42e60f # load x3 with value 0xb88b9e4b4d42e60f
sd x3, 0(x2) # store 0xb88b9e4b4d42e60f in memory
fld f11, 0(x2) # load 0xb88b9e4b4d42e60f from memory into f11
fsqrt.d f14, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae8013980f6a56d1 # load x3 with value 0xae8013980f6a56d1
sd x3, 0(x2) # store 0xae8013980f6a56d1 in memory
fld f12, 0(x2) # load 0xae8013980f6a56d1 from memory into f12
fsqrt.d f15, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c4ab49eb7880d82 # load x3 with value 0x5c4ab49eb7880d82
sd x3, 0(x2) # store 0x5c4ab49eb7880d82 in memory
fld f13, 0(x2) # load 0x5c4ab49eb7880d82 from memory into f13
fsqrt.d f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65f4b1c92c3f58df # load x3 with value 0x65f4b1c92c3f58df
sd x3, 0(x2) # store 0x65f4b1c92c3f58df in memory
fld f14, 0(x2) # load 0x65f4b1c92c3f58df from memory into f14
fsqrt.d f2, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x61a7c2e3edc3add7 # load x3 with value 0x61a7c2e3edc3add7
sd x3, 0(x2) # store 0x61a7c2e3edc3add7 in memory
fld f15, 0(x2) # load 0x61a7c2e3edc3add7 from memory into f15
fsqrt.d f30, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5474030d71bd6067 # load x3 with value 0x5474030d71bd6067
sd x3, 0(x2) # store 0x5474030d71bd6067 in memory
fld f16, 0(x2) # load 0x5474030d71bd6067 from memory into f16
fsqrt.d f8, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1e53befa17f19fa # load x3 with value 0xa1e53befa17f19fa
sd x3, 0(x2) # store 0xa1e53befa17f19fa in memory
fld f17, 0(x2) # load 0xa1e53befa17f19fa from memory into f17
fsqrt.d f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf861804396d8c89b # load x3 with value 0xf861804396d8c89b
sd x3, 0(x2) # store 0xf861804396d8c89b in memory
fld f18, 0(x2) # load 0xf861804396d8c89b from memory into f18
fsqrt.d f25, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xca75a83686a50e82 # load x3 with value 0xca75a83686a50e82
sd x3, 0(x2) # store 0xca75a83686a50e82 in memory
fld f19, 0(x2) # load 0xca75a83686a50e82 from memory into f19
fsqrt.d f3, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe063022ff9b7d347 # load x3 with value 0xe063022ff9b7d347
sd x3, 0(x2) # store 0xe063022ff9b7d347 in memory
fld f20, 0(x2) # load 0xe063022ff9b7d347 from memory into f20
fsqrt.d f2, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0e270420844cb14 # load x3 with value 0xd0e270420844cb14
sd x3, 0(x2) # store 0xd0e270420844cb14 in memory
fld f21, 0(x2) # load 0xd0e270420844cb14 from memory into f21
fsqrt.d f11, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9cfcbc099580b9d2 # load x3 with value 0x9cfcbc099580b9d2
sd x3, 0(x2) # store 0x9cfcbc099580b9d2 in memory
fld f22, 0(x2) # load 0x9cfcbc099580b9d2 from memory into f22
fsqrt.d f25, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9cd382a5790d267b # load x3 with value 0x9cd382a5790d267b
sd x3, 0(x2) # store 0x9cd382a5790d267b in memory
fld f23, 0(x2) # load 0x9cd382a5790d267b from memory into f23
fsqrt.d f11, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19a55607ccb3fb8c # load x3 with value 0x19a55607ccb3fb8c
sd x3, 0(x2) # store 0x19a55607ccb3fb8c in memory
fld f24, 0(x2) # load 0x19a55607ccb3fb8c from memory into f24
fsqrt.d f11, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0c3e5d34719ae6fd # load x3 with value 0x0c3e5d34719ae6fd
sd x3, 0(x2) # store 0x0c3e5d34719ae6fd in memory
fld f25, 0(x2) # load 0x0c3e5d34719ae6fd from memory into f25
fsqrt.d f12, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63bb6e36ef032916 # load x3 with value 0x63bb6e36ef032916
sd x3, 0(x2) # store 0x63bb6e36ef032916 in memory
fld f26, 0(x2) # load 0x63bb6e36ef032916 from memory into f26
fsqrt.d f31, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a1da3c4481876b7 # load x3 with value 0x3a1da3c4481876b7
sd x3, 0(x2) # store 0x3a1da3c4481876b7 in memory
fld f27, 0(x2) # load 0x3a1da3c4481876b7 from memory into f27
fsqrt.d f3, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5777dc06234f705f # load x3 with value 0x5777dc06234f705f
sd x3, 0(x2) # store 0x5777dc06234f705f in memory
fld f28, 0(x2) # load 0x5777dc06234f705f from memory into f28
fsqrt.d f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf543a8e8121f5a0 # load x3 with value 0xdf543a8e8121f5a0
sd x3, 0(x2) # store 0xdf543a8e8121f5a0 in memory
fld f29, 0(x2) # load 0xdf543a8e8121f5a0 from memory into f29
fsqrt.d f24, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbcb5e814ff682014 # load x3 with value 0xbcb5e814ff682014
sd x3, 0(x2) # store 0xbcb5e814ff682014 in memory
fld f30, 0(x2) # load 0xbcb5e814ff682014 from memory into f30
fsqrt.d f18, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfa355f1a17c42ea2 # load x3 with value 0xfa355f1a17c42ea2
sd x3, 0(x2) # store 0xfa355f1a17c42ea2 in memory
fld f31, 0(x2) # load 0xfa355f1a17c42ea2 from memory into f31
fsqrt.d f17, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x61e10c8521600012 # load x3 with value 0x61e10c8521600012
sd x3, 0(x2) # store 0x61e10c8521600012 in memory
fld f3, 0(x2) # load 0x61e10c8521600012 from memory into f3
fsqrt.d f0, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4cdb14c4fb35aea5 # load x3 with value 0x4cdb14c4fb35aea5
sd x3, 0(x2) # store 0x4cdb14c4fb35aea5 in memory
fld f29, 0(x2) # load 0x4cdb14c4fb35aea5 from memory into f29
fsqrt.d f1, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd585a17ea1867407 # load x3 with value 0xd585a17ea1867407
sd x3, 0(x2) # store 0xd585a17ea1867407 in memory
fld f18, 0(x2) # load 0xd585a17ea1867407 from memory into f18
fsqrt.d f2, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e1bd6eb36459e85 # load x3 with value 0x8e1bd6eb36459e85
sd x3, 0(x2) # store 0x8e1bd6eb36459e85 in memory
fld f10, 0(x2) # load 0x8e1bd6eb36459e85 from memory into f10
fsqrt.d f3, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c2f13ddac94ab31 # load x3 with value 0x8c2f13ddac94ab31
sd x3, 0(x2) # store 0x8c2f13ddac94ab31 in memory
fld f4, 0(x2) # load 0x8c2f13ddac94ab31 from memory into f4
fsqrt.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a4e16cd166477e3 # load x3 with value 0x7a4e16cd166477e3
sd x3, 0(x2) # store 0x7a4e16cd166477e3 in memory
fld f23, 0(x2) # load 0x7a4e16cd166477e3 from memory into f23
fsqrt.d f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x877c6ccd7e10b322 # load x3 with value 0x877c6ccd7e10b322
sd x3, 0(x2) # store 0x877c6ccd7e10b322 in memory
fld f14, 0(x2) # load 0x877c6ccd7e10b322 from memory into f14
fsqrt.d f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x36f146ab7f28cc4a # load x3 with value 0x36f146ab7f28cc4a
sd x3, 0(x2) # store 0x36f146ab7f28cc4a in memory
fld f19, 0(x2) # load 0x36f146ab7f28cc4a from memory into f19
fsqrt.d f7, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1407726c05cf63bf # load x3 with value 0x1407726c05cf63bf
sd x3, 0(x2) # store 0x1407726c05cf63bf in memory
fld f30, 0(x2) # load 0x1407726c05cf63bf from memory into f30
fsqrt.d f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x385a57eefae1abc6 # load x3 with value 0x385a57eefae1abc6
sd x3, 0(x2) # store 0x385a57eefae1abc6 in memory
fld f8, 0(x2) # load 0x385a57eefae1abc6 from memory into f8
fsqrt.d f9, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80de168e6b6ab26b # load x3 with value 0x80de168e6b6ab26b
sd x3, 0(x2) # store 0x80de168e6b6ab26b in memory
fld f20, 0(x2) # load 0x80de168e6b6ab26b from memory into f20
fsqrt.d f10, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2cfb422781bbddc5 # load x3 with value 0x2cfb422781bbddc5
sd x3, 0(x2) # store 0x2cfb422781bbddc5 in memory
fld f19, 0(x2) # load 0x2cfb422781bbddc5 from memory into f19
fsqrt.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5b8c704675a61638 # load x3 with value 0x5b8c704675a61638
sd x3, 0(x2) # store 0x5b8c704675a61638 in memory
fld f30, 0(x2) # load 0x5b8c704675a61638 from memory into f30
fsqrt.d f12, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x398c48890a68a10e # load x3 with value 0x398c48890a68a10e
sd x3, 0(x2) # store 0x398c48890a68a10e in memory
fld f17, 0(x2) # load 0x398c48890a68a10e from memory into f17
fsqrt.d f13, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x191b384f342e5872 # load x3 with value 0x191b384f342e5872
sd x3, 0(x2) # store 0x191b384f342e5872 in memory
fld f31, 0(x2) # load 0x191b384f342e5872 from memory into f31
fsqrt.d f14, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaffa880e58399a6f # load x3 with value 0xaffa880e58399a6f
sd x3, 0(x2) # store 0xaffa880e58399a6f in memory
fld f22, 0(x2) # load 0xaffa880e58399a6f from memory into f22
fsqrt.d f15, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57255d799a9b1d7a # load x3 with value 0x57255d799a9b1d7a
sd x3, 0(x2) # store 0x57255d799a9b1d7a in memory
fld f25, 0(x2) # load 0x57255d799a9b1d7a from memory into f25
fsqrt.d f16, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2b2f7f5b3c907ff0 # load x3 with value 0x2b2f7f5b3c907ff0
sd x3, 0(x2) # store 0x2b2f7f5b3c907ff0 in memory
fld f8, 0(x2) # load 0x2b2f7f5b3c907ff0 from memory into f8
fsqrt.d f17, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf92d49ffb3a55070 # load x3 with value 0xf92d49ffb3a55070
sd x3, 0(x2) # store 0xf92d49ffb3a55070 in memory
fld f17, 0(x2) # load 0xf92d49ffb3a55070 from memory into f17
fsqrt.d f18, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x141d5bcbfb774516 # load x3 with value 0x141d5bcbfb774516
sd x3, 0(x2) # store 0x141d5bcbfb774516 in memory
fld f27, 0(x2) # load 0x141d5bcbfb774516 from memory into f27
fsqrt.d f19, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa99e336986c8c106 # load x3 with value 0xa99e336986c8c106
sd x3, 0(x2) # store 0xa99e336986c8c106 in memory
fld f5, 0(x2) # load 0xa99e336986c8c106 from memory into f5
fsqrt.d f20, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab305eafc8546968 # load x3 with value 0xab305eafc8546968
sd x3, 0(x2) # store 0xab305eafc8546968 in memory
fld f26, 0(x2) # load 0xab305eafc8546968 from memory into f26
fsqrt.d f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0302d502ac799b9a # load x3 with value 0x0302d502ac799b9a
sd x3, 0(x2) # store 0x0302d502ac799b9a in memory
fld f27, 0(x2) # load 0x0302d502ac799b9a from memory into f27
fsqrt.d f22, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e26adb1d54ae63a # load x3 with value 0x8e26adb1d54ae63a
sd x3, 0(x2) # store 0x8e26adb1d54ae63a in memory
fld f30, 0(x2) # load 0x8e26adb1d54ae63a from memory into f30
fsqrt.d f23, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x771da4bcddcdd4ef # load x3 with value 0x771da4bcddcdd4ef
sd x3, 0(x2) # store 0x771da4bcddcdd4ef in memory
fld f22, 0(x2) # load 0x771da4bcddcdd4ef from memory into f22
fsqrt.d f24, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbda684c60239aff8 # load x3 with value 0xbda684c60239aff8
sd x3, 0(x2) # store 0xbda684c60239aff8 in memory
fld f31, 0(x2) # load 0xbda684c60239aff8 from memory into f31
fsqrt.d f25, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x22b4154e1c982289 # load x3 with value 0x22b4154e1c982289
sd x3, 0(x2) # store 0x22b4154e1c982289 in memory
fld f17, 0(x2) # load 0x22b4154e1c982289 from memory into f17
fsqrt.d f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc42ce625b7524760 # load x3 with value 0xc42ce625b7524760
sd x3, 0(x2) # store 0xc42ce625b7524760 in memory
fld f2, 0(x2) # load 0xc42ce625b7524760 from memory into f2
fsqrt.d f27, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04e8a5078533df7c # load x3 with value 0x04e8a5078533df7c
sd x3, 0(x2) # store 0x04e8a5078533df7c in memory
fld f31, 0(x2) # load 0x04e8a5078533df7c from memory into f31
fsqrt.d f28, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d6c115a78add4a6 # load x3 with value 0x2d6c115a78add4a6
sd x3, 0(x2) # store 0x2d6c115a78add4a6 in memory
fld f17, 0(x2) # load 0x2d6c115a78add4a6 from memory into f17
fsqrt.d f29, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd17ebde730a40f61 # load x3 with value 0xd17ebde730a40f61
sd x3, 0(x2) # store 0xd17ebde730a40f61 in memory
fld f18, 0(x2) # load 0xd17ebde730a40f61 from memory into f18
fsqrt.d f30, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63cb0ad18ff98e19 # load x3 with value 0x63cb0ad18ff98e19
sd x3, 0(x2) # store 0x63cb0ad18ff98e19 in memory
fld f19, 0(x2) # load 0x63cb0ad18ff98e19 from memory into f19
fsqrt.d f31, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fsqrt.d f28, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fsqrt.d f3, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fsqrt.d f20, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fsqrt.d f8, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fsqrt.d f27, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fsqrt.d f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fsqrt.d f15, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fsqrt.d f12, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fsqrt.d f30, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fsqrt.d f27, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fsqrt.d f11, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fsqrt.d f9, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
fsqrt.d f10, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fsqrt.d f7, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fsqrt.d f26, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fsqrt.d f20, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fsqrt.d f21, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fsqrt.d f19, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fsqrt.d f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fsqrt.d f3, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fsqrt.d f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fsqrt.d f11, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f12, 0(x2) # load 0xfff8000000000000 from memory into f12
fsqrt.d f1, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fsqrt.d f15, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fsqrt.d f15, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f21, 0(x2) # load 0xfff0000000000001 from memory into f21
fsqrt.d f16, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fsqrt.d f21, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fsqrt.d f15, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0f44cb6305e124d # load x3 with value 0xd0f44cb6305e124d
sd x3, 0(x2) # store 0xd0f44cb6305e124d in memory
fld f0, 0(x2) # load 0xd0f44cb6305e124d from memory into f0
fsqrt.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d613aa8f15ef78b # load x3 with value 0x9d613aa8f15ef78b
sd x3, 0(x2) # store 0x9d613aa8f15ef78b in memory
fld f1, 0(x2) # load 0x9d613aa8f15ef78b from memory into f1
fsqrt.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0e97a1dfa147526f # load x3 with value 0x0e97a1dfa147526f
sd x3, 0(x2) # store 0x0e97a1dfa147526f in memory
fld f2, 0(x2) # load 0x0e97a1dfa147526f from memory into f2
fsqrt.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc8bda8f8829d2552 # load x3 with value 0xc8bda8f8829d2552
sd x3, 0(x2) # store 0xc8bda8f8829d2552 in memory
fld f3, 0(x2) # load 0xc8bda8f8829d2552 from memory into f3
fsqrt.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf974fc40e24d89a0 # load x3 with value 0xf974fc40e24d89a0
sd x3, 0(x2) # store 0xf974fc40e24d89a0 in memory
fld f4, 0(x2) # load 0xf974fc40e24d89a0 from memory into f4
fsqrt.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe9631b0fb6dc7037 # load x3 with value 0xe9631b0fb6dc7037
sd x3, 0(x2) # store 0xe9631b0fb6dc7037 in memory
fld f5, 0(x2) # load 0xe9631b0fb6dc7037 from memory into f5
fsqrt.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81077cf13bd121f4 # load x3 with value 0x81077cf13bd121f4
sd x3, 0(x2) # store 0x81077cf13bd121f4 in memory
fld f6, 0(x2) # load 0x81077cf13bd121f4 from memory into f6
fsqrt.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7762e266352326f1 # load x3 with value 0x7762e266352326f1
sd x3, 0(x2) # store 0x7762e266352326f1 in memory
fld f7, 0(x2) # load 0x7762e266352326f1 from memory into f7
fsqrt.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3102aa3e4b0bb069 # load x3 with value 0x3102aa3e4b0bb069
sd x3, 0(x2) # store 0x3102aa3e4b0bb069 in memory
fld f8, 0(x2) # load 0x3102aa3e4b0bb069 from memory into f8
fsqrt.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x035264febe8dea1b # load x3 with value 0x035264febe8dea1b
sd x3, 0(x2) # store 0x035264febe8dea1b in memory
fld f9, 0(x2) # load 0x035264febe8dea1b from memory into f9
fsqrt.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed2aadf0686efaa0 # load x3 with value 0xed2aadf0686efaa0
sd x3, 0(x2) # store 0xed2aadf0686efaa0 in memory
fld f10, 0(x2) # load 0xed2aadf0686efaa0 from memory into f10
fsqrt.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x970e8a1cefd25473 # load x3 with value 0x970e8a1cefd25473
sd x3, 0(x2) # store 0x970e8a1cefd25473 in memory
fld f11, 0(x2) # load 0x970e8a1cefd25473 from memory into f11
fsqrt.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c0e07d9d3bb61e5 # load x3 with value 0x8c0e07d9d3bb61e5
sd x3, 0(x2) # store 0x8c0e07d9d3bb61e5 in memory
fld f12, 0(x2) # load 0x8c0e07d9d3bb61e5 from memory into f12
fsqrt.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb9a927b0f9155e3 # load x3 with value 0xeb9a927b0f9155e3
sd x3, 0(x2) # store 0xeb9a927b0f9155e3 in memory
fld f13, 0(x2) # load 0xeb9a927b0f9155e3 from memory into f13
fsqrt.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee24671bf1da1fc2 # load x3 with value 0xee24671bf1da1fc2
sd x3, 0(x2) # store 0xee24671bf1da1fc2 in memory
fld f14, 0(x2) # load 0xee24671bf1da1fc2 from memory into f14
fsqrt.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x598a51a3500bedc9 # load x3 with value 0x598a51a3500bedc9
sd x3, 0(x2) # store 0x598a51a3500bedc9 in memory
fld f15, 0(x2) # load 0x598a51a3500bedc9 from memory into f15
fsqrt.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ac4ddf3ca2fd791 # load x3 with value 0x6ac4ddf3ca2fd791
sd x3, 0(x2) # store 0x6ac4ddf3ca2fd791 in memory
fld f16, 0(x2) # load 0x6ac4ddf3ca2fd791 from memory into f16
fsqrt.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x50cec86aacf32715 # load x3 with value 0x50cec86aacf32715
sd x3, 0(x2) # store 0x50cec86aacf32715 in memory
fld f17, 0(x2) # load 0x50cec86aacf32715 from memory into f17
fsqrt.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x961f8ff4e910d268 # load x3 with value 0x961f8ff4e910d268
sd x3, 0(x2) # store 0x961f8ff4e910d268 in memory
fld f18, 0(x2) # load 0x961f8ff4e910d268 from memory into f18
fsqrt.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60ea1eedd6fd21c9 # load x3 with value 0x60ea1eedd6fd21c9
sd x3, 0(x2) # store 0x60ea1eedd6fd21c9 in memory
fld f19, 0(x2) # load 0x60ea1eedd6fd21c9 from memory into f19
fsqrt.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d4a94974a2c43dc # load x3 with value 0x4d4a94974a2c43dc
sd x3, 0(x2) # store 0x4d4a94974a2c43dc in memory
fld f20, 0(x2) # load 0x4d4a94974a2c43dc from memory into f20
fsqrt.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4a43966be7e5a7fb # load x3 with value 0x4a43966be7e5a7fb
sd x3, 0(x2) # store 0x4a43966be7e5a7fb in memory
fld f21, 0(x2) # load 0x4a43966be7e5a7fb from memory into f21
fsqrt.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe2be690b71f81ea7 # load x3 with value 0xe2be690b71f81ea7
sd x3, 0(x2) # store 0xe2be690b71f81ea7 in memory
fld f22, 0(x2) # load 0xe2be690b71f81ea7 from memory into f22
fsqrt.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc35bc598f534f187 # load x3 with value 0xc35bc598f534f187
sd x3, 0(x2) # store 0xc35bc598f534f187 in memory
fld f23, 0(x2) # load 0xc35bc598f534f187 from memory into f23
fsqrt.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1eb1092d706215e2 # load x3 with value 0x1eb1092d706215e2
sd x3, 0(x2) # store 0x1eb1092d706215e2 in memory
fld f24, 0(x2) # load 0x1eb1092d706215e2 from memory into f24
fsqrt.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2ad9893ebd14551 # load x3 with value 0xb2ad9893ebd14551
sd x3, 0(x2) # store 0xb2ad9893ebd14551 in memory
fld f25, 0(x2) # load 0xb2ad9893ebd14551 from memory into f25
fsqrt.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8f8b22d984da80c # load x3 with value 0xd8f8b22d984da80c
sd x3, 0(x2) # store 0xd8f8b22d984da80c in memory
fld f26, 0(x2) # load 0xd8f8b22d984da80c from memory into f26
fsqrt.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6413e00e92f394c0 # load x3 with value 0x6413e00e92f394c0
sd x3, 0(x2) # store 0x6413e00e92f394c0 in memory
fld f27, 0(x2) # load 0x6413e00e92f394c0 from memory into f27
fsqrt.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a2d6391f7c72bc1 # load x3 with value 0x1a2d6391f7c72bc1
sd x3, 0(x2) # store 0x1a2d6391f7c72bc1 in memory
fld f28, 0(x2) # load 0x1a2d6391f7c72bc1 from memory into f28
fsqrt.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1f2550bb6dbce117 # load x3 with value 0x1f2550bb6dbce117
sd x3, 0(x2) # store 0x1f2550bb6dbce117 in memory
fld f29, 0(x2) # load 0x1f2550bb6dbce117 from memory into f29
fsqrt.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb203c14fc19e32db # load x3 with value 0xb203c14fc19e32db
sd x3, 0(x2) # store 0xb203c14fc19e32db in memory
fld f30, 0(x2) # load 0xb203c14fc19e32db from memory into f30
fsqrt.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc702eaf723b78550 # load x3 with value 0xc702eaf723b78550
sd x3, 0(x2) # store 0xc702eaf723b78550 in memory
fld f31, 0(x2) # load 0xc702eaf723b78550 from memory into f31
fsqrt.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7cbf821d077a80ec # load x3 with value 0x7cbf821d077a80ec
sd x3, 0(x2) # store 0x7cbf821d077a80ec in memory
fld f15, 0(x2) # load 0x7cbf821d077a80ec from memory into f15
fsqrt.d f9, f15, dyn # perform operation
fsqrt.d f9, f15, rdn # perform operation
fsqrt.d f9, f15, rmm # perform operation
fsqrt.d f9, f15, rne # perform operation
fsqrt.d f9, f15, rtz # perform operation
fsqrt.d f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.d f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.d f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.d f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.d f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.d f9, f15 # perform operation


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
