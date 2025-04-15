///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fround.d.S
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
add x16, x10, x28 # perform first operation
fround.d f5, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x30, x24 # perform first operation
fround.d f28, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x23, x8 # perform first operation
fround.d f19, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f10, f26, f29 # perform first operation
fround.d f26, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x15, x2 # perform first operation
fround.d f8, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x31, x13 # perform first operation
fround.d f23, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f13, f6 # perform first operation
fround.d f19, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f23, f19 # perform first operation
fround.d f24, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f9, f13, f8 # perform first operation
fround.d f9, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f26, f17 # perform first operation
fround.d f26, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f1, f18 # perform first operation
fround.d f18, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f1, f16 # perform first operation
fround.d f14, f11 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda2c35b1 # load x3 with 32 MSBs 0x00000000da2c35b1
sw x3, 0(x2) # store x3 (0xda2c35b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da2c35b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000da2c35b1 from memory into f0
fround.d f15, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe905a8c5 # load x3 with 32 MSBs 0x00000000e905a8c5
sw x3, 0(x2) # store x3 (0xe905a8c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e905a8c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e905a8c5 from memory into f1
fround.d f5, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d302aff # load x3 with 32 MSBs 0x000000005d302aff
sw x3, 0(x2) # store x3 (0x5d302aff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d302aff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005d302aff from memory into f2
fround.d f3, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x817e01b7 # load x3 with 32 MSBs 0x00000000817e01b7
sw x3, 0(x2) # store x3 (0x817e01b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000817e01b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000817e01b7 from memory into f3
fround.d f1, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xedc3003e # load x3 with 32 MSBs 0x00000000edc3003e
sw x3, 0(x2) # store x3 (0xedc3003e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000edc3003e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000edc3003e from memory into f4
fround.d f29, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe096cf86 # load x3 with 32 MSBs 0x00000000e096cf86
sw x3, 0(x2) # store x3 (0xe096cf86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e096cf86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e096cf86 from memory into f5
fround.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf14c177 # load x3 with 32 MSBs 0x00000000bf14c177
sw x3, 0(x2) # store x3 (0xbf14c177) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf14c177
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000bf14c177 from memory into f6
fround.d f9, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3538fc90 # load x3 with 32 MSBs 0x000000003538fc90
sw x3, 0(x2) # store x3 (0x3538fc90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003538fc90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003538fc90 from memory into f7
fround.d f10, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94d2bfbf # load x3 with 32 MSBs 0x0000000094d2bfbf
sw x3, 0(x2) # store x3 (0x94d2bfbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094d2bfbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000094d2bfbf from memory into f8
fround.d f27, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95139a45 # load x3 with 32 MSBs 0x0000000095139a45
sw x3, 0(x2) # store x3 (0x95139a45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095139a45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000095139a45 from memory into f9
fround.d f11, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x012a9b40 # load x3 with 32 MSBs 0x00000000012a9b40
sw x3, 0(x2) # store x3 (0x012a9b40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000012a9b40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000012a9b40 from memory into f10
fround.d f20, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf70ad22c # load x3 with 32 MSBs 0x00000000f70ad22c
sw x3, 0(x2) # store x3 (0xf70ad22c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f70ad22c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f70ad22c from memory into f11
fround.d f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3aac4d37 # load x3 with 32 MSBs 0x000000003aac4d37
sw x3, 0(x2) # store x3 (0x3aac4d37) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003aac4d37
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000003aac4d37 from memory into f12
fround.d f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda32e14b # load x3 with 32 MSBs 0x00000000da32e14b
sw x3, 0(x2) # store x3 (0xda32e14b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da32e14b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000da32e14b from memory into f13
fround.d f18, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc125ad2f # load x3 with 32 MSBs 0x00000000c125ad2f
sw x3, 0(x2) # store x3 (0xc125ad2f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c125ad2f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000c125ad2f from memory into f14
fround.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2db81990 # load x3 with 32 MSBs 0x000000002db81990
sw x3, 0(x2) # store x3 (0x2db81990) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002db81990
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000002db81990 from memory into f15
fround.d f30, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc547b56d # load x3 with 32 MSBs 0x00000000c547b56d
sw x3, 0(x2) # store x3 (0xc547b56d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c547b56d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000c547b56d from memory into f16
fround.d f14, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4b73d58 # load x3 with 32 MSBs 0x00000000a4b73d58
sw x3, 0(x2) # store x3 (0xa4b73d58) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a4b73d58
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000a4b73d58 from memory into f17
fround.d f18, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd2ac7434 # load x3 with 32 MSBs 0x00000000d2ac7434
sw x3, 0(x2) # store x3 (0xd2ac7434) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d2ac7434
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d2ac7434 from memory into f18
fround.d f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x81304b37 # load x3 with 32 MSBs 0x0000000081304b37
sw x3, 0(x2) # store x3 (0x81304b37) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000081304b37
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000081304b37 from memory into f19
fround.d f10, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfe6a3f02 # load x3 with 32 MSBs 0x00000000fe6a3f02
sw x3, 0(x2) # store x3 (0xfe6a3f02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe6a3f02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000fe6a3f02 from memory into f20
fround.d f29, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96b263bb # load x3 with 32 MSBs 0x0000000096b263bb
sw x3, 0(x2) # store x3 (0x96b263bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096b263bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000096b263bb from memory into f21
fround.d f8, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x832e7f57 # load x3 with 32 MSBs 0x00000000832e7f57
sw x3, 0(x2) # store x3 (0x832e7f57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000832e7f57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000832e7f57 from memory into f22
fround.d f1, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8123618 # load x3 with 32 MSBs 0x00000000d8123618
sw x3, 0(x2) # store x3 (0xd8123618) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8123618
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d8123618 from memory into f23
fround.d f24, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x568cbb5a # load x3 with 32 MSBs 0x00000000568cbb5a
sw x3, 0(x2) # store x3 (0x568cbb5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000568cbb5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000568cbb5a from memory into f24
fround.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x70bc7cea # load x3 with 32 MSBs 0x0000000070bc7cea
sw x3, 0(x2) # store x3 (0x70bc7cea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000070bc7cea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000070bc7cea from memory into f25
fround.d f8, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x76108f89 # load x3 with 32 MSBs 0x0000000076108f89
sw x3, 0(x2) # store x3 (0x76108f89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076108f89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000076108f89 from memory into f26
fround.d f14, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe21d5861 # load x3 with 32 MSBs 0x00000000e21d5861
sw x3, 0(x2) # store x3 (0xe21d5861) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e21d5861
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000e21d5861 from memory into f27
fround.d f22, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30e6edca # load x3 with 32 MSBs 0x0000000030e6edca
sw x3, 0(x2) # store x3 (0x30e6edca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030e6edca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000030e6edca from memory into f28
fround.d f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x470af383 # load x3 with 32 MSBs 0x00000000470af383
sw x3, 0(x2) # store x3 (0x470af383) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000470af383
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000470af383 from memory into f29
fround.d f14, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf934a061 # load x3 with 32 MSBs 0x00000000f934a061
sw x3, 0(x2) # store x3 (0xf934a061) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f934a061
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f934a061 from memory into f30
fround.d f21, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x272c5e4e # load x3 with 32 MSBs 0x00000000272c5e4e
sw x3, 0(x2) # store x3 (0x272c5e4e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000272c5e4e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000272c5e4e from memory into f31
fround.d f9, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf82abc8f # load x3 with 32 MSBs 0x00000000f82abc8f
sw x3, 0(x2) # store x3 (0xf82abc8f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f82abc8f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f82abc8f from memory into f12
fround.d f0, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12b4f25b # load x3 with 32 MSBs 0x0000000012b4f25b
sw x3, 0(x2) # store x3 (0x12b4f25b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012b4f25b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000012b4f25b from memory into f21
fround.d f1, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27f6b74c # load x3 with 32 MSBs 0x0000000027f6b74c
sw x3, 0(x2) # store x3 (0x27f6b74c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027f6b74c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000027f6b74c from memory into f10
fround.d f2, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0b02d48 # load x3 with 32 MSBs 0x00000000c0b02d48
sw x3, 0(x2) # store x3 (0xc0b02d48) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c0b02d48
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c0b02d48 from memory into f7
fround.d f3, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf2970349 # load x3 with 32 MSBs 0x00000000f2970349
sw x3, 0(x2) # store x3 (0xf2970349) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2970349
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f2970349 from memory into f5
fround.d f4, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b74513f # load x3 with 32 MSBs 0x000000003b74513f
sw x3, 0(x2) # store x3 (0x3b74513f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b74513f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003b74513f from memory into f31
fround.d f5, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ae08a3f # load x3 with 32 MSBs 0x000000004ae08a3f
sw x3, 0(x2) # store x3 (0x4ae08a3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ae08a3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000004ae08a3f from memory into f30
fround.d f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60b65851 # load x3 with 32 MSBs 0x0000000060b65851
sw x3, 0(x2) # store x3 (0x60b65851) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060b65851
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000060b65851 from memory into f14
fround.d f7, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ce000a9 # load x3 with 32 MSBs 0x000000008ce000a9
sw x3, 0(x2) # store x3 (0x8ce000a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ce000a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008ce000a9 from memory into f20
fround.d f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66847a08 # load x3 with 32 MSBs 0x0000000066847a08
sw x3, 0(x2) # store x3 (0x66847a08) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000066847a08
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000066847a08 from memory into f11
fround.d f9, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x56491e0d # load x3 with 32 MSBs 0x0000000056491e0d
sw x3, 0(x2) # store x3 (0x56491e0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000056491e0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000056491e0d from memory into f3
fround.d f10, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc0e71a5 # load x3 with 32 MSBs 0x00000000fc0e71a5
sw x3, 0(x2) # store x3 (0xfc0e71a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc0e71a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000fc0e71a5 from memory into f23
fround.d f11, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf46c5b2 # load x3 with 32 MSBs 0x00000000bf46c5b2
sw x3, 0(x2) # store x3 (0xbf46c5b2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf46c5b2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000bf46c5b2 from memory into f14
fround.d f12, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x68e9112b # load x3 with 32 MSBs 0x0000000068e9112b
sw x3, 0(x2) # store x3 (0x68e9112b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000068e9112b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000068e9112b from memory into f24
fround.d f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf21578e # load x3 with 32 MSBs 0x00000000bf21578e
sw x3, 0(x2) # store x3 (0xbf21578e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf21578e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000bf21578e from memory into f17
fround.d f14, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x33052069 # load x3 with 32 MSBs 0x0000000033052069
sw x3, 0(x2) # store x3 (0x33052069) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000033052069
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000033052069 from memory into f28
fround.d f15, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2add95d1 # load x3 with 32 MSBs 0x000000002add95d1
sw x3, 0(x2) # store x3 (0x2add95d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002add95d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000002add95d1 from memory into f2
fround.d f16, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ceb7564 # load x3 with 32 MSBs 0x000000001ceb7564
sw x3, 0(x2) # store x3 (0x1ceb7564) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ceb7564
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001ceb7564 from memory into f8
fround.d f17, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa219c793 # load x3 with 32 MSBs 0x00000000a219c793
sw x3, 0(x2) # store x3 (0xa219c793) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a219c793
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a219c793 from memory into f8
fround.d f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x56ad334b # load x3 with 32 MSBs 0x0000000056ad334b
sw x3, 0(x2) # store x3 (0x56ad334b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000056ad334b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000056ad334b from memory into f7
fround.d f19, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc78b270b # load x3 with 32 MSBs 0x00000000c78b270b
sw x3, 0(x2) # store x3 (0xc78b270b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c78b270b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000c78b270b from memory into f13
fround.d f20, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3bea3de1 # load x3 with 32 MSBs 0x000000003bea3de1
sw x3, 0(x2) # store x3 (0x3bea3de1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003bea3de1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003bea3de1 from memory into f3
fround.d f21, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa41950dc # load x3 with 32 MSBs 0x00000000a41950dc
sw x3, 0(x2) # store x3 (0xa41950dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a41950dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a41950dc from memory into f3
fround.d f22, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe50f06c0 # load x3 with 32 MSBs 0x00000000e50f06c0
sw x3, 0(x2) # store x3 (0xe50f06c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e50f06c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e50f06c0 from memory into f7
fround.d f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcae0471e # load x3 with 32 MSBs 0x00000000cae0471e
sw x3, 0(x2) # store x3 (0xcae0471e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cae0471e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000cae0471e from memory into f8
fround.d f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63c18031 # load x3 with 32 MSBs 0x0000000063c18031
sw x3, 0(x2) # store x3 (0x63c18031) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063c18031
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000063c18031 from memory into f30
fround.d f25, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6cca63bb # load x3 with 32 MSBs 0x000000006cca63bb
sw x3, 0(x2) # store x3 (0x6cca63bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cca63bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000006cca63bb from memory into f20
fround.d f26, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x581091dc # load x3 with 32 MSBs 0x00000000581091dc
sw x3, 0(x2) # store x3 (0x581091dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000581091dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000581091dc from memory into f25
fround.d f27, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8814cd2 # load x3 with 32 MSBs 0x00000000f8814cd2
sw x3, 0(x2) # store x3 (0xf8814cd2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8814cd2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000f8814cd2 from memory into f6
fround.d f28, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x258fa07d # load x3 with 32 MSBs 0x00000000258fa07d
sw x3, 0(x2) # store x3 (0x258fa07d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000258fa07d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000258fa07d from memory into f17
fround.d f29, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e85057e # load x3 with 32 MSBs 0x000000006e85057e
sw x3, 0(x2) # store x3 (0x6e85057e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e85057e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000006e85057e from memory into f20
fround.d f30, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9042d4bf # load x3 with 32 MSBs 0x000000009042d4bf
sw x3, 0(x2) # store x3 (0x9042d4bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009042d4bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000009042d4bf from memory into f26
fround.d f31, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fround.d f12, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fround.d f31, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fround.d f8, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fround.d f8, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fround.d f17, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fround.d f3, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fround.d f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fround.d f29, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fround.d f28, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fround.d f11, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fround.d f23, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fround.d f30, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fround.d f29, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fround.d f6, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fround.d f31, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fround.d f17, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fround.d f7, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fround.d f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fround.d f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fround.d f20, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fround.d f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fround.d f31, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff8000000000000 from memory into f7
fround.d f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fround.d f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fround.d f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff0000000000001 from memory into f22
fround.d f31, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fround.d f22, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fround.d f19, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x504530c8 # load x3 with 32 MSBs 0x00000000504530c8
sw x3, 0(x2) # store x3 (0x504530c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000504530c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000504530c8 from memory into f0
fround.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcc769b63 # load x3 with 32 MSBs 0x00000000cc769b63
sw x3, 0(x2) # store x3 (0xcc769b63) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc769b63
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000cc769b63 from memory into f1
fround.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x31ed9a11 # load x3 with 32 MSBs 0x0000000031ed9a11
sw x3, 0(x2) # store x3 (0x31ed9a11) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031ed9a11
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000031ed9a11 from memory into f2
fround.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbc58def7 # load x3 with 32 MSBs 0x00000000bc58def7
sw x3, 0(x2) # store x3 (0xbc58def7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bc58def7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000bc58def7 from memory into f3
fround.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd633687d # load x3 with 32 MSBs 0x00000000d633687d
sw x3, 0(x2) # store x3 (0xd633687d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d633687d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000d633687d from memory into f4
fround.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd723746c # load x3 with 32 MSBs 0x00000000d723746c
sw x3, 0(x2) # store x3 (0xd723746c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d723746c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000d723746c from memory into f5
fround.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb79a8801 # load x3 with 32 MSBs 0x00000000b79a8801
sw x3, 0(x2) # store x3 (0xb79a8801) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b79a8801
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000b79a8801 from memory into f6
fround.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x549b6120 # load x3 with 32 MSBs 0x00000000549b6120
sw x3, 0(x2) # store x3 (0x549b6120) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000549b6120
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000549b6120 from memory into f7
fround.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa7ee9674 # load x3 with 32 MSBs 0x00000000a7ee9674
sw x3, 0(x2) # store x3 (0xa7ee9674) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7ee9674
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a7ee9674 from memory into f8
fround.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2d4e137 # load x3 with 32 MSBs 0x00000000a2d4e137
sw x3, 0(x2) # store x3 (0xa2d4e137) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2d4e137
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a2d4e137 from memory into f9
fround.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x607eca3f # load x3 with 32 MSBs 0x00000000607eca3f
sw x3, 0(x2) # store x3 (0x607eca3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000607eca3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000607eca3f from memory into f10
fround.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf83899bd # load x3 with 32 MSBs 0x00000000f83899bd
sw x3, 0(x2) # store x3 (0xf83899bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f83899bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f83899bd from memory into f11
fround.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5fcef6c # load x3 with 32 MSBs 0x00000000b5fcef6c
sw x3, 0(x2) # store x3 (0xb5fcef6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5fcef6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b5fcef6c from memory into f12
fround.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72e4f4c1 # load x3 with 32 MSBs 0x0000000072e4f4c1
sw x3, 0(x2) # store x3 (0x72e4f4c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072e4f4c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000072e4f4c1 from memory into f13
fround.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6f13ff5 # load x3 with 32 MSBs 0x00000000f6f13ff5
sw x3, 0(x2) # store x3 (0xf6f13ff5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f6f13ff5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000f6f13ff5 from memory into f14
fround.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30f34f54 # load x3 with 32 MSBs 0x0000000030f34f54
sw x3, 0(x2) # store x3 (0x30f34f54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030f34f54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000030f34f54 from memory into f15
fround.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30a78c53 # load x3 with 32 MSBs 0x0000000030a78c53
sw x3, 0(x2) # store x3 (0x30a78c53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030a78c53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000030a78c53 from memory into f16
fround.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2cbf46e3 # load x3 with 32 MSBs 0x000000002cbf46e3
sw x3, 0(x2) # store x3 (0x2cbf46e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002cbf46e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000002cbf46e3 from memory into f17
fround.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x597acdaf # load x3 with 32 MSBs 0x00000000597acdaf
sw x3, 0(x2) # store x3 (0x597acdaf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000597acdaf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000597acdaf from memory into f18
fround.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x44f891dc # load x3 with 32 MSBs 0x0000000044f891dc
sw x3, 0(x2) # store x3 (0x44f891dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000044f891dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000044f891dc from memory into f19
fround.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ec59b2e # load x3 with 32 MSBs 0x000000002ec59b2e
sw x3, 0(x2) # store x3 (0x2ec59b2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002ec59b2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002ec59b2e from memory into f20
fround.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa005a1be # load x3 with 32 MSBs 0x00000000a005a1be
sw x3, 0(x2) # store x3 (0xa005a1be) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a005a1be
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a005a1be from memory into f21
fround.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x05a68731 # load x3 with 32 MSBs 0x0000000005a68731
sw x3, 0(x2) # store x3 (0x05a68731) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005a68731
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000005a68731 from memory into f22
fround.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x24ad6817 # load x3 with 32 MSBs 0x0000000024ad6817
sw x3, 0(x2) # store x3 (0x24ad6817) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000024ad6817
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000024ad6817 from memory into f23
fround.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf390067 # load x3 with 32 MSBs 0x00000000af390067
sw x3, 0(x2) # store x3 (0xaf390067) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af390067
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000af390067 from memory into f24
fround.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x876c4f92 # load x3 with 32 MSBs 0x00000000876c4f92
sw x3, 0(x2) # store x3 (0x876c4f92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000876c4f92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000876c4f92 from memory into f25
fround.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6d9f68cc # load x3 with 32 MSBs 0x000000006d9f68cc
sw x3, 0(x2) # store x3 (0x6d9f68cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d9f68cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006d9f68cc from memory into f26
fround.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf9914011 # load x3 with 32 MSBs 0x00000000f9914011
sw x3, 0(x2) # store x3 (0xf9914011) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9914011
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f9914011 from memory into f27
fround.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd2fa692b # load x3 with 32 MSBs 0x00000000d2fa692b
sw x3, 0(x2) # store x3 (0xd2fa692b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d2fa692b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000d2fa692b from memory into f28
fround.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4841cd24 # load x3 with 32 MSBs 0x000000004841cd24
sw x3, 0(x2) # store x3 (0x4841cd24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004841cd24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004841cd24 from memory into f29
fround.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc535fbb4 # load x3 with 32 MSBs 0x00000000c535fbb4
sw x3, 0(x2) # store x3 (0xc535fbb4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c535fbb4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000c535fbb4 from memory into f30
fround.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3aff3c9 # load x3 with 32 MSBs 0x00000000b3aff3c9
sw x3, 0(x2) # store x3 (0xb3aff3c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b3aff3c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b3aff3c9 from memory into f31
fround.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc64402d # load x3 with 32 MSBs 0x00000000dc64402d
sw x3, 0(x2) # store x3 (0xdc64402d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc64402d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000dc64402d from memory into f30
fround.d f11, f30, dyn # perform operation
fround.d f11, f30, rdn # perform operation
fround.d f11, f30, rmm # perform operation
fround.d f11, f30, rne # perform operation
fround.d f11, f30, rtz # perform operation
fround.d f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.d f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.d f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.d f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.d f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.d f11, f30 # perform operation


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
