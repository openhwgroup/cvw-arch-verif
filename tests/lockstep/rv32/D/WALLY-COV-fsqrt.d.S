///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsqrt.d.S
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
add x3, x23, x9 # perform first operation
fsqrt.d f14, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x18, x5 # perform first operation
fsqrt.d f8, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x7, x22 # perform first operation
fsqrt.d f10, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f23, f9, f18 # perform first operation
fsqrt.d f23, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x17, x30 # perform first operation
fsqrt.d f30, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x29, x10 # perform first operation
fsqrt.d f22, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f1, f30 # perform first operation
fsqrt.d f19, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f19, f26 # perform first operation
fsqrt.d f27, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f22, f25 # perform first operation
fsqrt.d f31, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f26, f2 # perform first operation
fsqrt.d f26, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f15, f27, f17 # perform first operation
fsqrt.d f17, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f2, f12 # perform first operation
fsqrt.d f13, f28 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1f434518 # load x3 with 32 MSBs 0x000000001f434518
sw x3, 0(x2) # store x3 (0x1f434518) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f434518
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000001f434518 from memory into f0
fsqrt.d f20, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fe14d3f # load x3 with 32 MSBs 0x000000003fe14d3f
sw x3, 0(x2) # store x3 (0x3fe14d3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fe14d3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003fe14d3f from memory into f1
fsqrt.d f25, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfcc2cf33 # load x3 with 32 MSBs 0x00000000fcc2cf33
sw x3, 0(x2) # store x3 (0xfcc2cf33) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fcc2cf33
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000fcc2cf33 from memory into f2
fsqrt.d f22, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbf64583 # load x3 with 32 MSBs 0x00000000fbf64583
sw x3, 0(x2) # store x3 (0xfbf64583) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fbf64583
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000fbf64583 from memory into f3
fsqrt.d f11, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x965556af # load x3 with 32 MSBs 0x00000000965556af
sw x3, 0(x2) # store x3 (0x965556af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000965556af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000965556af from memory into f4
fsqrt.d f25, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fd33d68 # load x3 with 32 MSBs 0x000000003fd33d68
sw x3, 0(x2) # store x3 (0x3fd33d68) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fd33d68
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000003fd33d68 from memory into f5
fsqrt.d f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff3fdf69 # load x3 with 32 MSBs 0x00000000ff3fdf69
sw x3, 0(x2) # store x3 (0xff3fdf69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff3fdf69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ff3fdf69 from memory into f6
fsqrt.d f3, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x144bac07 # load x3 with 32 MSBs 0x00000000144bac07
sw x3, 0(x2) # store x3 (0x144bac07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000144bac07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000144bac07 from memory into f7
fsqrt.d f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa90c8585 # load x3 with 32 MSBs 0x00000000a90c8585
sw x3, 0(x2) # store x3 (0xa90c8585) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a90c8585
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a90c8585 from memory into f8
fsqrt.d f7, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8b0a06fc # load x3 with 32 MSBs 0x000000008b0a06fc
sw x3, 0(x2) # store x3 (0x8b0a06fc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008b0a06fc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000008b0a06fc from memory into f9
fsqrt.d f14, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc45e4474 # load x3 with 32 MSBs 0x00000000c45e4474
sw x3, 0(x2) # store x3 (0xc45e4474) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c45e4474
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000c45e4474 from memory into f10
fsqrt.d f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x117b262c # load x3 with 32 MSBs 0x00000000117b262c
sw x3, 0(x2) # store x3 (0x117b262c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000117b262c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000117b262c from memory into f11
fsqrt.d f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5bb08bf # load x3 with 32 MSBs 0x00000000d5bb08bf
sw x3, 0(x2) # store x3 (0xd5bb08bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d5bb08bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d5bb08bf from memory into f12
fsqrt.d f29, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8af8d2c3 # load x3 with 32 MSBs 0x000000008af8d2c3
sw x3, 0(x2) # store x3 (0x8af8d2c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008af8d2c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000008af8d2c3 from memory into f13
fsqrt.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0e59872f # load x3 with 32 MSBs 0x000000000e59872f
sw x3, 0(x2) # store x3 (0x0e59872f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e59872f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000e59872f from memory into f14
fsqrt.d f12, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed61c39c # load x3 with 32 MSBs 0x00000000ed61c39c
sw x3, 0(x2) # store x3 (0xed61c39c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed61c39c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000ed61c39c from memory into f15
fsqrt.d f25, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ac354aa # load x3 with 32 MSBs 0x000000003ac354aa
sw x3, 0(x2) # store x3 (0x3ac354aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ac354aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003ac354aa from memory into f16
fsqrt.d f26, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13897887 # load x3 with 32 MSBs 0x0000000013897887
sw x3, 0(x2) # store x3 (0x13897887) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013897887
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000013897887 from memory into f17
fsqrt.d f25, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5dbef6ee # load x3 with 32 MSBs 0x000000005dbef6ee
sw x3, 0(x2) # store x3 (0x5dbef6ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005dbef6ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000005dbef6ee from memory into f18
fsqrt.d f7, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7afa8be3 # load x3 with 32 MSBs 0x000000007afa8be3
sw x3, 0(x2) # store x3 (0x7afa8be3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007afa8be3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007afa8be3 from memory into f19
fsqrt.d f15, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfe322ff3 # load x3 with 32 MSBs 0x00000000fe322ff3
sw x3, 0(x2) # store x3 (0xfe322ff3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe322ff3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000fe322ff3 from memory into f20
fsqrt.d f5, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcbf1f5a3 # load x3 with 32 MSBs 0x00000000cbf1f5a3
sw x3, 0(x2) # store x3 (0xcbf1f5a3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cbf1f5a3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000cbf1f5a3 from memory into f21
fsqrt.d f20, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6105f5a8 # load x3 with 32 MSBs 0x000000006105f5a8
sw x3, 0(x2) # store x3 (0x6105f5a8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006105f5a8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000006105f5a8 from memory into f22
fsqrt.d f30, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x25959b16 # load x3 with 32 MSBs 0x0000000025959b16
sw x3, 0(x2) # store x3 (0x25959b16) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000025959b16
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000025959b16 from memory into f23
fsqrt.d f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee50305a # load x3 with 32 MSBs 0x00000000ee50305a
sw x3, 0(x2) # store x3 (0xee50305a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ee50305a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ee50305a from memory into f24
fsqrt.d f15, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f287ff9 # load x3 with 32 MSBs 0x000000003f287ff9
sw x3, 0(x2) # store x3 (0x3f287ff9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f287ff9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003f287ff9 from memory into f25
fsqrt.d f3, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe063022f # load x3 with 32 MSBs 0x00000000e063022f
sw x3, 0(x2) # store x3 (0xe063022f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e063022f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e063022f from memory into f26
fsqrt.d f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x999f4c87 # load x3 with 32 MSBs 0x00000000999f4c87
sw x3, 0(x2) # store x3 (0x999f4c87) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000999f4c87
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000999f4c87 from memory into f27
fsqrt.d f20, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xca13cbfd # load x3 with 32 MSBs 0x00000000ca13cbfd
sw x3, 0(x2) # store x3 (0xca13cbfd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca13cbfd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ca13cbfd from memory into f28
fsqrt.d f10, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2b9e5d90 # load x3 with 32 MSBs 0x000000002b9e5d90
sw x3, 0(x2) # store x3 (0x2b9e5d90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b9e5d90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002b9e5d90 from memory into f29
fsqrt.d f24, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb5c8c04 # load x3 with 32 MSBs 0x00000000db5c8c04
sw x3, 0(x2) # store x3 (0xdb5c8c04) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db5c8c04
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000db5c8c04 from memory into f30
fsqrt.d f26, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x474c8ac4 # load x3 with 32 MSBs 0x00000000474c8ac4
sw x3, 0(x2) # store x3 (0x474c8ac4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000474c8ac4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000474c8ac4 from memory into f31
fsqrt.d f23, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ce08b0e # load x3 with 32 MSBs 0x000000008ce08b0e
sw x3, 0(x2) # store x3 (0x8ce08b0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ce08b0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000008ce08b0e from memory into f3
fsqrt.d f0, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbd1e47f # load x3 with 32 MSBs 0x00000000fbd1e47f
sw x3, 0(x2) # store x3 (0xfbd1e47f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fbd1e47f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000fbd1e47f from memory into f22
fsqrt.d f1, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84a9c6c0 # load x3 with 32 MSBs 0x0000000084a9c6c0
sw x3, 0(x2) # store x3 (0x84a9c6c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084a9c6c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000084a9c6c0 from memory into f29
fsqrt.d f2, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9cc4bba0 # load x3 with 32 MSBs 0x000000009cc4bba0
sw x3, 0(x2) # store x3 (0x9cc4bba0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009cc4bba0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009cc4bba0 from memory into f19
fsqrt.d f3, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa885f254 # load x3 with 32 MSBs 0x00000000a885f254
sw x3, 0(x2) # store x3 (0xa885f254) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a885f254
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000a885f254 from memory into f13
fsqrt.d f4, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x735e458b # load x3 with 32 MSBs 0x00000000735e458b
sw x3, 0(x2) # store x3 (0x735e458b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000735e458b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000735e458b from memory into f23
fsqrt.d f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x91d3d565 # load x3 with 32 MSBs 0x0000000091d3d565
sw x3, 0(x2) # store x3 (0x91d3d565) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000091d3d565
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000091d3d565 from memory into f30
fsqrt.d f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46d218f7 # load x3 with 32 MSBs 0x0000000046d218f7
sw x3, 0(x2) # store x3 (0x46d218f7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046d218f7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000046d218f7 from memory into f4
fsqrt.d f7, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd34c9de2 # load x3 with 32 MSBs 0x00000000d34c9de2
sw x3, 0(x2) # store x3 (0xd34c9de2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d34c9de2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d34c9de2 from memory into f26
fsqrt.d f8, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x453ccf2a # load x3 with 32 MSBs 0x00000000453ccf2a
sw x3, 0(x2) # store x3 (0x453ccf2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000453ccf2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000453ccf2a from memory into f11
fsqrt.d f9, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf666d714 # load x3 with 32 MSBs 0x00000000f666d714
sw x3, 0(x2) # store x3 (0xf666d714) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f666d714
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000f666d714 from memory into f4
fsqrt.d f10, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa9729107 # load x3 with 32 MSBs 0x00000000a9729107
sw x3, 0(x2) # store x3 (0xa9729107) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a9729107
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a9729107 from memory into f10
fsqrt.d f11, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x05cf63bf # load x3 with 32 MSBs 0x0000000005cf63bf
sw x3, 0(x2) # store x3 (0x05cf63bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005cf63bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000005cf63bf from memory into f15
fsqrt.d f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9834a24 # load x3 with 32 MSBs 0x00000000b9834a24
sw x3, 0(x2) # store x3 (0xb9834a24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9834a24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b9834a24 from memory into f28
fsqrt.d f13, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26e8c63b # load x3 with 32 MSBs 0x0000000026e8c63b
sw x3, 0(x2) # store x3 (0x26e8c63b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000026e8c63b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000026e8c63b from memory into f21
fsqrt.d f14, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4044c28 # load x3 with 32 MSBs 0x00000000b4044c28
sw x3, 0(x2) # store x3 (0xb4044c28) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b4044c28
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b4044c28 from memory into f28
fsqrt.d f15, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x36d6666c # load x3 with 32 MSBs 0x0000000036d6666c
sw x3, 0(x2) # store x3 (0x36d6666c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000036d6666c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000036d6666c from memory into f12
fsqrt.d f16, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5f80c365 # load x3 with 32 MSBs 0x000000005f80c365
sw x3, 0(x2) # store x3 (0x5f80c365) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005f80c365
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000005f80c365 from memory into f15
fsqrt.d f17, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3bb1b022 # load x3 with 32 MSBs 0x000000003bb1b022
sw x3, 0(x2) # store x3 (0x3bb1b022) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003bb1b022
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000003bb1b022 from memory into f19
fsqrt.d f18, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0d1e962d # load x3 with 32 MSBs 0x000000000d1e962d
sw x3, 0(x2) # store x3 (0x0d1e962d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d1e962d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000d1e962d from memory into f21
fsqrt.d f19, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a70eeed # load x3 with 32 MSBs 0x000000002a70eeed
sw x3, 0(x2) # store x3 (0x2a70eeed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a70eeed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000002a70eeed from memory into f30
fsqrt.d f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x599fdb91 # load x3 with 32 MSBs 0x00000000599fdb91
sw x3, 0(x2) # store x3 (0x599fdb91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000599fdb91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000599fdb91 from memory into f27
fsqrt.d f21, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3c907ff0 # load x3 with 32 MSBs 0x000000003c907ff0
sw x3, 0(x2) # store x3 (0x3c907ff0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003c907ff0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000003c907ff0 from memory into f14
fsqrt.d f22, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86d14ef1 # load x3 with 32 MSBs 0x0000000086d14ef1
sw x3, 0(x2) # store x3 (0x86d14ef1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086d14ef1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000086d14ef1 from memory into f21
fsqrt.d f23, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x553ea5b5 # load x3 with 32 MSBs 0x00000000553ea5b5
sw x3, 0(x2) # store x3 (0x553ea5b5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000553ea5b5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000553ea5b5 from memory into f11
fsqrt.d f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8cb26b4 # load x3 with 32 MSBs 0x00000000d8cb26b4
sw x3, 0(x2) # store x3 (0xd8cb26b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8cb26b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d8cb26b4 from memory into f6
fsqrt.d f25, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0da3235 # load x3 with 32 MSBs 0x00000000e0da3235
sw x3, 0(x2) # store x3 (0xe0da3235) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0da3235
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000e0da3235 from memory into f12
fsqrt.d f26, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6da99949 # load x3 with 32 MSBs 0x000000006da99949
sw x3, 0(x2) # store x3 (0x6da99949) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006da99949
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006da99949 from memory into f17
fsqrt.d f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb1931a4 # load x3 with 32 MSBs 0x00000000eb1931a4
sw x3, 0(x2) # store x3 (0xeb1931a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb1931a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000eb1931a4 from memory into f4
fsqrt.d f28, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0f8b2e3 # load x3 with 32 MSBs 0x00000000b0f8b2e3
sw x3, 0(x2) # store x3 (0xb0f8b2e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0f8b2e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b0f8b2e3 from memory into f1
fsqrt.d f29, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2692f72b # load x3 with 32 MSBs 0x000000002692f72b
sw x3, 0(x2) # store x3 (0x2692f72b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002692f72b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002692f72b from memory into f20
fsqrt.d f30, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ad60c8c # load x3 with 32 MSBs 0x000000006ad60c8c
sw x3, 0(x2) # store x3 (0x6ad60c8c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ad60c8c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006ad60c8c from memory into f29
fsqrt.d f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fsqrt.d f12, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fsqrt.d f13, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fsqrt.d f30, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fsqrt.d f4, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fsqrt.d f19, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fsqrt.d f7, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fsqrt.d f8, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fsqrt.d f3, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fsqrt.d f15, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fsqrt.d f9, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fsqrt.d f6, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fsqrt.d f10, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fsqrt.d f15, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fsqrt.d f21, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
fsqrt.d f30, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fsqrt.d f9, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fsqrt.d f4, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fsqrt.d f14, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fsqrt.d f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fsqrt.d f24, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fsqrt.d f15, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fsqrt.d f2, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff8000000000000 from memory into f18
fsqrt.d f4, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fsqrt.d f2, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fsqrt.d f10, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000001 from memory into f30
fsqrt.d f19, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fsqrt.d f4, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fsqrt.d f22, f31 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbb0a4fe4 # load x3 with 32 MSBs 0x00000000bb0a4fe4
sw x3, 0(x2) # store x3 (0xbb0a4fe4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb0a4fe4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000bb0a4fe4 from memory into f0
fsqrt.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4dc67d25 # load x3 with 32 MSBs 0x000000004dc67d25
sw x3, 0(x2) # store x3 (0x4dc67d25) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004dc67d25
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004dc67d25 from memory into f1
fsqrt.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c7f0d63 # load x3 with 32 MSBs 0x000000001c7f0d63
sw x3, 0(x2) # store x3 (0x1c7f0d63) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c7f0d63
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000001c7f0d63 from memory into f2
fsqrt.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5cea3ff2 # load x3 with 32 MSBs 0x000000005cea3ff2
sw x3, 0(x2) # store x3 (0x5cea3ff2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005cea3ff2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000005cea3ff2 from memory into f3
fsqrt.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x257f170d # load x3 with 32 MSBs 0x00000000257f170d
sw x3, 0(x2) # store x3 (0x257f170d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000257f170d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000257f170d from memory into f4
fsqrt.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9948a89f # load x3 with 32 MSBs 0x000000009948a89f
sw x3, 0(x2) # store x3 (0x9948a89f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009948a89f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000009948a89f from memory into f5
fsqrt.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x048dab64 # load x3 with 32 MSBs 0x00000000048dab64
sw x3, 0(x2) # store x3 (0x048dab64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000048dab64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000048dab64 from memory into f6
fsqrt.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd92175a3 # load x3 with 32 MSBs 0x00000000d92175a3
sw x3, 0(x2) # store x3 (0xd92175a3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d92175a3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d92175a3 from memory into f7
fsqrt.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x132d037b # load x3 with 32 MSBs 0x00000000132d037b
sw x3, 0(x2) # store x3 (0x132d037b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000132d037b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000132d037b from memory into f8
fsqrt.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83fa922a # load x3 with 32 MSBs 0x0000000083fa922a
sw x3, 0(x2) # store x3 (0x83fa922a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000083fa922a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000083fa922a from memory into f9
fsqrt.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf09fc9f6 # load x3 with 32 MSBs 0x00000000f09fc9f6
sw x3, 0(x2) # store x3 (0xf09fc9f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f09fc9f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f09fc9f6 from memory into f10
fsqrt.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f002fd0 # load x3 with 32 MSBs 0x000000000f002fd0
sw x3, 0(x2) # store x3 (0x0f002fd0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f002fd0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000f002fd0 from memory into f11
fsqrt.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb18fffc # load x3 with 32 MSBs 0x00000000eb18fffc
sw x3, 0(x2) # store x3 (0xeb18fffc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb18fffc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000eb18fffc from memory into f12
fsqrt.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4b858348 # load x3 with 32 MSBs 0x000000004b858348
sw x3, 0(x2) # store x3 (0x4b858348) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004b858348
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000004b858348 from memory into f13
fsqrt.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe084f538 # load x3 with 32 MSBs 0x00000000e084f538
sw x3, 0(x2) # store x3 (0xe084f538) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e084f538
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000e084f538 from memory into f14
fsqrt.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5efb9e2a # load x3 with 32 MSBs 0x000000005efb9e2a
sw x3, 0(x2) # store x3 (0x5efb9e2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005efb9e2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000005efb9e2a from memory into f15
fsqrt.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c0e07d9 # load x3 with 32 MSBs 0x000000008c0e07d9
sw x3, 0(x2) # store x3 (0x8c0e07d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008c0e07d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008c0e07d9 from memory into f16
fsqrt.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x838e3477 # load x3 with 32 MSBs 0x00000000838e3477
sw x3, 0(x2) # store x3 (0x838e3477) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000838e3477
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000838e3477 from memory into f17
fsqrt.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6c5cfb1 # load x3 with 32 MSBs 0x00000000a6c5cfb1
sw x3, 0(x2) # store x3 (0xa6c5cfb1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6c5cfb1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000a6c5cfb1 from memory into f18
fsqrt.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xac3c8a73 # load x3 with 32 MSBs 0x00000000ac3c8a73
sw x3, 0(x2) # store x3 (0xac3c8a73) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac3c8a73
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ac3c8a73 from memory into f19
fsqrt.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x143f7764 # load x3 with 32 MSBs 0x00000000143f7764
sw x3, 0(x2) # store x3 (0x143f7764) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000143f7764
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000143f7764 from memory into f20
fsqrt.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55ee206b # load x3 with 32 MSBs 0x0000000055ee206b
sw x3, 0(x2) # store x3 (0x55ee206b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055ee206b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000055ee206b from memory into f21
fsqrt.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x227e9116 # load x3 with 32 MSBs 0x00000000227e9116
sw x3, 0(x2) # store x3 (0x227e9116) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000227e9116
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000227e9116 from memory into f22
fsqrt.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96b3f5fd # load x3 with 32 MSBs 0x0000000096b3f5fd
sw x3, 0(x2) # store x3 (0x96b3f5fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096b3f5fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000096b3f5fd from memory into f23
fsqrt.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa11ff548 # load x3 with 32 MSBs 0x00000000a11ff548
sw x3, 0(x2) # store x3 (0xa11ff548) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a11ff548
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a11ff548 from memory into f24
fsqrt.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3c32eb53 # load x3 with 32 MSBs 0x000000003c32eb53
sw x3, 0(x2) # store x3 (0x3c32eb53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003c32eb53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003c32eb53 from memory into f25
fsqrt.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae26c17c # load x3 with 32 MSBs 0x00000000ae26c17c
sw x3, 0(x2) # store x3 (0xae26c17c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ae26c17c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ae26c17c from memory into f26
fsqrt.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdbdc6e7f # load x3 with 32 MSBs 0x00000000dbdc6e7f
sw x3, 0(x2) # store x3 (0xdbdc6e7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbdc6e7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000dbdc6e7f from memory into f27
fsqrt.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe58ce735 # load x3 with 32 MSBs 0x00000000e58ce735
sw x3, 0(x2) # store x3 (0xe58ce735) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e58ce735
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e58ce735 from memory into f28
fsqrt.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d112a97 # load x3 with 32 MSBs 0x000000005d112a97
sw x3, 0(x2) # store x3 (0x5d112a97) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d112a97
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000005d112a97 from memory into f29
fsqrt.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf0df9e73 # load x3 with 32 MSBs 0x00000000f0df9e73
sw x3, 0(x2) # store x3 (0xf0df9e73) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f0df9e73
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f0df9e73 from memory into f30
fsqrt.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x405d3b56 # load x3 with 32 MSBs 0x00000000405d3b56
sw x3, 0(x2) # store x3 (0x405d3b56) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000405d3b56
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000405d3b56 from memory into f31
fsqrt.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x077a80ec # load x3 with 32 MSBs 0x00000000077a80ec
sw x3, 0(x2) # store x3 (0x077a80ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000077a80ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000077a80ec from memory into f15
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
