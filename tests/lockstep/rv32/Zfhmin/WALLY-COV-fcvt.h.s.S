///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfhmin/WALLY-COV-fcvt.h.s.S
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
