///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.s.d.S
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
add x19, x29, x1 # perform first operation
fcvt.s.d f22, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x24, x17 # perform first operation
fcvt.s.d f19, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x17, x21 # perform first operation
fcvt.s.d f12, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f24, f30, f22 # perform first operation
fcvt.s.d f24, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x26, x11 # perform first operation
fcvt.s.d f26, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x12, x15 # perform first operation
fcvt.s.d f15, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f14, f13 # perform first operation
fcvt.s.d f21, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f20, f12 # perform first operation
fcvt.s.d f16, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f19, f24 # perform first operation
fcvt.s.d f7, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f11, f16 # perform first operation
fcvt.s.d f11, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f7, f9 # perform first operation
fcvt.s.d f9, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f8, f6 # perform first operation
fcvt.s.d f2, f20 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84b23f91 # load x3 with 32 MSBs 0x0000000084b23f91
sw x3, 0(x2) # store x3 (0x84b23f91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084b23f91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000084b23f91 from memory into f0
fcvt.s.d f17, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a2b7903 # load x3 with 32 MSBs 0x000000003a2b7903
sw x3, 0(x2) # store x3 (0x3a2b7903) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a2b7903
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003a2b7903 from memory into f1
fcvt.s.d f18, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb68bc5de # load x3 with 32 MSBs 0x00000000b68bc5de
sw x3, 0(x2) # store x3 (0xb68bc5de) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b68bc5de
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b68bc5de from memory into f2
fcvt.s.d f18, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb21c8ada # load x3 with 32 MSBs 0x00000000b21c8ada
sw x3, 0(x2) # store x3 (0xb21c8ada) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b21c8ada
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b21c8ada from memory into f3
fcvt.s.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7651f2c1 # load x3 with 32 MSBs 0x000000007651f2c1
sw x3, 0(x2) # store x3 (0x7651f2c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007651f2c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000007651f2c1 from memory into f4
fcvt.s.d f23, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1f997908 # load x3 with 32 MSBs 0x000000001f997908
sw x3, 0(x2) # store x3 (0x1f997908) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f997908
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001f997908 from memory into f5
fcvt.s.d f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7eee73ba # load x3 with 32 MSBs 0x000000007eee73ba
sw x3, 0(x2) # store x3 (0x7eee73ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007eee73ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000007eee73ba from memory into f6
fcvt.s.d f20, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc722437d # load x3 with 32 MSBs 0x00000000c722437d
sw x3, 0(x2) # store x3 (0xc722437d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c722437d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c722437d from memory into f7
fcvt.s.d f28, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9d6cce6 # load x3 with 32 MSBs 0x00000000d9d6cce6
sw x3, 0(x2) # store x3 (0xd9d6cce6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9d6cce6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d9d6cce6 from memory into f8
fcvt.s.d f3, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x335f8105 # load x3 with 32 MSBs 0x00000000335f8105
sw x3, 0(x2) # store x3 (0x335f8105) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000335f8105
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000335f8105 from memory into f9
fcvt.s.d f16, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd541adf # load x3 with 32 MSBs 0x00000000bd541adf
sw x3, 0(x2) # store x3 (0xbd541adf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd541adf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000bd541adf from memory into f10
fcvt.s.d f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x220b23f3 # load x3 with 32 MSBs 0x00000000220b23f3
sw x3, 0(x2) # store x3 (0x220b23f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000220b23f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000220b23f3 from memory into f11
fcvt.s.d f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67598039 # load x3 with 32 MSBs 0x0000000067598039
sw x3, 0(x2) # store x3 (0x67598039) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067598039
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000067598039 from memory into f12
fcvt.s.d f3, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7c70cff # load x3 with 32 MSBs 0x00000000b7c70cff
sw x3, 0(x2) # store x3 (0xb7c70cff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7c70cff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b7c70cff from memory into f13
fcvt.s.d f29, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0f7112d # load x3 with 32 MSBs 0x00000000b0f7112d
sw x3, 0(x2) # store x3 (0xb0f7112d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0f7112d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000b0f7112d from memory into f14
fcvt.s.d f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x98bb1406 # load x3 with 32 MSBs 0x0000000098bb1406
sw x3, 0(x2) # store x3 (0x98bb1406) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098bb1406
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000098bb1406 from memory into f15
fcvt.s.d f11, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x22d68523 # load x3 with 32 MSBs 0x0000000022d68523
sw x3, 0(x2) # store x3 (0x22d68523) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022d68523
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000022d68523 from memory into f16
fcvt.s.d f25, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x176c0e5e # load x3 with 32 MSBs 0x00000000176c0e5e
sw x3, 0(x2) # store x3 (0x176c0e5e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000176c0e5e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000176c0e5e from memory into f17
fcvt.s.d f11, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x58758733 # load x3 with 32 MSBs 0x0000000058758733
sw x3, 0(x2) # store x3 (0x58758733) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000058758733
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000058758733 from memory into f18
fcvt.s.d f30, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1522a4b8 # load x3 with 32 MSBs 0x000000001522a4b8
sw x3, 0(x2) # store x3 (0x1522a4b8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001522a4b8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001522a4b8 from memory into f19
fcvt.s.d f10, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0145128 # load x3 with 32 MSBs 0x00000000b0145128
sw x3, 0(x2) # store x3 (0xb0145128) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0145128
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000b0145128 from memory into f20
fcvt.s.d f2, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x631e7b6f # load x3 with 32 MSBs 0x00000000631e7b6f
sw x3, 0(x2) # store x3 (0x631e7b6f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000631e7b6f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000631e7b6f from memory into f21
fcvt.s.d f1, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x220e4e44 # load x3 with 32 MSBs 0x00000000220e4e44
sw x3, 0(x2) # store x3 (0x220e4e44) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000220e4e44
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000220e4e44 from memory into f22
fcvt.s.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x33191657 # load x3 with 32 MSBs 0x0000000033191657
sw x3, 0(x2) # store x3 (0x33191657) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000033191657
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000033191657 from memory into f23
fcvt.s.d f27, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e23ec91 # load x3 with 32 MSBs 0x000000004e23ec91
sw x3, 0(x2) # store x3 (0x4e23ec91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e23ec91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000004e23ec91 from memory into f24
fcvt.s.d f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf277dfca # load x3 with 32 MSBs 0x00000000f277dfca
sw x3, 0(x2) # store x3 (0xf277dfca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f277dfca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f277dfca from memory into f25
fcvt.s.d f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd93f244 # load x3 with 32 MSBs 0x00000000cd93f244
sw x3, 0(x2) # store x3 (0xcd93f244) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd93f244
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000cd93f244 from memory into f26
fcvt.s.d f8, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d69f8ec # load x3 with 32 MSBs 0x000000009d69f8ec
sw x3, 0(x2) # store x3 (0x9d69f8ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d69f8ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000009d69f8ec from memory into f27
fcvt.s.d f3, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x441ece29 # load x3 with 32 MSBs 0x00000000441ece29
sw x3, 0(x2) # store x3 (0x441ece29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000441ece29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000441ece29 from memory into f28
fcvt.s.d f22, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x200d461e # load x3 with 32 MSBs 0x00000000200d461e
sw x3, 0(x2) # store x3 (0x200d461e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000200d461e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000200d461e from memory into f29
fcvt.s.d f5, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8ae2c4b # load x3 with 32 MSBs 0x00000000a8ae2c4b
sw x3, 0(x2) # store x3 (0xa8ae2c4b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8ae2c4b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a8ae2c4b from memory into f30
fcvt.s.d f27, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcf1e5c02 # load x3 with 32 MSBs 0x00000000cf1e5c02
sw x3, 0(x2) # store x3 (0xcf1e5c02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cf1e5c02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000cf1e5c02 from memory into f31
fcvt.s.d f28, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f391dbf # load x3 with 32 MSBs 0x000000009f391dbf
sw x3, 0(x2) # store x3 (0x9f391dbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f391dbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000009f391dbf from memory into f28
fcvt.s.d f0, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80e0c4bd # load x3 with 32 MSBs 0x0000000080e0c4bd
sw x3, 0(x2) # store x3 (0x80e0c4bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080e0c4bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000080e0c4bd from memory into f20
fcvt.s.d f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x901b6fec # load x3 with 32 MSBs 0x00000000901b6fec
sw x3, 0(x2) # store x3 (0x901b6fec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000901b6fec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000901b6fec from memory into f14
fcvt.s.d f2, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5df2488 # load x3 with 32 MSBs 0x00000000b5df2488
sw x3, 0(x2) # store x3 (0xb5df2488) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5df2488
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000b5df2488 from memory into f22
fcvt.s.d f3, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfa0d228b # load x3 with 32 MSBs 0x00000000fa0d228b
sw x3, 0(x2) # store x3 (0xfa0d228b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa0d228b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000fa0d228b from memory into f27
fcvt.s.d f4, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe415e03f # load x3 with 32 MSBs 0x00000000e415e03f
sw x3, 0(x2) # store x3 (0xe415e03f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e415e03f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e415e03f from memory into f11
fcvt.s.d f5, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9abd5202 # load x3 with 32 MSBs 0x000000009abd5202
sw x3, 0(x2) # store x3 (0x9abd5202) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009abd5202
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009abd5202 from memory into f13
fcvt.s.d f6, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7c1c9a5 # load x3 with 32 MSBs 0x00000000f7c1c9a5
sw x3, 0(x2) # store x3 (0xf7c1c9a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f7c1c9a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f7c1c9a5 from memory into f28
fcvt.s.d f7, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5822b831 # load x3 with 32 MSBs 0x000000005822b831
sw x3, 0(x2) # store x3 (0x5822b831) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005822b831
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005822b831 from memory into f27
fcvt.s.d f8, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb992e16f # load x3 with 32 MSBs 0x00000000b992e16f
sw x3, 0(x2) # store x3 (0xb992e16f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b992e16f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b992e16f from memory into f1
fcvt.s.d f9, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e10de8b # load x3 with 32 MSBs 0x000000008e10de8b
sw x3, 0(x2) # store x3 (0x8e10de8b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e10de8b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000008e10de8b from memory into f1
fcvt.s.d f10, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabac467c # load x3 with 32 MSBs 0x00000000abac467c
sw x3, 0(x2) # store x3 (0xabac467c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000abac467c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000abac467c from memory into f18
fcvt.s.d f11, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x396836e9 # load x3 with 32 MSBs 0x00000000396836e9
sw x3, 0(x2) # store x3 (0x396836e9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000396836e9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000396836e9 from memory into f8
fcvt.s.d f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f2fbcc0 # load x3 with 32 MSBs 0x000000009f2fbcc0
sw x3, 0(x2) # store x3 (0x9f2fbcc0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f2fbcc0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000009f2fbcc0 from memory into f7
fcvt.s.d f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a71e9a2 # load x3 with 32 MSBs 0x000000005a71e9a2
sw x3, 0(x2) # store x3 (0x5a71e9a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005a71e9a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005a71e9a2 from memory into f9
fcvt.s.d f14, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x59490bfc # load x3 with 32 MSBs 0x0000000059490bfc
sw x3, 0(x2) # store x3 (0x59490bfc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000059490bfc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000059490bfc from memory into f29
fcvt.s.d f15, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa45b2d0b # load x3 with 32 MSBs 0x00000000a45b2d0b
sw x3, 0(x2) # store x3 (0xa45b2d0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a45b2d0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a45b2d0b from memory into f24
fcvt.s.d f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c1bf619 # load x3 with 32 MSBs 0x000000006c1bf619
sw x3, 0(x2) # store x3 (0x6c1bf619) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c1bf619
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006c1bf619 from memory into f15
fcvt.s.d f17, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f5b50a7 # load x3 with 32 MSBs 0x000000004f5b50a7
sw x3, 0(x2) # store x3 (0x4f5b50a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f5b50a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004f5b50a7 from memory into f12
fcvt.s.d f18, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe703456c # load x3 with 32 MSBs 0x00000000e703456c
sw x3, 0(x2) # store x3 (0xe703456c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e703456c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e703456c from memory into f24
fcvt.s.d f19, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc5a3d0c # load x3 with 32 MSBs 0x00000000dc5a3d0c
sw x3, 0(x2) # store x3 (0xdc5a3d0c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc5a3d0c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000dc5a3d0c from memory into f11
fcvt.s.d f20, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb52151ba # load x3 with 32 MSBs 0x00000000b52151ba
sw x3, 0(x2) # store x3 (0xb52151ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b52151ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b52151ba from memory into f1
fcvt.s.d f21, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9246b481 # load x3 with 32 MSBs 0x000000009246b481
sw x3, 0(x2) # store x3 (0x9246b481) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009246b481
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000009246b481 from memory into f11
fcvt.s.d f22, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45ce6951 # load x3 with 32 MSBs 0x0000000045ce6951
sw x3, 0(x2) # store x3 (0x45ce6951) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000045ce6951
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000045ce6951 from memory into f28
fcvt.s.d f23, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x269925e1 # load x3 with 32 MSBs 0x00000000269925e1
sw x3, 0(x2) # store x3 (0x269925e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000269925e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000269925e1 from memory into f5
fcvt.s.d f24, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x282c4c6b # load x3 with 32 MSBs 0x00000000282c4c6b
sw x3, 0(x2) # store x3 (0x282c4c6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000282c4c6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000282c4c6b from memory into f25
fcvt.s.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf515971 # load x3 with 32 MSBs 0x00000000df515971
sw x3, 0(x2) # store x3 (0xdf515971) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000df515971
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000df515971 from memory into f11
fcvt.s.d f26, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x518c8c30 # load x3 with 32 MSBs 0x00000000518c8c30
sw x3, 0(x2) # store x3 (0x518c8c30) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000518c8c30
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000518c8c30 from memory into f2
fcvt.s.d f27, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x61f73940 # load x3 with 32 MSBs 0x0000000061f73940
sw x3, 0(x2) # store x3 (0x61f73940) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000061f73940
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000061f73940 from memory into f5
fcvt.s.d f28, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e2768f8 # load x3 with 32 MSBs 0x000000005e2768f8
sw x3, 0(x2) # store x3 (0x5e2768f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e2768f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000005e2768f8 from memory into f8
fcvt.s.d f29, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x20f0d9ef # load x3 with 32 MSBs 0x0000000020f0d9ef
sw x3, 0(x2) # store x3 (0x20f0d9ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000020f0d9ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000020f0d9ef from memory into f1
fcvt.s.d f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ae11f09 # load x3 with 32 MSBs 0x000000004ae11f09
sw x3, 0(x2) # store x3 (0x4ae11f09) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ae11f09
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004ae11f09 from memory into f16
fcvt.s.d f31, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fcvt.s.d f2, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fcvt.s.d f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fcvt.s.d f18, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fcvt.s.d f23, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fcvt.s.d f19, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fcvt.s.d f5, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fcvt.s.d f31, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fcvt.s.d f15, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fcvt.s.d f20, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fcvt.s.d f13, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fcvt.s.d f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fcvt.s.d f5, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fcvt.s.d f11, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fcvt.s.d f25, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fcvt.s.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fcvt.s.d f28, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fcvt.s.d f19, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fcvt.s.d f2, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fcvt.s.d f15, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fcvt.s.d f23, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fcvt.s.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fcvt.s.d f8, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff8000000000000 from memory into f22
fcvt.s.d f31, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fcvt.s.d f14, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fcvt.s.d f2, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff0000000000001 from memory into f23
fcvt.s.d f3, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fcvt.s.d f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fcvt.s.d f11, f31 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fcvt.s.d f30, f20, dyn # perform operation
fcvt.s.d f30, f20, rdn # perform operation
fcvt.s.d f30, f20, rmm # perform operation
fcvt.s.d f30, f20, rne # perform operation
fcvt.s.d f30, f20, rtz # perform operation
fcvt.s.d f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f30, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
fcvt.s.d f25, f14, dyn # perform operation
fcvt.s.d f25, f14, rdn # perform operation
fcvt.s.d f25, f14, rmm # perform operation
fcvt.s.d f25, f14, rne # perform operation
fcvt.s.d f25, f14, rtz # perform operation
fcvt.s.d f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f25, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fcvt.s.d f27, f19, dyn # perform operation
fcvt.s.d f27, f19, rdn # perform operation
fcvt.s.d f27, f19, rmm # perform operation
fcvt.s.d f27, f19, rne # perform operation
fcvt.s.d f27, f19, rtz # perform operation
fcvt.s.d f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f27, f19 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fcvt.s.d f8, f31, dyn # perform operation
fcvt.s.d f8, f31, rdn # perform operation
fcvt.s.d f8, f31, rmm # perform operation
fcvt.s.d f8, f31, rne # perform operation
fcvt.s.d f8, f31, rtz # perform operation
fcvt.s.d f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f8, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fcvt.s.d f16, f1, dyn # perform operation
fcvt.s.d f16, f1, rdn # perform operation
fcvt.s.d f16, f1, rmm # perform operation
fcvt.s.d f16, f1, rne # perform operation
fcvt.s.d f16, f1, rtz # perform operation
fcvt.s.d f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f16, f1 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fcvt.s.d f31, f6, dyn # perform operation
fcvt.s.d f31, f6, rdn # perform operation
fcvt.s.d f31, f6, rmm # perform operation
fcvt.s.d f31, f6, rne # perform operation
fcvt.s.d f31, f6, rtz # perform operation
fcvt.s.d f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f31, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fcvt.s.d f17, f2, dyn # perform operation
fcvt.s.d f17, f2, rdn # perform operation
fcvt.s.d f17, f2, rmm # perform operation
fcvt.s.d f17, f2, rne # perform operation
fcvt.s.d f17, f2, rtz # perform operation
fcvt.s.d f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f17, f2 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fcvt.s.d f22, f11, dyn # perform operation
fcvt.s.d f22, f11, rdn # perform operation
fcvt.s.d f22, f11, rmm # perform operation
fcvt.s.d f22, f11, rne # perform operation
fcvt.s.d f22, f11, rtz # perform operation
fcvt.s.d f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f22, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fcvt.s.d f7, f9, dyn # perform operation
fcvt.s.d f7, f9, rdn # perform operation
fcvt.s.d f7, f9, rmm # perform operation
fcvt.s.d f7, f9, rne # perform operation
fcvt.s.d f7, f9, rtz # perform operation
fcvt.s.d f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f7, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fcvt.s.d f18, f28, dyn # perform operation
fcvt.s.d f18, f28, rdn # perform operation
fcvt.s.d f18, f28, rmm # perform operation
fcvt.s.d f18, f28, rne # perform operation
fcvt.s.d f18, f28, rtz # perform operation
fcvt.s.d f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f18, f28 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fcvt.s.d f30, f17, dyn # perform operation
fcvt.s.d f30, f17, rdn # perform operation
fcvt.s.d f30, f17, rmm # perform operation
fcvt.s.d f30, f17, rne # perform operation
fcvt.s.d f30, f17, rtz # perform operation
fcvt.s.d f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f30, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fcvt.s.d f26, f30, dyn # perform operation
fcvt.s.d f26, f30, rdn # perform operation
fcvt.s.d f26, f30, rmm # perform operation
fcvt.s.d f26, f30, rne # perform operation
fcvt.s.d f26, f30, rtz # perform operation
fcvt.s.d f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f26, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fcvt.s.d f16, f26, dyn # perform operation
fcvt.s.d f16, f26, rdn # perform operation
fcvt.s.d f16, f26, rmm # perform operation
fcvt.s.d f16, f26, rne # perform operation
fcvt.s.d f16, f26, rtz # perform operation
fcvt.s.d f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f16, f26 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fcvt.s.d f28, f29, dyn # perform operation
fcvt.s.d f28, f29, rdn # perform operation
fcvt.s.d f28, f29, rmm # perform operation
fcvt.s.d f28, f29, rne # perform operation
fcvt.s.d f28, f29, rtz # perform operation
fcvt.s.d f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f28, f29 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fcvt.s.d f5, f15, dyn # perform operation
fcvt.s.d f5, f15, rdn # perform operation
fcvt.s.d f5, f15, rmm # perform operation
fcvt.s.d f5, f15, rne # perform operation
fcvt.s.d f5, f15, rtz # perform operation
fcvt.s.d f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f5, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fcvt.s.d f2, f19, dyn # perform operation
fcvt.s.d f2, f19, rdn # perform operation
fcvt.s.d f2, f19, rmm # perform operation
fcvt.s.d f2, f19, rne # perform operation
fcvt.s.d f2, f19, rtz # perform operation
fcvt.s.d f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f2, f19 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fcvt.s.d f26, f9, dyn # perform operation
fcvt.s.d f26, f9, rdn # perform operation
fcvt.s.d f26, f9, rmm # perform operation
fcvt.s.d f26, f9, rne # perform operation
fcvt.s.d f26, f9, rtz # perform operation
fcvt.s.d f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f26, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fcvt.s.d f18, f30, dyn # perform operation
fcvt.s.d f18, f30, rdn # perform operation
fcvt.s.d f18, f30, rmm # perform operation
fcvt.s.d f18, f30, rne # perform operation
fcvt.s.d f18, f30, rtz # perform operation
fcvt.s.d f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f18, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fcvt.s.d f1, f6, dyn # perform operation
fcvt.s.d f1, f6, rdn # perform operation
fcvt.s.d f1, f6, rmm # perform operation
fcvt.s.d f1, f6, rne # perform operation
fcvt.s.d f1, f6, rtz # perform operation
fcvt.s.d f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f1, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fcvt.s.d f9, f23, dyn # perform operation
fcvt.s.d f9, f23, rdn # perform operation
fcvt.s.d f9, f23, rmm # perform operation
fcvt.s.d f9, f23, rne # perform operation
fcvt.s.d f9, f23, rtz # perform operation
fcvt.s.d f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f9, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fcvt.s.d f28, f15, dyn # perform operation
fcvt.s.d f28, f15, rdn # perform operation
fcvt.s.d f28, f15, rmm # perform operation
fcvt.s.d f28, f15, rne # perform operation
fcvt.s.d f28, f15, rtz # perform operation
fcvt.s.d f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f28, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fcvt.s.d f29, f25, dyn # perform operation
fcvt.s.d f29, f25, rdn # perform operation
fcvt.s.d f29, f25, rmm # perform operation
fcvt.s.d f29, f25, rne # perform operation
fcvt.s.d f29, f25, rtz # perform operation
fcvt.s.d f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f29, f25 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fcvt.s.d f25, f13, dyn # perform operation
fcvt.s.d f25, f13, rdn # perform operation
fcvt.s.d f25, f13, rmm # perform operation
fcvt.s.d f25, f13, rne # perform operation
fcvt.s.d f25, f13, rtz # perform operation
fcvt.s.d f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f25, f13 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fcvt.s.d f10, f23, dyn # perform operation
fcvt.s.d f10, f23, rdn # perform operation
fcvt.s.d f10, f23, rmm # perform operation
fcvt.s.d f10, f23, rne # perform operation
fcvt.s.d f10, f23, rtz # perform operation
fcvt.s.d f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f10, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
fcvt.s.d f24, f19, dyn # perform operation
fcvt.s.d f24, f19, rdn # perform operation
fcvt.s.d f24, f19, rmm # perform operation
fcvt.s.d f24, f19, rne # perform operation
fcvt.s.d f24, f19, rtz # perform operation
fcvt.s.d f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f24, f19 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000001 from memory into f30
fcvt.s.d f3, f30, dyn # perform operation
fcvt.s.d f3, f30, rdn # perform operation
fcvt.s.d f3, f30, rmm # perform operation
fcvt.s.d f3, f30, rne # perform operation
fcvt.s.d f3, f30, rtz # perform operation
fcvt.s.d f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f3, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fcvt.s.d f8, f16, dyn # perform operation
fcvt.s.d f8, f16, rdn # perform operation
fcvt.s.d f8, f16, rmm # perform operation
fcvt.s.d f8, f16, rne # perform operation
fcvt.s.d f8, f16, rtz # perform operation
fcvt.s.d f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f8, f16 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fcvt.s.d f28, f30, dyn # perform operation
fcvt.s.d f28, f30, rdn # perform operation
fcvt.s.d f28, f30, rmm # perform operation
fcvt.s.d f28, f30, rne # perform operation
fcvt.s.d f28, f30, rtz # perform operation
fcvt.s.d f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f28, f30 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a2d3783 # load x3 with 32 MSBs 0x000000003a2d3783
sw x3, 0(x2) # store x3 (0x3a2d3783) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a2d3783
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000003a2d3783 from memory into f0
fcvt.s.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb44b2c7c # load x3 with 32 MSBs 0x00000000b44b2c7c
sw x3, 0(x2) # store x3 (0xb44b2c7c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b44b2c7c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b44b2c7c from memory into f1
fcvt.s.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4081b16 # load x3 with 32 MSBs 0x00000000e4081b16
sw x3, 0(x2) # store x3 (0xe4081b16) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4081b16
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000e4081b16 from memory into f2
fcvt.s.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e7eeee1 # load x3 with 32 MSBs 0x000000005e7eeee1
sw x3, 0(x2) # store x3 (0x5e7eeee1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e7eeee1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000005e7eeee1 from memory into f3
fcvt.s.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe48ae247 # load x3 with 32 MSBs 0x00000000e48ae247
sw x3, 0(x2) # store x3 (0xe48ae247) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e48ae247
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000e48ae247 from memory into f4
fcvt.s.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe010eeff # load x3 with 32 MSBs 0x00000000e010eeff
sw x3, 0(x2) # store x3 (0xe010eeff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e010eeff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e010eeff from memory into f5
fcvt.s.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c77ee4c # load x3 with 32 MSBs 0x000000004c77ee4c
sw x3, 0(x2) # store x3 (0x4c77ee4c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c77ee4c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000004c77ee4c from memory into f6
fcvt.s.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfb13627f # load x3 with 32 MSBs 0x00000000fb13627f
sw x3, 0(x2) # store x3 (0xfb13627f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb13627f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000fb13627f from memory into f7
fcvt.s.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7a8cf48 # load x3 with 32 MSBs 0x00000000e7a8cf48
sw x3, 0(x2) # store x3 (0xe7a8cf48) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e7a8cf48
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e7a8cf48 from memory into f8
fcvt.s.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5a8fcf1 # load x3 with 32 MSBs 0x00000000d5a8fcf1
sw x3, 0(x2) # store x3 (0xd5a8fcf1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d5a8fcf1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000d5a8fcf1 from memory into f9
fcvt.s.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaa1aaaae # load x3 with 32 MSBs 0x00000000aa1aaaae
sw x3, 0(x2) # store x3 (0xaa1aaaae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa1aaaae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000aa1aaaae from memory into f10
fcvt.s.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x974ba337 # load x3 with 32 MSBs 0x00000000974ba337
sw x3, 0(x2) # store x3 (0x974ba337) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000974ba337
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000974ba337 from memory into f11
fcvt.s.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb679339e # load x3 with 32 MSBs 0x00000000b679339e
sw x3, 0(x2) # store x3 (0xb679339e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b679339e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b679339e from memory into f12
fcvt.s.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35814c15 # load x3 with 32 MSBs 0x0000000035814c15
sw x3, 0(x2) # store x3 (0x35814c15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000035814c15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000035814c15 from memory into f13
fcvt.s.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6982e920 # load x3 with 32 MSBs 0x000000006982e920
sw x3, 0(x2) # store x3 (0x6982e920) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006982e920
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000006982e920 from memory into f14
fcvt.s.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x358f2fe4 # load x3 with 32 MSBs 0x00000000358f2fe4
sw x3, 0(x2) # store x3 (0x358f2fe4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000358f2fe4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000358f2fe4 from memory into f15
fcvt.s.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92665cb6 # load x3 with 32 MSBs 0x0000000092665cb6
sw x3, 0(x2) # store x3 (0x92665cb6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092665cb6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000092665cb6 from memory into f16
fcvt.s.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6d207355 # load x3 with 32 MSBs 0x000000006d207355
sw x3, 0(x2) # store x3 (0x6d207355) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d207355
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006d207355 from memory into f17
fcvt.s.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d42b6cc # load x3 with 32 MSBs 0x000000009d42b6cc
sw x3, 0(x2) # store x3 (0x9d42b6cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d42b6cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000009d42b6cc from memory into f18
fcvt.s.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x300a0d82 # load x3 with 32 MSBs 0x00000000300a0d82
sw x3, 0(x2) # store x3 (0x300a0d82) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000300a0d82
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000300a0d82 from memory into f19
fcvt.s.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0673b2a1 # load x3 with 32 MSBs 0x000000000673b2a1
sw x3, 0(x2) # store x3 (0x0673b2a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000673b2a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000000673b2a1 from memory into f20
fcvt.s.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ccc758a # load x3 with 32 MSBs 0x000000004ccc758a
sw x3, 0(x2) # store x3 (0x4ccc758a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ccc758a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000004ccc758a from memory into f21
fcvt.s.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c68c7e0 # load x3 with 32 MSBs 0x000000009c68c7e0
sw x3, 0(x2) # store x3 (0x9c68c7e0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c68c7e0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000009c68c7e0 from memory into f22
fcvt.s.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e7548f2 # load x3 with 32 MSBs 0x000000006e7548f2
sw x3, 0(x2) # store x3 (0x6e7548f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e7548f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000006e7548f2 from memory into f23
fcvt.s.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x11ff05cf # load x3 with 32 MSBs 0x0000000011ff05cf
sw x3, 0(x2) # store x3 (0x11ff05cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011ff05cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000011ff05cf from memory into f24
fcvt.s.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8df57a2a # load x3 with 32 MSBs 0x000000008df57a2a
sw x3, 0(x2) # store x3 (0x8df57a2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008df57a2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000008df57a2a from memory into f25
fcvt.s.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf53ff81 # load x3 with 32 MSBs 0x00000000af53ff81
sw x3, 0(x2) # store x3 (0xaf53ff81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af53ff81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000af53ff81 from memory into f26
fcvt.s.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5597c4ca # load x3 with 32 MSBs 0x000000005597c4ca
sw x3, 0(x2) # store x3 (0x5597c4ca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005597c4ca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005597c4ca from memory into f27
fcvt.s.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3579166a # load x3 with 32 MSBs 0x000000003579166a
sw x3, 0(x2) # store x3 (0x3579166a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003579166a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003579166a from memory into f28
fcvt.s.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93040be4 # load x3 with 32 MSBs 0x0000000093040be4
sw x3, 0(x2) # store x3 (0x93040be4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000093040be4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000093040be4 from memory into f29
fcvt.s.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7e902c3 # load x3 with 32 MSBs 0x00000000b7e902c3
sw x3, 0(x2) # store x3 (0xb7e902c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7e902c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000b7e902c3 from memory into f30
fcvt.s.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa23d8425 # load x3 with 32 MSBs 0x00000000a23d8425
sw x3, 0(x2) # store x3 (0xa23d8425) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a23d8425
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000a23d8425 from memory into f31
fcvt.s.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefd46739 # load x3 with 32 MSBs 0x00000000efd46739
sw x3, 0(x2) # store x3 (0xefd46739) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000efd46739
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000efd46739 from memory into f1
fcvt.s.d f12, f1, dyn # perform operation
fcvt.s.d f12, f1, rdn # perform operation
fcvt.s.d f12, f1, rmm # perform operation
fcvt.s.d f12, f1, rne # perform operation
fcvt.s.d f12, f1, rtz # perform operation
fcvt.s.d f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f12, f1 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42b29bc9 # load x3 with 32 MSBs 0x0000000042b29bc9
sw x3, 0(x2) # store x3 (0x42b29bc9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042b29bc9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000042b29bc9 from memory into f11
fcvt.s.d f18, f11 # perform operation second time to make sure flags don't change

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
