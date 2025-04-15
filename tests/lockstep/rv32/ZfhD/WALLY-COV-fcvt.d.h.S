///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fcvt.d.h.S
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
add x26, x9, x23 # perform first operation
fcvt.d.h f5, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x21, x27 # perform first operation
fcvt.d.h f22, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x17, x26 # perform first operation
fcvt.d.h f5, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f8, f10, f30 # perform first operation
fcvt.d.h f12, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x28, x13 # perform first operation
fcvt.d.h f13, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x22, x13 # perform first operation
fcvt.d.h f22, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f26, f25 # perform first operation
fcvt.d.h f5, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f1, f15 # perform first operation
fcvt.d.h f28, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f29, f28 # perform first operation
fcvt.d.h f21, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f13, f11, f19 # perform first operation
fcvt.d.h f11, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f30, f20 # perform first operation
fcvt.d.h f20, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f30, f24 # perform first operation
fcvt.d.h f10, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dd25a361 # load x3 with value 0x00000000dd25a361
sw x3, 0(x2) # store 0x00000000dd25a361 in memory
flh f0, 0(x2) # load 0x00000000dd25a361 from memory into f0
fcvt.d.h f25, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d2382492 # load x3 with value 0x00000000d2382492
sw x3, 0(x2) # store 0x00000000d2382492 in memory
flh f1, 0(x2) # load 0x00000000d2382492 from memory into f1
fcvt.d.h f18, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bcd333ce # load x3 with value 0x00000000bcd333ce
sw x3, 0(x2) # store 0x00000000bcd333ce in memory
flh f2, 0(x2) # load 0x00000000bcd333ce from memory into f2
fcvt.d.h f16, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ba2a8377 # load x3 with value 0x00000000ba2a8377
sw x3, 0(x2) # store 0x00000000ba2a8377 in memory
flh f3, 0(x2) # load 0x00000000ba2a8377 from memory into f3
fcvt.d.h f25, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ae21fa32 # load x3 with value 0x00000000ae21fa32
sw x3, 0(x2) # store 0x00000000ae21fa32 in memory
flh f4, 0(x2) # load 0x00000000ae21fa32 from memory into f4
fcvt.d.h f29, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000ba73790 # load x3 with value 0x000000000ba73790
sw x3, 0(x2) # store 0x000000000ba73790 in memory
flh f5, 0(x2) # load 0x000000000ba73790 from memory into f5
fcvt.d.h f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006ec88cd9 # load x3 with value 0x000000006ec88cd9
sw x3, 0(x2) # store 0x000000006ec88cd9 in memory
flh f6, 0(x2) # load 0x000000006ec88cd9 from memory into f6
fcvt.d.h f8, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000066408476 # load x3 with value 0x0000000066408476
sw x3, 0(x2) # store 0x0000000066408476 in memory
flh f7, 0(x2) # load 0x0000000066408476 from memory into f7
fcvt.d.h f8, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f5a8f3b8 # load x3 with value 0x00000000f5a8f3b8
sw x3, 0(x2) # store 0x00000000f5a8f3b8 in memory
flh f8, 0(x2) # load 0x00000000f5a8f3b8 from memory into f8
fcvt.d.h f29, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b6a63640 # load x3 with value 0x00000000b6a63640
sw x3, 0(x2) # store 0x00000000b6a63640 in memory
flh f9, 0(x2) # load 0x00000000b6a63640 from memory into f9
fcvt.d.h f10, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f53a15af # load x3 with value 0x00000000f53a15af
sw x3, 0(x2) # store 0x00000000f53a15af in memory
flh f10, 0(x2) # load 0x00000000f53a15af from memory into f10
fcvt.d.h f21, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000003f2fcc8 # load x3 with value 0x0000000003f2fcc8
sw x3, 0(x2) # store 0x0000000003f2fcc8 in memory
flh f11, 0(x2) # load 0x0000000003f2fcc8 from memory into f11
fcvt.d.h f10, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008d4ab1e3 # load x3 with value 0x000000008d4ab1e3
sw x3, 0(x2) # store 0x000000008d4ab1e3 in memory
flh f12, 0(x2) # load 0x000000008d4ab1e3 from memory into f12
fcvt.d.h f15, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007e0abd4e # load x3 with value 0x000000007e0abd4e
sw x3, 0(x2) # store 0x000000007e0abd4e in memory
flh f13, 0(x2) # load 0x000000007e0abd4e from memory into f13
fcvt.d.h f23, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f334b805 # load x3 with value 0x00000000f334b805
sw x3, 0(x2) # store 0x00000000f334b805 in memory
flh f14, 0(x2) # load 0x00000000f334b805 from memory into f14
fcvt.d.h f21, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000de008e03 # load x3 with value 0x00000000de008e03
sw x3, 0(x2) # store 0x00000000de008e03 in memory
flh f15, 0(x2) # load 0x00000000de008e03 from memory into f15
fcvt.d.h f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004bc81cbe # load x3 with value 0x000000004bc81cbe
sw x3, 0(x2) # store 0x000000004bc81cbe in memory
flh f16, 0(x2) # load 0x000000004bc81cbe from memory into f16
fcvt.d.h f14, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000052b959d4 # load x3 with value 0x0000000052b959d4
sw x3, 0(x2) # store 0x0000000052b959d4 in memory
flh f17, 0(x2) # load 0x0000000052b959d4 from memory into f17
fcvt.d.h f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000121d2d3e # load x3 with value 0x00000000121d2d3e
sw x3, 0(x2) # store 0x00000000121d2d3e in memory
flh f18, 0(x2) # load 0x00000000121d2d3e from memory into f18
fcvt.d.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a5a7bc06 # load x3 with value 0x00000000a5a7bc06
sw x3, 0(x2) # store 0x00000000a5a7bc06 in memory
flh f19, 0(x2) # load 0x00000000a5a7bc06 from memory into f19
fcvt.d.h f14, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003ad1f171 # load x3 with value 0x000000003ad1f171
sw x3, 0(x2) # store 0x000000003ad1f171 in memory
flh f20, 0(x2) # load 0x000000003ad1f171 from memory into f20
fcvt.d.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008d172a06 # load x3 with value 0x000000008d172a06
sw x3, 0(x2) # store 0x000000008d172a06 in memory
flh f21, 0(x2) # load 0x000000008d172a06 from memory into f21
fcvt.d.h f15, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f7b54ba # load x3 with value 0x000000007f7b54ba
sw x3, 0(x2) # store 0x000000007f7b54ba in memory
flh f22, 0(x2) # load 0x000000007f7b54ba from memory into f22
fcvt.d.h f31, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008334e9eb # load x3 with value 0x000000008334e9eb
sw x3, 0(x2) # store 0x000000008334e9eb in memory
flh f23, 0(x2) # load 0x000000008334e9eb from memory into f23
fcvt.d.h f28, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000155db6b8 # load x3 with value 0x00000000155db6b8
sw x3, 0(x2) # store 0x00000000155db6b8 in memory
flh f24, 0(x2) # load 0x00000000155db6b8 from memory into f24
fcvt.d.h f5, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000297802dc # load x3 with value 0x00000000297802dc
sw x3, 0(x2) # store 0x00000000297802dc in memory
flh f25, 0(x2) # load 0x00000000297802dc from memory into f25
fcvt.d.h f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000005ea61a0 # load x3 with value 0x0000000005ea61a0
sw x3, 0(x2) # store 0x0000000005ea61a0 in memory
flh f26, 0(x2) # load 0x0000000005ea61a0 from memory into f26
fcvt.d.h f2, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002cf4dee7 # load x3 with value 0x000000002cf4dee7
sw x3, 0(x2) # store 0x000000002cf4dee7 in memory
flh f27, 0(x2) # load 0x000000002cf4dee7 from memory into f27
fcvt.d.h f21, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008e6f648c # load x3 with value 0x000000008e6f648c
sw x3, 0(x2) # store 0x000000008e6f648c in memory
flh f28, 0(x2) # load 0x000000008e6f648c from memory into f28
fcvt.d.h f7, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004ff25064 # load x3 with value 0x000000004ff25064
sw x3, 0(x2) # store 0x000000004ff25064 in memory
flh f29, 0(x2) # load 0x000000004ff25064 from memory into f29
fcvt.d.h f8, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a60f3110 # load x3 with value 0x00000000a60f3110
sw x3, 0(x2) # store 0x00000000a60f3110 in memory
flh f30, 0(x2) # load 0x00000000a60f3110 from memory into f30
fcvt.d.h f1, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000230dc334 # load x3 with value 0x00000000230dc334
sw x3, 0(x2) # store 0x00000000230dc334 in memory
flh f31, 0(x2) # load 0x00000000230dc334 from memory into f31
fcvt.d.h f22, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c931924e # load x3 with value 0x00000000c931924e
sw x3, 0(x2) # store 0x00000000c931924e in memory
flh f27, 0(x2) # load 0x00000000c931924e from memory into f27
fcvt.d.h f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001bb8ff3c # load x3 with value 0x000000001bb8ff3c
sw x3, 0(x2) # store 0x000000001bb8ff3c in memory
flh f26, 0(x2) # load 0x000000001bb8ff3c from memory into f26
fcvt.d.h f1, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f8b63626 # load x3 with value 0x00000000f8b63626
sw x3, 0(x2) # store 0x00000000f8b63626 in memory
flh f5, 0(x2) # load 0x00000000f8b63626 from memory into f5
fcvt.d.h f2, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a09fe44f # load x3 with value 0x00000000a09fe44f
sw x3, 0(x2) # store 0x00000000a09fe44f in memory
flh f20, 0(x2) # load 0x00000000a09fe44f from memory into f20
fcvt.d.h f3, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d3fe12f2 # load x3 with value 0x00000000d3fe12f2
sw x3, 0(x2) # store 0x00000000d3fe12f2 in memory
flh f17, 0(x2) # load 0x00000000d3fe12f2 from memory into f17
fcvt.d.h f4, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000086941e31 # load x3 with value 0x0000000086941e31
sw x3, 0(x2) # store 0x0000000086941e31 in memory
flh f18, 0(x2) # load 0x0000000086941e31 from memory into f18
fcvt.d.h f5, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c84c56ba # load x3 with value 0x00000000c84c56ba
sw x3, 0(x2) # store 0x00000000c84c56ba in memory
flh f9, 0(x2) # load 0x00000000c84c56ba from memory into f9
fcvt.d.h f6, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009451e293 # load x3 with value 0x000000009451e293
sw x3, 0(x2) # store 0x000000009451e293 in memory
flh f15, 0(x2) # load 0x000000009451e293 from memory into f15
fcvt.d.h f7, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000068579c17 # load x3 with value 0x0000000068579c17
sw x3, 0(x2) # store 0x0000000068579c17 in memory
flh f30, 0(x2) # load 0x0000000068579c17 from memory into f30
fcvt.d.h f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000008cbd840 # load x3 with value 0x0000000008cbd840
sw x3, 0(x2) # store 0x0000000008cbd840 in memory
flh f9, 0(x2) # load 0x0000000008cbd840 from memory into f9
fcvt.d.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000194f4c53 # load x3 with value 0x00000000194f4c53
sw x3, 0(x2) # store 0x00000000194f4c53 in memory
flh f20, 0(x2) # load 0x00000000194f4c53 from memory into f20
fcvt.d.h f10, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009550f6bf # load x3 with value 0x000000009550f6bf
sw x3, 0(x2) # store 0x000000009550f6bf in memory
flh f19, 0(x2) # load 0x000000009550f6bf from memory into f19
fcvt.d.h f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009e00b424 # load x3 with value 0x000000009e00b424
sw x3, 0(x2) # store 0x000000009e00b424 in memory
flh f22, 0(x2) # load 0x000000009e00b424 from memory into f22
fcvt.d.h f12, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002990c470 # load x3 with value 0x000000002990c470
sw x3, 0(x2) # store 0x000000002990c470 in memory
flh f19, 0(x2) # load 0x000000002990c470 from memory into f19
fcvt.d.h f13, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a1e27a81 # load x3 with value 0x00000000a1e27a81
sw x3, 0(x2) # store 0x00000000a1e27a81 in memory
flh f24, 0(x2) # load 0x00000000a1e27a81 from memory into f24
fcvt.d.h f14, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000011ce4a2b # load x3 with value 0x0000000011ce4a2b
sw x3, 0(x2) # store 0x0000000011ce4a2b in memory
flh f9, 0(x2) # load 0x0000000011ce4a2b from memory into f9
fcvt.d.h f15, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dd08c7c3 # load x3 with value 0x00000000dd08c7c3
sw x3, 0(x2) # store 0x00000000dd08c7c3 in memory
flh f17, 0(x2) # load 0x00000000dd08c7c3 from memory into f17
fcvt.d.h f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000039eed21 # load x3 with value 0x00000000039eed21
sw x3, 0(x2) # store 0x00000000039eed21 in memory
flh f6, 0(x2) # load 0x00000000039eed21 from memory into f6
fcvt.d.h f17, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006fca3f5f # load x3 with value 0x000000006fca3f5f
sw x3, 0(x2) # store 0x000000006fca3f5f in memory
flh f19, 0(x2) # load 0x000000006fca3f5f from memory into f19
fcvt.d.h f18, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000091727835 # load x3 with value 0x0000000091727835
sw x3, 0(x2) # store 0x0000000091727835 in memory
flh f26, 0(x2) # load 0x0000000091727835 from memory into f26
fcvt.d.h f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a63a9fe2 # load x3 with value 0x00000000a63a9fe2
sw x3, 0(x2) # store 0x00000000a63a9fe2 in memory
flh f18, 0(x2) # load 0x00000000a63a9fe2 from memory into f18
fcvt.d.h f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f2e8ab8b # load x3 with value 0x00000000f2e8ab8b
sw x3, 0(x2) # store 0x00000000f2e8ab8b in memory
flh f8, 0(x2) # load 0x00000000f2e8ab8b from memory into f8
fcvt.d.h f21, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ec4151cc # load x3 with value 0x00000000ec4151cc
sw x3, 0(x2) # store 0x00000000ec4151cc in memory
flh f8, 0(x2) # load 0x00000000ec4151cc from memory into f8
fcvt.d.h f22, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ba4b45a5 # load x3 with value 0x00000000ba4b45a5
sw x3, 0(x2) # store 0x00000000ba4b45a5 in memory
flh f29, 0(x2) # load 0x00000000ba4b45a5 from memory into f29
fcvt.d.h f23, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f3e2eba9 # load x3 with value 0x00000000f3e2eba9
sw x3, 0(x2) # store 0x00000000f3e2eba9 in memory
flh f3, 0(x2) # load 0x00000000f3e2eba9 from memory into f3
fcvt.d.h f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e2268267 # load x3 with value 0x00000000e2268267
sw x3, 0(x2) # store 0x00000000e2268267 in memory
flh f28, 0(x2) # load 0x00000000e2268267 from memory into f28
fcvt.d.h f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004e069a15 # load x3 with value 0x000000004e069a15
sw x3, 0(x2) # store 0x000000004e069a15 in memory
flh f1, 0(x2) # load 0x000000004e069a15 from memory into f1
fcvt.d.h f26, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e4190e7d # load x3 with value 0x00000000e4190e7d
sw x3, 0(x2) # store 0x00000000e4190e7d in memory
flh f12, 0(x2) # load 0x00000000e4190e7d from memory into f12
fcvt.d.h f27, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000238e3d05 # load x3 with value 0x00000000238e3d05
sw x3, 0(x2) # store 0x00000000238e3d05 in memory
flh f6, 0(x2) # load 0x00000000238e3d05 from memory into f6
fcvt.d.h f28, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000094907e91 # load x3 with value 0x0000000094907e91
sw x3, 0(x2) # store 0x0000000094907e91 in memory
flh f27, 0(x2) # load 0x0000000094907e91 from memory into f27
fcvt.d.h f29, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a094c45b # load x3 with value 0x00000000a094c45b
sw x3, 0(x2) # store 0x00000000a094c45b in memory
flh f29, 0(x2) # load 0x00000000a094c45b from memory into f29
fcvt.d.h f30, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f3ebc516 # load x3 with value 0x00000000f3ebc516
sw x3, 0(x2) # store 0x00000000f3ebc516 in memory
flh f29, 0(x2) # load 0x00000000f3ebc516 from memory into f29
fcvt.d.h f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flh f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvt.d.h f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008000 # load x3 with value 0x0000000000008000
sw x3, 0(x2) # store 0x0000000000008000 in memory
flh f30, 0(x2) # load 0x0000000000008000 from memory into f30
fcvt.d.h f7, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003c00 # load x3 with value 0x0000000000003c00
sw x3, 0(x2) # store 0x0000000000003c00 in memory
flh f11, 0(x2) # load 0x0000000000003c00 from memory into f11
fcvt.d.h f27, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000bc00 # load x3 with value 0x000000000000bc00
sw x3, 0(x2) # store 0x000000000000bc00 in memory
flh f16, 0(x2) # load 0x000000000000bc00 from memory into f16
fcvt.d.h f20, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003e00 # load x3 with value 0x0000000000003e00
sw x3, 0(x2) # store 0x0000000000003e00 in memory
flh f30, 0(x2) # load 0x0000000000003e00 from memory into f30
fcvt.d.h f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000be00 # load x3 with value 0x000000000000be00
sw x3, 0(x2) # store 0x000000000000be00 in memory
flh f18, 0(x2) # load 0x000000000000be00 from memory into f18
fcvt.d.h f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000004000 # load x3 with value 0x0000000000004000
sw x3, 0(x2) # store 0x0000000000004000 in memory
flh f26, 0(x2) # load 0x0000000000004000 from memory into f26
fcvt.d.h f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c000 # load x3 with value 0x000000000000c000
sw x3, 0(x2) # store 0x000000000000c000 in memory
flh f10, 0(x2) # load 0x000000000000c000 from memory into f10
fcvt.d.h f16, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000400 # load x3 with value 0x0000000000000400
sw x3, 0(x2) # store 0x0000000000000400 in memory
flh f19, 0(x2) # load 0x0000000000000400 from memory into f19
fcvt.d.h f27, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008400 # load x3 with value 0x0000000000008400
sw x3, 0(x2) # store 0x0000000000008400 in memory
flh f19, 0(x2) # load 0x0000000000008400 from memory into f19
fcvt.d.h f17, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007bff # load x3 with value 0x0000000000007bff
sw x3, 0(x2) # store 0x0000000000007bff in memory
flh f9, 0(x2) # load 0x0000000000007bff from memory into f9
fcvt.d.h f14, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fbff # load x3 with value 0x000000000000fbff
sw x3, 0(x2) # store 0x000000000000fbff in memory
flh f10, 0(x2) # load 0x000000000000fbff from memory into f10
fcvt.d.h f14, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000003ff # load x3 with value 0x00000000000003ff
sw x3, 0(x2) # store 0x00000000000003ff in memory
flh f24, 0(x2) # load 0x00000000000003ff from memory into f24
fcvt.d.h f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000083ff # load x3 with value 0x00000000000083ff
sw x3, 0(x2) # store 0x00000000000083ff in memory
flh f8, 0(x2) # load 0x00000000000083ff from memory into f8
fcvt.d.h f22, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000200 # load x3 with value 0x0000000000000200
sw x3, 0(x2) # store 0x0000000000000200 in memory
flh f9, 0(x2) # load 0x0000000000000200 from memory into f9
fcvt.d.h f13, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008200 # load x3 with value 0x0000000000008200
sw x3, 0(x2) # store 0x0000000000008200 in memory
flh f27, 0(x2) # load 0x0000000000008200 from memory into f27
fcvt.d.h f23, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sw x3, 0(x2) # store 0x0000000000000001 in memory
flh f1, 0(x2) # load 0x0000000000000001 from memory into f1
fcvt.d.h f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008001 # load x3 with value 0x0000000000008001
sw x3, 0(x2) # store 0x0000000000008001 in memory
flh f21, 0(x2) # load 0x0000000000008001 from memory into f21
fcvt.d.h f3, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c00 # load x3 with value 0x0000000000007c00
sw x3, 0(x2) # store 0x0000000000007c00 in memory
flh f25, 0(x2) # load 0x0000000000007c00 from memory into f25
fcvt.d.h f27, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc00 # load x3 with value 0x000000000000fc00
sw x3, 0(x2) # store 0x000000000000fc00 in memory
flh f20, 0(x2) # load 0x000000000000fc00 from memory into f20
fcvt.d.h f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007e00 # load x3 with value 0x0000000000007e00
sw x3, 0(x2) # store 0x0000000000007e00 in memory
flh f22, 0(x2) # load 0x0000000000007e00 from memory into f22
fcvt.d.h f12, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007fff # load x3 with value 0x0000000000007fff
sw x3, 0(x2) # store 0x0000000000007fff in memory
flh f8, 0(x2) # load 0x0000000000007fff from memory into f8
fcvt.d.h f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fe00 # load x3 with value 0x000000000000fe00
sw x3, 0(x2) # store 0x000000000000fe00 in memory
flh f31, 0(x2) # load 0x000000000000fe00 from memory into f31
fcvt.d.h f8, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c01 # load x3 with value 0x0000000000007c01
sw x3, 0(x2) # store 0x0000000000007c01 in memory
flh f24, 0(x2) # load 0x0000000000007c01 from memory into f24
fcvt.d.h f12, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007dff # load x3 with value 0x0000000000007dff
sw x3, 0(x2) # store 0x0000000000007dff in memory
flh f15, 0(x2) # load 0x0000000000007dff from memory into f15
fcvt.d.h f18, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc01 # load x3 with value 0x000000000000fc01
sw x3, 0(x2) # store 0x000000000000fc01 in memory
flh f26, 0(x2) # load 0x000000000000fc01 from memory into f26
fcvt.d.h f14, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000058b4 # load x3 with value 0x00000000000058b4
sw x3, 0(x2) # store 0x00000000000058b4 in memory
flh f30, 0(x2) # load 0x00000000000058b4 from memory into f30
fcvt.d.h f27, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c93a # load x3 with value 0x000000000000c93a
sw x3, 0(x2) # store 0x000000000000c93a in memory
flh f22, 0(x2) # load 0x000000000000c93a from memory into f22
fcvt.d.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a4e221d3 # load x3 with value 0x00000000a4e221d3
sw x3, 0(x2) # store 0x00000000a4e221d3 in memory
flh f0, 0(x2) # load 0x00000000a4e221d3 from memory into f0
fcvt.d.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ddc0eeb0 # load x3 with value 0x00000000ddc0eeb0
sw x3, 0(x2) # store 0x00000000ddc0eeb0 in memory
flh f1, 0(x2) # load 0x00000000ddc0eeb0 from memory into f1
fcvt.d.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b6f2d731 # load x3 with value 0x00000000b6f2d731
sw x3, 0(x2) # store 0x00000000b6f2d731 in memory
flh f2, 0(x2) # load 0x00000000b6f2d731 from memory into f2
fcvt.d.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000020f9516b # load x3 with value 0x0000000020f9516b
sw x3, 0(x2) # store 0x0000000020f9516b in memory
flh f3, 0(x2) # load 0x0000000020f9516b from memory into f3
fcvt.d.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000073f019bc # load x3 with value 0x0000000073f019bc
sw x3, 0(x2) # store 0x0000000073f019bc in memory
flh f4, 0(x2) # load 0x0000000073f019bc from memory into f4
fcvt.d.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006ab21ce1 # load x3 with value 0x000000006ab21ce1
sw x3, 0(x2) # store 0x000000006ab21ce1 in memory
flh f5, 0(x2) # load 0x000000006ab21ce1 from memory into f5
fcvt.d.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000340f0db8 # load x3 with value 0x00000000340f0db8
sw x3, 0(x2) # store 0x00000000340f0db8 in memory
flh f6, 0(x2) # load 0x00000000340f0db8 from memory into f6
fcvt.d.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b1f73ce3 # load x3 with value 0x00000000b1f73ce3
sw x3, 0(x2) # store 0x00000000b1f73ce3 in memory
flh f7, 0(x2) # load 0x00000000b1f73ce3 from memory into f7
fcvt.d.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f78f3159 # load x3 with value 0x00000000f78f3159
sw x3, 0(x2) # store 0x00000000f78f3159 in memory
flh f8, 0(x2) # load 0x00000000f78f3159 from memory into f8
fcvt.d.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d2d502bf # load x3 with value 0x00000000d2d502bf
sw x3, 0(x2) # store 0x00000000d2d502bf in memory
flh f9, 0(x2) # load 0x00000000d2d502bf from memory into f9
fcvt.d.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002c7fa093 # load x3 with value 0x000000002c7fa093
sw x3, 0(x2) # store 0x000000002c7fa093 in memory
flh f10, 0(x2) # load 0x000000002c7fa093 from memory into f10
fcvt.d.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b24df53f # load x3 with value 0x00000000b24df53f
sw x3, 0(x2) # store 0x00000000b24df53f in memory
flh f11, 0(x2) # load 0x00000000b24df53f from memory into f11
fcvt.d.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e7b4fa49 # load x3 with value 0x00000000e7b4fa49
sw x3, 0(x2) # store 0x00000000e7b4fa49 in memory
flh f12, 0(x2) # load 0x00000000e7b4fa49 from memory into f12
fcvt.d.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000674885c3 # load x3 with value 0x00000000674885c3
sw x3, 0(x2) # store 0x00000000674885c3 in memory
flh f13, 0(x2) # load 0x00000000674885c3 from memory into f13
fcvt.d.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e5e35db2 # load x3 with value 0x00000000e5e35db2
sw x3, 0(x2) # store 0x00000000e5e35db2 in memory
flh f14, 0(x2) # load 0x00000000e5e35db2 from memory into f14
fcvt.d.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000005531f725 # load x3 with value 0x000000005531f725
sw x3, 0(x2) # store 0x000000005531f725 in memory
flh f15, 0(x2) # load 0x000000005531f725 from memory into f15
fcvt.d.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000074609710 # load x3 with value 0x0000000074609710
sw x3, 0(x2) # store 0x0000000074609710 in memory
flh f16, 0(x2) # load 0x0000000074609710 from memory into f16
fcvt.d.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dbb73e8b # load x3 with value 0x00000000dbb73e8b
sw x3, 0(x2) # store 0x00000000dbb73e8b in memory
flh f17, 0(x2) # load 0x00000000dbb73e8b from memory into f17
fcvt.d.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009369bab6 # load x3 with value 0x000000009369bab6
sw x3, 0(x2) # store 0x000000009369bab6 in memory
flh f18, 0(x2) # load 0x000000009369bab6 from memory into f18
fcvt.d.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000a02e920 # load x3 with value 0x000000000a02e920
sw x3, 0(x2) # store 0x000000000a02e920 in memory
flh f19, 0(x2) # load 0x000000000a02e920 from memory into f19
fcvt.d.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000da57893d # load x3 with value 0x00000000da57893d
sw x3, 0(x2) # store 0x00000000da57893d in memory
flh f20, 0(x2) # load 0x00000000da57893d from memory into f20
fcvt.d.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000543458d6 # load x3 with value 0x00000000543458d6
sw x3, 0(x2) # store 0x00000000543458d6 in memory
flh f21, 0(x2) # load 0x00000000543458d6 from memory into f21
fcvt.d.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a5419c00 # load x3 with value 0x00000000a5419c00
sw x3, 0(x2) # store 0x00000000a5419c00 in memory
flh f22, 0(x2) # load 0x00000000a5419c00 from memory into f22
fcvt.d.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dc8c2fb2 # load x3 with value 0x00000000dc8c2fb2
sw x3, 0(x2) # store 0x00000000dc8c2fb2 in memory
flh f23, 0(x2) # load 0x00000000dc8c2fb2 from memory into f23
fcvt.d.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000005e049fcd # load x3 with value 0x000000005e049fcd
sw x3, 0(x2) # store 0x000000005e049fcd in memory
flh f24, 0(x2) # load 0x000000005e049fcd from memory into f24
fcvt.d.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bac975d3 # load x3 with value 0x00000000bac975d3
sw x3, 0(x2) # store 0x00000000bac975d3 in memory
flh f25, 0(x2) # load 0x00000000bac975d3 from memory into f25
fcvt.d.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bd39611f # load x3 with value 0x00000000bd39611f
sw x3, 0(x2) # store 0x00000000bd39611f in memory
flh f26, 0(x2) # load 0x00000000bd39611f from memory into f26
fcvt.d.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003a9408d0 # load x3 with value 0x000000003a9408d0
sw x3, 0(x2) # store 0x000000003a9408d0 in memory
flh f27, 0(x2) # load 0x000000003a9408d0 from memory into f27
fcvt.d.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dbd25a14 # load x3 with value 0x00000000dbd25a14
sw x3, 0(x2) # store 0x00000000dbd25a14 in memory
flh f28, 0(x2) # load 0x00000000dbd25a14 from memory into f28
fcvt.d.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000044de0964 # load x3 with value 0x0000000044de0964
sw x3, 0(x2) # store 0x0000000044de0964 in memory
flh f29, 0(x2) # load 0x0000000044de0964 from memory into f29
fcvt.d.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d8255b73 # load x3 with value 0x00000000d8255b73
sw x3, 0(x2) # store 0x00000000d8255b73 in memory
flh f30, 0(x2) # load 0x00000000d8255b73 from memory into f30
fcvt.d.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006f50e31e # load x3 with value 0x000000006f50e31e
sw x3, 0(x2) # store 0x000000006f50e31e in memory
flh f31, 0(x2) # load 0x000000006f50e31e from memory into f31
fcvt.d.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fcvt.d.h f23, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fcvt.d.h f21, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
fcvt.d.h f10, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fcvt.d.h f11, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
fcvt.d.h f23, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.d.h f22, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
fcvt.d.h f20, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
fcvt.d.h f15, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
fcvt.d.h f30, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
fcvt.d.h f10, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffeffffffff7e00 from memory into f8
fcvt.d.h f24, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffefffff7fff from memory into f23
fcvt.d.h f21, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
fcvt.d.h f9, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfffffffcffff7dff from memory into f13
fcvt.d.h f10, f13 # perform operation second time to make sure flags don't change

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
