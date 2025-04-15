///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fcvt.h.d.S
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
add x11, x12, x18 # perform first operation
fcvt.h.d f14, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x9, x5 # perform first operation
fcvt.h.d f18, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x18, x30 # perform first operation
fcvt.h.d f16, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f27, f5, f13 # perform first operation
fcvt.h.d f10, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x14, x20 # perform first operation
fcvt.h.d f20, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x21, x30 # perform first operation
fcvt.h.d f30, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f11, f22 # perform first operation
fcvt.h.d f20, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f26, f3 # perform first operation
fcvt.h.d f7, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f14, f23 # perform first operation
fcvt.h.d f24, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f25, f5, f1 # perform first operation
fcvt.h.d f5, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f10, f27, f8 # perform first operation
fcvt.h.d f8, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f2, f18 # perform first operation
fcvt.h.d f22, f10 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e74b255 # load x3 with 32 MSBs 0x000000005e74b255
sw x3, 0(x2) # store x3 (0x5e74b255) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e74b255
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000005e74b255 from memory into f0
fcvt.h.d f14, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x575bb613 # load x3 with 32 MSBs 0x00000000575bb613
sw x3, 0(x2) # store x3 (0x575bb613) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000575bb613
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000575bb613 from memory into f1
fcvt.h.d f24, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5644e051 # load x3 with 32 MSBs 0x000000005644e051
sw x3, 0(x2) # store x3 (0x5644e051) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005644e051
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005644e051 from memory into f2
fcvt.h.d f23, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbaa439f1 # load x3 with 32 MSBs 0x00000000baa439f1
sw x3, 0(x2) # store x3 (0xbaa439f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000baa439f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000baa439f1 from memory into f3
fcvt.h.d f23, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc04d3a9f # load x3 with 32 MSBs 0x00000000c04d3a9f
sw x3, 0(x2) # store x3 (0xc04d3a9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c04d3a9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000c04d3a9f from memory into f4
fcvt.h.d f19, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0bc1f152 # load x3 with 32 MSBs 0x000000000bc1f152
sw x3, 0(x2) # store x3 (0x0bc1f152) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000bc1f152
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000bc1f152 from memory into f5
fcvt.h.d f10, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46f03afa # load x3 with 32 MSBs 0x0000000046f03afa
sw x3, 0(x2) # store x3 (0x46f03afa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046f03afa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000046f03afa from memory into f6
fcvt.h.d f2, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96c6024e # load x3 with 32 MSBs 0x0000000096c6024e
sw x3, 0(x2) # store x3 (0x96c6024e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096c6024e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000096c6024e from memory into f7
fcvt.h.d f16, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27931705 # load x3 with 32 MSBs 0x0000000027931705
sw x3, 0(x2) # store x3 (0x27931705) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027931705
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000027931705 from memory into f8
fcvt.h.d f2, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb72de4ec # load x3 with 32 MSBs 0x00000000b72de4ec
sw x3, 0(x2) # store x3 (0xb72de4ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b72de4ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b72de4ec from memory into f9
fcvt.h.d f31, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5f8e013 # load x3 with 32 MSBs 0x00000000f5f8e013
sw x3, 0(x2) # store x3 (0xf5f8e013) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5f8e013
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f5f8e013 from memory into f10
fcvt.h.d f8, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf0762e55 # load x3 with 32 MSBs 0x00000000f0762e55
sw x3, 0(x2) # store x3 (0xf0762e55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f0762e55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f0762e55 from memory into f11
fcvt.h.d f20, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdace95bb # load x3 with 32 MSBs 0x00000000dace95bb
sw x3, 0(x2) # store x3 (0xdace95bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dace95bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000dace95bb from memory into f12
fcvt.h.d f25, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80d99d4a # load x3 with 32 MSBs 0x0000000080d99d4a
sw x3, 0(x2) # store x3 (0x80d99d4a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080d99d4a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000080d99d4a from memory into f13
fcvt.h.d f30, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f83e7bb # load x3 with 32 MSBs 0x000000000f83e7bb
sw x3, 0(x2) # store x3 (0x0f83e7bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f83e7bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000f83e7bb from memory into f14
fcvt.h.d f23, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72f3184e # load x3 with 32 MSBs 0x0000000072f3184e
sw x3, 0(x2) # store x3 (0x72f3184e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072f3184e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000072f3184e from memory into f15
fcvt.h.d f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81943856 # load x3 with 32 MSBs 0x0000000081943856
sw x3, 0(x2) # store x3 (0x81943856) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000081943856
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000081943856 from memory into f16
fcvt.h.d f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c1cb53b # load x3 with 32 MSBs 0x000000005c1cb53b
sw x3, 0(x2) # store x3 (0x5c1cb53b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c1cb53b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000005c1cb53b from memory into f17
fcvt.h.d f6, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x901f56d7 # load x3 with 32 MSBs 0x00000000901f56d7
sw x3, 0(x2) # store x3 (0x901f56d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000901f56d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000901f56d7 from memory into f18
fcvt.h.d f8, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6d9edafd # load x3 with 32 MSBs 0x000000006d9edafd
sw x3, 0(x2) # store x3 (0x6d9edafd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d9edafd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006d9edafd from memory into f19
fcvt.h.d f24, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5ee85ee # load x3 with 32 MSBs 0x00000000e5ee85ee
sw x3, 0(x2) # store x3 (0xe5ee85ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5ee85ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e5ee85ee from memory into f20
fcvt.h.d f27, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb30e1299 # load x3 with 32 MSBs 0x00000000b30e1299
sw x3, 0(x2) # store x3 (0xb30e1299) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b30e1299
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b30e1299 from memory into f21
fcvt.h.d f13, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3e34c189 # load x3 with 32 MSBs 0x000000003e34c189
sw x3, 0(x2) # store x3 (0x3e34c189) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003e34c189
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003e34c189 from memory into f22
fcvt.h.d f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2695b40 # load x3 with 32 MSBs 0x00000000b2695b40
sw x3, 0(x2) # store x3 (0xb2695b40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b2695b40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b2695b40 from memory into f23
fcvt.h.d f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x512c3799 # load x3 with 32 MSBs 0x00000000512c3799
sw x3, 0(x2) # store x3 (0x512c3799) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000512c3799
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000512c3799 from memory into f24
fcvt.h.d f30, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe337e426 # load x3 with 32 MSBs 0x00000000e337e426
sw x3, 0(x2) # store x3 (0xe337e426) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e337e426
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e337e426 from memory into f25
fcvt.h.d f21, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0833e815 # load x3 with 32 MSBs 0x000000000833e815
sw x3, 0(x2) # store x3 (0x0833e815) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000833e815
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000000833e815 from memory into f26
fcvt.h.d f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85f10ad5 # load x3 with 32 MSBs 0x0000000085f10ad5
sw x3, 0(x2) # store x3 (0x85f10ad5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085f10ad5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000085f10ad5 from memory into f27
fcvt.h.d f16, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55e0d891 # load x3 with 32 MSBs 0x0000000055e0d891
sw x3, 0(x2) # store x3 (0x55e0d891) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055e0d891
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000055e0d891 from memory into f28
fcvt.h.d f12, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc11c3357 # load x3 with 32 MSBs 0x00000000c11c3357
sw x3, 0(x2) # store x3 (0xc11c3357) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c11c3357
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000c11c3357 from memory into f29
fcvt.h.d f21, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75ef4664 # load x3 with 32 MSBs 0x0000000075ef4664
sw x3, 0(x2) # store x3 (0x75ef4664) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000075ef4664
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000075ef4664 from memory into f30
fcvt.h.d f31, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x246b3bab # load x3 with 32 MSBs 0x00000000246b3bab
sw x3, 0(x2) # store x3 (0x246b3bab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000246b3bab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000246b3bab from memory into f31
fcvt.h.d f26, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x078e1cbb # load x3 with 32 MSBs 0x00000000078e1cbb
sw x3, 0(x2) # store x3 (0x078e1cbb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000078e1cbb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000078e1cbb from memory into f24
fcvt.h.d f0, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc6bb236d # load x3 with 32 MSBs 0x00000000c6bb236d
sw x3, 0(x2) # store x3 (0xc6bb236d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6bb236d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c6bb236d from memory into f19
fcvt.h.d f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb47d9ab5 # load x3 with 32 MSBs 0x00000000b47d9ab5
sw x3, 0(x2) # store x3 (0xb47d9ab5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b47d9ab5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b47d9ab5 from memory into f19
fcvt.h.d f2, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f7a2ff2 # load x3 with 32 MSBs 0x000000006f7a2ff2
sw x3, 0(x2) # store x3 (0x6f7a2ff2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f7a2ff2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000006f7a2ff2 from memory into f3
fcvt.h.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2b0b2aec # load x3 with 32 MSBs 0x000000002b0b2aec
sw x3, 0(x2) # store x3 (0x2b0b2aec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b0b2aec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002b0b2aec from memory into f21
fcvt.h.d f4, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb8b51d98 # load x3 with 32 MSBs 0x00000000b8b51d98
sw x3, 0(x2) # store x3 (0xb8b51d98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8b51d98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b8b51d98 from memory into f23
fcvt.h.d f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0e5058cc # load x3 with 32 MSBs 0x000000000e5058cc
sw x3, 0(x2) # store x3 (0x0e5058cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e5058cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000000e5058cc from memory into f28
fcvt.h.d f6, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x37f13baf # load x3 with 32 MSBs 0x0000000037f13baf
sw x3, 0(x2) # store x3 (0x37f13baf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037f13baf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000037f13baf from memory into f22
fcvt.h.d f7, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8eec8f02 # load x3 with 32 MSBs 0x000000008eec8f02
sw x3, 0(x2) # store x3 (0x8eec8f02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008eec8f02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008eec8f02 from memory into f23
fcvt.h.d f8, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17197b7e # load x3 with 32 MSBs 0x0000000017197b7e
sw x3, 0(x2) # store x3 (0x17197b7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017197b7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000017197b7e from memory into f2
fcvt.h.d f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07038586 # load x3 with 32 MSBs 0x0000000007038586
sw x3, 0(x2) # store x3 (0x07038586) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007038586
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000007038586 from memory into f18
fcvt.h.d f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60448713 # load x3 with 32 MSBs 0x0000000060448713
sw x3, 0(x2) # store x3 (0x60448713) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060448713
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000060448713 from memory into f31
fcvt.h.d f11, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbed13a72 # load x3 with 32 MSBs 0x00000000bed13a72
sw x3, 0(x2) # store x3 (0xbed13a72) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bed13a72
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000bed13a72 from memory into f6
fcvt.h.d f12, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81b6b266 # load x3 with 32 MSBs 0x0000000081b6b266
sw x3, 0(x2) # store x3 (0x81b6b266) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000081b6b266
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000081b6b266 from memory into f3
fcvt.h.d f13, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x632eec50 # load x3 with 32 MSBs 0x00000000632eec50
sw x3, 0(x2) # store x3 (0x632eec50) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000632eec50
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000632eec50 from memory into f12
fcvt.h.d f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa9355fdd # load x3 with 32 MSBs 0x00000000a9355fdd
sw x3, 0(x2) # store x3 (0xa9355fdd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a9355fdd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000a9355fdd from memory into f17
fcvt.h.d f15, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8d2fb92 # load x3 with 32 MSBs 0x00000000e8d2fb92
sw x3, 0(x2) # store x3 (0xe8d2fb92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8d2fb92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e8d2fb92 from memory into f24
fcvt.h.d f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b76ba54 # load x3 with 32 MSBs 0x000000007b76ba54
sw x3, 0(x2) # store x3 (0x7b76ba54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b76ba54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000007b76ba54 from memory into f24
fcvt.h.d f17, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf4b254f # load x3 with 32 MSBs 0x00000000af4b254f
sw x3, 0(x2) # store x3 (0xaf4b254f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af4b254f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000af4b254f from memory into f22
fcvt.h.d f18, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45cf8bed # load x3 with 32 MSBs 0x0000000045cf8bed
sw x3, 0(x2) # store x3 (0x45cf8bed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045cf8bed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000045cf8bed from memory into f27
fcvt.h.d f19, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa39008c2 # load x3 with 32 MSBs 0x00000000a39008c2
sw x3, 0(x2) # store x3 (0xa39008c2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a39008c2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a39008c2 from memory into f22
fcvt.h.d f20, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7add5cf0 # load x3 with 32 MSBs 0x000000007add5cf0
sw x3, 0(x2) # store x3 (0x7add5cf0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007add5cf0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007add5cf0 from memory into f11
fcvt.h.d f21, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb41f60ec # load x3 with 32 MSBs 0x00000000b41f60ec
sw x3, 0(x2) # store x3 (0xb41f60ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b41f60ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b41f60ec from memory into f9
fcvt.h.d f22, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5735e760 # load x3 with 32 MSBs 0x000000005735e760
sw x3, 0(x2) # store x3 (0x5735e760) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005735e760
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000005735e760 from memory into f20
fcvt.h.d f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4b58f750 # load x3 with 32 MSBs 0x000000004b58f750
sw x3, 0(x2) # store x3 (0x4b58f750) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004b58f750
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004b58f750 from memory into f1
fcvt.h.d f24, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7da0b337 # load x3 with 32 MSBs 0x000000007da0b337
sw x3, 0(x2) # store x3 (0x7da0b337) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007da0b337
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007da0b337 from memory into f11
fcvt.h.d f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48638229 # load x3 with 32 MSBs 0x0000000048638229
sw x3, 0(x2) # store x3 (0x48638229) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000048638229
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000048638229 from memory into f10
fcvt.h.d f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72bcf9c1 # load x3 with 32 MSBs 0x0000000072bcf9c1
sw x3, 0(x2) # store x3 (0x72bcf9c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072bcf9c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000072bcf9c1 from memory into f22
fcvt.h.d f27, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x50241ef9 # load x3 with 32 MSBs 0x0000000050241ef9
sw x3, 0(x2) # store x3 (0x50241ef9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050241ef9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000050241ef9 from memory into f20
fcvt.h.d f28, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab6967e7 # load x3 with 32 MSBs 0x00000000ab6967e7
sw x3, 0(x2) # store x3 (0xab6967e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab6967e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ab6967e7 from memory into f7
fcvt.h.d f29, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc3d58e63 # load x3 with 32 MSBs 0x00000000c3d58e63
sw x3, 0(x2) # store x3 (0xc3d58e63) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c3d58e63
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c3d58e63 from memory into f2
fcvt.h.d f30, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8f6cd96 # load x3 with 32 MSBs 0x00000000d8f6cd96
sw x3, 0(x2) # store x3 (0xd8f6cd96) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8f6cd96
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d8f6cd96 from memory into f23
fcvt.h.d f31, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fcvt.h.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fcvt.h.d f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fcvt.h.d f10, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fcvt.h.d f15, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fcvt.h.d f15, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fcvt.h.d f10, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fcvt.h.d f19, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fcvt.h.d f12, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fcvt.h.d f28, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fcvt.h.d f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fcvt.h.d f25, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fcvt.h.d f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fcvt.h.d f26, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fcvt.h.d f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fcvt.h.d f8, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fcvt.h.d f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fcvt.h.d f27, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
fcvt.h.d f27, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fcvt.h.d f12, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fcvt.h.d f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fcvt.h.d f18, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fcvt.h.d f23, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fcvt.h.d f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fcvt.h.d f9, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fcvt.h.d f22, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff0000000000001 from memory into f1
fcvt.h.d f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fcvt.h.d f21, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fcvt.h.d f8, f7 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fcvt.h.d f5, f15, dyn # perform operation
fcvt.h.d f5, f15, rdn # perform operation
fcvt.h.d f5, f15, rmm # perform operation
fcvt.h.d f5, f15, rne # perform operation
fcvt.h.d f5, f15, rtz # perform operation
fcvt.h.d f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f5, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fcvt.h.d f29, f24, dyn # perform operation
fcvt.h.d f29, f24, rdn # perform operation
fcvt.h.d f29, f24, rmm # perform operation
fcvt.h.d f29, f24, rne # perform operation
fcvt.h.d f29, f24, rtz # perform operation
fcvt.h.d f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fcvt.h.d f3, f27, dyn # perform operation
fcvt.h.d f3, f27, rdn # perform operation
fcvt.h.d f3, f27, rmm # perform operation
fcvt.h.d f3, f27, rne # perform operation
fcvt.h.d f3, f27, rtz # perform operation
fcvt.h.d f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f3, f27 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fcvt.h.d f12, f21, dyn # perform operation
fcvt.h.d f12, f21, rdn # perform operation
fcvt.h.d f12, f21, rmm # perform operation
fcvt.h.d f12, f21, rne # perform operation
fcvt.h.d f12, f21, rtz # perform operation
fcvt.h.d f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f12, f21 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fcvt.h.d f13, f8, dyn # perform operation
fcvt.h.d f13, f8, rdn # perform operation
fcvt.h.d f13, f8, rmm # perform operation
fcvt.h.d f13, f8, rne # perform operation
fcvt.h.d f13, f8, rtz # perform operation
fcvt.h.d f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f13, f8 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fcvt.h.d f29, f20, dyn # perform operation
fcvt.h.d f29, f20, rdn # perform operation
fcvt.h.d f29, f20, rmm # perform operation
fcvt.h.d f29, f20, rne # perform operation
fcvt.h.d f29, f20, rtz # perform operation
fcvt.h.d f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fcvt.h.d f2, f5, dyn # perform operation
fcvt.h.d f2, f5, rdn # perform operation
fcvt.h.d f2, f5, rmm # perform operation
fcvt.h.d f2, f5, rne # perform operation
fcvt.h.d f2, f5, rtz # perform operation
fcvt.h.d f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f5 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fcvt.h.d f28, f22, dyn # perform operation
fcvt.h.d f28, f22, rdn # perform operation
fcvt.h.d f28, f22, rmm # perform operation
fcvt.h.d f28, f22, rne # perform operation
fcvt.h.d f28, f22, rtz # perform operation
fcvt.h.d f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f28, f22 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fcvt.h.d f6, f14, dyn # perform operation
fcvt.h.d f6, f14, rdn # perform operation
fcvt.h.d f6, f14, rmm # perform operation
fcvt.h.d f6, f14, rne # perform operation
fcvt.h.d f6, f14, rtz # perform operation
fcvt.h.d f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f6, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fcvt.h.d f2, f30, dyn # perform operation
fcvt.h.d f2, f30, rdn # perform operation
fcvt.h.d f2, f30, rmm # perform operation
fcvt.h.d f2, f30, rne # perform operation
fcvt.h.d f2, f30, rtz # perform operation
fcvt.h.d f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fcvt.h.d f30, f24, dyn # perform operation
fcvt.h.d f30, f24, rdn # perform operation
fcvt.h.d f30, f24, rmm # perform operation
fcvt.h.d f30, f24, rne # perform operation
fcvt.h.d f30, f24, rtz # perform operation
fcvt.h.d f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f30, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fcvt.h.d f10, f1, dyn # perform operation
fcvt.h.d f10, f1, rdn # perform operation
fcvt.h.d f10, f1, rmm # perform operation
fcvt.h.d f10, f1, rne # perform operation
fcvt.h.d f10, f1, rtz # perform operation
fcvt.h.d f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f10, f1 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fcvt.h.d f21, f9, dyn # perform operation
fcvt.h.d f21, f9, rdn # perform operation
fcvt.h.d f21, f9, rmm # perform operation
fcvt.h.d f21, f9, rne # perform operation
fcvt.h.d f21, f9, rtz # perform operation
fcvt.h.d f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fcvt.h.d f21, f1, dyn # perform operation
fcvt.h.d f21, f1, rdn # perform operation
fcvt.h.d f21, f1, rmm # perform operation
fcvt.h.d f21, f1, rne # perform operation
fcvt.h.d f21, f1, rtz # perform operation
fcvt.h.d f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f1 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fcvt.h.d f16, f23, dyn # perform operation
fcvt.h.d f16, f23, rdn # perform operation
fcvt.h.d f16, f23, rmm # perform operation
fcvt.h.d f16, f23, rne # perform operation
fcvt.h.d f16, f23, rtz # perform operation
fcvt.h.d f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f16, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fcvt.h.d f29, f11, dyn # perform operation
fcvt.h.d f29, f11, rdn # perform operation
fcvt.h.d f29, f11, rmm # perform operation
fcvt.h.d f29, f11, rne # perform operation
fcvt.h.d f29, f11, rtz # perform operation
fcvt.h.d f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fcvt.h.d f31, f12, dyn # perform operation
fcvt.h.d f31, f12, rdn # perform operation
fcvt.h.d f31, f12, rmm # perform operation
fcvt.h.d f31, f12, rne # perform operation
fcvt.h.d f31, f12, rtz # perform operation
fcvt.h.d f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f31, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fcvt.h.d f2, f31, dyn # perform operation
fcvt.h.d f2, f31, rdn # perform operation
fcvt.h.d f2, f31, rmm # perform operation
fcvt.h.d f2, f31, rne # perform operation
fcvt.h.d f2, f31, rtz # perform operation
fcvt.h.d f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fcvt.h.d f18, f26, dyn # perform operation
fcvt.h.d f18, f26, rdn # perform operation
fcvt.h.d f18, f26, rmm # perform operation
fcvt.h.d f18, f26, rne # perform operation
fcvt.h.d f18, f26, rtz # perform operation
fcvt.h.d f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f18, f26 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fcvt.h.d f28, f17, dyn # perform operation
fcvt.h.d f28, f17, rdn # perform operation
fcvt.h.d f28, f17, rmm # perform operation
fcvt.h.d f28, f17, rne # perform operation
fcvt.h.d f28, f17, rtz # perform operation
fcvt.h.d f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f28, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fcvt.h.d f20, f6, dyn # perform operation
fcvt.h.d f20, f6, rdn # perform operation
fcvt.h.d f20, f6, rmm # perform operation
fcvt.h.d f20, f6, rne # perform operation
fcvt.h.d f20, f6, rtz # perform operation
fcvt.h.d f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f20, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fcvt.h.d f14, f9, dyn # perform operation
fcvt.h.d f14, f9, rdn # perform operation
fcvt.h.d f14, f9, rmm # perform operation
fcvt.h.d f14, f9, rne # perform operation
fcvt.h.d f14, f9, rtz # perform operation
fcvt.h.d f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f14, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
fcvt.h.d f6, f30, dyn # perform operation
fcvt.h.d f6, f30, rdn # perform operation
fcvt.h.d f6, f30, rmm # perform operation
fcvt.h.d f6, f30, rne # perform operation
fcvt.h.d f6, f30, rtz # perform operation
fcvt.h.d f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f6, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fcvt.h.d f14, f6, dyn # perform operation
fcvt.h.d f14, f6, rdn # perform operation
fcvt.h.d f14, f6, rmm # perform operation
fcvt.h.d f14, f6, rne # perform operation
fcvt.h.d f14, f6, rtz # perform operation
fcvt.h.d f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f14, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fcvt.h.d f7, f10, dyn # perform operation
fcvt.h.d f7, f10, rdn # perform operation
fcvt.h.d f7, f10, rmm # perform operation
fcvt.h.d f7, f10, rne # perform operation
fcvt.h.d f7, f10, rtz # perform operation
fcvt.h.d f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f7, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000001 from memory into f20
fcvt.h.d f9, f20, dyn # perform operation
fcvt.h.d f9, f20, rdn # perform operation
fcvt.h.d f9, f20, rmm # perform operation
fcvt.h.d f9, f20, rne # perform operation
fcvt.h.d f9, f20, rtz # perform operation
fcvt.h.d f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f9, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fcvt.h.d f22, f21, dyn # perform operation
fcvt.h.d f22, f21, rdn # perform operation
fcvt.h.d f22, f21, rmm # perform operation
fcvt.h.d f22, f21, rne # perform operation
fcvt.h.d f22, f21, rtz # perform operation
fcvt.h.d f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f21 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fcvt.h.d f2, f1, dyn # perform operation
fcvt.h.d f2, f1, rdn # perform operation
fcvt.h.d f2, f1, rmm # perform operation
fcvt.h.d f2, f1, rne # perform operation
fcvt.h.d f2, f1, rtz # perform operation
fcvt.h.d f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f2, f1 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7d7a9e7 # load x3 with 32 MSBs 0x00000000e7d7a9e7
sw x3, 0(x2) # store x3 (0xe7d7a9e7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e7d7a9e7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000e7d7a9e7 from memory into f0
fcvt.h.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f7a261d # load x3 with 32 MSBs 0x000000003f7a261d
sw x3, 0(x2) # store x3 (0x3f7a261d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f7a261d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003f7a261d from memory into f1
fcvt.h.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e4db9b6 # load x3 with 32 MSBs 0x000000009e4db9b6
sw x3, 0(x2) # store x3 (0x9e4db9b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e4db9b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000009e4db9b6 from memory into f2
fcvt.h.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9899287a # load x3 with 32 MSBs 0x000000009899287a
sw x3, 0(x2) # store x3 (0x9899287a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009899287a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009899287a from memory into f3
fcvt.h.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800d9668 # load x3 with 32 MSBs 0x00000000800d9668
sw x3, 0(x2) # store x3 (0x800d9668) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000800d9668
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000800d9668 from memory into f4
fcvt.h.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c9f2779 # load x3 with 32 MSBs 0x000000009c9f2779
sw x3, 0(x2) # store x3 (0x9c9f2779) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c9f2779
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000009c9f2779 from memory into f5
fcvt.h.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8df5f6c3 # load x3 with 32 MSBs 0x000000008df5f6c3
sw x3, 0(x2) # store x3 (0x8df5f6c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008df5f6c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008df5f6c3 from memory into f6
fcvt.h.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ee02ad7 # load x3 with 32 MSBs 0x000000003ee02ad7
sw x3, 0(x2) # store x3 (0x3ee02ad7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ee02ad7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003ee02ad7 from memory into f7
fcvt.h.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86491f59 # load x3 with 32 MSBs 0x0000000086491f59
sw x3, 0(x2) # store x3 (0x86491f59) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086491f59
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000086491f59 from memory into f8
fcvt.h.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe2f198d0 # load x3 with 32 MSBs 0x00000000e2f198d0
sw x3, 0(x2) # store x3 (0xe2f198d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2f198d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e2f198d0 from memory into f9
fcvt.h.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e1cd5e0 # load x3 with 32 MSBs 0x000000006e1cd5e0
sw x3, 0(x2) # store x3 (0x6e1cd5e0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e1cd5e0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006e1cd5e0 from memory into f10
fcvt.h.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x850a32c5 # load x3 with 32 MSBs 0x00000000850a32c5
sw x3, 0(x2) # store x3 (0x850a32c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000850a32c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000850a32c5 from memory into f11
fcvt.h.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0beed14 # load x3 with 32 MSBs 0x00000000a0beed14
sw x3, 0(x2) # store x3 (0xa0beed14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0beed14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a0beed14 from memory into f12
fcvt.h.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd61e735e # load x3 with 32 MSBs 0x00000000d61e735e
sw x3, 0(x2) # store x3 (0xd61e735e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d61e735e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d61e735e from memory into f13
fcvt.h.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb3a684c # load x3 with 32 MSBs 0x00000000eb3a684c
sw x3, 0(x2) # store x3 (0xeb3a684c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb3a684c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000eb3a684c from memory into f14
fcvt.h.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb6282126 # load x3 with 32 MSBs 0x00000000b6282126
sw x3, 0(x2) # store x3 (0xb6282126) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6282126
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000b6282126 from memory into f15
fcvt.h.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4473f51b # load x3 with 32 MSBs 0x000000004473f51b
sw x3, 0(x2) # store x3 (0x4473f51b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004473f51b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004473f51b from memory into f16
fcvt.h.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfef5aa6c # load x3 with 32 MSBs 0x00000000fef5aa6c
sw x3, 0(x2) # store x3 (0xfef5aa6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fef5aa6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000fef5aa6c from memory into f17
fcvt.h.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb73b18d # load x3 with 32 MSBs 0x00000000eb73b18d
sw x3, 0(x2) # store x3 (0xeb73b18d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb73b18d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000eb73b18d from memory into f18
fcvt.h.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3760ae0a # load x3 with 32 MSBs 0x000000003760ae0a
sw x3, 0(x2) # store x3 (0x3760ae0a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003760ae0a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000003760ae0a from memory into f19
fcvt.h.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d3c9667 # load x3 with 32 MSBs 0x000000004d3c9667
sw x3, 0(x2) # store x3 (0x4d3c9667) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d3c9667
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000004d3c9667 from memory into f20
fcvt.h.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c83ef06 # load x3 with 32 MSBs 0x000000001c83ef06
sw x3, 0(x2) # store x3 (0x1c83ef06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c83ef06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000001c83ef06 from memory into f21
fcvt.h.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b3d613f # load x3 with 32 MSBs 0x000000003b3d613f
sw x3, 0(x2) # store x3 (0x3b3d613f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b3d613f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003b3d613f from memory into f22
fcvt.h.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe487f47b # load x3 with 32 MSBs 0x00000000e487f47b
sw x3, 0(x2) # store x3 (0xe487f47b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e487f47b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e487f47b from memory into f23
fcvt.h.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55e9fd90 # load x3 with 32 MSBs 0x0000000055e9fd90
sw x3, 0(x2) # store x3 (0x55e9fd90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055e9fd90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000055e9fd90 from memory into f24
fcvt.h.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab6190a2 # load x3 with 32 MSBs 0x00000000ab6190a2
sw x3, 0(x2) # store x3 (0xab6190a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab6190a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ab6190a2 from memory into f25
fcvt.h.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e5f9f67 # load x3 with 32 MSBs 0x000000005e5f9f67
sw x3, 0(x2) # store x3 (0x5e5f9f67) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e5f9f67
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000005e5f9f67 from memory into f26
fcvt.h.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8b7d78f # load x3 with 32 MSBs 0x00000000a8b7d78f
sw x3, 0(x2) # store x3 (0xa8b7d78f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8b7d78f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000a8b7d78f from memory into f27
fcvt.h.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6cc52596 # load x3 with 32 MSBs 0x000000006cc52596
sw x3, 0(x2) # store x3 (0x6cc52596) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cc52596
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006cc52596 from memory into f28
fcvt.h.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45cb02fe # load x3 with 32 MSBs 0x0000000045cb02fe
sw x3, 0(x2) # store x3 (0x45cb02fe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045cb02fe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000045cb02fe from memory into f29
fcvt.h.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb3ff215 # load x3 with 32 MSBs 0x00000000eb3ff215
sw x3, 0(x2) # store x3 (0xeb3ff215) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb3ff215
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000eb3ff215 from memory into f30
fcvt.h.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2de55106 # load x3 with 32 MSBs 0x000000002de55106
sw x3, 0(x2) # store x3 (0x2de55106) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002de55106
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000002de55106 from memory into f31
fcvt.h.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c42952d # load x3 with 32 MSBs 0x000000001c42952d
sw x3, 0(x2) # store x3 (0x1c42952d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c42952d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000001c42952d from memory into f26
fcvt.h.d f7, f26, dyn # perform operation
fcvt.h.d f7, f26, rdn # perform operation
fcvt.h.d f7, f26, rmm # perform operation
fcvt.h.d f7, f26, rne # perform operation
fcvt.h.d f7, f26, rtz # perform operation
fcvt.h.d f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f7, f26 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x719aa892 # load x3 with 32 MSBs 0x00000000719aa892
sw x3, 0(x2) # store x3 (0x719aa892) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000719aa892
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000719aa892 from memory into f25
fcvt.h.d f5, f25 # perform operation second time to make sure flags don't change

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
