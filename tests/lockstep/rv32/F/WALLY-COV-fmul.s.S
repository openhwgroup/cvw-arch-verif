///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fmul.s.S
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
add x22, x26, x15 # perform first operation
fmul.s f9, f18, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x30, x15 # perform first operation
fmul.s f8, f29, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x17, x18 # perform first operation
fmul.s f3, f13, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f3, f9, f20 # perform first operation
fmul.s f9, f25, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f5, f20, f30 # perform first operation
fmul.s f30, f29, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x24, x2 # perform first operation
fmul.s f2, f20, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f5, f17 # perform first operation
fmul.s f8, f23, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f13, f21, f28 # perform first operation
fmul.s f13, f19, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f15, f26 # perform first operation
fmul.s f8, f12, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f2, f28 # perform first operation
fmul.s f2, f14, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f7, f13 # perform first operation
fmul.s f13, f6, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f24, f31, f3 # perform first operation
fmul.s f2, f28, f9 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x735659fc # load x3 with value 0x735659fc
sw x3, 0(x2) # store 0x735659fc in memory
flw f0, 0(x2) # load 0x735659fc from memory into f0
la x2, scratch
li x3, 0x018fc424 # load x3 with value 0x018fc424
sw x3, 0(x2) # store 0x018fc424 in memory
flw f23, 0(x2) # load 0x018fc424 from memory into f23
fmul.s f12, f0, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x8c51b8b5 # load x3 with value 0x8c51b8b5
sw x3, 0(x2) # store 0x8c51b8b5 in memory
flw f1, 0(x2) # load 0x8c51b8b5 from memory into f1
la x2, scratch
li x3, 0x1b511a83 # load x3 with value 0x1b511a83
sw x3, 0(x2) # store 0x1b511a83 in memory
flw f13, 0(x2) # load 0x1b511a83 from memory into f13
fmul.s f7, f1, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x62ac8314 # load x3 with value 0x62ac8314
sw x3, 0(x2) # store 0x62ac8314 in memory
flw f2, 0(x2) # load 0x62ac8314 from memory into f2
la x2, scratch
li x3, 0xee02446d # load x3 with value 0xee02446d
sw x3, 0(x2) # store 0xee02446d in memory
flw f16, 0(x2) # load 0xee02446d from memory into f16
fmul.s f14, f2, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x07a4d178 # load x3 with value 0x07a4d178
sw x3, 0(x2) # store 0x07a4d178 in memory
flw f3, 0(x2) # load 0x07a4d178 from memory into f3
la x2, scratch
li x3, 0x5ef55189 # load x3 with value 0x5ef55189
sw x3, 0(x2) # store 0x5ef55189 in memory
flw f16, 0(x2) # load 0x5ef55189 from memory into f16
fmul.s f25, f3, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6b886899 # load x3 with value 0x6b886899
sw x3, 0(x2) # store 0x6b886899 in memory
flw f4, 0(x2) # load 0x6b886899 from memory into f4
la x2, scratch
li x3, 0xd1dc9a2f # load x3 with value 0xd1dc9a2f
sw x3, 0(x2) # store 0xd1dc9a2f in memory
flw f14, 0(x2) # load 0xd1dc9a2f from memory into f14
fmul.s f12, f4, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x4, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3d75a3f1 # load x3 with value 0x3d75a3f1
sw x3, 0(x2) # store 0x3d75a3f1 in memory
flw f5, 0(x2) # load 0x3d75a3f1 from memory into f5
la x2, scratch
li x3, 0xdfd13626 # load x3 with value 0xdfd13626
sw x3, 0(x2) # store 0xdfd13626 in memory
flw f6, 0(x2) # load 0xdfd13626 from memory into f6
fmul.s f7, f5, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
la x2, scratch
li x3, 0x801b0347 # load x3 with value 0x801b0347
sw x3, 0(x2) # store 0x801b0347 in memory
flw f6, 0(x2) # load 0x801b0347 from memory into f6
la x2, scratch
li x3, 0xd267f88e # load x3 with value 0xd267f88e
sw x3, 0(x2) # store 0xd267f88e in memory
flw f29, 0(x2) # load 0xd267f88e from memory into f29
fmul.s f18, f6, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
la x2, scratch
li x3, 0x9c119aba # load x3 with value 0x9c119aba
sw x3, 0(x2) # store 0x9c119aba in memory
flw f7, 0(x2) # load 0x9c119aba from memory into f7
la x2, scratch
li x3, 0x5a082214 # load x3 with value 0x5a082214
sw x3, 0(x2) # store 0x5a082214 in memory
flw f23, 0(x2) # load 0x5a082214 from memory into f23
fmul.s f10, f7, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xaffc30bc # load x3 with value 0xaffc30bc
sw x3, 0(x2) # store 0xaffc30bc in memory
flw f8, 0(x2) # load 0xaffc30bc from memory into f8
la x2, scratch
li x3, 0x6ea10685 # load x3 with value 0x6ea10685
sw x3, 0(x2) # store 0x6ea10685 in memory
flw f24, 0(x2) # load 0x6ea10685 from memory into f24
fmul.s f9, f8, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x9b63378b # load x3 with value 0x9b63378b
sw x3, 0(x2) # store 0x9b63378b in memory
flw f9, 0(x2) # load 0x9b63378b from memory into f9
la x2, scratch
li x3, 0x22c38347 # load x3 with value 0x22c38347
sw x3, 0(x2) # store 0x22c38347 in memory
flw f17, 0(x2) # load 0x22c38347 from memory into f17
fmul.s f16, f9, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x7f5d05e4 # load x3 with value 0x7f5d05e4
sw x3, 0(x2) # store 0x7f5d05e4 in memory
flw f10, 0(x2) # load 0x7f5d05e4 from memory into f10
la x2, scratch
li x3, 0x3012b674 # load x3 with value 0x3012b674
sw x3, 0(x2) # store 0x3012b674 in memory
flw f23, 0(x2) # load 0x3012b674 from memory into f23
fmul.s f22, f10, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x28e05920 # load x3 with value 0x28e05920
sw x3, 0(x2) # store 0x28e05920 in memory
flw f11, 0(x2) # load 0x28e05920 from memory into f11
la x2, scratch
li x3, 0xaad8dce2 # load x3 with value 0xaad8dce2
sw x3, 0(x2) # store 0xaad8dce2 in memory
flw f17, 0(x2) # load 0xaad8dce2 from memory into f17
fmul.s f13, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xe423a79a # load x3 with value 0xe423a79a
sw x3, 0(x2) # store 0xe423a79a in memory
flw f12, 0(x2) # load 0xe423a79a from memory into f12
la x2, scratch
li x3, 0x53fb4135 # load x3 with value 0x53fb4135
sw x3, 0(x2) # store 0x53fb4135 in memory
flw f20, 0(x2) # load 0x53fb4135 from memory into f20
fmul.s f9, f12, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x094ae36f # load x3 with value 0x094ae36f
sw x3, 0(x2) # store 0x094ae36f in memory
flw f13, 0(x2) # load 0x094ae36f from memory into f13
la x2, scratch
li x3, 0x960e62ec # load x3 with value 0x960e62ec
sw x3, 0(x2) # store 0x960e62ec in memory
flw f18, 0(x2) # load 0x960e62ec from memory into f18
fmul.s f3, f13, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x20fb101b # load x3 with value 0x20fb101b
sw x3, 0(x2) # store 0x20fb101b in memory
flw f14, 0(x2) # load 0x20fb101b from memory into f14
la x2, scratch
li x3, 0xb4d9c9ff # load x3 with value 0xb4d9c9ff
sw x3, 0(x2) # store 0xb4d9c9ff in memory
flw f2, 0(x2) # load 0xb4d9c9ff from memory into f2
fmul.s f3, f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x791f783b # load x3 with value 0x791f783b
sw x3, 0(x2) # store 0x791f783b in memory
flw f15, 0(x2) # load 0x791f783b from memory into f15
la x2, scratch
li x3, 0xc7111e74 # load x3 with value 0xc7111e74
sw x3, 0(x2) # store 0xc7111e74 in memory
flw f17, 0(x2) # load 0xc7111e74 from memory into f17
fmul.s f29, f15, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x81ff9660 # load x3 with value 0x81ff9660
sw x3, 0(x2) # store 0x81ff9660 in memory
flw f16, 0(x2) # load 0x81ff9660 from memory into f16
la x2, scratch
li x3, 0x877b3e1b # load x3 with value 0x877b3e1b
sw x3, 0(x2) # store 0x877b3e1b in memory
flw f14, 0(x2) # load 0x877b3e1b from memory into f14
fmul.s f6, f16, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x577631c0 # load x3 with value 0x577631c0
sw x3, 0(x2) # store 0x577631c0 in memory
flw f17, 0(x2) # load 0x577631c0 from memory into f17
la x2, scratch
li x3, 0x74804311 # load x3 with value 0x74804311
sw x3, 0(x2) # store 0x74804311 in memory
flw f15, 0(x2) # load 0x74804311 from memory into f15
fmul.s f10, f17, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x180852f0 # load x3 with value 0x180852f0
sw x3, 0(x2) # store 0x180852f0 in memory
flw f18, 0(x2) # load 0x180852f0 from memory into f18
la x2, scratch
li x3, 0x40b9edc2 # load x3 with value 0x40b9edc2
sw x3, 0(x2) # store 0x40b9edc2 in memory
flw f23, 0(x2) # load 0x40b9edc2 from memory into f23
fmul.s f14, f18, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x6ecd9ad6 # load x3 with value 0x6ecd9ad6
sw x3, 0(x2) # store 0x6ecd9ad6 in memory
flw f19, 0(x2) # load 0x6ecd9ad6 from memory into f19
la x2, scratch
li x3, 0xf429860e # load x3 with value 0xf429860e
sw x3, 0(x2) # store 0xf429860e in memory
flw f5, 0(x2) # load 0xf429860e from memory into f5
fmul.s f7, f19, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x65427a32 # load x3 with value 0x65427a32
sw x3, 0(x2) # store 0x65427a32 in memory
flw f20, 0(x2) # load 0x65427a32 from memory into f20
la x2, scratch
li x3, 0x57c46bfe # load x3 with value 0x57c46bfe
sw x3, 0(x2) # store 0x57c46bfe in memory
flw f31, 0(x2) # load 0x57c46bfe from memory into f31
fmul.s f28, f20, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x2c0be5de # load x3 with value 0x2c0be5de
sw x3, 0(x2) # store 0x2c0be5de in memory
flw f21, 0(x2) # load 0x2c0be5de from memory into f21
la x2, scratch
li x3, 0x4514b6d0 # load x3 with value 0x4514b6d0
sw x3, 0(x2) # store 0x4514b6d0 in memory
flw f2, 0(x2) # load 0x4514b6d0 from memory into f2
fmul.s f20, f21, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xe7236568 # load x3 with value 0xe7236568
sw x3, 0(x2) # store 0xe7236568 in memory
flw f22, 0(x2) # load 0xe7236568 from memory into f22
la x2, scratch
li x3, 0x3f244f63 # load x3 with value 0x3f244f63
sw x3, 0(x2) # store 0x3f244f63 in memory
flw f10, 0(x2) # load 0x3f244f63 from memory into f10
fmul.s f14, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x09af2877 # load x3 with value 0x09af2877
sw x3, 0(x2) # store 0x09af2877 in memory
flw f23, 0(x2) # load 0x09af2877 from memory into f23
la x2, scratch
li x3, 0x564db76d # load x3 with value 0x564db76d
sw x3, 0(x2) # store 0x564db76d in memory
flw f15, 0(x2) # load 0x564db76d from memory into f15
fmul.s f28, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x2db0d503 # load x3 with value 0x2db0d503
sw x3, 0(x2) # store 0x2db0d503 in memory
flw f24, 0(x2) # load 0x2db0d503 from memory into f24
la x2, scratch
li x3, 0x409f50a6 # load x3 with value 0x409f50a6
sw x3, 0(x2) # store 0x409f50a6 in memory
flw f27, 0(x2) # load 0x409f50a6 from memory into f27
fmul.s f2, f24, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x4f445f75 # load x3 with value 0x4f445f75
sw x3, 0(x2) # store 0x4f445f75 in memory
flw f25, 0(x2) # load 0x4f445f75 from memory into f25
la x2, scratch
li x3, 0x4738b404 # load x3 with value 0x4738b404
sw x3, 0(x2) # store 0x4738b404 in memory
flw f30, 0(x2) # load 0x4738b404 from memory into f30
fmul.s f5, f25, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x84093e45 # load x3 with value 0x84093e45
sw x3, 0(x2) # store 0x84093e45 in memory
flw f26, 0(x2) # load 0x84093e45 from memory into f26
la x2, scratch
li x3, 0xcf04cef4 # load x3 with value 0xcf04cef4
sw x3, 0(x2) # store 0xcf04cef4 in memory
flw f31, 0(x2) # load 0xcf04cef4 from memory into f31
fmul.s f28, f26, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xe2030d42 # load x3 with value 0xe2030d42
sw x3, 0(x2) # store 0xe2030d42 in memory
flw f27, 0(x2) # load 0xe2030d42 from memory into f27
la x2, scratch
li x3, 0xaff330df # load x3 with value 0xaff330df
sw x3, 0(x2) # store 0xaff330df in memory
flw f20, 0(x2) # load 0xaff330df from memory into f20
fmul.s f14, f27, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xb1d4fbde # load x3 with value 0xb1d4fbde
sw x3, 0(x2) # store 0xb1d4fbde in memory
flw f28, 0(x2) # load 0xb1d4fbde from memory into f28
la x2, scratch
li x3, 0x2b02748e # load x3 with value 0x2b02748e
sw x3, 0(x2) # store 0x2b02748e in memory
flw f6, 0(x2) # load 0x2b02748e from memory into f6
fmul.s f2, f28, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x4050bc58 # load x3 with value 0x4050bc58
sw x3, 0(x2) # store 0x4050bc58 in memory
flw f29, 0(x2) # load 0x4050bc58 from memory into f29
la x2, scratch
li x3, 0xe95c71ea # load x3 with value 0xe95c71ea
sw x3, 0(x2) # store 0xe95c71ea in memory
flw f31, 0(x2) # load 0xe95c71ea from memory into f31
fmul.s f22, f29, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xe7d3449b # load x3 with value 0xe7d3449b
sw x3, 0(x2) # store 0xe7d3449b in memory
flw f30, 0(x2) # load 0xe7d3449b from memory into f30
la x2, scratch
li x3, 0x3aa6770e # load x3 with value 0x3aa6770e
sw x3, 0(x2) # store 0x3aa6770e in memory
flw f13, 0(x2) # load 0x3aa6770e from memory into f13
fmul.s f6, f30, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x854fd47a # load x3 with value 0x854fd47a
sw x3, 0(x2) # store 0x854fd47a in memory
flw f31, 0(x2) # load 0x854fd47a from memory into f31
la x2, scratch
li x3, 0xe71246aa # load x3 with value 0xe71246aa
sw x3, 0(x2) # store 0xe71246aa in memory
flw f14, 0(x2) # load 0xe71246aa from memory into f14
fmul.s f27, f31, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xc46c7481 # load x3 with value 0xc46c7481
sw x3, 0(x2) # store 0xc46c7481 in memory
flw f3, 0(x2) # load 0xc46c7481 from memory into f3
la x2, scratch
li x3, 0x19097e83 # load x3 with value 0x19097e83
sw x3, 0(x2) # store 0x19097e83 in memory
flw f0, 0(x2) # load 0x19097e83 from memory into f0
fmul.s f31, f3, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x7d904df0 # load x3 with value 0x7d904df0
sw x3, 0(x2) # store 0x7d904df0 in memory
flw f22, 0(x2) # load 0x7d904df0 from memory into f22
la x2, scratch
li x3, 0x39ce3a45 # load x3 with value 0x39ce3a45
sw x3, 0(x2) # store 0x39ce3a45 in memory
flw f1, 0(x2) # load 0x39ce3a45 from memory into f1
fmul.s f15, f22, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x542ab4d6 # load x3 with value 0x542ab4d6
sw x3, 0(x2) # store 0x542ab4d6 in memory
flw f20, 0(x2) # load 0x542ab4d6 from memory into f20
la x2, scratch
li x3, 0x92b20c4f # load x3 with value 0x92b20c4f
sw x3, 0(x2) # store 0x92b20c4f in memory
flw f2, 0(x2) # load 0x92b20c4f from memory into f2
fmul.s f26, f20, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x768a8c83 # load x3 with value 0x768a8c83
sw x3, 0(x2) # store 0x768a8c83 in memory
flw f9, 0(x2) # load 0x768a8c83 from memory into f9
la x2, scratch
li x3, 0xe50c9121 # load x3 with value 0xe50c9121
sw x3, 0(x2) # store 0xe50c9121 in memory
flw f3, 0(x2) # load 0xe50c9121 from memory into f3
fmul.s f18, f9, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x58dd2800 # load x3 with value 0x58dd2800
sw x3, 0(x2) # store 0x58dd2800 in memory
flw f18, 0(x2) # load 0x58dd2800 from memory into f18
la x2, scratch
li x3, 0x7606a36f # load x3 with value 0x7606a36f
sw x3, 0(x2) # store 0x7606a36f in memory
flw f4, 0(x2) # load 0x7606a36f from memory into f4
fmul.s f15, f18, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x15a57fd7 # load x3 with value 0x15a57fd7
sw x3, 0(x2) # store 0x15a57fd7 in memory
flw f29, 0(x2) # load 0x15a57fd7 from memory into f29
la x2, scratch
li x3, 0xca1ba017 # load x3 with value 0xca1ba017
sw x3, 0(x2) # store 0xca1ba017 in memory
flw f5, 0(x2) # load 0xca1ba017 from memory into f5
fmul.s f9, f29, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xaebddc8d # load x3 with value 0xaebddc8d
sw x3, 0(x2) # store 0xaebddc8d in memory
flw f14, 0(x2) # load 0xaebddc8d from memory into f14
la x2, scratch
li x3, 0xe7e815ea # load x3 with value 0xe7e815ea
sw x3, 0(x2) # store 0xe7e815ea in memory
flw f6, 0(x2) # load 0xe7e815ea from memory into f6
fmul.s f18, f14, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x15f429e0 # load x3 with value 0x15f429e0
sw x3, 0(x2) # store 0x15f429e0 in memory
flw f11, 0(x2) # load 0x15f429e0 from memory into f11
la x2, scratch
li x3, 0xfb3769e0 # load x3 with value 0xfb3769e0
sw x3, 0(x2) # store 0xfb3769e0 in memory
flw f7, 0(x2) # load 0xfb3769e0 from memory into f7
fmul.s f4, f11, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xf81a010a # load x3 with value 0xf81a010a
sw x3, 0(x2) # store 0xf81a010a in memory
flw f28, 0(x2) # load 0xf81a010a from memory into f28
la x2, scratch
li x3, 0x91058c11 # load x3 with value 0x91058c11
sw x3, 0(x2) # store 0x91058c11 in memory
flw f8, 0(x2) # load 0x91058c11 from memory into f8
fmul.s f14, f28, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xfae279f3 # load x3 with value 0xfae279f3
sw x3, 0(x2) # store 0xfae279f3 in memory
flw f3, 0(x2) # load 0xfae279f3 from memory into f3
la x2, scratch
li x3, 0xcb6cd11d # load x3 with value 0xcb6cd11d
sw x3, 0(x2) # store 0xcb6cd11d in memory
flw f9, 0(x2) # load 0xcb6cd11d from memory into f9
fmul.s f15, f3, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x79b4f2f7 # load x3 with value 0x79b4f2f7
sw x3, 0(x2) # store 0x79b4f2f7 in memory
flw f16, 0(x2) # load 0x79b4f2f7 from memory into f16
la x2, scratch
li x3, 0xe92ecf99 # load x3 with value 0xe92ecf99
sw x3, 0(x2) # store 0xe92ecf99 in memory
flw f10, 0(x2) # load 0xe92ecf99 from memory into f10
fmul.s f18, f16, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x4ad7c8d8 # load x3 with value 0x4ad7c8d8
sw x3, 0(x2) # store 0x4ad7c8d8 in memory
flw f14, 0(x2) # load 0x4ad7c8d8 from memory into f14
la x2, scratch
li x3, 0xdcd84257 # load x3 with value 0xdcd84257
sw x3, 0(x2) # store 0xdcd84257 in memory
flw f11, 0(x2) # load 0xdcd84257 from memory into f11
fmul.s f4, f14, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0xfff8b2cf # load x3 with value 0xfff8b2cf
sw x3, 0(x2) # store 0xfff8b2cf in memory
flw f18, 0(x2) # load 0xfff8b2cf from memory into f18
la x2, scratch
li x3, 0xe2e14cda # load x3 with value 0xe2e14cda
sw x3, 0(x2) # store 0xe2e14cda in memory
flw f12, 0(x2) # load 0xe2e14cda from memory into f12
fmul.s f28, f18, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x869b3217 # load x3 with value 0x869b3217
sw x3, 0(x2) # store 0x869b3217 in memory
flw f15, 0(x2) # load 0x869b3217 from memory into f15
la x2, scratch
li x3, 0x3c8f7fc9 # load x3 with value 0x3c8f7fc9
sw x3, 0(x2) # store 0x3c8f7fc9 in memory
flw f13, 0(x2) # load 0x3c8f7fc9 from memory into f13
fmul.s f21, f15, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x683ed6c8 # load x3 with value 0x683ed6c8
sw x3, 0(x2) # store 0x683ed6c8 in memory
flw f6, 0(x2) # load 0x683ed6c8 from memory into f6
la x2, scratch
li x3, 0x914c5883 # load x3 with value 0x914c5883
sw x3, 0(x2) # store 0x914c5883 in memory
flw f14, 0(x2) # load 0x914c5883 from memory into f14
fmul.s f29, f6, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xae467530 # load x3 with value 0xae467530
sw x3, 0(x2) # store 0xae467530 in memory
flw f10, 0(x2) # load 0xae467530 from memory into f10
la x2, scratch
li x3, 0xa3f52c45 # load x3 with value 0xa3f52c45
sw x3, 0(x2) # store 0xa3f52c45 in memory
flw f15, 0(x2) # load 0xa3f52c45 from memory into f15
fmul.s f14, f10, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x5b549137 # load x3 with value 0x5b549137
sw x3, 0(x2) # store 0x5b549137 in memory
flw f13, 0(x2) # load 0x5b549137 from memory into f13
la x2, scratch
li x3, 0x7ff337ec # load x3 with value 0x7ff337ec
sw x3, 0(x2) # store 0x7ff337ec in memory
flw f16, 0(x2) # load 0x7ff337ec from memory into f16
fmul.s f9, f13, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xf225c8ec # load x3 with value 0xf225c8ec
sw x3, 0(x2) # store 0xf225c8ec in memory
flw f26, 0(x2) # load 0xf225c8ec from memory into f26
la x2, scratch
li x3, 0xf493e15f # load x3 with value 0xf493e15f
sw x3, 0(x2) # store 0xf493e15f in memory
flw f17, 0(x2) # load 0xf493e15f from memory into f17
fmul.s f24, f26, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xfffe2a1a # load x3 with value 0xfffe2a1a
sw x3, 0(x2) # store 0xfffe2a1a in memory
flw f20, 0(x2) # load 0xfffe2a1a from memory into f20
la x2, scratch
li x3, 0xf88b1ce5 # load x3 with value 0xf88b1ce5
sw x3, 0(x2) # store 0xf88b1ce5 in memory
flw f18, 0(x2) # load 0xf88b1ce5 from memory into f18
fmul.s f19, f20, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xa3d449b4 # load x3 with value 0xa3d449b4
sw x3, 0(x2) # store 0xa3d449b4 in memory
flw f7, 0(x2) # load 0xa3d449b4 from memory into f7
la x2, scratch
li x3, 0x411ce637 # load x3 with value 0x411ce637
sw x3, 0(x2) # store 0x411ce637 in memory
flw f19, 0(x2) # load 0x411ce637 from memory into f19
fmul.s f6, f7, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xcb3426cc # load x3 with value 0xcb3426cc
sw x3, 0(x2) # store 0xcb3426cc in memory
flw f27, 0(x2) # load 0xcb3426cc from memory into f27
la x2, scratch
li x3, 0xc8d8eb75 # load x3 with value 0xc8d8eb75
sw x3, 0(x2) # store 0xc8d8eb75 in memory
flw f20, 0(x2) # load 0xc8d8eb75 from memory into f20
fmul.s f13, f27, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x5d79ba4c # load x3 with value 0x5d79ba4c
sw x3, 0(x2) # store 0x5d79ba4c in memory
flw f4, 0(x2) # load 0x5d79ba4c from memory into f4
la x2, scratch
li x3, 0xbddabd56 # load x3 with value 0xbddabd56
sw x3, 0(x2) # store 0xbddabd56 in memory
flw f21, 0(x2) # load 0xbddabd56 from memory into f21
fmul.s f13, f4, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xf31c73d5 # load x3 with value 0xf31c73d5
sw x3, 0(x2) # store 0xf31c73d5 in memory
flw f31, 0(x2) # load 0xf31c73d5 from memory into f31
la x2, scratch
li x3, 0x766a1870 # load x3 with value 0x766a1870
sw x3, 0(x2) # store 0x766a1870 in memory
flw f22, 0(x2) # load 0x766a1870 from memory into f22
fmul.s f15, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xbcecc15b # load x3 with value 0xbcecc15b
sw x3, 0(x2) # store 0xbcecc15b in memory
flw f18, 0(x2) # load 0xbcecc15b from memory into f18
la x2, scratch
li x3, 0x090d53ca # load x3 with value 0x090d53ca
sw x3, 0(x2) # store 0x090d53ca in memory
flw f23, 0(x2) # load 0x090d53ca from memory into f23
fmul.s f3, f18, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xa15b72ac # load x3 with value 0xa15b72ac
sw x3, 0(x2) # store 0xa15b72ac in memory
flw f20, 0(x2) # load 0xa15b72ac from memory into f20
la x2, scratch
li x3, 0xec492e78 # load x3 with value 0xec492e78
sw x3, 0(x2) # store 0xec492e78 in memory
flw f24, 0(x2) # load 0xec492e78 from memory into f24
fmul.s f11, f20, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x8c575830 # load x3 with value 0x8c575830
sw x3, 0(x2) # store 0x8c575830 in memory
flw f18, 0(x2) # load 0x8c575830 from memory into f18
la x2, scratch
li x3, 0x93832bf9 # load x3 with value 0x93832bf9
sw x3, 0(x2) # store 0x93832bf9 in memory
flw f25, 0(x2) # load 0x93832bf9 from memory into f25
fmul.s f13, f18, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x3f74c570 # load x3 with value 0x3f74c570
sw x3, 0(x2) # store 0x3f74c570 in memory
flw f7, 0(x2) # load 0x3f74c570 from memory into f7
la x2, scratch
li x3, 0x4ca509c8 # load x3 with value 0x4ca509c8
sw x3, 0(x2) # store 0x4ca509c8 in memory
flw f26, 0(x2) # load 0x4ca509c8 from memory into f26
fmul.s f1, f7, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x6b1baff1 # load x3 with value 0x6b1baff1
sw x3, 0(x2) # store 0x6b1baff1 in memory
flw f24, 0(x2) # load 0x6b1baff1 from memory into f24
la x2, scratch
li x3, 0x906eecdc # load x3 with value 0x906eecdc
sw x3, 0(x2) # store 0x906eecdc in memory
flw f27, 0(x2) # load 0x906eecdc from memory into f27
fmul.s f23, f24, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x5bc307b9 # load x3 with value 0x5bc307b9
sw x3, 0(x2) # store 0x5bc307b9 in memory
flw f27, 0(x2) # load 0x5bc307b9 from memory into f27
la x2, scratch
li x3, 0x313c9618 # load x3 with value 0x313c9618
sw x3, 0(x2) # store 0x313c9618 in memory
flw f28, 0(x2) # load 0x313c9618 from memory into f28
fmul.s f20, f27, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xc1075aef # load x3 with value 0xc1075aef
sw x3, 0(x2) # store 0xc1075aef in memory
flw f4, 0(x2) # load 0xc1075aef from memory into f4
la x2, scratch
li x3, 0x8f128950 # load x3 with value 0x8f128950
sw x3, 0(x2) # store 0x8f128950 in memory
flw f29, 0(x2) # load 0x8f128950 from memory into f29
fmul.s f16, f4, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x489bea32 # load x3 with value 0x489bea32
sw x3, 0(x2) # store 0x489bea32 in memory
flw f17, 0(x2) # load 0x489bea32 from memory into f17
la x2, scratch
li x3, 0xe9ecc53f # load x3 with value 0xe9ecc53f
sw x3, 0(x2) # store 0xe9ecc53f in memory
flw f30, 0(x2) # load 0xe9ecc53f from memory into f30
fmul.s f24, f17, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x0b9de8c6 # load x3 with value 0x0b9de8c6
sw x3, 0(x2) # store 0x0b9de8c6 in memory
flw f10, 0(x2) # load 0x0b9de8c6 from memory into f10
la x2, scratch
li x3, 0x63b89317 # load x3 with value 0x63b89317
sw x3, 0(x2) # store 0x63b89317 in memory
flw f31, 0(x2) # load 0x63b89317 from memory into f31
fmul.s f6, f10, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x78916f63 # load x3 with value 0x78916f63
sw x3, 0(x2) # store 0x78916f63 in memory
flw f13, 0(x2) # load 0x78916f63 from memory into f13
la x2, scratch
li x3, 0x304b4625 # load x3 with value 0x304b4625
sw x3, 0(x2) # store 0x304b4625 in memory
flw f6, 0(x2) # load 0x304b4625 from memory into f6
fmul.s f0, f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0xe62c76d2 # load x3 with value 0xe62c76d2
sw x3, 0(x2) # store 0xe62c76d2 in memory
flw f22, 0(x2) # load 0xe62c76d2 from memory into f22
la x2, scratch
li x3, 0x3ceb4c99 # load x3 with value 0x3ceb4c99
sw x3, 0(x2) # store 0x3ceb4c99 in memory
flw f28, 0(x2) # load 0x3ceb4c99 from memory into f28
fmul.s f1, f22, f28 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xf46bca83 # load x3 with value 0xf46bca83
sw x3, 0(x2) # store 0xf46bca83 in memory
flw f3, 0(x2) # load 0xf46bca83 from memory into f3
la x2, scratch
li x3, 0xac45867d # load x3 with value 0xac45867d
sw x3, 0(x2) # store 0xac45867d in memory
flw f20, 0(x2) # load 0xac45867d from memory into f20
fmul.s f2, f3, f20 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x7a05579f # load x3 with value 0x7a05579f
sw x3, 0(x2) # store 0x7a05579f in memory
flw f28, 0(x2) # load 0x7a05579f from memory into f28
la x2, scratch
li x3, 0x4806a2cf # load x3 with value 0x4806a2cf
sw x3, 0(x2) # store 0x4806a2cf in memory
flw f13, 0(x2) # load 0x4806a2cf from memory into f13
fmul.s f3, f28, f13 # perform operation

# Testcase cp_fd (Test destination fd = x4)
la x2, scratch
li x3, 0x76d13d58 # load x3 with value 0x76d13d58
sw x3, 0(x2) # store 0x76d13d58 in memory
flw f22, 0(x2) # load 0x76d13d58 from memory into f22
la x2, scratch
li x3, 0x5b569cd2 # load x3 with value 0x5b569cd2
sw x3, 0(x2) # store 0x5b569cd2 in memory
flw f10, 0(x2) # load 0x5b569cd2 from memory into f10
fmul.s f4, f22, f10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb1c57998 # load x3 with value 0xb1c57998
sw x3, 0(x2) # store 0xb1c57998 in memory
flw f20, 0(x2) # load 0xb1c57998 from memory into f20
la x2, scratch
li x3, 0x3352743f # load x3 with value 0x3352743f
sw x3, 0(x2) # store 0x3352743f in memory
flw f3, 0(x2) # load 0x3352743f from memory into f3
fmul.s f5, f20, f3 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x74f5b749 # load x3 with value 0x74f5b749
sw x3, 0(x2) # store 0x74f5b749 in memory
flw f31, 0(x2) # load 0x74f5b749 from memory into f31
la x2, scratch
li x3, 0x340fc82e # load x3 with value 0x340fc82e
sw x3, 0(x2) # store 0x340fc82e in memory
flw f29, 0(x2) # load 0x340fc82e from memory into f29
fmul.s f6, f31, f29 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfb461ea6 # load x3 with value 0xfb461ea6
sw x3, 0(x2) # store 0xfb461ea6 in memory
flw f28, 0(x2) # load 0xfb461ea6 from memory into f28
la x2, scratch
li x3, 0x7fc01025 # load x3 with value 0x7fc01025
sw x3, 0(x2) # store 0x7fc01025 in memory
flw f16, 0(x2) # load 0x7fc01025 from memory into f16
fmul.s f7, f28, f16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0xd5045ad4 # load x3 with value 0xd5045ad4
sw x3, 0(x2) # store 0xd5045ad4 in memory
flw f21, 0(x2) # load 0xd5045ad4 from memory into f21
la x2, scratch
li x3, 0xe1218091 # load x3 with value 0xe1218091
sw x3, 0(x2) # store 0xe1218091 in memory
flw f30, 0(x2) # load 0xe1218091 from memory into f30
fmul.s f8, f21, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0xbd2d33e4 # load x3 with value 0xbd2d33e4
sw x3, 0(x2) # store 0xbd2d33e4 in memory
flw f22, 0(x2) # load 0xbd2d33e4 from memory into f22
la x2, scratch
li x3, 0xb77e0c63 # load x3 with value 0xb77e0c63
sw x3, 0(x2) # store 0xb77e0c63 in memory
flw f25, 0(x2) # load 0xb77e0c63 from memory into f25
fmul.s f9, f22, f25 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xae7a0e4e # load x3 with value 0xae7a0e4e
sw x3, 0(x2) # store 0xae7a0e4e in memory
flw f11, 0(x2) # load 0xae7a0e4e from memory into f11
la x2, scratch
li x3, 0xa9e74cfd # load x3 with value 0xa9e74cfd
sw x3, 0(x2) # store 0xa9e74cfd in memory
flw f16, 0(x2) # load 0xa9e74cfd from memory into f16
fmul.s f10, f11, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x452012c7 # load x3 with value 0x452012c7
sw x3, 0(x2) # store 0x452012c7 in memory
flw f19, 0(x2) # load 0x452012c7 from memory into f19
la x2, scratch
li x3, 0x2e226d3c # load x3 with value 0x2e226d3c
sw x3, 0(x2) # store 0x2e226d3c in memory
flw f8, 0(x2) # load 0x2e226d3c from memory into f8
fmul.s f11, f19, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0x2d2b2cfc # load x3 with value 0x2d2b2cfc
sw x3, 0(x2) # store 0x2d2b2cfc in memory
flw f18, 0(x2) # load 0x2d2b2cfc from memory into f18
la x2, scratch
li x3, 0x0d7ee954 # load x3 with value 0x0d7ee954
sw x3, 0(x2) # store 0x0d7ee954 in memory
flw f10, 0(x2) # load 0x0d7ee954 from memory into f10
fmul.s f12, f18, f10 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0xcdab756e # load x3 with value 0xcdab756e
sw x3, 0(x2) # store 0xcdab756e in memory
flw f15, 0(x2) # load 0xcdab756e from memory into f15
la x2, scratch
li x3, 0x1b8e7606 # load x3 with value 0x1b8e7606
sw x3, 0(x2) # store 0x1b8e7606 in memory
flw f10, 0(x2) # load 0x1b8e7606 from memory into f10
fmul.s f13, f15, f10 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x8df51d56 # load x3 with value 0x8df51d56
sw x3, 0(x2) # store 0x8df51d56 in memory
flw f22, 0(x2) # load 0x8df51d56 from memory into f22
la x2, scratch
li x3, 0xd73e67b4 # load x3 with value 0xd73e67b4
sw x3, 0(x2) # store 0xd73e67b4 in memory
flw f8, 0(x2) # load 0xd73e67b4 from memory into f8
fmul.s f14, f22, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x3b4586bb # load x3 with value 0x3b4586bb
sw x3, 0(x2) # store 0x3b4586bb in memory
flw f11, 0(x2) # load 0x3b4586bb from memory into f11
la x2, scratch
li x3, 0xeb97c66e # load x3 with value 0xeb97c66e
sw x3, 0(x2) # store 0xeb97c66e in memory
flw f25, 0(x2) # load 0xeb97c66e from memory into f25
fmul.s f15, f11, f25 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x8ff830da # load x3 with value 0x8ff830da
sw x3, 0(x2) # store 0x8ff830da in memory
flw f31, 0(x2) # load 0x8ff830da from memory into f31
la x2, scratch
li x3, 0x942a1b9f # load x3 with value 0x942a1b9f
sw x3, 0(x2) # store 0x942a1b9f in memory
flw f29, 0(x2) # load 0x942a1b9f from memory into f29
fmul.s f16, f31, f29 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x859f0ac3 # load x3 with value 0x859f0ac3
sw x3, 0(x2) # store 0x859f0ac3 in memory
flw f29, 0(x2) # load 0x859f0ac3 from memory into f29
la x2, scratch
li x3, 0xafeed03d # load x3 with value 0xafeed03d
sw x3, 0(x2) # store 0xafeed03d in memory
flw f28, 0(x2) # load 0xafeed03d from memory into f28
fmul.s f17, f29, f28 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x219be7a3 # load x3 with value 0x219be7a3
sw x3, 0(x2) # store 0x219be7a3 in memory
flw f29, 0(x2) # load 0x219be7a3 from memory into f29
la x2, scratch
li x3, 0x5ccad61d # load x3 with value 0x5ccad61d
sw x3, 0(x2) # store 0x5ccad61d in memory
flw f18, 0(x2) # load 0x5ccad61d from memory into f18
fmul.s f18, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0xedf7515a # load x3 with value 0xedf7515a
sw x3, 0(x2) # store 0xedf7515a in memory
flw f19, 0(x2) # load 0xedf7515a from memory into f19
la x2, scratch
li x3, 0x1acbf910 # load x3 with value 0x1acbf910
sw x3, 0(x2) # store 0x1acbf910 in memory
flw f27, 0(x2) # load 0x1acbf910 from memory into f27
fmul.s f19, f19, f27 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0xeb40db08 # load x3 with value 0xeb40db08
sw x3, 0(x2) # store 0xeb40db08 in memory
flw f17, 0(x2) # load 0xeb40db08 from memory into f17
la x2, scratch
li x3, 0x4772b492 # load x3 with value 0x4772b492
sw x3, 0(x2) # store 0x4772b492 in memory
flw f1, 0(x2) # load 0x4772b492 from memory into f1
fmul.s f20, f17, f1 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xa31ebd6e # load x3 with value 0xa31ebd6e
sw x3, 0(x2) # store 0xa31ebd6e in memory
flw f17, 0(x2) # load 0xa31ebd6e from memory into f17
la x2, scratch
li x3, 0x92d7f69c # load x3 with value 0x92d7f69c
sw x3, 0(x2) # store 0x92d7f69c in memory
flw f23, 0(x2) # load 0x92d7f69c from memory into f23
fmul.s f21, f17, f23 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xd32c8f45 # load x3 with value 0xd32c8f45
sw x3, 0(x2) # store 0xd32c8f45 in memory
flw f25, 0(x2) # load 0xd32c8f45 from memory into f25
la x2, scratch
li x3, 0xc431e15e # load x3 with value 0xc431e15e
sw x3, 0(x2) # store 0xc431e15e in memory
flw f20, 0(x2) # load 0xc431e15e from memory into f20
fmul.s f22, f25, f20 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x0e5319a8 # load x3 with value 0x0e5319a8
sw x3, 0(x2) # store 0x0e5319a8 in memory
flw f2, 0(x2) # load 0x0e5319a8 from memory into f2
la x2, scratch
li x3, 0x2ed9de4c # load x3 with value 0x2ed9de4c
sw x3, 0(x2) # store 0x2ed9de4c in memory
flw f27, 0(x2) # load 0x2ed9de4c from memory into f27
fmul.s f23, f2, f27 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0xd995b212 # load x3 with value 0xd995b212
sw x3, 0(x2) # store 0xd995b212 in memory
flw f20, 0(x2) # load 0xd995b212 from memory into f20
la x2, scratch
li x3, 0xeb967ebc # load x3 with value 0xeb967ebc
sw x3, 0(x2) # store 0xeb967ebc in memory
flw f21, 0(x2) # load 0xeb967ebc from memory into f21
fmul.s f24, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xf422f507 # load x3 with value 0xf422f507
sw x3, 0(x2) # store 0xf422f507 in memory
flw f11, 0(x2) # load 0xf422f507 from memory into f11
la x2, scratch
li x3, 0x1bd9e7b5 # load x3 with value 0x1bd9e7b5
sw x3, 0(x2) # store 0x1bd9e7b5 in memory
flw f6, 0(x2) # load 0x1bd9e7b5 from memory into f6
fmul.s f25, f11, f6 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x7c54333c # load x3 with value 0x7c54333c
sw x3, 0(x2) # store 0x7c54333c in memory
flw f21, 0(x2) # load 0x7c54333c from memory into f21
la x2, scratch
li x3, 0x685f5fce # load x3 with value 0x685f5fce
sw x3, 0(x2) # store 0x685f5fce in memory
flw f16, 0(x2) # load 0x685f5fce from memory into f16
fmul.s f26, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x15e7a516 # load x3 with value 0x15e7a516
sw x3, 0(x2) # store 0x15e7a516 in memory
flw f21, 0(x2) # load 0x15e7a516 from memory into f21
la x2, scratch
li x3, 0x5707ab9c # load x3 with value 0x5707ab9c
sw x3, 0(x2) # store 0x5707ab9c in memory
flw f27, 0(x2) # load 0x5707ab9c from memory into f27
fmul.s f27, f21, f27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x0d82ee1e # load x3 with value 0x0d82ee1e
sw x3, 0(x2) # store 0x0d82ee1e in memory
flw f20, 0(x2) # load 0x0d82ee1e from memory into f20
la x2, scratch
li x3, 0x7efbfa5f # load x3 with value 0x7efbfa5f
sw x3, 0(x2) # store 0x7efbfa5f in memory
flw f28, 0(x2) # load 0x7efbfa5f from memory into f28
fmul.s f28, f20, f28 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x07dd7f10 # load x3 with value 0x07dd7f10
sw x3, 0(x2) # store 0x07dd7f10 in memory
flw f10, 0(x2) # load 0x07dd7f10 from memory into f10
la x2, scratch
li x3, 0x9c69959d # load x3 with value 0x9c69959d
sw x3, 0(x2) # store 0x9c69959d in memory
flw f2, 0(x2) # load 0x9c69959d from memory into f2
fmul.s f29, f10, f2 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0xa91c8096 # load x3 with value 0xa91c8096
sw x3, 0(x2) # store 0xa91c8096 in memory
flw f3, 0(x2) # load 0xa91c8096 from memory into f3
la x2, scratch
li x3, 0xbd40ccb4 # load x3 with value 0xbd40ccb4
sw x3, 0(x2) # store 0xbd40ccb4 in memory
flw f7, 0(x2) # load 0xbd40ccb4 from memory into f7
fmul.s f30, f3, f7 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x3538ddf0 # load x3 with value 0x3538ddf0
sw x3, 0(x2) # store 0x3538ddf0 in memory
flw f10, 0(x2) # load 0x3538ddf0 from memory into f10
la x2, scratch
li x3, 0x179ad89b # load x3 with value 0x179ad89b
sw x3, 0(x2) # store 0x179ad89b in memory
flw f17, 0(x2) # load 0x179ad89b from memory into f17
fmul.s f31, f10, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0xa823ebe0 # load x3 with value 0xa823ebe0
sw x3, 0(x2) # store 0xa823ebe0 in memory
flw f12, 0(x2) # load 0xa823ebe0 from memory into f12
fmul.s f5, f1, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x83e6a4c1 # load x3 with value 0x83e6a4c1
sw x3, 0(x2) # store 0x83e6a4c1 in memory
flw f29, 0(x2) # load 0x83e6a4c1 from memory into f29
fmul.s f5, f27, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0x8177bc0e # load x3 with value 0x8177bc0e
sw x3, 0(x2) # store 0x8177bc0e in memory
flw f6, 0(x2) # load 0x8177bc0e from memory into f6
fmul.s f1, f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
la x2, scratch
li x3, 0x77d4f3e1 # load x3 with value 0x77d4f3e1
sw x3, 0(x2) # store 0x77d4f3e1 in memory
flw f19, 0(x2) # load 0x77d4f3e1 from memory into f19
fmul.s f10, f12, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x431b6062 # load x3 with value 0x431b6062
sw x3, 0(x2) # store 0x431b6062 in memory
flw f21, 0(x2) # load 0x431b6062 from memory into f21
fmul.s f20, f10, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x95d8ce45 # load x3 with value 0x95d8ce45
sw x3, 0(x2) # store 0x95d8ce45 in memory
flw f1, 0(x2) # load 0x95d8ce45 from memory into f1
fmul.s f2, f12, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x775fefbc # load x3 with value 0x775fefbc
sw x3, 0(x2) # store 0x775fefbc in memory
flw f17, 0(x2) # load 0x775fefbc from memory into f17
fmul.s f14, f22, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0x6a0a2dcd # load x3 with value 0x6a0a2dcd
sw x3, 0(x2) # store 0x6a0a2dcd in memory
flw f12, 0(x2) # load 0x6a0a2dcd from memory into f12
fmul.s f19, f26, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x77e310aa # load x3 with value 0x77e310aa
sw x3, 0(x2) # store 0x77e310aa in memory
flw f18, 0(x2) # load 0x77e310aa from memory into f18
fmul.s f16, f21, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0xbc50bac6 # load x3 with value 0xbc50bac6
sw x3, 0(x2) # store 0xbc50bac6 in memory
flw f14, 0(x2) # load 0xbc50bac6 from memory into f14
fmul.s f29, f19, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0xa4e535c4 # load x3 with value 0xa4e535c4
sw x3, 0(x2) # store 0xa4e535c4 in memory
flw f18, 0(x2) # load 0xa4e535c4 from memory into f18
fmul.s f8, f30, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
la x2, scratch
li x3, 0x500c85e0 # load x3 with value 0x500c85e0
sw x3, 0(x2) # store 0x500c85e0 in memory
flw f11, 0(x2) # load 0x500c85e0 from memory into f11
fmul.s f5, f6, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
la x2, scratch
li x3, 0x38224a3a # load x3 with value 0x38224a3a
sw x3, 0(x2) # store 0x38224a3a in memory
flw f8, 0(x2) # load 0x38224a3a from memory into f8
fmul.s f13, f12, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0xb683a91c # load x3 with value 0xb683a91c
sw x3, 0(x2) # store 0xb683a91c in memory
flw f27, 0(x2) # load 0xb683a91c from memory into f27
fmul.s f8, f26, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x0e3f42a3 # load x3 with value 0x0e3f42a3
sw x3, 0(x2) # store 0x0e3f42a3 in memory
flw f30, 0(x2) # load 0x0e3f42a3 from memory into f30
fmul.s f15, f2, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x2111ca4f # load x3 with value 0x2111ca4f
sw x3, 0(x2) # store 0x2111ca4f in memory
flw f19, 0(x2) # load 0x2111ca4f from memory into f19
fmul.s f7, f9, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x75eff5bf # load x3 with value 0x75eff5bf
sw x3, 0(x2) # store 0x75eff5bf in memory
flw f19, 0(x2) # load 0x75eff5bf from memory into f19
fmul.s f12, f15, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x2, scratch
li x3, 0x4365d879 # load x3 with value 0x4365d879
sw x3, 0(x2) # store 0x4365d879 in memory
flw f15, 0(x2) # load 0x4365d879 from memory into f15
fmul.s f19, f25, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0xc8a90a8e # load x3 with value 0xc8a90a8e
sw x3, 0(x2) # store 0xc8a90a8e in memory
flw f19, 0(x2) # load 0xc8a90a8e from memory into f19
fmul.s f28, f26, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x4b2d5567 # load x3 with value 0x4b2d5567
sw x3, 0(x2) # store 0x4b2d5567 in memory
flw f23, 0(x2) # load 0x4b2d5567 from memory into f23
fmul.s f2, f27, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0x5c2340ce # load x3 with value 0x5c2340ce
sw x3, 0(x2) # store 0x5c2340ce in memory
flw f9, 0(x2) # load 0x5c2340ce from memory into f9
fmul.s f24, f5, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
la x2, scratch
li x3, 0x412752a2 # load x3 with value 0x412752a2
sw x3, 0(x2) # store 0x412752a2 in memory
flw f30, 0(x2) # load 0x412752a2 from memory into f30
fmul.s f25, f12, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0xe4d00ebb # load x3 with value 0xe4d00ebb
sw x3, 0(x2) # store 0xe4d00ebb in memory
flw f14, 0(x2) # load 0xe4d00ebb from memory into f14
fmul.s f30, f21, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x521ee5c9 # load x3 with value 0x521ee5c9
sw x3, 0(x2) # store 0x521ee5c9 in memory
flw f15, 0(x2) # load 0x521ee5c9 from memory into f15
fmul.s f9, f30, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
la x2, scratch
li x3, 0x3ad5ce97 # load x3 with value 0x3ad5ce97
sw x3, 0(x2) # store 0x3ad5ce97 in memory
flw f21, 0(x2) # load 0x3ad5ce97 from memory into f21
fmul.s f13, f12, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x133e7d90 # load x3 with value 0x133e7d90
sw x3, 0(x2) # store 0x133e7d90 in memory
flw f8, 0(x2) # load 0x133e7d90 from memory into f8
fmul.s f18, f5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x6765cd91 # load x3 with value 0x6765cd91
sw x3, 0(x2) # store 0x6765cd91 in memory
flw f11, 0(x2) # load 0x6765cd91 from memory into f11
fmul.s f18, f9, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x11c3e439 # load x3 with value 0x11c3e439
sw x3, 0(x2) # store 0x11c3e439 in memory
flw f27, 0(x2) # load 0x11c3e439 from memory into f27
fmul.s f30, f13, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x38ff9b50 # load x3 with value 0x38ff9b50
sw x3, 0(x2) # store 0x38ff9b50 in memory
flw f8, 0(x2) # load 0x38ff9b50 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fmul.s f12, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0xbb74f66b # load x3 with value 0xbb74f66b
sw x3, 0(x2) # store 0xbb74f66b in memory
flw f31, 0(x2) # load 0xbb74f66b from memory into f31
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fmul.s f7, f31, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xd95791a1 # load x3 with value 0xd95791a1
sw x3, 0(x2) # store 0xd95791a1 in memory
flw f3, 0(x2) # load 0xd95791a1 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fmul.s f28, f3, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x842aaf1d # load x3 with value 0x842aaf1d
sw x3, 0(x2) # store 0x842aaf1d in memory
flw f17, 0(x2) # load 0x842aaf1d from memory into f17
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fmul.s f29, f17, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x8fc07b22 # load x3 with value 0x8fc07b22
sw x3, 0(x2) # store 0x8fc07b22 in memory
flw f29, 0(x2) # load 0x8fc07b22 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f20, f29, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xefcd08fc # load x3 with value 0xefcd08fc
sw x3, 0(x2) # store 0xefcd08fc in memory
flw f5, 0(x2) # load 0xefcd08fc from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fmul.s f3, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0xa88ba3e0 # load x3 with value 0xa88ba3e0
sw x3, 0(x2) # store 0xa88ba3e0 in memory
flw f17, 0(x2) # load 0xa88ba3e0 from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fmul.s f18, f17, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x720a2b0b # load x3 with value 0x720a2b0b
sw x3, 0(x2) # store 0x720a2b0b in memory
flw f14, 0(x2) # load 0x720a2b0b from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fmul.s f11, f14, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x4b62a4ea # load x3 with value 0x4b62a4ea
sw x3, 0(x2) # store 0x4b62a4ea in memory
flw f20, 0(x2) # load 0x4b62a4ea from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fmul.s f24, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x389b06d7 # load x3 with value 0x389b06d7
sw x3, 0(x2) # store 0x389b06d7 in memory
flw f9, 0(x2) # load 0x389b06d7 from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fmul.s f21, f9, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x018242eb # load x3 with value 0x018242eb
sw x3, 0(x2) # store 0x018242eb in memory
flw f22, 0(x2) # load 0x018242eb from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f1, f22, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0x9cd97470 # load x3 with value 0x9cd97470
sw x3, 0(x2) # store 0x9cd97470 in memory
flw f30, 0(x2) # load 0x9cd97470 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fmul.s f28, f30, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0xa74cce72 # load x3 with value 0xa74cce72
sw x3, 0(x2) # store 0xa74cce72 in memory
flw f22, 0(x2) # load 0xa74cce72 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fmul.s f7, f22, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x3cc0b1b5 # load x3 with value 0x3cc0b1b5
sw x3, 0(x2) # store 0x3cc0b1b5 in memory
flw f15, 0(x2) # load 0x3cc0b1b5 from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fmul.s f31, f15, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0xc33133fc # load x3 with value 0xc33133fc
sw x3, 0(x2) # store 0xc33133fc in memory
flw f17, 0(x2) # load 0xc33133fc from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fmul.s f9, f17, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0xf584a71e # load x3 with value 0xf584a71e
sw x3, 0(x2) # store 0xf584a71e in memory
flw f19, 0(x2) # load 0xf584a71e from memory into f19
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fmul.s f1, f19, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x65b1cd43 # load x3 with value 0x65b1cd43
sw x3, 0(x2) # store 0x65b1cd43 in memory
flw f9, 0(x2) # load 0x65b1cd43 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmul.s f26, f9, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x0d1eb667 # load x3 with value 0x0d1eb667
sw x3, 0(x2) # store 0x0d1eb667 in memory
flw f22, 0(x2) # load 0x0d1eb667 from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmul.s f18, f22, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0xcba497dc # load x3 with value 0xcba497dc
sw x3, 0(x2) # store 0xcba497dc in memory
flw f17, 0(x2) # load 0xcba497dc from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmul.s f7, f17, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0x0375264f # load x3 with value 0x0375264f
sw x3, 0(x2) # store 0x0375264f in memory
flw f30, 0(x2) # load 0x0375264f from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fmul.s f26, f30, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x050d5857 # load x3 with value 0x050d5857
sw x3, 0(x2) # store 0x050d5857 in memory
flw f8, 0(x2) # load 0x050d5857 from memory into f8
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fmul.s f13, f8, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x3e79bbfd # load x3 with value 0x3e79bbfd
sw x3, 0(x2) # store 0x3e79bbfd in memory
flw f9, 0(x2) # load 0x3e79bbfd from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fmul.s f17, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0x3cd85ecf # load x3 with value 0x3cd85ecf
sw x3, 0(x2) # store 0x3cd85ecf in memory
flw f2, 0(x2) # load 0x3cd85ecf from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fmul.s f15, f2, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0xc687ef5b # load x3 with value 0xc687ef5b
sw x3, 0(x2) # store 0xc687ef5b in memory
flw f26, 0(x2) # load 0xc687ef5b from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fmul.s f12, f26, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0xe9fe4e98 # load x3 with value 0xe9fe4e98
sw x3, 0(x2) # store 0xe9fe4e98 in memory
flw f7, 0(x2) # load 0xe9fe4e98 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fmul.s f16, f7, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xa3123e07 # load x3 with value 0xa3123e07
sw x3, 0(x2) # store 0xa3123e07 in memory
flw f28, 0(x2) # load 0xa3123e07 from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
fmul.s f29, f28, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0xa6551416 # load x3 with value 0xa6551416
sw x3, 0(x2) # store 0xa6551416 in memory
flw f6, 0(x2) # load 0xa6551416 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fmul.s f31, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x7408228f # load x3 with value 0x7408228f
sw x3, 0(x2) # store 0x7408228f in memory
flw f8, 0(x2) # load 0x7408228f from memory into f8
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fmul.s f29, f8, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xe4d39e9c # load x3 with value 0xe4d39e9c
sw x3, 0(x2) # store 0xe4d39e9c in memory
flw f0, 0(x2) # load 0xe4d39e9c from memory into f0
la x2, scratch
li x3, 0x808144c7 # load x3 with value 0x808144c7
sw x3, 0(x2) # store 0x808144c7 in memory
flw f31, 0(x2) # load 0x808144c7 from memory into f31
fmul.s f0, f0, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x0b54c095 # load x3 with value 0x0b54c095
sw x3, 0(x2) # store 0x0b54c095 in memory
flw f1, 0(x2) # load 0x0b54c095 from memory into f1
la x2, scratch
li x3, 0x55384ae0 # load x3 with value 0x55384ae0
sw x3, 0(x2) # store 0x55384ae0 in memory
flw f2, 0(x2) # load 0x55384ae0 from memory into f2
fmul.s f1, f1, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xee9e2a08 # load x3 with value 0xee9e2a08
sw x3, 0(x2) # store 0xee9e2a08 in memory
flw f2, 0(x2) # load 0xee9e2a08 from memory into f2
la x2, scratch
li x3, 0xaeb27599 # load x3 with value 0xaeb27599
sw x3, 0(x2) # store 0xaeb27599 in memory
flw f28, 0(x2) # load 0xaeb27599 from memory into f28
fmul.s f2, f2, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x5c53b994 # load x3 with value 0x5c53b994
sw x3, 0(x2) # store 0x5c53b994 in memory
flw f3, 0(x2) # load 0x5c53b994 from memory into f3
la x2, scratch
li x3, 0x5a66b1a0 # load x3 with value 0x5a66b1a0
sw x3, 0(x2) # store 0x5a66b1a0 in memory
flw f21, 0(x2) # load 0x5a66b1a0 from memory into f21
fmul.s f3, f3, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x820c41d0 # load x3 with value 0x820c41d0
sw x3, 0(x2) # store 0x820c41d0 in memory
flw f4, 0(x2) # load 0x820c41d0 from memory into f4
la x2, scratch
li x3, 0x2c006685 # load x3 with value 0x2c006685
sw x3, 0(x2) # store 0x2c006685 in memory
flw f14, 0(x2) # load 0x2c006685 from memory into f14
fmul.s f4, f4, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1f33290a # load x3 with value 0x1f33290a
sw x3, 0(x2) # store 0x1f33290a in memory
flw f5, 0(x2) # load 0x1f33290a from memory into f5
la x2, scratch
li x3, 0x77d2c802 # load x3 with value 0x77d2c802
sw x3, 0(x2) # store 0x77d2c802 in memory
flw f13, 0(x2) # load 0x77d2c802 from memory into f13
fmul.s f5, f5, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7e68532a # load x3 with value 0x7e68532a
sw x3, 0(x2) # store 0x7e68532a in memory
flw f6, 0(x2) # load 0x7e68532a from memory into f6
la x2, scratch
li x3, 0x5cf6c75a # load x3 with value 0x5cf6c75a
sw x3, 0(x2) # store 0x5cf6c75a in memory
flw f10, 0(x2) # load 0x5cf6c75a from memory into f10
fmul.s f6, f6, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb7dc68f2 # load x3 with value 0xb7dc68f2
sw x3, 0(x2) # store 0xb7dc68f2 in memory
flw f7, 0(x2) # load 0xb7dc68f2 from memory into f7
la x2, scratch
li x3, 0x7879cd58 # load x3 with value 0x7879cd58
sw x3, 0(x2) # store 0x7879cd58 in memory
flw f31, 0(x2) # load 0x7879cd58 from memory into f31
fmul.s f7, f7, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x0e839aeb # load x3 with value 0x0e839aeb
sw x3, 0(x2) # store 0x0e839aeb in memory
flw f8, 0(x2) # load 0x0e839aeb from memory into f8
la x2, scratch
li x3, 0x827271ec # load x3 with value 0x827271ec
sw x3, 0(x2) # store 0x827271ec in memory
flw f2, 0(x2) # load 0x827271ec from memory into f2
fmul.s f8, f8, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x8bcf7189 # load x3 with value 0x8bcf7189
sw x3, 0(x2) # store 0x8bcf7189 in memory
flw f9, 0(x2) # load 0x8bcf7189 from memory into f9
la x2, scratch
li x3, 0x3b2e2ef5 # load x3 with value 0x3b2e2ef5
sw x3, 0(x2) # store 0x3b2e2ef5 in memory
flw f22, 0(x2) # load 0x3b2e2ef5 from memory into f22
fmul.s f9, f9, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x33daee16 # load x3 with value 0x33daee16
sw x3, 0(x2) # store 0x33daee16 in memory
flw f10, 0(x2) # load 0x33daee16 from memory into f10
la x2, scratch
li x3, 0xf9221e33 # load x3 with value 0xf9221e33
sw x3, 0(x2) # store 0xf9221e33 in memory
flw f8, 0(x2) # load 0xf9221e33 from memory into f8
fmul.s f10, f10, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xdcefc8f7 # load x3 with value 0xdcefc8f7
sw x3, 0(x2) # store 0xdcefc8f7 in memory
flw f11, 0(x2) # load 0xdcefc8f7 from memory into f11
la x2, scratch
li x3, 0x2bdf7969 # load x3 with value 0x2bdf7969
sw x3, 0(x2) # store 0x2bdf7969 in memory
flw f6, 0(x2) # load 0x2bdf7969 from memory into f6
fmul.s f11, f11, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xa776a333 # load x3 with value 0xa776a333
sw x3, 0(x2) # store 0xa776a333 in memory
flw f12, 0(x2) # load 0xa776a333 from memory into f12
la x2, scratch
li x3, 0xa588bc58 # load x3 with value 0xa588bc58
sw x3, 0(x2) # store 0xa588bc58 in memory
flw f17, 0(x2) # load 0xa588bc58 from memory into f17
fmul.s f12, f12, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x5f24aca1 # load x3 with value 0x5f24aca1
sw x3, 0(x2) # store 0x5f24aca1 in memory
flw f13, 0(x2) # load 0x5f24aca1 from memory into f13
la x2, scratch
li x3, 0x40aee8e7 # load x3 with value 0x40aee8e7
sw x3, 0(x2) # store 0x40aee8e7 in memory
flw f29, 0(x2) # load 0x40aee8e7 from memory into f29
fmul.s f13, f13, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xe7560814 # load x3 with value 0xe7560814
sw x3, 0(x2) # store 0xe7560814 in memory
flw f14, 0(x2) # load 0xe7560814 from memory into f14
la x2, scratch
li x3, 0x597e4ff6 # load x3 with value 0x597e4ff6
sw x3, 0(x2) # store 0x597e4ff6 in memory
flw f29, 0(x2) # load 0x597e4ff6 from memory into f29
fmul.s f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x38aae55b # load x3 with value 0x38aae55b
sw x3, 0(x2) # store 0x38aae55b in memory
flw f15, 0(x2) # load 0x38aae55b from memory into f15
la x2, scratch
li x3, 0xbf1ed6c3 # load x3 with value 0xbf1ed6c3
sw x3, 0(x2) # store 0xbf1ed6c3 in memory
flw f9, 0(x2) # load 0xbf1ed6c3 from memory into f9
fmul.s f15, f15, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x89f75205 # load x3 with value 0x89f75205
sw x3, 0(x2) # store 0x89f75205 in memory
flw f16, 0(x2) # load 0x89f75205 from memory into f16
la x2, scratch
li x3, 0x5cc714e1 # load x3 with value 0x5cc714e1
sw x3, 0(x2) # store 0x5cc714e1 in memory
flw f12, 0(x2) # load 0x5cc714e1 from memory into f12
fmul.s f16, f16, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0xf51fbfda # load x3 with value 0xf51fbfda
sw x3, 0(x2) # store 0xf51fbfda in memory
flw f17, 0(x2) # load 0xf51fbfda from memory into f17
la x2, scratch
li x3, 0x3c92a206 # load x3 with value 0x3c92a206
sw x3, 0(x2) # store 0x3c92a206 in memory
flw f6, 0(x2) # load 0x3c92a206 from memory into f6
fmul.s f17, f17, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x0093ff2d # load x3 with value 0x0093ff2d
sw x3, 0(x2) # store 0x0093ff2d in memory
flw f18, 0(x2) # load 0x0093ff2d from memory into f18
la x2, scratch
li x3, 0xfd2f1d23 # load x3 with value 0xfd2f1d23
sw x3, 0(x2) # store 0xfd2f1d23 in memory
flw f9, 0(x2) # load 0xfd2f1d23 from memory into f9
fmul.s f18, f18, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x83aa27a3 # load x3 with value 0x83aa27a3
sw x3, 0(x2) # store 0x83aa27a3 in memory
flw f19, 0(x2) # load 0x83aa27a3 from memory into f19
la x2, scratch
li x3, 0x70d8edb7 # load x3 with value 0x70d8edb7
sw x3, 0(x2) # store 0x70d8edb7 in memory
flw f15, 0(x2) # load 0x70d8edb7 from memory into f15
fmul.s f19, f19, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x5912453c # load x3 with value 0x5912453c
sw x3, 0(x2) # store 0x5912453c in memory
flw f20, 0(x2) # load 0x5912453c from memory into f20
la x2, scratch
li x3, 0x4ad7019d # load x3 with value 0x4ad7019d
sw x3, 0(x2) # store 0x4ad7019d in memory
flw f24, 0(x2) # load 0x4ad7019d from memory into f24
fmul.s f20, f20, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x584402e5 # load x3 with value 0x584402e5
sw x3, 0(x2) # store 0x584402e5 in memory
flw f21, 0(x2) # load 0x584402e5 from memory into f21
la x2, scratch
li x3, 0xa1850cd9 # load x3 with value 0xa1850cd9
sw x3, 0(x2) # store 0xa1850cd9 in memory
flw f9, 0(x2) # load 0xa1850cd9 from memory into f9
fmul.s f21, f21, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0xba0b6f29 # load x3 with value 0xba0b6f29
sw x3, 0(x2) # store 0xba0b6f29 in memory
flw f22, 0(x2) # load 0xba0b6f29 from memory into f22
la x2, scratch
li x3, 0x46cb0543 # load x3 with value 0x46cb0543
sw x3, 0(x2) # store 0x46cb0543 in memory
flw f31, 0(x2) # load 0x46cb0543 from memory into f31
fmul.s f22, f22, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x046ebcff # load x3 with value 0x046ebcff
sw x3, 0(x2) # store 0x046ebcff in memory
flw f23, 0(x2) # load 0x046ebcff from memory into f23
la x2, scratch
li x3, 0x52fc639f # load x3 with value 0x52fc639f
sw x3, 0(x2) # store 0x52fc639f in memory
flw f10, 0(x2) # load 0x52fc639f from memory into f10
fmul.s f23, f23, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xaa855389 # load x3 with value 0xaa855389
sw x3, 0(x2) # store 0xaa855389 in memory
flw f24, 0(x2) # load 0xaa855389 from memory into f24
la x2, scratch
li x3, 0xaa7d2850 # load x3 with value 0xaa7d2850
sw x3, 0(x2) # store 0xaa7d2850 in memory
flw f7, 0(x2) # load 0xaa7d2850 from memory into f7
fmul.s f24, f24, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x5a2640a4 # load x3 with value 0x5a2640a4
sw x3, 0(x2) # store 0x5a2640a4 in memory
flw f25, 0(x2) # load 0x5a2640a4 from memory into f25
la x2, scratch
li x3, 0x380e084f # load x3 with value 0x380e084f
sw x3, 0(x2) # store 0x380e084f in memory
flw f30, 0(x2) # load 0x380e084f from memory into f30
fmul.s f25, f25, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x205cb27e # load x3 with value 0x205cb27e
sw x3, 0(x2) # store 0x205cb27e in memory
flw f26, 0(x2) # load 0x205cb27e from memory into f26
la x2, scratch
li x3, 0xea768ec6 # load x3 with value 0xea768ec6
sw x3, 0(x2) # store 0xea768ec6 in memory
flw f29, 0(x2) # load 0xea768ec6 from memory into f29
fmul.s f26, f26, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x32b2d67f # load x3 with value 0x32b2d67f
sw x3, 0(x2) # store 0x32b2d67f in memory
flw f27, 0(x2) # load 0x32b2d67f from memory into f27
la x2, scratch
li x3, 0x8f34bf41 # load x3 with value 0x8f34bf41
sw x3, 0(x2) # store 0x8f34bf41 in memory
flw f14, 0(x2) # load 0x8f34bf41 from memory into f14
fmul.s f27, f27, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x2fc60846 # load x3 with value 0x2fc60846
sw x3, 0(x2) # store 0x2fc60846 in memory
flw f28, 0(x2) # load 0x2fc60846 from memory into f28
la x2, scratch
li x3, 0x5cc9e744 # load x3 with value 0x5cc9e744
sw x3, 0(x2) # store 0x5cc9e744 in memory
flw f19, 0(x2) # load 0x5cc9e744 from memory into f19
fmul.s f28, f28, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xf320cf33 # load x3 with value 0xf320cf33
sw x3, 0(x2) # store 0xf320cf33 in memory
flw f29, 0(x2) # load 0xf320cf33 from memory into f29
la x2, scratch
li x3, 0x42f62b53 # load x3 with value 0x42f62b53
sw x3, 0(x2) # store 0x42f62b53 in memory
flw f17, 0(x2) # load 0x42f62b53 from memory into f17
fmul.s f29, f29, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xbc67016f # load x3 with value 0xbc67016f
sw x3, 0(x2) # store 0xbc67016f in memory
flw f30, 0(x2) # load 0xbc67016f from memory into f30
la x2, scratch
li x3, 0x9f109884 # load x3 with value 0x9f109884
sw x3, 0(x2) # store 0x9f109884 in memory
flw f7, 0(x2) # load 0x9f109884 from memory into f7
fmul.s f30, f30, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x8281aeb6 # load x3 with value 0x8281aeb6
sw x3, 0(x2) # store 0x8281aeb6 in memory
flw f31, 0(x2) # load 0x8281aeb6 from memory into f31
la x2, scratch
li x3, 0xe8b13e0e # load x3 with value 0xe8b13e0e
sw x3, 0(x2) # store 0xe8b13e0e in memory
flw f8, 0(x2) # load 0xe8b13e0e from memory into f8
fmul.s f31, f31, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xe42a87fd # load x3 with value 0xe42a87fd
sw x3, 0(x2) # store 0xe42a87fd in memory
flw f20, 0(x2) # load 0xe42a87fd from memory into f20
la x2, scratch
li x3, 0x93d1b3a7 # load x3 with value 0x93d1b3a7
sw x3, 0(x2) # store 0x93d1b3a7 in memory
flw f0, 0(x2) # load 0x93d1b3a7 from memory into f0
fmul.s f0, f20, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xbb7b0fb8 # load x3 with value 0xbb7b0fb8
sw x3, 0(x2) # store 0xbb7b0fb8 in memory
flw f29, 0(x2) # load 0xbb7b0fb8 from memory into f29
la x2, scratch
li x3, 0xdc7f6ee8 # load x3 with value 0xdc7f6ee8
sw x3, 0(x2) # store 0xdc7f6ee8 in memory
flw f1, 0(x2) # load 0xdc7f6ee8 from memory into f1
fmul.s f1, f29, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x93492bd5 # load x3 with value 0x93492bd5
sw x3, 0(x2) # store 0x93492bd5 in memory
flw f10, 0(x2) # load 0x93492bd5 from memory into f10
la x2, scratch
li x3, 0xf9526edc # load x3 with value 0xf9526edc
sw x3, 0(x2) # store 0xf9526edc in memory
flw f2, 0(x2) # load 0xf9526edc from memory into f2
fmul.s f2, f10, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x0080adb0 # load x3 with value 0x0080adb0
sw x3, 0(x2) # store 0x0080adb0 in memory
flw f15, 0(x2) # load 0x0080adb0 from memory into f15
la x2, scratch
li x3, 0x156aba05 # load x3 with value 0x156aba05
sw x3, 0(x2) # store 0x156aba05 in memory
flw f3, 0(x2) # load 0x156aba05 from memory into f3
fmul.s f3, f15, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4c3c6b4b # load x3 with value 0x4c3c6b4b
sw x3, 0(x2) # store 0x4c3c6b4b in memory
flw f3, 0(x2) # load 0x4c3c6b4b from memory into f3
la x2, scratch
li x3, 0x9d950885 # load x3 with value 0x9d950885
sw x3, 0(x2) # store 0x9d950885 in memory
flw f4, 0(x2) # load 0x9d950885 from memory into f4
fmul.s f4, f3, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb208cc10 # load x3 with value 0xb208cc10
sw x3, 0(x2) # store 0xb208cc10 in memory
flw f4, 0(x2) # load 0xb208cc10 from memory into f4
la x2, scratch
li x3, 0x632919a9 # load x3 with value 0x632919a9
sw x3, 0(x2) # store 0x632919a9 in memory
flw f5, 0(x2) # load 0x632919a9 from memory into f5
fmul.s f5, f4, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcfef5824 # load x3 with value 0xcfef5824
sw x3, 0(x2) # store 0xcfef5824 in memory
flw f18, 0(x2) # load 0xcfef5824 from memory into f18
la x2, scratch
li x3, 0xbf4b272a # load x3 with value 0xbf4b272a
sw x3, 0(x2) # store 0xbf4b272a in memory
flw f6, 0(x2) # load 0xbf4b272a from memory into f6
fmul.s f6, f18, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3b15b1e6 # load x3 with value 0x3b15b1e6
sw x3, 0(x2) # store 0x3b15b1e6 in memory
flw f29, 0(x2) # load 0x3b15b1e6 from memory into f29
la x2, scratch
li x3, 0x65f250b5 # load x3 with value 0x65f250b5
sw x3, 0(x2) # store 0x65f250b5 in memory
flw f7, 0(x2) # load 0x65f250b5 from memory into f7
fmul.s f7, f29, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xeefb55d4 # load x3 with value 0xeefb55d4
sw x3, 0(x2) # store 0xeefb55d4 in memory
flw f14, 0(x2) # load 0xeefb55d4 from memory into f14
la x2, scratch
li x3, 0xd29a40f2 # load x3 with value 0xd29a40f2
sw x3, 0(x2) # store 0xd29a40f2 in memory
flw f8, 0(x2) # load 0xd29a40f2 from memory into f8
fmul.s f8, f14, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x095bb320 # load x3 with value 0x095bb320
sw x3, 0(x2) # store 0x095bb320 in memory
flw f28, 0(x2) # load 0x095bb320 from memory into f28
la x2, scratch
li x3, 0xc589ebfa # load x3 with value 0xc589ebfa
sw x3, 0(x2) # store 0xc589ebfa in memory
flw f9, 0(x2) # load 0xc589ebfa from memory into f9
fmul.s f9, f28, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x36ae4ef8 # load x3 with value 0x36ae4ef8
sw x3, 0(x2) # store 0x36ae4ef8 in memory
flw f2, 0(x2) # load 0x36ae4ef8 from memory into f2
la x2, scratch
li x3, 0x45de0928 # load x3 with value 0x45de0928
sw x3, 0(x2) # store 0x45de0928 in memory
flw f10, 0(x2) # load 0x45de0928 from memory into f10
fmul.s f10, f2, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xbeb0a439 # load x3 with value 0xbeb0a439
sw x3, 0(x2) # store 0xbeb0a439 in memory
flw f8, 0(x2) # load 0xbeb0a439 from memory into f8
la x2, scratch
li x3, 0xec15fcb5 # load x3 with value 0xec15fcb5
sw x3, 0(x2) # store 0xec15fcb5 in memory
flw f11, 0(x2) # load 0xec15fcb5 from memory into f11
fmul.s f11, f8, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x353998a8 # load x3 with value 0x353998a8
sw x3, 0(x2) # store 0x353998a8 in memory
flw f13, 0(x2) # load 0x353998a8 from memory into f13
la x2, scratch
li x3, 0x11fb24d6 # load x3 with value 0x11fb24d6
sw x3, 0(x2) # store 0x11fb24d6 in memory
flw f12, 0(x2) # load 0x11fb24d6 from memory into f12
fmul.s f12, f13, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xde76d35c # load x3 with value 0xde76d35c
sw x3, 0(x2) # store 0xde76d35c in memory
flw f11, 0(x2) # load 0xde76d35c from memory into f11
la x2, scratch
li x3, 0x59cb1292 # load x3 with value 0x59cb1292
sw x3, 0(x2) # store 0x59cb1292 in memory
flw f13, 0(x2) # load 0x59cb1292 from memory into f13
fmul.s f13, f11, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x62d686f6 # load x3 with value 0x62d686f6
sw x3, 0(x2) # store 0x62d686f6 in memory
flw f9, 0(x2) # load 0x62d686f6 from memory into f9
la x2, scratch
li x3, 0x7b245adb # load x3 with value 0x7b245adb
sw x3, 0(x2) # store 0x7b245adb in memory
flw f14, 0(x2) # load 0x7b245adb from memory into f14
fmul.s f14, f9, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x7d8667b0 # load x3 with value 0x7d8667b0
sw x3, 0(x2) # store 0x7d8667b0 in memory
flw f18, 0(x2) # load 0x7d8667b0 from memory into f18
la x2, scratch
li x3, 0xdaca8c67 # load x3 with value 0xdaca8c67
sw x3, 0(x2) # store 0xdaca8c67 in memory
flw f15, 0(x2) # load 0xdaca8c67 from memory into f15
fmul.s f15, f18, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xbb3eb153 # load x3 with value 0xbb3eb153
sw x3, 0(x2) # store 0xbb3eb153 in memory
flw f6, 0(x2) # load 0xbb3eb153 from memory into f6
la x2, scratch
li x3, 0x1ebc1631 # load x3 with value 0x1ebc1631
sw x3, 0(x2) # store 0x1ebc1631 in memory
flw f16, 0(x2) # load 0x1ebc1631 from memory into f16
fmul.s f16, f6, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x53621d67 # load x3 with value 0x53621d67
sw x3, 0(x2) # store 0x53621d67 in memory
flw f21, 0(x2) # load 0x53621d67 from memory into f21
la x2, scratch
li x3, 0x912b0644 # load x3 with value 0x912b0644
sw x3, 0(x2) # store 0x912b0644 in memory
flw f17, 0(x2) # load 0x912b0644 from memory into f17
fmul.s f17, f21, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x8ea1a0da # load x3 with value 0x8ea1a0da
sw x3, 0(x2) # store 0x8ea1a0da in memory
flw f15, 0(x2) # load 0x8ea1a0da from memory into f15
la x2, scratch
li x3, 0x4ae65339 # load x3 with value 0x4ae65339
sw x3, 0(x2) # store 0x4ae65339 in memory
flw f18, 0(x2) # load 0x4ae65339 from memory into f18
fmul.s f18, f15, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xb14c7e6d # load x3 with value 0xb14c7e6d
sw x3, 0(x2) # store 0xb14c7e6d in memory
flw f1, 0(x2) # load 0xb14c7e6d from memory into f1
la x2, scratch
li x3, 0x625dfee4 # load x3 with value 0x625dfee4
sw x3, 0(x2) # store 0x625dfee4 in memory
flw f19, 0(x2) # load 0x625dfee4 from memory into f19
fmul.s f19, f1, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0xc53c7de7 # load x3 with value 0xc53c7de7
sw x3, 0(x2) # store 0xc53c7de7 in memory
flw f24, 0(x2) # load 0xc53c7de7 from memory into f24
la x2, scratch
li x3, 0x7665ce7f # load x3 with value 0x7665ce7f
sw x3, 0(x2) # store 0x7665ce7f in memory
flw f20, 0(x2) # load 0x7665ce7f from memory into f20
fmul.s f20, f24, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x9a83d0b6 # load x3 with value 0x9a83d0b6
sw x3, 0(x2) # store 0x9a83d0b6 in memory
flw f14, 0(x2) # load 0x9a83d0b6 from memory into f14
la x2, scratch
li x3, 0x9abd0a3c # load x3 with value 0x9abd0a3c
sw x3, 0(x2) # store 0x9abd0a3c in memory
flw f21, 0(x2) # load 0x9abd0a3c from memory into f21
fmul.s f21, f14, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x8aab03da # load x3 with value 0x8aab03da
sw x3, 0(x2) # store 0x8aab03da in memory
flw f7, 0(x2) # load 0x8aab03da from memory into f7
la x2, scratch
li x3, 0x36836b4e # load x3 with value 0x36836b4e
sw x3, 0(x2) # store 0x36836b4e in memory
flw f22, 0(x2) # load 0x36836b4e from memory into f22
fmul.s f22, f7, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xa691e674 # load x3 with value 0xa691e674
sw x3, 0(x2) # store 0xa691e674 in memory
flw f5, 0(x2) # load 0xa691e674 from memory into f5
la x2, scratch
li x3, 0x2e37807c # load x3 with value 0x2e37807c
sw x3, 0(x2) # store 0x2e37807c in memory
flw f23, 0(x2) # load 0x2e37807c from memory into f23
fmul.s f23, f5, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0xfe098e46 # load x3 with value 0xfe098e46
sw x3, 0(x2) # store 0xfe098e46 in memory
flw f28, 0(x2) # load 0xfe098e46 from memory into f28
la x2, scratch
li x3, 0x2ef46e6f # load x3 with value 0x2ef46e6f
sw x3, 0(x2) # store 0x2ef46e6f in memory
flw f24, 0(x2) # load 0x2ef46e6f from memory into f24
fmul.s f24, f28, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x130f2145 # load x3 with value 0x130f2145
sw x3, 0(x2) # store 0x130f2145 in memory
flw f30, 0(x2) # load 0x130f2145 from memory into f30
la x2, scratch
li x3, 0xc7716529 # load x3 with value 0xc7716529
sw x3, 0(x2) # store 0xc7716529 in memory
flw f25, 0(x2) # load 0xc7716529 from memory into f25
fmul.s f25, f30, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x018f6dd0 # load x3 with value 0x018f6dd0
sw x3, 0(x2) # store 0x018f6dd0 in memory
flw f1, 0(x2) # load 0x018f6dd0 from memory into f1
la x2, scratch
li x3, 0x4fffd578 # load x3 with value 0x4fffd578
sw x3, 0(x2) # store 0x4fffd578 in memory
flw f26, 0(x2) # load 0x4fffd578 from memory into f26
fmul.s f26, f1, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x6a33f7a5 # load x3 with value 0x6a33f7a5
sw x3, 0(x2) # store 0x6a33f7a5 in memory
flw f30, 0(x2) # load 0x6a33f7a5 from memory into f30
la x2, scratch
li x3, 0xf677b237 # load x3 with value 0xf677b237
sw x3, 0(x2) # store 0xf677b237 in memory
flw f27, 0(x2) # load 0xf677b237 from memory into f27
fmul.s f27, f30, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x1c27e717 # load x3 with value 0x1c27e717
sw x3, 0(x2) # store 0x1c27e717 in memory
flw f28, 0(x2) # load 0x1c27e717 from memory into f28
la x2, scratch
li x3, 0x64ba5d68 # load x3 with value 0x64ba5d68
sw x3, 0(x2) # store 0x64ba5d68 in memory
flw f28, 0(x2) # load 0x64ba5d68 from memory into f28
fmul.s f28, f28, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x6e862db1 # load x3 with value 0x6e862db1
sw x3, 0(x2) # store 0x6e862db1 in memory
flw f2, 0(x2) # load 0x6e862db1 from memory into f2
la x2, scratch
li x3, 0xfe8f508d # load x3 with value 0xfe8f508d
sw x3, 0(x2) # store 0xfe8f508d in memory
flw f29, 0(x2) # load 0xfe8f508d from memory into f29
fmul.s f29, f2, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x8b9f4512 # load x3 with value 0x8b9f4512
sw x3, 0(x2) # store 0x8b9f4512 in memory
flw f30, 0(x2) # load 0x8b9f4512 from memory into f30
la x2, scratch
li x3, 0x750cc4b2 # load x3 with value 0x750cc4b2
sw x3, 0(x2) # store 0x750cc4b2 in memory
flw f30, 0(x2) # load 0x750cc4b2 from memory into f30
fmul.s f30, f30, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x9d01adbc # load x3 with value 0x9d01adbc
sw x3, 0(x2) # store 0x9d01adbc in memory
flw f25, 0(x2) # load 0x9d01adbc from memory into f25
la x2, scratch
li x3, 0x77a4222b # load x3 with value 0x77a4222b
sw x3, 0(x2) # store 0x77a4222b in memory
flw f31, 0(x2) # load 0x77a4222b from memory into f31
fmul.s f31, f25, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x0e9aa86f # load x3 with value 0x0e9aa86f
sw x3, 0(x2) # store 0x0e9aa86f in memory
flw f7, 0(x2) # load 0x0e9aa86f from memory into f7
la x2, scratch
li x3, 0x24e996ae # load x3 with value 0x24e996ae
sw x3, 0(x2) # store 0x24e996ae in memory
flw f21, 0(x2) # load 0x24e996ae from memory into f21
fmul.s f22, f7, f21, dyn # perform operation
fmul.s f22, f7, f21, rdn # perform operation
fmul.s f22, f7, f21, rmm # perform operation
fmul.s f22, f7, f21, rne # perform operation
fmul.s f22, f7, f21, rtz # perform operation
fmul.s f22, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmul.s f22, f13, f1, dyn # perform operation
fmul.s f22, f13, f1, rdn # perform operation
fmul.s f22, f13, f1, rmm # perform operation
fmul.s f22, f13, f1, rne # perform operation
fmul.s f22, f13, f1, rtz # perform operation
fmul.s f22, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fmul.s f1, f20, f19, dyn # perform operation
fmul.s f1, f20, f19, rdn # perform operation
fmul.s f1, f20, f19, rmm # perform operation
fmul.s f1, f20, f19, rne # perform operation
fmul.s f1, f20, f19, rtz # perform operation
fmul.s f1, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fmul.s f25, f28, f26, dyn # perform operation
fmul.s f25, f28, f26, rdn # perform operation
fmul.s f25, f28, f26, rmm # perform operation
fmul.s f25, f28, f26, rne # perform operation
fmul.s f25, f28, f26, rtz # perform operation
fmul.s f25, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fmul.s f14, f8, f31, dyn # perform operation
fmul.s f14, f8, f31, rdn # perform operation
fmul.s f14, f8, f31, rmm # perform operation
fmul.s f14, f8, f31, rne # perform operation
fmul.s f14, f8, f31, rtz # perform operation
fmul.s f14, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fmul.s f16, f14, f20, dyn # perform operation
fmul.s f16, f14, f20, rdn # perform operation
fmul.s f16, f14, f20, rmm # perform operation
fmul.s f16, f14, f20, rne # perform operation
fmul.s f16, f14, f20, rtz # perform operation
fmul.s f16, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f5, f6, f29, dyn # perform operation
fmul.s f5, f6, f29, rdn # perform operation
fmul.s f5, f6, f29, rmm # perform operation
fmul.s f5, f6, f29, rne # perform operation
fmul.s f5, f6, f29, rtz # perform operation
fmul.s f5, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fmul.s f15, f7, f19, dyn # perform operation
fmul.s f15, f7, f19, rdn # perform operation
fmul.s f15, f7, f19, rmm # perform operation
fmul.s f15, f7, f19, rne # perform operation
fmul.s f15, f7, f19, rtz # perform operation
fmul.s f15, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fmul.s f3, f26, f30, dyn # perform operation
fmul.s f3, f26, f30, rdn # perform operation
fmul.s f3, f26, f30, rmm # perform operation
fmul.s f3, f26, f30, rne # perform operation
fmul.s f3, f26, f30, rtz # perform operation
fmul.s f3, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fmul.s f10, f18, f21, dyn # perform operation
fmul.s f10, f18, f21, rdn # perform operation
fmul.s f10, f18, f21, rmm # perform operation
fmul.s f10, f18, f21, rne # perform operation
fmul.s f10, f18, f21, rtz # perform operation
fmul.s f10, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmul.s f6, f18, f10, dyn # perform operation
fmul.s f6, f18, f10, rdn # perform operation
fmul.s f6, f18, f10, rmm # perform operation
fmul.s f6, f18, f10, rne # perform operation
fmul.s f6, f18, f10, rtz # perform operation
fmul.s f6, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f1, f18, f29, dyn # perform operation
fmul.s f1, f18, f29, rdn # perform operation
fmul.s f1, f18, f29, rmm # perform operation
fmul.s f1, f18, f29, rne # perform operation
fmul.s f1, f18, f29, rtz # perform operation
fmul.s f1, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fmul.s f24, f9, f14, dyn # perform operation
fmul.s f24, f9, f14, rdn # perform operation
fmul.s f24, f9, f14, rmm # perform operation
fmul.s f24, f9, f14, rne # perform operation
fmul.s f24, f9, f14, rtz # perform operation
fmul.s f24, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fmul.s f28, f14, f31, dyn # perform operation
fmul.s f28, f14, f31, rdn # perform operation
fmul.s f28, f14, f31, rmm # perform operation
fmul.s f28, f14, f31, rne # perform operation
fmul.s f28, f14, f31, rtz # perform operation
fmul.s f28, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fmul.s f8, f21, f27, dyn # perform operation
fmul.s f8, f21, f27, rdn # perform operation
fmul.s f8, f21, f27, rmm # perform operation
fmul.s f8, f21, f27, rne # perform operation
fmul.s f8, f21, f27, rtz # perform operation
fmul.s f8, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f26, f24, f20, dyn # perform operation
fmul.s f26, f24, f20, rdn # perform operation
fmul.s f26, f24, f20, rmm # perform operation
fmul.s f26, f24, f20, rne # perform operation
fmul.s f26, f24, f20, rtz # perform operation
fmul.s f26, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fmul.s f16, f10, f12, dyn # perform operation
fmul.s f16, f10, f12, rdn # perform operation
fmul.s f16, f10, f12, rmm # perform operation
fmul.s f16, f10, f12, rne # perform operation
fmul.s f16, f10, f12, rtz # perform operation
fmul.s f16, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmul.s f21, f28, f26, dyn # perform operation
fmul.s f21, f28, f26, rdn # perform operation
fmul.s f21, f28, f26, rmm # perform operation
fmul.s f21, f28, f26, rne # perform operation
fmul.s f21, f28, f26, rtz # perform operation
fmul.s f21, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f16, f31, f11, dyn # perform operation
fmul.s f16, f31, f11, rdn # perform operation
fmul.s f16, f31, f11, rmm # perform operation
fmul.s f16, f31, f11, rne # perform operation
fmul.s f16, f31, f11, rtz # perform operation
fmul.s f16, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fmul.s f16, f26, f30, dyn # perform operation
fmul.s f16, f26, f30, rdn # perform operation
fmul.s f16, f26, f30, rmm # perform operation
fmul.s f16, f26, f30, rne # perform operation
fmul.s f16, f26, f30, rtz # perform operation
fmul.s f16, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fmul.s f30, f15, f25, dyn # perform operation
fmul.s f30, f15, f25, rdn # perform operation
fmul.s f30, f15, f25, rmm # perform operation
fmul.s f30, f15, f25, rne # perform operation
fmul.s f30, f15, f25, rtz # perform operation
fmul.s f30, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmul.s f30, f3, f19, dyn # perform operation
fmul.s f30, f3, f19, rdn # perform operation
fmul.s f30, f3, f19, rmm # perform operation
fmul.s f30, f3, f19, rne # perform operation
fmul.s f30, f3, f19, rtz # perform operation
fmul.s f30, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f8, f7, f25, dyn # perform operation
fmul.s f8, f7, f25, rdn # perform operation
fmul.s f8, f7, f25, rmm # perform operation
fmul.s f8, f7, f25, rne # perform operation
fmul.s f8, f7, f25, rtz # perform operation
fmul.s f8, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
fmul.s f28, f11, f13, dyn # perform operation
fmul.s f28, f11, f13, rdn # perform operation
fmul.s f28, f11, f13, rmm # perform operation
fmul.s f28, f11, f13, rne # perform operation
fmul.s f28, f11, f13, rtz # perform operation
fmul.s f28, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fmul.s f14, f27, f22, dyn # perform operation
fmul.s f14, f27, f22, rdn # perform operation
fmul.s f14, f27, f22, rmm # perform operation
fmul.s f14, f27, f22, rne # perform operation
fmul.s f14, f27, f22, rtz # perform operation
fmul.s f14, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fmul.s f2, f6, f12, dyn # perform operation
fmul.s f2, f6, f12, rdn # perform operation
fmul.s f2, f6, f12, rmm # perform operation
fmul.s f2, f6, f12, rne # perform operation
fmul.s f2, f6, f12, rtz # perform operation
fmul.s f2, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fmul.s f28, f1, f9, dyn # perform operation
fmul.s f28, f1, f9, rdn # perform operation
fmul.s f28, f1, f9, rmm # perform operation
fmul.s f28, f1, f9, rne # perform operation
fmul.s f28, f1, f9, rtz # perform operation
fmul.s f28, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f27, f28, f20, dyn # perform operation
fmul.s f27, f28, f20, rdn # perform operation
fmul.s f27, f28, f20, rmm # perform operation
fmul.s f27, f28, f20, rne # perform operation
fmul.s f27, f28, f20, rtz # perform operation
fmul.s f27, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fmul.s f25, f3, f10, dyn # perform operation
fmul.s f25, f3, f10, rdn # perform operation
fmul.s f25, f3, f10, rmm # perform operation
fmul.s f25, f3, f10, rne # perform operation
fmul.s f25, f3, f10, rtz # perform operation
fmul.s f25, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fmul.s f8, f30, f6, dyn # perform operation
fmul.s f8, f30, f6, rdn # perform operation
fmul.s f8, f30, f6, rmm # perform operation
fmul.s f8, f30, f6, rne # perform operation
fmul.s f8, f30, f6, rtz # perform operation
fmul.s f8, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fmul.s f1, f10, f6, dyn # perform operation
fmul.s f1, f10, f6, rdn # perform operation
fmul.s f1, f10, f6, rmm # perform operation
fmul.s f1, f10, f6, rne # perform operation
fmul.s f1, f10, f6, rtz # perform operation
fmul.s f1, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fmul.s f28, f5, f22, dyn # perform operation
fmul.s f28, f5, f22, rdn # perform operation
fmul.s f28, f5, f22, rmm # perform operation
fmul.s f28, f5, f22, rne # perform operation
fmul.s f28, f5, f22, rtz # perform operation
fmul.s f28, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmul.s f23, f21, f19, dyn # perform operation
fmul.s f23, f21, f19, rdn # perform operation
fmul.s f23, f21, f19, rmm # perform operation
fmul.s f23, f21, f19, rne # perform operation
fmul.s f23, f21, f19, rtz # perform operation
fmul.s f23, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fmul.s f14, f31, f17, dyn # perform operation
fmul.s f14, f31, f17, rdn # perform operation
fmul.s f14, f31, f17, rmm # perform operation
fmul.s f14, f31, f17, rne # perform operation
fmul.s f14, f31, f17, rtz # perform operation
fmul.s f14, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fmul.s f28, f15, f12, dyn # perform operation
fmul.s f28, f15, f12, rdn # perform operation
fmul.s f28, f15, f12, rmm # perform operation
fmul.s f28, f15, f12, rne # perform operation
fmul.s f28, f15, f12, rtz # perform operation
fmul.s f28, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fmul.s f30, f13, f1, dyn # perform operation
fmul.s f30, f13, f1, rdn # perform operation
fmul.s f30, f13, f1, rmm # perform operation
fmul.s f30, f13, f1, rne # perform operation
fmul.s f30, f13, f1, rtz # perform operation
fmul.s f30, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmul.s f13, f30, f5, dyn # perform operation
fmul.s f13, f30, f5, rdn # perform operation
fmul.s f13, f30, f5, rmm # perform operation
fmul.s f13, f30, f5, rne # perform operation
fmul.s f13, f30, f5, rtz # perform operation
fmul.s f13, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmul.s f27, f17, f23, dyn # perform operation
fmul.s f27, f17, f23, rdn # perform operation
fmul.s f27, f17, f23, rmm # perform operation
fmul.s f27, f17, f23, rne # perform operation
fmul.s f27, f17, f23, rtz # perform operation
fmul.s f27, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fmul.s f28, f3, f23, dyn # perform operation
fmul.s f28, f3, f23, rdn # perform operation
fmul.s f28, f3, f23, rmm # perform operation
fmul.s f28, f3, f23, rne # perform operation
fmul.s f28, f3, f23, rtz # perform operation
fmul.s f28, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fmul.s f25, f8, f28, dyn # perform operation
fmul.s f25, f8, f28, rdn # perform operation
fmul.s f25, f8, f28, rmm # perform operation
fmul.s f25, f8, f28, rne # perform operation
fmul.s f25, f8, f28, rtz # perform operation
fmul.s f25, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmul.s f7, f2, f18, dyn # perform operation
fmul.s f7, f2, f18, rdn # perform operation
fmul.s f7, f2, f18, rmm # perform operation
fmul.s f7, f2, f18, rne # perform operation
fmul.s f7, f2, f18, rtz # perform operation
fmul.s f7, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmul.s f3, f14, f17, dyn # perform operation
fmul.s f3, f14, f17, rdn # perform operation
fmul.s f3, f14, f17, rmm # perform operation
fmul.s f3, f14, f17, rne # perform operation
fmul.s f3, f14, f17, rtz # perform operation
fmul.s f3, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fmul.s f17, f31, f1, dyn # perform operation
fmul.s f17, f31, f1, rdn # perform operation
fmul.s f17, f31, f1, rmm # perform operation
fmul.s f17, f31, f1, rne # perform operation
fmul.s f17, f31, f1, rtz # perform operation
fmul.s f17, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmul.s f25, f13, f15, dyn # perform operation
fmul.s f25, f13, f15, rdn # perform operation
fmul.s f25, f13, f15, rmm # perform operation
fmul.s f25, f13, f15, rne # perform operation
fmul.s f25, f13, f15, rtz # perform operation
fmul.s f25, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f3, f18, f1, dyn # perform operation
fmul.s f3, f18, f1, rdn # perform operation
fmul.s f3, f18, f1, rmm # perform operation
fmul.s f3, f18, f1, rne # perform operation
fmul.s f3, f18, f1, rtz # perform operation
fmul.s f3, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fmul.s f30, f28, f23, dyn # perform operation
fmul.s f30, f28, f23, rdn # perform operation
fmul.s f30, f28, f23, rmm # perform operation
fmul.s f30, f28, f23, rne # perform operation
fmul.s f30, f28, f23, rtz # perform operation
fmul.s f30, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f12, f31, f8, dyn # perform operation
fmul.s f12, f31, f8, rdn # perform operation
fmul.s f12, f31, f8, rmm # perform operation
fmul.s f12, f31, f8, rne # perform operation
fmul.s f12, f31, f8, rtz # perform operation
fmul.s f12, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmul.s f21, f8, f28, dyn # perform operation
fmul.s f21, f8, f28, rdn # perform operation
fmul.s f21, f8, f28, rmm # perform operation
fmul.s f21, f8, f28, rne # perform operation
fmul.s f21, f8, f28, rtz # perform operation
fmul.s f21, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fmul.s f18, f29, f26, dyn # perform operation
fmul.s f18, f29, f26, rdn # perform operation
fmul.s f18, f29, f26, rmm # perform operation
fmul.s f18, f29, f26, rne # perform operation
fmul.s f18, f29, f26, rtz # perform operation
fmul.s f18, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fmul.s f18, f11, f16, dyn # perform operation
fmul.s f18, f11, f16, rdn # perform operation
fmul.s f18, f11, f16, rmm # perform operation
fmul.s f18, f11, f16, rne # perform operation
fmul.s f18, f11, f16, rtz # perform operation
fmul.s f18, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fmul.s f19, f20, f1, dyn # perform operation
fmul.s f19, f20, f1, rdn # perform operation
fmul.s f19, f20, f1, rmm # perform operation
fmul.s f19, f20, f1, rne # perform operation
fmul.s f19, f20, f1, rtz # perform operation
fmul.s f19, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fmul.s f5, f11, f2, dyn # perform operation
fmul.s f5, f11, f2, rdn # perform operation
fmul.s f5, f11, f2, rmm # perform operation
fmul.s f5, f11, f2, rne # perform operation
fmul.s f5, f11, f2, rtz # perform operation
fmul.s f5, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fmul.s f21, f28, f19, dyn # perform operation
fmul.s f21, f28, f19, rdn # perform operation
fmul.s f21, f28, f19, rmm # perform operation
fmul.s f21, f28, f19, rne # perform operation
fmul.s f21, f28, f19, rtz # perform operation
fmul.s f21, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fmul.s f14, f9, f20, dyn # perform operation
fmul.s f14, f9, f20, rdn # perform operation
fmul.s f14, f9, f20, rmm # perform operation
fmul.s f14, f9, f20, rne # perform operation
fmul.s f14, f9, f20, rtz # perform operation
fmul.s f14, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
fmul.s f16, f24, f22, dyn # perform operation
fmul.s f16, f24, f22, rdn # perform operation
fmul.s f16, f24, f22, rmm # perform operation
fmul.s f16, f24, f22, rne # perform operation
fmul.s f16, f24, f22, rtz # perform operation
fmul.s f16, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fmul.s f22, f9, f30, dyn # perform operation
fmul.s f22, f9, f30, rdn # perform operation
fmul.s f22, f9, f30, rmm # perform operation
fmul.s f22, f9, f30, rne # perform operation
fmul.s f22, f9, f30, rtz # perform operation
fmul.s f22, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fmul.s f2, f9, f1, dyn # perform operation
fmul.s f2, f9, f1, rdn # perform operation
fmul.s f2, f9, f1, rmm # perform operation
fmul.s f2, f9, f1, rne # perform operation
fmul.s f2, f9, f1, rtz # perform operation
fmul.s f2, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fmul.s f31, f27, f25, dyn # perform operation
fmul.s f31, f27, f25, rdn # perform operation
fmul.s f31, f27, f25, rmm # perform operation
fmul.s f31, f27, f25, rne # perform operation
fmul.s f31, f27, f25, rtz # perform operation
fmul.s f31, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fmul.s f21, f14, f13, dyn # perform operation
fmul.s f21, f14, f13, rdn # perform operation
fmul.s f21, f14, f13, rmm # perform operation
fmul.s f21, f14, f13, rne # perform operation
fmul.s f21, f14, f13, rtz # perform operation
fmul.s f21, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmul.s f19, f18, f10, dyn # perform operation
fmul.s f19, f18, f10, rdn # perform operation
fmul.s f19, f18, f10, rmm # perform operation
fmul.s f19, f18, f10, rne # perform operation
fmul.s f19, f18, f10, rtz # perform operation
fmul.s f19, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fmul.s f5, f2, f28, dyn # perform operation
fmul.s f5, f2, f28, rdn # perform operation
fmul.s f5, f2, f28, rmm # perform operation
fmul.s f5, f2, f28, rne # perform operation
fmul.s f5, f2, f28, rtz # perform operation
fmul.s f5, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fmul.s f23, f26, f2, dyn # perform operation
fmul.s f23, f26, f2, rdn # perform operation
fmul.s f23, f26, f2, rmm # perform operation
fmul.s f23, f26, f2, rne # perform operation
fmul.s f23, f26, f2, rtz # perform operation
fmul.s f23, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f10, f1, f29, dyn # perform operation
fmul.s f10, f1, f29, rdn # perform operation
fmul.s f10, f1, f29, rmm # perform operation
fmul.s f10, f1, f29, rne # perform operation
fmul.s f10, f1, f29, rtz # perform operation
fmul.s f10, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fmul.s f7, f8, f6, dyn # perform operation
fmul.s f7, f8, f6, rdn # perform operation
fmul.s f7, f8, f6, rmm # perform operation
fmul.s f7, f8, f6, rne # perform operation
fmul.s f7, f8, f6, rtz # perform operation
fmul.s f7, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f22, f26, f24, dyn # perform operation
fmul.s f22, f26, f24, rdn # perform operation
fmul.s f22, f26, f24, rmm # perform operation
fmul.s f22, f26, f24, rne # perform operation
fmul.s f22, f26, f24, rtz # perform operation
fmul.s f22, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fmul.s f2, f26, f14, dyn # perform operation
fmul.s f2, f26, f14, rdn # perform operation
fmul.s f2, f26, f14, rmm # perform operation
fmul.s f2, f26, f14, rne # perform operation
fmul.s f2, f26, f14, rtz # perform operation
fmul.s f2, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f9, f23, f13, dyn # perform operation
fmul.s f9, f23, f13, rdn # perform operation
fmul.s f9, f23, f13, rmm # perform operation
fmul.s f9, f23, f13, rne # perform operation
fmul.s f9, f23, f13, rtz # perform operation
fmul.s f9, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fmul.s f28, f17, f24, dyn # perform operation
fmul.s f28, f17, f24, rdn # perform operation
fmul.s f28, f17, f24, rmm # perform operation
fmul.s f28, f17, f24, rne # perform operation
fmul.s f28, f17, f24, rtz # perform operation
fmul.s f28, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fmul.s f8, f31, f22, dyn # perform operation
fmul.s f8, f31, f22, rdn # perform operation
fmul.s f8, f31, f22, rmm # perform operation
fmul.s f8, f31, f22, rne # perform operation
fmul.s f8, f31, f22, rtz # perform operation
fmul.s f8, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fmul.s f15, f2, f9, dyn # perform operation
fmul.s f15, f2, f9, rdn # perform operation
fmul.s f15, f2, f9, rmm # perform operation
fmul.s f15, f2, f9, rne # perform operation
fmul.s f15, f2, f9, rtz # perform operation
fmul.s f15, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmul.s f22, f24, f3, dyn # perform operation
fmul.s f22, f24, f3, rdn # perform operation
fmul.s f22, f24, f3, rmm # perform operation
fmul.s f22, f24, f3, rne # perform operation
fmul.s f22, f24, f3, rtz # perform operation
fmul.s f22, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmul.s f26, f6, f21, dyn # perform operation
fmul.s f26, f6, f21, rdn # perform operation
fmul.s f26, f6, f21, rmm # perform operation
fmul.s f26, f6, f21, rne # perform operation
fmul.s f26, f6, f21, rtz # perform operation
fmul.s f26, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fmul.s f28, f18, f8, dyn # perform operation
fmul.s f28, f18, f8, rdn # perform operation
fmul.s f28, f18, f8, rmm # perform operation
fmul.s f28, f18, f8, rne # perform operation
fmul.s f28, f18, f8, rtz # perform operation
fmul.s f28, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fmul.s f24, f28, f14, dyn # perform operation
fmul.s f24, f28, f14, rdn # perform operation
fmul.s f24, f28, f14, rmm # perform operation
fmul.s f24, f28, f14, rne # perform operation
fmul.s f24, f28, f14, rtz # perform operation
fmul.s f24, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmul.s f7, f15, f5, dyn # perform operation
fmul.s f7, f15, f5, rdn # perform operation
fmul.s f7, f15, f5, rmm # perform operation
fmul.s f7, f15, f5, rne # perform operation
fmul.s f7, f15, f5, rtz # perform operation
fmul.s f7, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fmul.s f22, f14, f7, dyn # perform operation
fmul.s f22, f14, f7, rdn # perform operation
fmul.s f22, f14, f7, rmm # perform operation
fmul.s f22, f14, f7, rne # perform operation
fmul.s f22, f14, f7, rtz # perform operation
fmul.s f22, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f17, f19, f13, dyn # perform operation
fmul.s f17, f19, f13, rdn # perform operation
fmul.s f17, f19, f13, rmm # perform operation
fmul.s f17, f19, f13, rne # perform operation
fmul.s f17, f19, f13, rtz # perform operation
fmul.s f17, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fmul.s f8, f24, f16, dyn # perform operation
fmul.s f8, f24, f16, rdn # perform operation
fmul.s f8, f24, f16, rmm # perform operation
fmul.s f8, f24, f16, rne # perform operation
fmul.s f8, f24, f16, rtz # perform operation
fmul.s f8, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fmul.s f15, f5, f23, dyn # perform operation
fmul.s f15, f5, f23, rdn # perform operation
fmul.s f15, f5, f23, rmm # perform operation
fmul.s f15, f5, f23, rne # perform operation
fmul.s f15, f5, f23, rtz # perform operation
fmul.s f15, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
fmul.s f15, f2, f26, dyn # perform operation
fmul.s f15, f2, f26, rdn # perform operation
fmul.s f15, f2, f26, rmm # perform operation
fmul.s f15, f2, f26, rne # perform operation
fmul.s f15, f2, f26, rtz # perform operation
fmul.s f15, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fmul.s f1, f6, f5, dyn # perform operation
fmul.s f1, f6, f5, rdn # perform operation
fmul.s f1, f6, f5, rmm # perform operation
fmul.s f1, f6, f5, rne # perform operation
fmul.s f1, f6, f5, rtz # perform operation
fmul.s f1, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmul.s f13, f14, f22, dyn # perform operation
fmul.s f13, f14, f22, rdn # perform operation
fmul.s f13, f14, f22, rmm # perform operation
fmul.s f13, f14, f22, rne # perform operation
fmul.s f13, f14, f22, rtz # perform operation
fmul.s f13, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fmul.s f30, f11, f13, dyn # perform operation
fmul.s f30, f11, f13, rdn # perform operation
fmul.s f30, f11, f13, rmm # perform operation
fmul.s f30, f11, f13, rne # perform operation
fmul.s f30, f11, f13, rtz # perform operation
fmul.s f30, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fmul.s f18, f29, f6, dyn # perform operation
fmul.s f18, f29, f6, rdn # perform operation
fmul.s f18, f29, f6, rmm # perform operation
fmul.s f18, f29, f6, rne # perform operation
fmul.s f18, f29, f6, rtz # perform operation
fmul.s f18, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fmul.s f14, f24, f23, dyn # perform operation
fmul.s f14, f24, f23, rdn # perform operation
fmul.s f14, f24, f23, rmm # perform operation
fmul.s f14, f24, f23, rne # perform operation
fmul.s f14, f24, f23, rtz # perform operation
fmul.s f14, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fmul.s f17, f5, f26, dyn # perform operation
fmul.s f17, f5, f26, rdn # perform operation
fmul.s f17, f5, f26, rmm # perform operation
fmul.s f17, f5, f26, rne # perform operation
fmul.s f17, f5, f26, rtz # perform operation
fmul.s f17, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fmul.s f6, f23, f7, dyn # perform operation
fmul.s f6, f23, f7, rdn # perform operation
fmul.s f6, f23, f7, rmm # perform operation
fmul.s f6, f23, f7, rne # perform operation
fmul.s f6, f23, f7, rtz # perform operation
fmul.s f6, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fmul.s f12, f11, f5, dyn # perform operation
fmul.s f12, f11, f5, rdn # perform operation
fmul.s f12, f11, f5, rmm # perform operation
fmul.s f12, f11, f5, rne # perform operation
fmul.s f12, f11, f5, rtz # perform operation
fmul.s f12, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmul.s f26, f6, f21, dyn # perform operation
fmul.s f26, f6, f21, rdn # perform operation
fmul.s f26, f6, f21, rmm # perform operation
fmul.s f26, f6, f21, rne # perform operation
fmul.s f26, f6, f21, rtz # perform operation
fmul.s f26, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fmul.s f18, f16, f17, dyn # perform operation
fmul.s f18, f16, f17, rdn # perform operation
fmul.s f18, f16, f17, rmm # perform operation
fmul.s f18, f16, f17, rne # perform operation
fmul.s f18, f16, f17, rtz # perform operation
fmul.s f18, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fmul.s f25, f7, f9, dyn # perform operation
fmul.s f25, f7, f9, rdn # perform operation
fmul.s f25, f7, f9, rmm # perform operation
fmul.s f25, f7, f9, rne # perform operation
fmul.s f25, f7, f9, rtz # perform operation
fmul.s f25, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmul.s f10, f1, f8, dyn # perform operation
fmul.s f10, f1, f8, rdn # perform operation
fmul.s f10, f1, f8, rmm # perform operation
fmul.s f10, f1, f8, rne # perform operation
fmul.s f10, f1, f8, rtz # perform operation
fmul.s f10, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fmul.s f31, f30, f28, dyn # perform operation
fmul.s f31, f30, f28, rdn # perform operation
fmul.s f31, f30, f28, rmm # perform operation
fmul.s f31, f30, f28, rne # perform operation
fmul.s f31, f30, f28, rtz # perform operation
fmul.s f31, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmul.s f8, f29, f26, dyn # perform operation
fmul.s f8, f29, f26, rdn # perform operation
fmul.s f8, f29, f26, rmm # perform operation
fmul.s f8, f29, f26, rne # perform operation
fmul.s f8, f29, f26, rtz # perform operation
fmul.s f8, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f1, f14, f13, dyn # perform operation
fmul.s f1, f14, f13, rdn # perform operation
fmul.s f1, f14, f13, rmm # perform operation
fmul.s f1, f14, f13, rne # perform operation
fmul.s f1, f14, f13, rtz # perform operation
fmul.s f1, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f5, f1, f19, dyn # perform operation
fmul.s f5, f1, f19, rdn # perform operation
fmul.s f5, f1, f19, rmm # perform operation
fmul.s f5, f1, f19, rne # perform operation
fmul.s f5, f1, f19, rtz # perform operation
fmul.s f5, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmul.s f2, f30, f23, dyn # perform operation
fmul.s f2, f30, f23, rdn # perform operation
fmul.s f2, f30, f23, rmm # perform operation
fmul.s f2, f30, f23, rne # perform operation
fmul.s f2, f30, f23, rtz # perform operation
fmul.s f2, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fmul.s f22, f9, f16, dyn # perform operation
fmul.s f22, f9, f16, rdn # perform operation
fmul.s f22, f9, f16, rmm # perform operation
fmul.s f22, f9, f16, rne # perform operation
fmul.s f22, f9, f16, rtz # perform operation
fmul.s f22, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fmul.s f30, f23, f16, dyn # perform operation
fmul.s f30, f23, f16, rdn # perform operation
fmul.s f30, f23, f16, rmm # perform operation
fmul.s f30, f23, f16, rne # perform operation
fmul.s f30, f23, f16, rtz # perform operation
fmul.s f30, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fmul.s f25, f15, f6, dyn # perform operation
fmul.s f25, f15, f6, rdn # perform operation
fmul.s f25, f15, f6, rmm # perform operation
fmul.s f25, f15, f6, rne # perform operation
fmul.s f25, f15, f6, rtz # perform operation
fmul.s f25, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fmul.s f20, f19, f30, dyn # perform operation
fmul.s f20, f19, f30, rdn # perform operation
fmul.s f20, f19, f30, rmm # perform operation
fmul.s f20, f19, f30, rne # perform operation
fmul.s f20, f19, f30, rtz # perform operation
fmul.s f20, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fmul.s f6, f8, f12, dyn # perform operation
fmul.s f6, f8, f12, rdn # perform operation
fmul.s f6, f8, f12, rmm # perform operation
fmul.s f6, f8, f12, rne # perform operation
fmul.s f6, f8, f12, rtz # perform operation
fmul.s f6, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fmul.s f31, f6, f1, dyn # perform operation
fmul.s f31, f6, f1, rdn # perform operation
fmul.s f31, f6, f1, rmm # perform operation
fmul.s f31, f6, f1, rne # perform operation
fmul.s f31, f6, f1, rtz # perform operation
fmul.s f31, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fmul.s f9, f17, f18, dyn # perform operation
fmul.s f9, f17, f18, rdn # perform operation
fmul.s f9, f17, f18, rmm # perform operation
fmul.s f9, f17, f18, rne # perform operation
fmul.s f9, f17, f18, rtz # perform operation
fmul.s f9, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fmul.s f30, f14, f20, dyn # perform operation
fmul.s f30, f14, f20, rdn # perform operation
fmul.s f30, f14, f20, rmm # perform operation
fmul.s f30, f14, f20, rne # perform operation
fmul.s f30, f14, f20, rtz # perform operation
fmul.s f30, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmul.s f31, f30, f7, dyn # perform operation
fmul.s f31, f30, f7, rdn # perform operation
fmul.s f31, f30, f7, rmm # perform operation
fmul.s f31, f30, f7, rne # perform operation
fmul.s f31, f30, f7, rtz # perform operation
fmul.s f31, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fmul.s f10, f11, f16, dyn # perform operation
fmul.s f10, f11, f16, rdn # perform operation
fmul.s f10, f11, f16, rmm # perform operation
fmul.s f10, f11, f16, rne # perform operation
fmul.s f10, f11, f16, rtz # perform operation
fmul.s f10, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
fmul.s f28, f25, f11, dyn # perform operation
fmul.s f28, f25, f11, rdn # perform operation
fmul.s f28, f25, f11, rmm # perform operation
fmul.s f28, f25, f11, rne # perform operation
fmul.s f28, f25, f11, rtz # perform operation
fmul.s f28, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f29, f5, f27, dyn # perform operation
fmul.s f29, f5, f27, rdn # perform operation
fmul.s f29, f5, f27, rmm # perform operation
fmul.s f29, f5, f27, rne # perform operation
fmul.s f29, f5, f27, rtz # perform operation
fmul.s f29, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmul.s f15, f28, f16, dyn # perform operation
fmul.s f15, f28, f16, rdn # perform operation
fmul.s f15, f28, f16, rmm # perform operation
fmul.s f15, f28, f16, rne # perform operation
fmul.s f15, f28, f16, rtz # perform operation
fmul.s f15, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fmul.s f23, f20, f24, dyn # perform operation
fmul.s f23, f20, f24, rdn # perform operation
fmul.s f23, f20, f24, rmm # perform operation
fmul.s f23, f20, f24, rne # perform operation
fmul.s f23, f20, f24, rtz # perform operation
fmul.s f23, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fmul.s f11, f6, f10, dyn # perform operation
fmul.s f11, f6, f10, rdn # perform operation
fmul.s f11, f6, f10, rmm # perform operation
fmul.s f11, f6, f10, rne # perform operation
fmul.s f11, f6, f10, rtz # perform operation
fmul.s f11, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fmul.s f29, f16, f3, dyn # perform operation
fmul.s f29, f16, f3, rdn # perform operation
fmul.s f29, f16, f3, rmm # perform operation
fmul.s f29, f16, f3, rne # perform operation
fmul.s f29, f16, f3, rtz # perform operation
fmul.s f29, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fmul.s f6, f11, f14, dyn # perform operation
fmul.s f6, f11, f14, rdn # perform operation
fmul.s f6, f11, f14, rmm # perform operation
fmul.s f6, f11, f14, rne # perform operation
fmul.s f6, f11, f14, rtz # perform operation
fmul.s f6, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmul.s f15, f3, f25, dyn # perform operation
fmul.s f15, f3, f25, rdn # perform operation
fmul.s f15, f3, f25, rmm # perform operation
fmul.s f15, f3, f25, rne # perform operation
fmul.s f15, f3, f25, rtz # perform operation
fmul.s f15, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f22, f6, f19, dyn # perform operation
fmul.s f22, f6, f19, rdn # perform operation
fmul.s f22, f6, f19, rmm # perform operation
fmul.s f22, f6, f19, rne # perform operation
fmul.s f22, f6, f19, rtz # perform operation
fmul.s f22, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmul.s f11, f27, f13, dyn # perform operation
fmul.s f11, f27, f13, rdn # perform operation
fmul.s f11, f27, f13, rmm # perform operation
fmul.s f11, f27, f13, rne # perform operation
fmul.s f11, f27, f13, rtz # perform operation
fmul.s f11, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fmul.s f19, f31, f14, dyn # perform operation
fmul.s f19, f31, f14, rdn # perform operation
fmul.s f19, f31, f14, rmm # perform operation
fmul.s f19, f31, f14, rne # perform operation
fmul.s f19, f31, f14, rtz # perform operation
fmul.s f19, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fmul.s f28, f13, f3, dyn # perform operation
fmul.s f28, f13, f3, rdn # perform operation
fmul.s f28, f13, f3, rmm # perform operation
fmul.s f28, f13, f3, rne # perform operation
fmul.s f28, f13, f3, rtz # perform operation
fmul.s f28, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fmul.s f1, f7, f21, dyn # perform operation
fmul.s f1, f7, f21, rdn # perform operation
fmul.s f1, f7, f21, rmm # perform operation
fmul.s f1, f7, f21, rne # perform operation
fmul.s f1, f7, f21, rtz # perform operation
fmul.s f1, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fmul.s f6, f24, f20, dyn # perform operation
fmul.s f6, f24, f20, rdn # perform operation
fmul.s f6, f24, f20, rmm # perform operation
fmul.s f6, f24, f20, rne # perform operation
fmul.s f6, f24, f20, rtz # perform operation
fmul.s f6, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fmul.s f21, f3, f19, dyn # perform operation
fmul.s f21, f3, f19, rdn # perform operation
fmul.s f21, f3, f19, rmm # perform operation
fmul.s f21, f3, f19, rne # perform operation
fmul.s f21, f3, f19, rtz # perform operation
fmul.s f21, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fmul.s f26, f20, f7, dyn # perform operation
fmul.s f26, f20, f7, rdn # perform operation
fmul.s f26, f20, f7, rmm # perform operation
fmul.s f26, f20, f7, rne # perform operation
fmul.s f26, f20, f7, rtz # perform operation
fmul.s f26, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fmul.s f30, f27, f6, dyn # perform operation
fmul.s f30, f27, f6, rdn # perform operation
fmul.s f30, f27, f6, rmm # perform operation
fmul.s f30, f27, f6, rne # perform operation
fmul.s f30, f27, f6, rtz # perform operation
fmul.s f30, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fmul.s f9, f20, f29, dyn # perform operation
fmul.s f9, f20, f29, rdn # perform operation
fmul.s f9, f20, f29, rmm # perform operation
fmul.s f9, f20, f29, rne # perform operation
fmul.s f9, f20, f29, rtz # perform operation
fmul.s f9, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fmul.s f26, f7, f2, dyn # perform operation
fmul.s f26, f7, f2, rdn # perform operation
fmul.s f26, f7, f2, rmm # perform operation
fmul.s f26, f7, f2, rne # perform operation
fmul.s f26, f7, f2, rtz # perform operation
fmul.s f26, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fmul.s f15, f18, f21, dyn # perform operation
fmul.s f15, f18, f21, rdn # perform operation
fmul.s f15, f18, f21, rmm # perform operation
fmul.s f15, f18, f21, rne # perform operation
fmul.s f15, f18, f21, rtz # perform operation
fmul.s f15, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmul.s f30, f11, f17, dyn # perform operation
fmul.s f30, f11, f17, rdn # perform operation
fmul.s f30, f11, f17, rmm # perform operation
fmul.s f30, f11, f17, rne # perform operation
fmul.s f30, f11, f17, rtz # perform operation
fmul.s f30, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fmul.s f22, f18, f6, dyn # perform operation
fmul.s f22, f18, f6, rdn # perform operation
fmul.s f22, f18, f6, rmm # perform operation
fmul.s f22, f18, f6, rne # perform operation
fmul.s f22, f18, f6, rtz # perform operation
fmul.s f22, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmul.s f27, f29, f13, dyn # perform operation
fmul.s f27, f29, f13, rdn # perform operation
fmul.s f27, f29, f13, rmm # perform operation
fmul.s f27, f29, f13, rne # perform operation
fmul.s f27, f29, f13, rtz # perform operation
fmul.s f27, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fmul.s f20, f3, f22, dyn # perform operation
fmul.s f20, f3, f22, rdn # perform operation
fmul.s f20, f3, f22, rmm # perform operation
fmul.s f20, f3, f22, rne # perform operation
fmul.s f20, f3, f22, rtz # perform operation
fmul.s f20, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmul.s f13, f1, f28, dyn # perform operation
fmul.s f13, f1, f28, rdn # perform operation
fmul.s f13, f1, f28, rmm # perform operation
fmul.s f13, f1, f28, rne # perform operation
fmul.s f13, f1, f28, rtz # perform operation
fmul.s f13, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fmul.s f10, f28, f11, dyn # perform operation
fmul.s f10, f28, f11, rdn # perform operation
fmul.s f10, f28, f11, rmm # perform operation
fmul.s f10, f28, f11, rne # perform operation
fmul.s f10, f28, f11, rtz # perform operation
fmul.s f10, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmul.s f21, f18, f7, dyn # perform operation
fmul.s f21, f18, f7, rdn # perform operation
fmul.s f21, f18, f7, rmm # perform operation
fmul.s f21, f18, f7, rne # perform operation
fmul.s f21, f18, f7, rtz # perform operation
fmul.s f21, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fmul.s f20, f11, f6, dyn # perform operation
fmul.s f20, f11, f6, rdn # perform operation
fmul.s f20, f11, f6, rmm # perform operation
fmul.s f20, f11, f6, rne # perform operation
fmul.s f20, f11, f6, rtz # perform operation
fmul.s f20, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fmul.s f22, f9, f31, dyn # perform operation
fmul.s f22, f9, f31, rdn # perform operation
fmul.s f22, f9, f31, rmm # perform operation
fmul.s f22, f9, f31, rne # perform operation
fmul.s f22, f9, f31, rtz # perform operation
fmul.s f22, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fmul.s f27, f2, f6, dyn # perform operation
fmul.s f27, f2, f6, rdn # perform operation
fmul.s f27, f2, f6, rmm # perform operation
fmul.s f27, f2, f6, rne # perform operation
fmul.s f27, f2, f6, rtz # perform operation
fmul.s f27, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fmul.s f2, f7, f1, dyn # perform operation
fmul.s f2, f7, f1, rdn # perform operation
fmul.s f2, f7, f1, rmm # perform operation
fmul.s f2, f7, f1, rne # perform operation
fmul.s f2, f7, f1, rtz # perform operation
fmul.s f2, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fmul.s f6, f30, f14, dyn # perform operation
fmul.s f6, f30, f14, rdn # perform operation
fmul.s f6, f30, f14, rmm # perform operation
fmul.s f6, f30, f14, rne # perform operation
fmul.s f6, f30, f14, rtz # perform operation
fmul.s f6, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmul.s f21, f19, f16, dyn # perform operation
fmul.s f21, f19, f16, rdn # perform operation
fmul.s f21, f19, f16, rmm # perform operation
fmul.s f21, f19, f16, rne # perform operation
fmul.s f21, f19, f16, rtz # perform operation
fmul.s f21, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fmul.s f14, f31, f5, dyn # perform operation
fmul.s f14, f31, f5, rdn # perform operation
fmul.s f14, f31, f5, rmm # perform operation
fmul.s f14, f31, f5, rne # perform operation
fmul.s f14, f31, f5, rtz # perform operation
fmul.s f14, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fmul.s f14, f30, f11, dyn # perform operation
fmul.s f14, f30, f11, rdn # perform operation
fmul.s f14, f30, f11, rmm # perform operation
fmul.s f14, f30, f11, rne # perform operation
fmul.s f14, f30, f11, rtz # perform operation
fmul.s f14, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f1, f23, f15, dyn # perform operation
fmul.s f1, f23, f15, rdn # perform operation
fmul.s f1, f23, f15, rmm # perform operation
fmul.s f1, f23, f15, rne # perform operation
fmul.s f1, f23, f15, rtz # perform operation
fmul.s f1, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fmul.s f24, f15, f29, dyn # perform operation
fmul.s f24, f15, f29, rdn # perform operation
fmul.s f24, f15, f29, rmm # perform operation
fmul.s f24, f15, f29, rne # perform operation
fmul.s f24, f15, f29, rtz # perform operation
fmul.s f24, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fmul.s f21, f13, f29, dyn # perform operation
fmul.s f21, f13, f29, rdn # perform operation
fmul.s f21, f13, f29, rmm # perform operation
fmul.s f21, f13, f29, rne # perform operation
fmul.s f21, f13, f29, rtz # perform operation
fmul.s f21, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fmul.s f6, f16, f7, dyn # perform operation
fmul.s f6, f16, f7, rdn # perform operation
fmul.s f6, f16, f7, rmm # perform operation
fmul.s f6, f16, f7, rne # perform operation
fmul.s f6, f16, f7, rtz # perform operation
fmul.s f6, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f10, f16, f20, dyn # perform operation
fmul.s f10, f16, f20, rdn # perform operation
fmul.s f10, f16, f20, rmm # perform operation
fmul.s f10, f16, f20, rne # perform operation
fmul.s f10, f16, f20, rtz # perform operation
fmul.s f10, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fmul.s f21, f28, f16, dyn # perform operation
fmul.s f21, f28, f16, rdn # perform operation
fmul.s f21, f28, f16, rmm # perform operation
fmul.s f21, f28, f16, rne # perform operation
fmul.s f21, f28, f16, rtz # perform operation
fmul.s f21, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fmul.s f26, f7, f1, dyn # perform operation
fmul.s f26, f7, f1, rdn # perform operation
fmul.s f26, f7, f1, rmm # perform operation
fmul.s f26, f7, f1, rne # perform operation
fmul.s f26, f7, f1, rtz # perform operation
fmul.s f26, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f29, f14, f2, dyn # perform operation
fmul.s f29, f14, f2, rdn # perform operation
fmul.s f29, f14, f2, rmm # perform operation
fmul.s f29, f14, f2, rne # perform operation
fmul.s f29, f14, f2, rtz # perform operation
fmul.s f29, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmul.s f5, f12, f18, dyn # perform operation
fmul.s f5, f12, f18, rdn # perform operation
fmul.s f5, f12, f18, rmm # perform operation
fmul.s f5, f12, f18, rne # perform operation
fmul.s f5, f12, f18, rtz # perform operation
fmul.s f5, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fmul.s f1, f9, f15, dyn # perform operation
fmul.s f1, f9, f15, rdn # perform operation
fmul.s f1, f9, f15, rmm # perform operation
fmul.s f1, f9, f15, rne # perform operation
fmul.s f1, f9, f15, rtz # perform operation
fmul.s f1, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fmul.s f20, f18, f7, dyn # perform operation
fmul.s f20, f18, f7, rdn # perform operation
fmul.s f20, f18, f7, rmm # perform operation
fmul.s f20, f18, f7, rne # perform operation
fmul.s f20, f18, f7, rtz # perform operation
fmul.s f20, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fmul.s f9, f21, f24, dyn # perform operation
fmul.s f9, f21, f24, rdn # perform operation
fmul.s f9, f21, f24, rmm # perform operation
fmul.s f9, f21, f24, rne # perform operation
fmul.s f9, f21, f24, rtz # perform operation
fmul.s f9, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fmul.s f22, f16, f12, dyn # perform operation
fmul.s f22, f16, f12, rdn # perform operation
fmul.s f22, f16, f12, rmm # perform operation
fmul.s f22, f16, f12, rne # perform operation
fmul.s f22, f16, f12, rtz # perform operation
fmul.s f22, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fmul.s f11, f5, f1, dyn # perform operation
fmul.s f11, f5, f1, rdn # perform operation
fmul.s f11, f5, f1, rmm # perform operation
fmul.s f11, f5, f1, rne # perform operation
fmul.s f11, f5, f1, rtz # perform operation
fmul.s f11, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fmul.s f28, f23, f9, dyn # perform operation
fmul.s f28, f23, f9, rdn # perform operation
fmul.s f28, f23, f9, rmm # perform operation
fmul.s f28, f23, f9, rne # perform operation
fmul.s f28, f23, f9, rtz # perform operation
fmul.s f28, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fmul.s f19, f23, f21, dyn # perform operation
fmul.s f19, f23, f21, rdn # perform operation
fmul.s f19, f23, f21, rmm # perform operation
fmul.s f19, f23, f21, rne # perform operation
fmul.s f19, f23, f21, rtz # perform operation
fmul.s f19, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fmul.s f27, f6, f31, dyn # perform operation
fmul.s f27, f6, f31, rdn # perform operation
fmul.s f27, f6, f31, rmm # perform operation
fmul.s f27, f6, f31, rne # perform operation
fmul.s f27, f6, f31, rtz # perform operation
fmul.s f27, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fmul.s f2, f1, f27, dyn # perform operation
fmul.s f2, f1, f27, rdn # perform operation
fmul.s f2, f1, f27, rmm # perform operation
fmul.s f2, f1, f27, rne # perform operation
fmul.s f2, f1, f27, rtz # perform operation
fmul.s f2, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fmul.s f16, f18, f12, dyn # perform operation
fmul.s f16, f18, f12, rdn # perform operation
fmul.s f16, f18, f12, rmm # perform operation
fmul.s f16, f18, f12, rne # perform operation
fmul.s f16, f18, f12, rtz # perform operation
fmul.s f16, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmul.s f25, f31, f7, dyn # perform operation
fmul.s f25, f31, f7, rdn # perform operation
fmul.s f25, f31, f7, rmm # perform operation
fmul.s f25, f31, f7, rne # perform operation
fmul.s f25, f31, f7, rtz # perform operation
fmul.s f25, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fmul.s f29, f1, f18, dyn # perform operation
fmul.s f29, f1, f18, rdn # perform operation
fmul.s f29, f1, f18, rmm # perform operation
fmul.s f29, f1, f18, rne # perform operation
fmul.s f29, f1, f18, rtz # perform operation
fmul.s f29, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fmul.s f28, f11, f6, dyn # perform operation
fmul.s f28, f11, f6, rdn # perform operation
fmul.s f28, f11, f6, rmm # perform operation
fmul.s f28, f11, f6, rne # perform operation
fmul.s f28, f11, f6, rtz # perform operation
fmul.s f28, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmul.s f17, f22, f20, dyn # perform operation
fmul.s f17, f22, f20, rdn # perform operation
fmul.s f17, f22, f20, rmm # perform operation
fmul.s f17, f22, f20, rne # perform operation
fmul.s f17, f22, f20, rtz # perform operation
fmul.s f17, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fmul.s f7, f5, f18, dyn # perform operation
fmul.s f7, f5, f18, rdn # perform operation
fmul.s f7, f5, f18, rmm # perform operation
fmul.s f7, f5, f18, rne # perform operation
fmul.s f7, f5, f18, rtz # perform operation
fmul.s f7, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fmul.s f3, f20, f7, dyn # perform operation
fmul.s f3, f20, f7, rdn # perform operation
fmul.s f3, f20, f7, rmm # perform operation
fmul.s f3, f20, f7, rne # perform operation
fmul.s f3, f20, f7, rtz # perform operation
fmul.s f3, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fmul.s f29, f9, f26, dyn # perform operation
fmul.s f29, f9, f26, rdn # perform operation
fmul.s f29, f9, f26, rmm # perform operation
fmul.s f29, f9, f26, rne # perform operation
fmul.s f29, f9, f26, rtz # perform operation
fmul.s f29, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmul.s f5, f27, f17, dyn # perform operation
fmul.s f5, f27, f17, rdn # perform operation
fmul.s f5, f27, f17, rmm # perform operation
fmul.s f5, f27, f17, rne # perform operation
fmul.s f5, f27, f17, rtz # perform operation
fmul.s f5, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fmul.s f5, f31, f8, dyn # perform operation
fmul.s f5, f31, f8, rdn # perform operation
fmul.s f5, f31, f8, rmm # perform operation
fmul.s f5, f31, f8, rne # perform operation
fmul.s f5, f31, f8, rtz # perform operation
fmul.s f5, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fmul.s f22, f21, f6, dyn # perform operation
fmul.s f22, f21, f6, rdn # perform operation
fmul.s f22, f21, f6, rmm # perform operation
fmul.s f22, f21, f6, rne # perform operation
fmul.s f22, f21, f6, rtz # perform operation
fmul.s f22, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fmul.s f8, f14, f2, dyn # perform operation
fmul.s f8, f14, f2, rdn # perform operation
fmul.s f8, f14, f2, rmm # perform operation
fmul.s f8, f14, f2, rne # perform operation
fmul.s f8, f14, f2, rtz # perform operation
fmul.s f8, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmul.s f6, f15, f20, dyn # perform operation
fmul.s f6, f15, f20, rdn # perform operation
fmul.s f6, f15, f20, rmm # perform operation
fmul.s f6, f15, f20, rne # perform operation
fmul.s f6, f15, f20, rtz # perform operation
fmul.s f6, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fmul.s f26, f10, f3, dyn # perform operation
fmul.s f26, f10, f3, rdn # perform operation
fmul.s f26, f10, f3, rmm # perform operation
fmul.s f26, f10, f3, rne # perform operation
fmul.s f26, f10, f3, rtz # perform operation
fmul.s f26, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f13, f2, f5, dyn # perform operation
fmul.s f13, f2, f5, rdn # perform operation
fmul.s f13, f2, f5, rmm # perform operation
fmul.s f13, f2, f5, rne # perform operation
fmul.s f13, f2, f5, rtz # perform operation
fmul.s f13, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fmul.s f23, f13, f16, dyn # perform operation
fmul.s f23, f13, f16, rdn # perform operation
fmul.s f23, f13, f16, rmm # perform operation
fmul.s f23, f13, f16, rne # perform operation
fmul.s f23, f13, f16, rtz # perform operation
fmul.s f23, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fmul.s f26, f1, f13, dyn # perform operation
fmul.s f26, f1, f13, rdn # perform operation
fmul.s f26, f1, f13, rmm # perform operation
fmul.s f26, f1, f13, rne # perform operation
fmul.s f26, f1, f13, rtz # perform operation
fmul.s f26, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fmul.s f1, f14, f28, dyn # perform operation
fmul.s f1, f14, f28, rdn # perform operation
fmul.s f1, f14, f28, rmm # perform operation
fmul.s f1, f14, f28, rne # perform operation
fmul.s f1, f14, f28, rtz # perform operation
fmul.s f1, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fmul.s f10, f20, f24, dyn # perform operation
fmul.s f10, f20, f24, rdn # perform operation
fmul.s f10, f20, f24, rmm # perform operation
fmul.s f10, f20, f24, rne # perform operation
fmul.s f10, f20, f24, rtz # perform operation
fmul.s f10, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fmul.s f3, f28, f21, dyn # perform operation
fmul.s f3, f28, f21, rdn # perform operation
fmul.s f3, f28, f21, rmm # perform operation
fmul.s f3, f28, f21, rne # perform operation
fmul.s f3, f28, f21, rtz # perform operation
fmul.s f3, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fmul.s f5, f16, f14, dyn # perform operation
fmul.s f5, f16, f14, rdn # perform operation
fmul.s f5, f16, f14, rmm # perform operation
fmul.s f5, f16, f14, rne # perform operation
fmul.s f5, f16, f14, rtz # perform operation
fmul.s f5, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fmul.s f19, f31, f29, dyn # perform operation
fmul.s f19, f31, f29, rdn # perform operation
fmul.s f19, f31, f29, rmm # perform operation
fmul.s f19, f31, f29, rne # perform operation
fmul.s f19, f31, f29, rtz # perform operation
fmul.s f19, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fmul.s f7, f19, f29, dyn # perform operation
fmul.s f7, f19, f29, rdn # perform operation
fmul.s f7, f19, f29, rmm # perform operation
fmul.s f7, f19, f29, rne # perform operation
fmul.s f7, f19, f29, rtz # perform operation
fmul.s f7, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmul.s f8, f28, f30, dyn # perform operation
fmul.s f8, f28, f30, rdn # perform operation
fmul.s f8, f28, f30, rmm # perform operation
fmul.s f8, f28, f30, rne # perform operation
fmul.s f8, f28, f30, rtz # perform operation
fmul.s f8, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fmul.s f15, f20, f29, dyn # perform operation
fmul.s f15, f20, f29, rdn # perform operation
fmul.s f15, f20, f29, rmm # perform operation
fmul.s f15, f20, f29, rne # perform operation
fmul.s f15, f20, f29, rtz # perform operation
fmul.s f15, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fmul.s f3, f24, f23, dyn # perform operation
fmul.s f3, f24, f23, rdn # perform operation
fmul.s f3, f24, f23, rmm # perform operation
fmul.s f3, f24, f23, rne # perform operation
fmul.s f3, f24, f23, rtz # perform operation
fmul.s f3, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fmul.s f23, f25, f7, dyn # perform operation
fmul.s f23, f25, f7, rdn # perform operation
fmul.s f23, f25, f7, rmm # perform operation
fmul.s f23, f25, f7, rne # perform operation
fmul.s f23, f25, f7, rtz # perform operation
fmul.s f23, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fmul.s f17, f8, f5, dyn # perform operation
fmul.s f17, f8, f5, rdn # perform operation
fmul.s f17, f8, f5, rmm # perform operation
fmul.s f17, f8, f5, rne # perform operation
fmul.s f17, f8, f5, rtz # perform operation
fmul.s f17, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fmul.s f20, f11, f16, dyn # perform operation
fmul.s f20, f11, f16, rdn # perform operation
fmul.s f20, f11, f16, rmm # perform operation
fmul.s f20, f11, f16, rne # perform operation
fmul.s f20, f11, f16, rtz # perform operation
fmul.s f20, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fmul.s f9, f1, f24, dyn # perform operation
fmul.s f9, f1, f24, rdn # perform operation
fmul.s f9, f1, f24, rmm # perform operation
fmul.s f9, f1, f24, rne # perform operation
fmul.s f9, f1, f24, rtz # perform operation
fmul.s f9, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fmul.s f17, f2, f8, dyn # perform operation
fmul.s f17, f2, f8, rdn # perform operation
fmul.s f17, f2, f8, rmm # perform operation
fmul.s f17, f2, f8, rne # perform operation
fmul.s f17, f2, f8, rtz # perform operation
fmul.s f17, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fmul.s f15, f7, f24, dyn # perform operation
fmul.s f15, f7, f24, rdn # perform operation
fmul.s f15, f7, f24, rmm # perform operation
fmul.s f15, f7, f24, rne # perform operation
fmul.s f15, f7, f24, rtz # perform operation
fmul.s f15, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fmul.s f31, f1, f28, dyn # perform operation
fmul.s f31, f1, f28, rdn # perform operation
fmul.s f31, f1, f28, rmm # perform operation
fmul.s f31, f1, f28, rne # perform operation
fmul.s f31, f1, f28, rtz # perform operation
fmul.s f31, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fmul.s f5, f24, f6, dyn # perform operation
fmul.s f5, f24, f6, rdn # perform operation
fmul.s f5, f24, f6, rmm # perform operation
fmul.s f5, f24, f6, rne # perform operation
fmul.s f5, f24, f6, rtz # perform operation
fmul.s f5, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fmul.s f23, f5, f29, dyn # perform operation
fmul.s f23, f5, f29, rdn # perform operation
fmul.s f23, f5, f29, rmm # perform operation
fmul.s f23, f5, f29, rne # perform operation
fmul.s f23, f5, f29, rtz # perform operation
fmul.s f23, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fmul.s f15, f23, f21, dyn # perform operation
fmul.s f15, f23, f21, rdn # perform operation
fmul.s f15, f23, f21, rmm # perform operation
fmul.s f15, f23, f21, rne # perform operation
fmul.s f15, f23, f21, rtz # perform operation
fmul.s f15, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmul.s f11, f2, f22, dyn # perform operation
fmul.s f11, f2, f22, rdn # perform operation
fmul.s f11, f2, f22, rmm # perform operation
fmul.s f11, f2, f22, rne # perform operation
fmul.s f11, f2, f22, rtz # perform operation
fmul.s f11, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmul.s f29, f21, f3, dyn # perform operation
fmul.s f29, f21, f3, rdn # perform operation
fmul.s f29, f21, f3, rmm # perform operation
fmul.s f29, f21, f3, rne # perform operation
fmul.s f29, f21, f3, rtz # perform operation
fmul.s f29, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmul.s f7, f29, f9, dyn # perform operation
fmul.s f7, f29, f9, rdn # perform operation
fmul.s f7, f29, f9, rmm # perform operation
fmul.s f7, f29, f9, rne # perform operation
fmul.s f7, f29, f9, rtz # perform operation
fmul.s f7, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fmul.s f19, f18, f2, dyn # perform operation
fmul.s f19, f18, f2, rdn # perform operation
fmul.s f19, f18, f2, rmm # perform operation
fmul.s f19, f18, f2, rne # perform operation
fmul.s f19, f18, f2, rtz # perform operation
fmul.s f19, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fmul.s f31, f7, f5, dyn # perform operation
fmul.s f31, f7, f5, rdn # perform operation
fmul.s f31, f7, f5, rmm # perform operation
fmul.s f31, f7, f5, rne # perform operation
fmul.s f31, f7, f5, rtz # perform operation
fmul.s f31, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f14, f11, f25, dyn # perform operation
fmul.s f14, f11, f25, rdn # perform operation
fmul.s f14, f11, f25, rmm # perform operation
fmul.s f14, f11, f25, rne # perform operation
fmul.s f14, f11, f25, rtz # perform operation
fmul.s f14, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmul.s f28, f6, f7, dyn # perform operation
fmul.s f28, f6, f7, rdn # perform operation
fmul.s f28, f6, f7, rmm # perform operation
fmul.s f28, f6, f7, rne # perform operation
fmul.s f28, f6, f7, rtz # perform operation
fmul.s f28, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fmul.s f10, f26, f16, dyn # perform operation
fmul.s f10, f26, f16, rdn # perform operation
fmul.s f10, f26, f16, rmm # perform operation
fmul.s f10, f26, f16, rne # perform operation
fmul.s f10, f26, f16, rtz # perform operation
fmul.s f10, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fmul.s f18, f20, f28, dyn # perform operation
fmul.s f18, f20, f28, rdn # perform operation
fmul.s f18, f20, f28, rmm # perform operation
fmul.s f18, f20, f28, rne # perform operation
fmul.s f18, f20, f28, rtz # perform operation
fmul.s f18, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fmul.s f26, f21, f18, dyn # perform operation
fmul.s f26, f21, f18, rdn # perform operation
fmul.s f26, f21, f18, rmm # perform operation
fmul.s f26, f21, f18, rne # perform operation
fmul.s f26, f21, f18, rtz # perform operation
fmul.s f26, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmul.s f9, f14, f18, dyn # perform operation
fmul.s f9, f14, f18, rdn # perform operation
fmul.s f9, f14, f18, rmm # perform operation
fmul.s f9, f14, f18, rne # perform operation
fmul.s f9, f14, f18, rtz # perform operation
fmul.s f9, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmul.s f24, f2, f17, dyn # perform operation
fmul.s f24, f2, f17, rdn # perform operation
fmul.s f24, f2, f17, rmm # perform operation
fmul.s f24, f2, f17, rne # perform operation
fmul.s f24, f2, f17, rtz # perform operation
fmul.s f24, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f2, f31, f26, dyn # perform operation
fmul.s f2, f31, f26, rdn # perform operation
fmul.s f2, f31, f26, rmm # perform operation
fmul.s f2, f31, f26, rne # perform operation
fmul.s f2, f31, f26, rtz # perform operation
fmul.s f2, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fmul.s f10, f21, f8, dyn # perform operation
fmul.s f10, f21, f8, rdn # perform operation
fmul.s f10, f21, f8, rmm # perform operation
fmul.s f10, f21, f8, rne # perform operation
fmul.s f10, f21, f8, rtz # perform operation
fmul.s f10, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmul.s f20, f22, f31, dyn # perform operation
fmul.s f20, f22, f31, rdn # perform operation
fmul.s f20, f22, f31, rmm # perform operation
fmul.s f20, f22, f31, rne # perform operation
fmul.s f20, f22, f31, rtz # perform operation
fmul.s f20, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fmul.s f9, f12, f8, dyn # perform operation
fmul.s f9, f12, f8, rdn # perform operation
fmul.s f9, f12, f8, rmm # perform operation
fmul.s f9, f12, f8, rne # perform operation
fmul.s f9, f12, f8, rtz # perform operation
fmul.s f9, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f10, f24, f1, dyn # perform operation
fmul.s f10, f24, f1, rdn # perform operation
fmul.s f10, f24, f1, rmm # perform operation
fmul.s f10, f24, f1, rne # perform operation
fmul.s f10, f24, f1, rtz # perform operation
fmul.s f10, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fmul.s f7, f16, f29, dyn # perform operation
fmul.s f7, f16, f29, rdn # perform operation
fmul.s f7, f16, f29, rmm # perform operation
fmul.s f7, f16, f29, rne # perform operation
fmul.s f7, f16, f29, rtz # perform operation
fmul.s f7, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmul.s f5, f24, f10, dyn # perform operation
fmul.s f5, f24, f10, rdn # perform operation
fmul.s f5, f24, f10, rmm # perform operation
fmul.s f5, f24, f10, rne # perform operation
fmul.s f5, f24, f10, rtz # perform operation
fmul.s f5, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fmul.s f6, f8, f12, dyn # perform operation
fmul.s f6, f8, f12, rdn # perform operation
fmul.s f6, f8, f12, rmm # perform operation
fmul.s f6, f8, f12, rne # perform operation
fmul.s f6, f8, f12, rtz # perform operation
fmul.s f6, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fmul.s f27, f23, f20, dyn # perform operation
fmul.s f27, f23, f20, rdn # perform operation
fmul.s f27, f23, f20, rmm # perform operation
fmul.s f27, f23, f20, rne # perform operation
fmul.s f27, f23, f20, rtz # perform operation
fmul.s f27, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fmul.s f1, f14, f20, dyn # perform operation
fmul.s f1, f14, f20, rdn # perform operation
fmul.s f1, f14, f20, rmm # perform operation
fmul.s f1, f14, f20, rne # perform operation
fmul.s f1, f14, f20, rtz # perform operation
fmul.s f1, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f21, f11, f10, dyn # perform operation
fmul.s f21, f11, f10, rdn # perform operation
fmul.s f21, f11, f10, rmm # perform operation
fmul.s f21, f11, f10, rne # perform operation
fmul.s f21, f11, f10, rtz # perform operation
fmul.s f21, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fmul.s f23, f12, f2, dyn # perform operation
fmul.s f23, f12, f2, rdn # perform operation
fmul.s f23, f12, f2, rmm # perform operation
fmul.s f23, f12, f2, rne # perform operation
fmul.s f23, f12, f2, rtz # perform operation
fmul.s f23, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fmul.s f20, f31, f26, dyn # perform operation
fmul.s f20, f31, f26, rdn # perform operation
fmul.s f20, f31, f26, rmm # perform operation
fmul.s f20, f31, f26, rne # perform operation
fmul.s f20, f31, f26, rtz # perform operation
fmul.s f20, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fmul.s f27, f17, f23, dyn # perform operation
fmul.s f27, f17, f23, rdn # perform operation
fmul.s f27, f17, f23, rmm # perform operation
fmul.s f27, f17, f23, rne # perform operation
fmul.s f27, f17, f23, rtz # perform operation
fmul.s f27, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fmul.s f2, f11, f27, dyn # perform operation
fmul.s f2, f11, f27, rdn # perform operation
fmul.s f2, f11, f27, rmm # perform operation
fmul.s f2, f11, f27, rne # perform operation
fmul.s f2, f11, f27, rtz # perform operation
fmul.s f2, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f12, f21, f31, dyn # perform operation
fmul.s f12, f21, f31, rdn # perform operation
fmul.s f12, f21, f31, rmm # perform operation
fmul.s f12, f21, f31, rne # perform operation
fmul.s f12, f21, f31, rtz # perform operation
fmul.s f12, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmul.s f9, f3, f31, dyn # perform operation
fmul.s f9, f3, f31, rdn # perform operation
fmul.s f9, f3, f31, rmm # perform operation
fmul.s f9, f3, f31, rne # perform operation
fmul.s f9, f3, f31, rtz # perform operation
fmul.s f9, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fmul.s f10, f30, f9, dyn # perform operation
fmul.s f10, f30, f9, rdn # perform operation
fmul.s f10, f30, f9, rmm # perform operation
fmul.s f10, f30, f9, rne # perform operation
fmul.s f10, f30, f9, rtz # perform operation
fmul.s f10, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fmul.s f14, f1, f29, dyn # perform operation
fmul.s f14, f1, f29, rdn # perform operation
fmul.s f14, f1, f29, rmm # perform operation
fmul.s f14, f1, f29, rne # perform operation
fmul.s f14, f1, f29, rtz # perform operation
fmul.s f14, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmul.s f3, f14, f7, dyn # perform operation
fmul.s f3, f14, f7, rdn # perform operation
fmul.s f3, f14, f7, rmm # perform operation
fmul.s f3, f14, f7, rne # perform operation
fmul.s f3, f14, f7, rtz # perform operation
fmul.s f3, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fmul.s f15, f8, f7, dyn # perform operation
fmul.s f15, f8, f7, rdn # perform operation
fmul.s f15, f8, f7, rmm # perform operation
fmul.s f15, f8, f7, rne # perform operation
fmul.s f15, f8, f7, rtz # perform operation
fmul.s f15, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f18, f29, f25, dyn # perform operation
fmul.s f18, f29, f25, rdn # perform operation
fmul.s f18, f29, f25, rmm # perform operation
fmul.s f18, f29, f25, rne # perform operation
fmul.s f18, f29, f25, rtz # perform operation
fmul.s f18, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fmul.s f20, f17, f27, dyn # perform operation
fmul.s f20, f17, f27, rdn # perform operation
fmul.s f20, f17, f27, rmm # perform operation
fmul.s f20, f17, f27, rne # perform operation
fmul.s f20, f17, f27, rtz # perform operation
fmul.s f20, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fmul.s f12, f1, f3, dyn # perform operation
fmul.s f12, f1, f3, rdn # perform operation
fmul.s f12, f1, f3, rmm # perform operation
fmul.s f12, f1, f3, rne # perform operation
fmul.s f12, f1, f3, rtz # perform operation
fmul.s f12, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fmul.s f20, f5, f7, dyn # perform operation
fmul.s f20, f5, f7, rdn # perform operation
fmul.s f20, f5, f7, rmm # perform operation
fmul.s f20, f5, f7, rne # perform operation
fmul.s f20, f5, f7, rtz # perform operation
fmul.s f20, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fmul.s f30, f27, f13, dyn # perform operation
fmul.s f30, f27, f13, rdn # perform operation
fmul.s f30, f27, f13, rmm # perform operation
fmul.s f30, f27, f13, rne # perform operation
fmul.s f30, f27, f13, rtz # perform operation
fmul.s f30, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fmul.s f29, f17, f8, dyn # perform operation
fmul.s f29, f17, f8, rdn # perform operation
fmul.s f29, f17, f8, rmm # perform operation
fmul.s f29, f17, f8, rne # perform operation
fmul.s f29, f17, f8, rtz # perform operation
fmul.s f29, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fmul.s f19, f31, f10, dyn # perform operation
fmul.s f19, f31, f10, rdn # perform operation
fmul.s f19, f31, f10, rmm # perform operation
fmul.s f19, f31, f10, rne # perform operation
fmul.s f19, f31, f10, rtz # perform operation
fmul.s f19, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fmul.s f9, f13, f31, dyn # perform operation
fmul.s f9, f13, f31, rdn # perform operation
fmul.s f9, f13, f31, rmm # perform operation
fmul.s f9, f13, f31, rne # perform operation
fmul.s f9, f13, f31, rtz # perform operation
fmul.s f9, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fmul.s f26, f31, f6, dyn # perform operation
fmul.s f26, f31, f6, rdn # perform operation
fmul.s f26, f31, f6, rmm # perform operation
fmul.s f26, f31, f6, rne # perform operation
fmul.s f26, f31, f6, rtz # perform operation
fmul.s f26, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fmul.s f15, f23, f7, dyn # perform operation
fmul.s f15, f23, f7, rdn # perform operation
fmul.s f15, f23, f7, rmm # perform operation
fmul.s f15, f23, f7, rne # perform operation
fmul.s f15, f23, f7, rtz # perform operation
fmul.s f15, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f25, f12, f20, dyn # perform operation
fmul.s f25, f12, f20, rdn # perform operation
fmul.s f25, f12, f20, rmm # perform operation
fmul.s f25, f12, f20, rne # perform operation
fmul.s f25, f12, f20, rtz # perform operation
fmul.s f25, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f5, f6, f17, dyn # perform operation
fmul.s f5, f6, f17, rdn # perform operation
fmul.s f5, f6, f17, rmm # perform operation
fmul.s f5, f6, f17, rne # perform operation
fmul.s f5, f6, f17, rtz # perform operation
fmul.s f5, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmul.s f6, f7, f2, dyn # perform operation
fmul.s f6, f7, f2, rdn # perform operation
fmul.s f6, f7, f2, rmm # perform operation
fmul.s f6, f7, f2, rne # perform operation
fmul.s f6, f7, f2, rtz # perform operation
fmul.s f6, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmul.s f30, f20, f5, dyn # perform operation
fmul.s f30, f20, f5, rdn # perform operation
fmul.s f30, f20, f5, rmm # perform operation
fmul.s f30, f20, f5, rne # perform operation
fmul.s f30, f20, f5, rtz # perform operation
fmul.s f30, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fmul.s f15, f21, f11, dyn # perform operation
fmul.s f15, f21, f11, rdn # perform operation
fmul.s f15, f21, f11, rmm # perform operation
fmul.s f15, f21, f11, rne # perform operation
fmul.s f15, f21, f11, rtz # perform operation
fmul.s f15, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fmul.s f26, f7, f5, dyn # perform operation
fmul.s f26, f7, f5, rdn # perform operation
fmul.s f26, f7, f5, rmm # perform operation
fmul.s f26, f7, f5, rne # perform operation
fmul.s f26, f7, f5, rtz # perform operation
fmul.s f26, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f3, f21, f1, dyn # perform operation
fmul.s f3, f21, f1, rdn # perform operation
fmul.s f3, f21, f1, rmm # perform operation
fmul.s f3, f21, f1, rne # perform operation
fmul.s f3, f21, f1, rtz # perform operation
fmul.s f3, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fmul.s f10, f8, f16, dyn # perform operation
fmul.s f10, f8, f16, rdn # perform operation
fmul.s f10, f8, f16, rmm # perform operation
fmul.s f10, f8, f16, rne # perform operation
fmul.s f10, f8, f16, rtz # perform operation
fmul.s f10, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fmul.s f31, f16, f12, dyn # perform operation
fmul.s f31, f16, f12, rdn # perform operation
fmul.s f31, f16, f12, rmm # perform operation
fmul.s f31, f16, f12, rne # perform operation
fmul.s f31, f16, f12, rtz # perform operation
fmul.s f31, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fmul.s f25, f28, f3, dyn # perform operation
fmul.s f25, f28, f3, rdn # perform operation
fmul.s f25, f28, f3, rmm # perform operation
fmul.s f25, f28, f3, rne # perform operation
fmul.s f25, f28, f3, rtz # perform operation
fmul.s f25, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmul.s f15, f14, f26, dyn # perform operation
fmul.s f15, f14, f26, rdn # perform operation
fmul.s f15, f14, f26, rmm # perform operation
fmul.s f15, f14, f26, rne # perform operation
fmul.s f15, f14, f26, rtz # perform operation
fmul.s f15, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fmul.s f27, f29, f2, dyn # perform operation
fmul.s f27, f29, f2, rdn # perform operation
fmul.s f27, f29, f2, rmm # perform operation
fmul.s f27, f29, f2, rne # perform operation
fmul.s f27, f29, f2, rtz # perform operation
fmul.s f27, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f19, f18, f20, dyn # perform operation
fmul.s f19, f18, f20, rdn # perform operation
fmul.s f19, f18, f20, rmm # perform operation
fmul.s f19, f18, f20, rne # perform operation
fmul.s f19, f18, f20, rtz # perform operation
fmul.s f19, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f15, f14, f20, dyn # perform operation
fmul.s f15, f14, f20, rdn # perform operation
fmul.s f15, f14, f20, rmm # perform operation
fmul.s f15, f14, f20, rne # perform operation
fmul.s f15, f14, f20, rtz # perform operation
fmul.s f15, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fmul.s f14, f2, f23, dyn # perform operation
fmul.s f14, f2, f23, rdn # perform operation
fmul.s f14, f2, f23, rmm # perform operation
fmul.s f14, f2, f23, rne # perform operation
fmul.s f14, f2, f23, rtz # perform operation
fmul.s f14, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fmul.s f3, f18, f29, dyn # perform operation
fmul.s f3, f18, f29, rdn # perform operation
fmul.s f3, f18, f29, rmm # perform operation
fmul.s f3, f18, f29, rne # perform operation
fmul.s f3, f18, f29, rtz # perform operation
fmul.s f3, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fmul.s f1, f28, f14, dyn # perform operation
fmul.s f1, f28, f14, rdn # perform operation
fmul.s f1, f28, f14, rmm # perform operation
fmul.s f1, f28, f14, rne # perform operation
fmul.s f1, f28, f14, rtz # perform operation
fmul.s f1, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fmul.s f9, f23, f22, dyn # perform operation
fmul.s f9, f23, f22, rdn # perform operation
fmul.s f9, f23, f22, rmm # perform operation
fmul.s f9, f23, f22, rne # perform operation
fmul.s f9, f23, f22, rtz # perform operation
fmul.s f9, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fmul.s f25, f31, f7, dyn # perform operation
fmul.s f25, f31, f7, rdn # perform operation
fmul.s f25, f31, f7, rmm # perform operation
fmul.s f25, f31, f7, rne # perform operation
fmul.s f25, f31, f7, rtz # perform operation
fmul.s f25, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fmul.s f1, f14, f24, dyn # perform operation
fmul.s f1, f14, f24, rdn # perform operation
fmul.s f1, f14, f24, rmm # perform operation
fmul.s f1, f14, f24, rne # perform operation
fmul.s f1, f14, f24, rtz # perform operation
fmul.s f1, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fmul.s f3, f24, f18, dyn # perform operation
fmul.s f3, f24, f18, rdn # perform operation
fmul.s f3, f24, f18, rmm # perform operation
fmul.s f3, f24, f18, rne # perform operation
fmul.s f3, f24, f18, rtz # perform operation
fmul.s f3, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fmul.s f31, f9, f28, dyn # perform operation
fmul.s f31, f9, f28, rdn # perform operation
fmul.s f31, f9, f28, rmm # perform operation
fmul.s f31, f9, f28, rne # perform operation
fmul.s f31, f9, f28, rtz # perform operation
fmul.s f31, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f15, f11, f2, dyn # perform operation
fmul.s f15, f11, f2, rdn # perform operation
fmul.s f15, f11, f2, rmm # perform operation
fmul.s f15, f11, f2, rne # perform operation
fmul.s f15, f11, f2, rtz # perform operation
fmul.s f15, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fmul.s f22, f25, f19, dyn # perform operation
fmul.s f22, f25, f19, rdn # perform operation
fmul.s f22, f25, f19, rmm # perform operation
fmul.s f22, f25, f19, rne # perform operation
fmul.s f22, f25, f19, rtz # perform operation
fmul.s f22, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fmul.s f9, f21, f12, dyn # perform operation
fmul.s f9, f21, f12, rdn # perform operation
fmul.s f9, f21, f12, rmm # perform operation
fmul.s f9, f21, f12, rne # perform operation
fmul.s f9, f21, f12, rtz # perform operation
fmul.s f9, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f11, f15, f26, dyn # perform operation
fmul.s f11, f15, f26, rdn # perform operation
fmul.s f11, f15, f26, rmm # perform operation
fmul.s f11, f15, f26, rne # perform operation
fmul.s f11, f15, f26, rtz # perform operation
fmul.s f11, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fmul.s f5, f25, f30, dyn # perform operation
fmul.s f5, f25, f30, rdn # perform operation
fmul.s f5, f25, f30, rmm # perform operation
fmul.s f5, f25, f30, rne # perform operation
fmul.s f5, f25, f30, rtz # perform operation
fmul.s f5, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fmul.s f30, f22, f17, dyn # perform operation
fmul.s f30, f22, f17, rdn # perform operation
fmul.s f30, f22, f17, rmm # perform operation
fmul.s f30, f22, f17, rne # perform operation
fmul.s f30, f22, f17, rtz # perform operation
fmul.s f30, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fmul.s f8, f9, f22, dyn # perform operation
fmul.s f8, f9, f22, rdn # perform operation
fmul.s f8, f9, f22, rmm # perform operation
fmul.s f8, f9, f22, rne # perform operation
fmul.s f8, f9, f22, rtz # perform operation
fmul.s f8, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fmul.s f27, f3, f11, dyn # perform operation
fmul.s f27, f3, f11, rdn # perform operation
fmul.s f27, f3, f11, rmm # perform operation
fmul.s f27, f3, f11, rne # perform operation
fmul.s f27, f3, f11, rtz # perform operation
fmul.s f27, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fmul.s f3, f23, f15, dyn # perform operation
fmul.s f3, f23, f15, rdn # perform operation
fmul.s f3, f23, f15, rmm # perform operation
fmul.s f3, f23, f15, rne # perform operation
fmul.s f3, f23, f15, rtz # perform operation
fmul.s f3, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fmul.s f23, f15, f25, dyn # perform operation
fmul.s f23, f15, f25, rdn # perform operation
fmul.s f23, f15, f25, rmm # perform operation
fmul.s f23, f15, f25, rne # perform operation
fmul.s f23, f15, f25, rtz # perform operation
fmul.s f23, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fmul.s f15, f29, f8, dyn # perform operation
fmul.s f15, f29, f8, rdn # perform operation
fmul.s f15, f29, f8, rmm # perform operation
fmul.s f15, f29, f8, rne # perform operation
fmul.s f15, f29, f8, rtz # perform operation
fmul.s f15, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fmul.s f18, f15, f5, dyn # perform operation
fmul.s f18, f15, f5, rdn # perform operation
fmul.s f18, f15, f5, rmm # perform operation
fmul.s f18, f15, f5, rne # perform operation
fmul.s f18, f15, f5, rtz # perform operation
fmul.s f18, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fmul.s f16, f7, f29, dyn # perform operation
fmul.s f16, f7, f29, rdn # perform operation
fmul.s f16, f7, f29, rmm # perform operation
fmul.s f16, f7, f29, rne # perform operation
fmul.s f16, f7, f29, rtz # perform operation
fmul.s f16, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fmul.s f8, f14, f13, dyn # perform operation
fmul.s f8, f14, f13, rdn # perform operation
fmul.s f8, f14, f13, rmm # perform operation
fmul.s f8, f14, f13, rne # perform operation
fmul.s f8, f14, f13, rtz # perform operation
fmul.s f8, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fmul.s f15, f13, f2, dyn # perform operation
fmul.s f15, f13, f2, rdn # perform operation
fmul.s f15, f13, f2, rmm # perform operation
fmul.s f15, f13, f2, rne # perform operation
fmul.s f15, f13, f2, rtz # perform operation
fmul.s f15, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fmul.s f24, f26, f22, dyn # perform operation
fmul.s f24, f26, f22, rdn # perform operation
fmul.s f24, f26, f22, rmm # perform operation
fmul.s f24, f26, f22, rne # perform operation
fmul.s f24, f26, f22, rtz # perform operation
fmul.s f24, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fmul.s f3, f23, f14, dyn # perform operation
fmul.s f3, f23, f14, rdn # perform operation
fmul.s f3, f23, f14, rmm # perform operation
fmul.s f3, f23, f14, rne # perform operation
fmul.s f3, f23, f14, rtz # perform operation
fmul.s f3, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fmul.s f13, f10, f3, dyn # perform operation
fmul.s f13, f10, f3, rdn # perform operation
fmul.s f13, f10, f3, rmm # perform operation
fmul.s f13, f10, f3, rne # perform operation
fmul.s f13, f10, f3, rtz # perform operation
fmul.s f13, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmul.s f15, f19, f16, dyn # perform operation
fmul.s f15, f19, f16, rdn # perform operation
fmul.s f15, f19, f16, rmm # perform operation
fmul.s f15, f19, f16, rne # perform operation
fmul.s f15, f19, f16, rtz # perform operation
fmul.s f15, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fmul.s f29, f6, f2, dyn # perform operation
fmul.s f29, f6, f2, rdn # perform operation
fmul.s f29, f6, f2, rmm # perform operation
fmul.s f29, f6, f2, rne # perform operation
fmul.s f29, f6, f2, rtz # perform operation
fmul.s f29, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fmul.s f2, f15, f19, dyn # perform operation
fmul.s f2, f15, f19, rdn # perform operation
fmul.s f2, f15, f19, rmm # perform operation
fmul.s f2, f15, f19, rne # perform operation
fmul.s f2, f15, f19, rtz # perform operation
fmul.s f2, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fmul.s f23, f19, f29, dyn # perform operation
fmul.s f23, f19, f29, rdn # perform operation
fmul.s f23, f19, f29, rmm # perform operation
fmul.s f23, f19, f29, rne # perform operation
fmul.s f23, f19, f29, rtz # perform operation
fmul.s f23, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fmul.s f9, f12, f17, dyn # perform operation
fmul.s f9, f12, f17, rdn # perform operation
fmul.s f9, f12, f17, rmm # perform operation
fmul.s f9, f12, f17, rne # perform operation
fmul.s f9, f12, f17, rtz # perform operation
fmul.s f9, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmul.s f12, f17, f21, dyn # perform operation
fmul.s f12, f17, f21, rdn # perform operation
fmul.s f12, f17, f21, rmm # perform operation
fmul.s f12, f17, f21, rne # perform operation
fmul.s f12, f17, f21, rtz # perform operation
fmul.s f12, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fmul.s f3, f11, f21, dyn # perform operation
fmul.s f3, f11, f21, rdn # perform operation
fmul.s f3, f11, f21, rmm # perform operation
fmul.s f3, f11, f21, rne # perform operation
fmul.s f3, f11, f21, rtz # perform operation
fmul.s f3, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f13, f5, f16, dyn # perform operation
fmul.s f13, f5, f16, rdn # perform operation
fmul.s f13, f5, f16, rmm # perform operation
fmul.s f13, f5, f16, rne # perform operation
fmul.s f13, f5, f16, rtz # perform operation
fmul.s f13, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fmul.s f23, f1, f29, dyn # perform operation
fmul.s f23, f1, f29, rdn # perform operation
fmul.s f23, f1, f29, rmm # perform operation
fmul.s f23, f1, f29, rne # perform operation
fmul.s f23, f1, f29, rtz # perform operation
fmul.s f23, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fmul.s f3, f8, f2, dyn # perform operation
fmul.s f3, f8, f2, rdn # perform operation
fmul.s f3, f8, f2, rmm # perform operation
fmul.s f3, f8, f2, rne # perform operation
fmul.s f3, f8, f2, rtz # perform operation
fmul.s f3, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fmul.s f28, f27, f3, dyn # perform operation
fmul.s f28, f27, f3, rdn # perform operation
fmul.s f28, f27, f3, rmm # perform operation
fmul.s f28, f27, f3, rne # perform operation
fmul.s f28, f27, f3, rtz # perform operation
fmul.s f28, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fmul.s f30, f23, f2, dyn # perform operation
fmul.s f30, f23, f2, rdn # perform operation
fmul.s f30, f23, f2, rmm # perform operation
fmul.s f30, f23, f2, rne # perform operation
fmul.s f30, f23, f2, rtz # perform operation
fmul.s f30, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fmul.s f2, f28, f18, dyn # perform operation
fmul.s f2, f28, f18, rdn # perform operation
fmul.s f2, f28, f18, rmm # perform operation
fmul.s f2, f28, f18, rne # perform operation
fmul.s f2, f28, f18, rtz # perform operation
fmul.s f2, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f25, f18, f20, dyn # perform operation
fmul.s f25, f18, f20, rdn # perform operation
fmul.s f25, f18, f20, rmm # perform operation
fmul.s f25, f18, f20, rne # perform operation
fmul.s f25, f18, f20, rtz # perform operation
fmul.s f25, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fmul.s f10, f28, f1, dyn # perform operation
fmul.s f10, f28, f1, rdn # perform operation
fmul.s f10, f28, f1, rmm # perform operation
fmul.s f10, f28, f1, rne # perform operation
fmul.s f10, f28, f1, rtz # perform operation
fmul.s f10, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fmul.s f12, f28, f16, dyn # perform operation
fmul.s f12, f28, f16, rdn # perform operation
fmul.s f12, f28, f16, rmm # perform operation
fmul.s f12, f28, f16, rne # perform operation
fmul.s f12, f28, f16, rtz # perform operation
fmul.s f12, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fmul.s f20, f26, f24, dyn # perform operation
fmul.s f20, f26, f24, rdn # perform operation
fmul.s f20, f26, f24, rmm # perform operation
fmul.s f20, f26, f24, rne # perform operation
fmul.s f20, f26, f24, rtz # perform operation
fmul.s f20, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fmul.s f12, f13, f27, dyn # perform operation
fmul.s f12, f13, f27, rdn # perform operation
fmul.s f12, f13, f27, rmm # perform operation
fmul.s f12, f13, f27, rne # perform operation
fmul.s f12, f13, f27, rtz # perform operation
fmul.s f12, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f15, f9, f28, dyn # perform operation
fmul.s f15, f9, f28, rdn # perform operation
fmul.s f15, f9, f28, rmm # perform operation
fmul.s f15, f9, f28, rne # perform operation
fmul.s f15, f9, f28, rtz # perform operation
fmul.s f15, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmul.s f1, f3, f24, dyn # perform operation
fmul.s f1, f3, f24, rdn # perform operation
fmul.s f1, f3, f24, rmm # perform operation
fmul.s f1, f3, f24, rne # perform operation
fmul.s f1, f3, f24, rtz # perform operation
fmul.s f1, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fmul.s f9, f29, f25, dyn # perform operation
fmul.s f9, f29, f25, rdn # perform operation
fmul.s f9, f29, f25, rmm # perform operation
fmul.s f9, f29, f25, rne # perform operation
fmul.s f9, f29, f25, rtz # perform operation
fmul.s f9, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fmul.s f14, f28, f1, dyn # perform operation
fmul.s f14, f28, f1, rdn # perform operation
fmul.s f14, f28, f1, rmm # perform operation
fmul.s f14, f28, f1, rne # perform operation
fmul.s f14, f28, f1, rtz # perform operation
fmul.s f14, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fmul.s f7, f6, f30, dyn # perform operation
fmul.s f7, f6, f30, rdn # perform operation
fmul.s f7, f6, f30, rmm # perform operation
fmul.s f7, f6, f30, rne # perform operation
fmul.s f7, f6, f30, rtz # perform operation
fmul.s f7, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f24, f30, f10, dyn # perform operation
fmul.s f24, f30, f10, rdn # perform operation
fmul.s f24, f30, f10, rmm # perform operation
fmul.s f24, f30, f10, rne # perform operation
fmul.s f24, f30, f10, rtz # perform operation
fmul.s f24, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fmul.s f30, f31, f16, dyn # perform operation
fmul.s f30, f31, f16, rdn # perform operation
fmul.s f30, f31, f16, rmm # perform operation
fmul.s f30, f31, f16, rne # perform operation
fmul.s f30, f31, f16, rtz # perform operation
fmul.s f30, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fmul.s f20, f6, f12, dyn # perform operation
fmul.s f20, f6, f12, rdn # perform operation
fmul.s f20, f6, f12, rmm # perform operation
fmul.s f20, f6, f12, rne # perform operation
fmul.s f20, f6, f12, rtz # perform operation
fmul.s f20, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fmul.s f9, f23, f13, dyn # perform operation
fmul.s f9, f23, f13, rdn # perform operation
fmul.s f9, f23, f13, rmm # perform operation
fmul.s f9, f23, f13, rne # perform operation
fmul.s f9, f23, f13, rtz # perform operation
fmul.s f9, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fmul.s f3, f19, f2, dyn # perform operation
fmul.s f3, f19, f2, rdn # perform operation
fmul.s f3, f19, f2, rmm # perform operation
fmul.s f3, f19, f2, rne # perform operation
fmul.s f3, f19, f2, rtz # perform operation
fmul.s f3, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f1, f11, f31, dyn # perform operation
fmul.s f1, f11, f31, rdn # perform operation
fmul.s f1, f11, f31, rmm # perform operation
fmul.s f1, f11, f31, rne # perform operation
fmul.s f1, f11, f31, rtz # perform operation
fmul.s f1, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fmul.s f2, f13, f8, dyn # perform operation
fmul.s f2, f13, f8, rdn # perform operation
fmul.s f2, f13, f8, rmm # perform operation
fmul.s f2, f13, f8, rne # perform operation
fmul.s f2, f13, f8, rtz # perform operation
fmul.s f2, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fmul.s f2, f16, f12, dyn # perform operation
fmul.s f2, f16, f12, rdn # perform operation
fmul.s f2, f16, f12, rmm # perform operation
fmul.s f2, f16, f12, rne # perform operation
fmul.s f2, f16, f12, rtz # perform operation
fmul.s f2, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fmul.s f1, f14, f23, dyn # perform operation
fmul.s f1, f14, f23, rdn # perform operation
fmul.s f1, f14, f23, rmm # perform operation
fmul.s f1, f14, f23, rne # perform operation
fmul.s f1, f14, f23, rtz # perform operation
fmul.s f1, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fmul.s f15, f28, f9, dyn # perform operation
fmul.s f15, f28, f9, rdn # perform operation
fmul.s f15, f28, f9, rmm # perform operation
fmul.s f15, f28, f9, rne # perform operation
fmul.s f15, f28, f9, rtz # perform operation
fmul.s f15, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f15, f20, f16, dyn # perform operation
fmul.s f15, f20, f16, rdn # perform operation
fmul.s f15, f20, f16, rmm # perform operation
fmul.s f15, f20, f16, rne # perform operation
fmul.s f15, f20, f16, rtz # perform operation
fmul.s f15, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fmul.s f5, f17, f15, dyn # perform operation
fmul.s f5, f17, f15, rdn # perform operation
fmul.s f5, f17, f15, rmm # perform operation
fmul.s f5, f17, f15, rne # perform operation
fmul.s f5, f17, f15, rtz # perform operation
fmul.s f5, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fmul.s f16, f28, f31, dyn # perform operation
fmul.s f16, f28, f31, rdn # perform operation
fmul.s f16, f28, f31, rmm # perform operation
fmul.s f16, f28, f31, rne # perform operation
fmul.s f16, f28, f31, rtz # perform operation
fmul.s f16, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmul.s f16, f23, f9, dyn # perform operation
fmul.s f16, f23, f9, rdn # perform operation
fmul.s f16, f23, f9, rmm # perform operation
fmul.s f16, f23, f9, rne # perform operation
fmul.s f16, f23, f9, rtz # perform operation
fmul.s f16, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fmul.s f25, f19, f28, dyn # perform operation
fmul.s f25, f19, f28, rdn # perform operation
fmul.s f25, f19, f28, rmm # perform operation
fmul.s f25, f19, f28, rne # perform operation
fmul.s f25, f19, f28, rtz # perform operation
fmul.s f25, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fmul.s f17, f18, f15, dyn # perform operation
fmul.s f17, f18, f15, rdn # perform operation
fmul.s f17, f18, f15, rmm # perform operation
fmul.s f17, f18, f15, rne # perform operation
fmul.s f17, f18, f15, rtz # perform operation
fmul.s f17, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f5, f13, f17, dyn # perform operation
fmul.s f5, f13, f17, rdn # perform operation
fmul.s f5, f13, f17, rmm # perform operation
fmul.s f5, f13, f17, rne # perform operation
fmul.s f5, f13, f17, rtz # perform operation
fmul.s f5, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fmul.s f6, f10, f28, dyn # perform operation
fmul.s f6, f10, f28, rdn # perform operation
fmul.s f6, f10, f28, rmm # perform operation
fmul.s f6, f10, f28, rne # perform operation
fmul.s f6, f10, f28, rtz # perform operation
fmul.s f6, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f22, f23, f26, dyn # perform operation
fmul.s f22, f23, f26, rdn # perform operation
fmul.s f22, f23, f26, rmm # perform operation
fmul.s f22, f23, f26, rne # perform operation
fmul.s f22, f23, f26, rtz # perform operation
fmul.s f22, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f17, f20, f13, dyn # perform operation
fmul.s f17, f20, f13, rdn # perform operation
fmul.s f17, f20, f13, rmm # perform operation
fmul.s f17, f20, f13, rne # perform operation
fmul.s f17, f20, f13, rtz # perform operation
fmul.s f17, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fmul.s f28, f15, f13, dyn # perform operation
fmul.s f28, f15, f13, rdn # perform operation
fmul.s f28, f15, f13, rmm # perform operation
fmul.s f28, f15, f13, rne # perform operation
fmul.s f28, f15, f13, rtz # perform operation
fmul.s f28, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fmul.s f2, f11, f24, dyn # perform operation
fmul.s f2, f11, f24, rdn # perform operation
fmul.s f2, f11, f24, rmm # perform operation
fmul.s f2, f11, f24, rne # perform operation
fmul.s f2, f11, f24, rtz # perform operation
fmul.s f2, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fmul.s f8, f7, f24, dyn # perform operation
fmul.s f8, f7, f24, rdn # perform operation
fmul.s f8, f7, f24, rmm # perform operation
fmul.s f8, f7, f24, rne # perform operation
fmul.s f8, f7, f24, rtz # perform operation
fmul.s f8, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f31, f23, f19, dyn # perform operation
fmul.s f31, f23, f19, rdn # perform operation
fmul.s f31, f23, f19, rmm # perform operation
fmul.s f31, f23, f19, rne # perform operation
fmul.s f31, f23, f19, rtz # perform operation
fmul.s f31, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fmul.s f29, f9, f12, dyn # perform operation
fmul.s f29, f9, f12, rdn # perform operation
fmul.s f29, f9, f12, rmm # perform operation
fmul.s f29, f9, f12, rne # perform operation
fmul.s f29, f9, f12, rtz # perform operation
fmul.s f29, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fmul.s f29, f31, f1, dyn # perform operation
fmul.s f29, f31, f1, rdn # perform operation
fmul.s f29, f31, f1, rmm # perform operation
fmul.s f29, f31, f1, rne # perform operation
fmul.s f29, f31, f1, rtz # perform operation
fmul.s f29, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fmul.s f28, f16, f30, dyn # perform operation
fmul.s f28, f16, f30, rdn # perform operation
fmul.s f28, f16, f30, rmm # perform operation
fmul.s f28, f16, f30, rne # perform operation
fmul.s f28, f16, f30, rtz # perform operation
fmul.s f28, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmul.s f10, f11, f19, dyn # perform operation
fmul.s f10, f11, f19, rdn # perform operation
fmul.s f10, f11, f19, rmm # perform operation
fmul.s f10, f11, f19, rne # perform operation
fmul.s f10, f11, f19, rtz # perform operation
fmul.s f10, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fmul.s f10, f25, f17, dyn # perform operation
fmul.s f10, f25, f17, rdn # perform operation
fmul.s f10, f25, f17, rmm # perform operation
fmul.s f10, f25, f17, rne # perform operation
fmul.s f10, f25, f17, rtz # perform operation
fmul.s f10, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
fmul.s f20, f1, f26, dyn # perform operation
fmul.s f20, f1, f26, rdn # perform operation
fmul.s f20, f1, f26, rmm # perform operation
fmul.s f20, f1, f26, rne # perform operation
fmul.s f20, f1, f26, rtz # perform operation
fmul.s f20, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fmul.s f18, f8, f13, dyn # perform operation
fmul.s f18, f8, f13, rdn # perform operation
fmul.s f18, f8, f13, rmm # perform operation
fmul.s f18, f8, f13, rne # perform operation
fmul.s f18, f8, f13, rtz # perform operation
fmul.s f18, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f8, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fmul.s f3, f23, f9, dyn # perform operation
fmul.s f3, f23, f9, rdn # perform operation
fmul.s f3, f23, f9, rmm # perform operation
fmul.s f3, f23, f9, rne # perform operation
fmul.s f3, f23, f9, rtz # perform operation
fmul.s f3, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
fmul.s f29, f14, f11, dyn # perform operation
fmul.s f29, f14, f11, rdn # perform operation
fmul.s f29, f14, f11, rmm # perform operation
fmul.s f29, f14, f11, rne # perform operation
fmul.s f29, f14, f11, rtz # perform operation
fmul.s f29, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fmul.s f8, f30, f15, dyn # perform operation
fmul.s f8, f30, f15, rdn # perform operation
fmul.s f8, f30, f15, rmm # perform operation
fmul.s f8, f30, f15, rne # perform operation
fmul.s f8, f30, f15, rtz # perform operation
fmul.s f8, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f16, f12, f20, dyn # perform operation
fmul.s f16, f12, f20, rdn # perform operation
fmul.s f16, f12, f20, rmm # perform operation
fmul.s f16, f12, f20, rne # perform operation
fmul.s f16, f12, f20, rtz # perform operation
fmul.s f16, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.s f28, f19, f13, dyn # perform operation
fmul.s f28, f19, f13, rdn # perform operation
fmul.s f28, f19, f13, rmm # perform operation
fmul.s f28, f19, f13, rne # perform operation
fmul.s f28, f19, f13, rtz # perform operation
fmul.s f28, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmul.s f28, f26, f25, dyn # perform operation
fmul.s f28, f26, f25, rdn # perform operation
fmul.s f28, f26, f25, rmm # perform operation
fmul.s f28, f26, f25, rne # perform operation
fmul.s f28, f26, f25, rtz # perform operation
fmul.s f28, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fmul.s f23, f22, f18, dyn # perform operation
fmul.s f23, f22, f18, rdn # perform operation
fmul.s f23, f22, f18, rmm # perform operation
fmul.s f23, f22, f18, rne # perform operation
fmul.s f23, f22, f18, rtz # perform operation
fmul.s f23, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmul.s f22, f17, f20, dyn # perform operation
fmul.s f22, f17, f20, rdn # perform operation
fmul.s f22, f17, f20, rmm # perform operation
fmul.s f22, f17, f20, rne # perform operation
fmul.s f22, f17, f20, rtz # perform operation
fmul.s f22, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fmul.s f24, f27, f30, dyn # perform operation
fmul.s f24, f27, f30, rdn # perform operation
fmul.s f24, f27, f30, rmm # perform operation
fmul.s f24, f27, f30, rne # perform operation
fmul.s f24, f27, f30, rtz # perform operation
fmul.s f24, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fmul.s f21, f13, f19, dyn # perform operation
fmul.s f21, f13, f19, rdn # perform operation
fmul.s f21, f13, f19, rmm # perform operation
fmul.s f21, f13, f19, rne # perform operation
fmul.s f21, f13, f19, rtz # perform operation
fmul.s f21, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fmul.s f15, f17, f22, dyn # perform operation
fmul.s f15, f17, f22, rdn # perform operation
fmul.s f15, f17, f22, rmm # perform operation
fmul.s f15, f17, f22, rne # perform operation
fmul.s f15, f17, f22, rtz # perform operation
fmul.s f15, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fmul.s f9, f10, f6, dyn # perform operation
fmul.s f9, f10, f6, rdn # perform operation
fmul.s f9, f10, f6, rmm # perform operation
fmul.s f9, f10, f6, rne # perform operation
fmul.s f9, f10, f6, rtz # perform operation
fmul.s f9, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fmul.s f20, f19, f29, dyn # perform operation
fmul.s f20, f19, f29, rdn # perform operation
fmul.s f20, f19, f29, rmm # perform operation
fmul.s f20, f19, f29, rne # perform operation
fmul.s f20, f19, f29, rtz # perform operation
fmul.s f20, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmul.s f6, f25, f18, dyn # perform operation
fmul.s f6, f25, f18, rdn # perform operation
fmul.s f6, f25, f18, rmm # perform operation
fmul.s f6, f25, f18, rne # perform operation
fmul.s f6, f25, f18, rtz # perform operation
fmul.s f6, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f18, f17, f19, dyn # perform operation
fmul.s f18, f17, f19, rdn # perform operation
fmul.s f18, f17, f19, rmm # perform operation
fmul.s f18, f17, f19, rne # perform operation
fmul.s f18, f17, f19, rtz # perform operation
fmul.s f18, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fmul.s f13, f29, f30, dyn # perform operation
fmul.s f13, f29, f30, rdn # perform operation
fmul.s f13, f29, f30, rmm # perform operation
fmul.s f13, f29, f30, rne # perform operation
fmul.s f13, f29, f30, rtz # perform operation
fmul.s f13, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fmul.s f8, f17, f24, dyn # perform operation
fmul.s f8, f17, f24, rdn # perform operation
fmul.s f8, f17, f24, rmm # perform operation
fmul.s f8, f17, f24, rne # perform operation
fmul.s f8, f17, f24, rtz # perform operation
fmul.s f8, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fmul.s f25, f27, f13, dyn # perform operation
fmul.s f25, f27, f13, rdn # perform operation
fmul.s f25, f27, f13, rmm # perform operation
fmul.s f25, f27, f13, rne # perform operation
fmul.s f25, f27, f13, rtz # perform operation
fmul.s f25, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f12, f8, f20, dyn # perform operation
fmul.s f12, f8, f20, rdn # perform operation
fmul.s f12, f8, f20, rmm # perform operation
fmul.s f12, f8, f20, rne # perform operation
fmul.s f12, f8, f20, rtz # perform operation
fmul.s f12, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fmul.s f3, f26, f31, dyn # perform operation
fmul.s f3, f26, f31, rdn # perform operation
fmul.s f3, f26, f31, rmm # perform operation
fmul.s f3, f26, f31, rne # perform operation
fmul.s f3, f26, f31, rtz # perform operation
fmul.s f3, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fmul.s f24, f8, f9, dyn # perform operation
fmul.s f24, f8, f9, rdn # perform operation
fmul.s f24, f8, f9, rmm # perform operation
fmul.s f24, f8, f9, rne # perform operation
fmul.s f24, f8, f9, rtz # perform operation
fmul.s f24, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmul.s f25, f22, f10, dyn # perform operation
fmul.s f25, f22, f10, rdn # perform operation
fmul.s f25, f22, f10, rmm # perform operation
fmul.s f25, f22, f10, rne # perform operation
fmul.s f25, f22, f10, rtz # perform operation
fmul.s f25, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fmul.s f29, f3, f14, dyn # perform operation
fmul.s f29, f3, f14, rdn # perform operation
fmul.s f29, f3, f14, rmm # perform operation
fmul.s f29, f3, f14, rne # perform operation
fmul.s f29, f3, f14, rtz # perform operation
fmul.s f29, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmul.s f18, f1, f15, dyn # perform operation
fmul.s f18, f1, f15, rdn # perform operation
fmul.s f18, f1, f15, rmm # perform operation
fmul.s f18, f1, f15, rne # perform operation
fmul.s f18, f1, f15, rtz # perform operation
fmul.s f18, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f5, f9, f22, dyn # perform operation
fmul.s f5, f9, f22, rdn # perform operation
fmul.s f5, f9, f22, rmm # perform operation
fmul.s f5, f9, f22, rne # perform operation
fmul.s f5, f9, f22, rtz # perform operation
fmul.s f5, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fmul.s f9, f23, f14, dyn # perform operation
fmul.s f9, f23, f14, rdn # perform operation
fmul.s f9, f23, f14, rmm # perform operation
fmul.s f9, f23, f14, rne # perform operation
fmul.s f9, f23, f14, rtz # perform operation
fmul.s f9, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
fmul.s f21, f16, f1, dyn # perform operation
fmul.s f21, f16, f1, rdn # perform operation
fmul.s f21, f16, f1, rmm # perform operation
fmul.s f21, f16, f1, rne # perform operation
fmul.s f21, f16, f1, rtz # perform operation
fmul.s f21, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f5, f8, f21, dyn # perform operation
fmul.s f5, f8, f21, rdn # perform operation
fmul.s f5, f8, f21, rmm # perform operation
fmul.s f5, f8, f21, rne # perform operation
fmul.s f5, f8, f21, rtz # perform operation
fmul.s f5, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fmul.s f29, f30, f31, dyn # perform operation
fmul.s f29, f30, f31, rdn # perform operation
fmul.s f29, f30, f31, rmm # perform operation
fmul.s f29, f30, f31, rne # perform operation
fmul.s f29, f30, f31, rtz # perform operation
fmul.s f29, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fmul.s f9, f21, f7, dyn # perform operation
fmul.s f9, f21, f7, rdn # perform operation
fmul.s f9, f21, f7, rmm # perform operation
fmul.s f9, f21, f7, rne # perform operation
fmul.s f9, f21, f7, rtz # perform operation
fmul.s f9, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fmul.s f2, f3, f14, dyn # perform operation
fmul.s f2, f3, f14, rdn # perform operation
fmul.s f2, f3, f14, rmm # perform operation
fmul.s f2, f3, f14, rne # perform operation
fmul.s f2, f3, f14, rtz # perform operation
fmul.s f2, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmul.s f31, f6, f17, dyn # perform operation
fmul.s f31, f6, f17, rdn # perform operation
fmul.s f31, f6, f17, rmm # perform operation
fmul.s f31, f6, f17, rne # perform operation
fmul.s f31, f6, f17, rtz # perform operation
fmul.s f31, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmul.s f13, f1, f18, dyn # perform operation
fmul.s f13, f1, f18, rdn # perform operation
fmul.s f13, f1, f18, rmm # perform operation
fmul.s f13, f1, f18, rne # perform operation
fmul.s f13, f1, f18, rtz # perform operation
fmul.s f13, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fmul.s f19, f20, f31, dyn # perform operation
fmul.s f19, f20, f31, rdn # perform operation
fmul.s f19, f20, f31, rmm # perform operation
fmul.s f19, f20, f31, rne # perform operation
fmul.s f19, f20, f31, rtz # perform operation
fmul.s f19, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f22, f1, f19, dyn # perform operation
fmul.s f22, f1, f19, rdn # perform operation
fmul.s f22, f1, f19, rmm # perform operation
fmul.s f22, f1, f19, rne # perform operation
fmul.s f22, f1, f19, rtz # perform operation
fmul.s f22, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fmul.s f9, f25, f14, dyn # perform operation
fmul.s f9, f25, f14, rdn # perform operation
fmul.s f9, f25, f14, rmm # perform operation
fmul.s f9, f25, f14, rne # perform operation
fmul.s f9, f25, f14, rtz # perform operation
fmul.s f9, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fmul.s f22, f1, f2, dyn # perform operation
fmul.s f22, f1, f2, rdn # perform operation
fmul.s f22, f1, f2, rmm # perform operation
fmul.s f22, f1, f2, rne # perform operation
fmul.s f22, f1, f2, rtz # perform operation
fmul.s f22, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f19, f22, f11, dyn # perform operation
fmul.s f19, f22, f11, rdn # perform operation
fmul.s f19, f22, f11, rmm # perform operation
fmul.s f19, f22, f11, rne # perform operation
fmul.s f19, f22, f11, rtz # perform operation
fmul.s f19, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmul.s f26, f28, f13, dyn # perform operation
fmul.s f26, f28, f13, rdn # perform operation
fmul.s f26, f28, f13, rmm # perform operation
fmul.s f26, f28, f13, rne # perform operation
fmul.s f26, f28, f13, rtz # perform operation
fmul.s f26, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fmul.s f14, f22, f7, dyn # perform operation
fmul.s f14, f22, f7, rdn # perform operation
fmul.s f14, f22, f7, rmm # perform operation
fmul.s f14, f22, f7, rne # perform operation
fmul.s f14, f22, f7, rtz # perform operation
fmul.s f14, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fmul.s f13, f21, f29, dyn # perform operation
fmul.s f13, f21, f29, rdn # perform operation
fmul.s f13, f21, f29, rmm # perform operation
fmul.s f13, f21, f29, rne # perform operation
fmul.s f13, f21, f29, rtz # perform operation
fmul.s f13, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fmul.s f21, f28, f20, dyn # perform operation
fmul.s f21, f28, f20, rdn # perform operation
fmul.s f21, f28, f20, rmm # perform operation
fmul.s f21, f28, f20, rne # perform operation
fmul.s f21, f28, f20, rtz # perform operation
fmul.s f21, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fmul.s f25, f29, f2, dyn # perform operation
fmul.s f25, f29, f2, rdn # perform operation
fmul.s f25, f29, f2, rmm # perform operation
fmul.s f25, f29, f2, rne # perform operation
fmul.s f25, f29, f2, rtz # perform operation
fmul.s f25, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fmul.s f29, f8, f3, dyn # perform operation
fmul.s f29, f8, f3, rdn # perform operation
fmul.s f29, f8, f3, rmm # perform operation
fmul.s f29, f8, f3, rne # perform operation
fmul.s f29, f8, f3, rtz # perform operation
fmul.s f29, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f24, f29, f13, dyn # perform operation
fmul.s f24, f29, f13, rdn # perform operation
fmul.s f24, f29, f13, rmm # perform operation
fmul.s f24, f29, f13, rne # perform operation
fmul.s f24, f29, f13, rtz # perform operation
fmul.s f24, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fmul.s f16, f30, f11, dyn # perform operation
fmul.s f16, f30, f11, rdn # perform operation
fmul.s f16, f30, f11, rmm # perform operation
fmul.s f16, f30, f11, rne # perform operation
fmul.s f16, f30, f11, rtz # perform operation
fmul.s f16, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fmul.s f12, f15, f26, dyn # perform operation
fmul.s f12, f15, f26, rdn # perform operation
fmul.s f12, f15, f26, rmm # perform operation
fmul.s f12, f15, f26, rne # perform operation
fmul.s f12, f15, f26, rtz # perform operation
fmul.s f12, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fmul.s f11, f20, f9, dyn # perform operation
fmul.s f11, f20, f9, rdn # perform operation
fmul.s f11, f20, f9, rmm # perform operation
fmul.s f11, f20, f9, rne # perform operation
fmul.s f11, f20, f9, rtz # perform operation
fmul.s f11, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fmul.s f1, f16, f24, dyn # perform operation
fmul.s f1, f16, f24, rdn # perform operation
fmul.s f1, f16, f24, rmm # perform operation
fmul.s f1, f16, f24, rne # perform operation
fmul.s f1, f16, f24, rtz # perform operation
fmul.s f1, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmul.s f27, f30, f24, dyn # perform operation
fmul.s f27, f30, f24, rdn # perform operation
fmul.s f27, f30, f24, rmm # perform operation
fmul.s f27, f30, f24, rne # perform operation
fmul.s f27, f30, f24, rtz # perform operation
fmul.s f27, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fmul.s f17, f16, f3, dyn # perform operation
fmul.s f17, f16, f3, rdn # perform operation
fmul.s f17, f16, f3, rmm # perform operation
fmul.s f17, f16, f3, rne # perform operation
fmul.s f17, f16, f3, rtz # perform operation
fmul.s f17, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f12, f19, f17, dyn # perform operation
fmul.s f12, f19, f17, rdn # perform operation
fmul.s f12, f19, f17, rmm # perform operation
fmul.s f12, f19, f17, rne # perform operation
fmul.s f12, f19, f17, rtz # perform operation
fmul.s f12, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f11, f6, f1, dyn # perform operation
fmul.s f11, f6, f1, rdn # perform operation
fmul.s f11, f6, f1, rmm # perform operation
fmul.s f11, f6, f1, rne # perform operation
fmul.s f11, f6, f1, rtz # perform operation
fmul.s f11, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fmul.s f22, f29, f16, dyn # perform operation
fmul.s f22, f29, f16, rdn # perform operation
fmul.s f22, f29, f16, rmm # perform operation
fmul.s f22, f29, f16, rne # perform operation
fmul.s f22, f29, f16, rtz # perform operation
fmul.s f22, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fmul.s f22, f2, f7, dyn # perform operation
fmul.s f22, f2, f7, rdn # perform operation
fmul.s f22, f2, f7, rmm # perform operation
fmul.s f22, f2, f7, rne # perform operation
fmul.s f22, f2, f7, rtz # perform operation
fmul.s f22, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmul.s f26, f24, f20, dyn # perform operation
fmul.s f26, f24, f20, rdn # perform operation
fmul.s f26, f24, f20, rmm # perform operation
fmul.s f26, f24, f20, rne # perform operation
fmul.s f26, f24, f20, rtz # perform operation
fmul.s f26, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fmul.s f11, f7, f1, dyn # perform operation
fmul.s f11, f7, f1, rdn # perform operation
fmul.s f11, f7, f1, rmm # perform operation
fmul.s f11, f7, f1, rne # perform operation
fmul.s f11, f7, f1, rtz # perform operation
fmul.s f11, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fmul.s f25, f26, f19, dyn # perform operation
fmul.s f25, f26, f19, rdn # perform operation
fmul.s f25, f26, f19, rmm # perform operation
fmul.s f25, f26, f19, rne # perform operation
fmul.s f25, f26, f19, rtz # perform operation
fmul.s f25, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fmul.s f15, f14, f7, dyn # perform operation
fmul.s f15, f14, f7, rdn # perform operation
fmul.s f15, f14, f7, rmm # perform operation
fmul.s f15, f14, f7, rne # perform operation
fmul.s f15, f14, f7, rtz # perform operation
fmul.s f15, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmul.s f23, f5, f22, dyn # perform operation
fmul.s f23, f5, f22, rdn # perform operation
fmul.s f23, f5, f22, rmm # perform operation
fmul.s f23, f5, f22, rne # perform operation
fmul.s f23, f5, f22, rtz # perform operation
fmul.s f23, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmul.s f21, f28, f7, dyn # perform operation
fmul.s f21, f28, f7, rdn # perform operation
fmul.s f21, f28, f7, rmm # perform operation
fmul.s f21, f28, f7, rne # perform operation
fmul.s f21, f28, f7, rtz # perform operation
fmul.s f21, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fmul.s f11, f2, f22, dyn # perform operation
fmul.s f11, f2, f22, rdn # perform operation
fmul.s f11, f2, f22, rmm # perform operation
fmul.s f11, f2, f22, rne # perform operation
fmul.s f11, f2, f22, rtz # perform operation
fmul.s f11, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fmul.s f18, f17, f30, dyn # perform operation
fmul.s f18, f17, f30, rdn # perform operation
fmul.s f18, f17, f30, rmm # perform operation
fmul.s f18, f17, f30, rne # perform operation
fmul.s f18, f17, f30, rtz # perform operation
fmul.s f18, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmul.s f28, f15, f24, dyn # perform operation
fmul.s f28, f15, f24, rdn # perform operation
fmul.s f28, f15, f24, rmm # perform operation
fmul.s f28, f15, f24, rne # perform operation
fmul.s f28, f15, f24, rtz # perform operation
fmul.s f28, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmul.s f18, f12, f27, dyn # perform operation
fmul.s f18, f12, f27, rdn # perform operation
fmul.s f18, f12, f27, rmm # perform operation
fmul.s f18, f12, f27, rne # perform operation
fmul.s f18, f12, f27, rtz # perform operation
fmul.s f18, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fmul.s f24, f14, f13, dyn # perform operation
fmul.s f24, f14, f13, rdn # perform operation
fmul.s f24, f14, f13, rmm # perform operation
fmul.s f24, f14, f13, rne # perform operation
fmul.s f24, f14, f13, rtz # perform operation
fmul.s f24, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fmul.s f22, f14, f29, dyn # perform operation
fmul.s f22, f14, f29, rdn # perform operation
fmul.s f22, f14, f29, rmm # perform operation
fmul.s f22, f14, f29, rne # perform operation
fmul.s f22, f14, f29, rtz # perform operation
fmul.s f22, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f26, f23, f24, dyn # perform operation
fmul.s f26, f23, f24, rdn # perform operation
fmul.s f26, f23, f24, rmm # perform operation
fmul.s f26, f23, f24, rne # perform operation
fmul.s f26, f23, f24, rtz # perform operation
fmul.s f26, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fmul.s f12, f25, f3, dyn # perform operation
fmul.s f12, f25, f3, rdn # perform operation
fmul.s f12, f25, f3, rmm # perform operation
fmul.s f12, f25, f3, rne # perform operation
fmul.s f12, f25, f3, rtz # perform operation
fmul.s f12, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fmul.s f28, f10, f24, dyn # perform operation
fmul.s f28, f10, f24, rdn # perform operation
fmul.s f28, f10, f24, rmm # perform operation
fmul.s f28, f10, f24, rne # perform operation
fmul.s f28, f10, f24, rtz # perform operation
fmul.s f28, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fmul.s f6, f12, f25, dyn # perform operation
fmul.s f6, f12, f25, rdn # perform operation
fmul.s f6, f12, f25, rmm # perform operation
fmul.s f6, f12, f25, rne # perform operation
fmul.s f6, f12, f25, rtz # perform operation
fmul.s f6, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmul.s f3, f16, f23, dyn # perform operation
fmul.s f3, f16, f23, rdn # perform operation
fmul.s f3, f16, f23, rmm # perform operation
fmul.s f3, f16, f23, rne # perform operation
fmul.s f3, f16, f23, rtz # perform operation
fmul.s f3, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fmul.s f9, f19, f7, dyn # perform operation
fmul.s f9, f19, f7, rdn # perform operation
fmul.s f9, f19, f7, rmm # perform operation
fmul.s f9, f19, f7, rne # perform operation
fmul.s f9, f19, f7, rtz # perform operation
fmul.s f9, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fmul.s f22, f6, f7, dyn # perform operation
fmul.s f22, f6, f7, rdn # perform operation
fmul.s f22, f6, f7, rmm # perform operation
fmul.s f22, f6, f7, rne # perform operation
fmul.s f22, f6, f7, rtz # perform operation
fmul.s f22, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fmul.s f29, f23, f12, dyn # perform operation
fmul.s f29, f23, f12, rdn # perform operation
fmul.s f29, f23, f12, rmm # perform operation
fmul.s f29, f23, f12, rne # perform operation
fmul.s f29, f23, f12, rtz # perform operation
fmul.s f29, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f15, f21, f17, dyn # perform operation
fmul.s f15, f21, f17, rdn # perform operation
fmul.s f15, f21, f17, rmm # perform operation
fmul.s f15, f21, f17, rne # perform operation
fmul.s f15, f21, f17, rtz # perform operation
fmul.s f15, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f2, f16, f28, dyn # perform operation
fmul.s f2, f16, f28, rdn # perform operation
fmul.s f2, f16, f28, rmm # perform operation
fmul.s f2, f16, f28, rne # perform operation
fmul.s f2, f16, f28, rtz # perform operation
fmul.s f2, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fmul.s f17, f5, f10, dyn # perform operation
fmul.s f17, f5, f10, rdn # perform operation
fmul.s f17, f5, f10, rmm # perform operation
fmul.s f17, f5, f10, rne # perform operation
fmul.s f17, f5, f10, rtz # perform operation
fmul.s f17, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fmul.s f15, f31, f14, dyn # perform operation
fmul.s f15, f31, f14, rdn # perform operation
fmul.s f15, f31, f14, rmm # perform operation
fmul.s f15, f31, f14, rne # perform operation
fmul.s f15, f31, f14, rtz # perform operation
fmul.s f15, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fmul.s f22, f26, f18, dyn # perform operation
fmul.s f22, f26, f18, rdn # perform operation
fmul.s f22, f26, f18, rmm # perform operation
fmul.s f22, f26, f18, rne # perform operation
fmul.s f22, f26, f18, rtz # perform operation
fmul.s f22, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f10, f12, f1, dyn # perform operation
fmul.s f10, f12, f1, rdn # perform operation
fmul.s f10, f12, f1, rmm # perform operation
fmul.s f10, f12, f1, rne # perform operation
fmul.s f10, f12, f1, rtz # perform operation
fmul.s f10, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fmul.s f29, f9, f30, dyn # perform operation
fmul.s f29, f9, f30, rdn # perform operation
fmul.s f29, f9, f30, rmm # perform operation
fmul.s f29, f9, f30, rne # perform operation
fmul.s f29, f9, f30, rtz # perform operation
fmul.s f29, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fmul.s f23, f29, f30, dyn # perform operation
fmul.s f23, f29, f30, rdn # perform operation
fmul.s f23, f29, f30, rmm # perform operation
fmul.s f23, f29, f30, rne # perform operation
fmul.s f23, f29, f30, rtz # perform operation
fmul.s f23, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fmul.s f19, f30, f3, dyn # perform operation
fmul.s f19, f30, f3, rdn # perform operation
fmul.s f19, f30, f3, rmm # perform operation
fmul.s f19, f30, f3, rne # perform operation
fmul.s f19, f30, f3, rtz # perform operation
fmul.s f19, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fmul.s f25, f31, f7, dyn # perform operation
fmul.s f25, f31, f7, rdn # perform operation
fmul.s f25, f31, f7, rmm # perform operation
fmul.s f25, f31, f7, rne # perform operation
fmul.s f25, f31, f7, rtz # perform operation
fmul.s f25, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
fmul.s f22, f14, f28, dyn # perform operation
fmul.s f22, f14, f28, rdn # perform operation
fmul.s f22, f14, f28, rmm # perform operation
fmul.s f22, f14, f28, rne # perform operation
fmul.s f22, f14, f28, rtz # perform operation
fmul.s f22, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fmul.s f9, f25, f21, dyn # perform operation
fmul.s f9, f25, f21, rdn # perform operation
fmul.s f9, f25, f21, rmm # perform operation
fmul.s f9, f25, f21, rne # perform operation
fmul.s f9, f25, f21, rtz # perform operation
fmul.s f9, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fmul.s f9, f10, f24, dyn # perform operation
fmul.s f9, f10, f24, rdn # perform operation
fmul.s f9, f10, f24, rmm # perform operation
fmul.s f9, f10, f24, rne # perform operation
fmul.s f9, f10, f24, rtz # perform operation
fmul.s f9, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmul.s f14, f12, f1, dyn # perform operation
fmul.s f14, f12, f1, rdn # perform operation
fmul.s f14, f12, f1, rmm # perform operation
fmul.s f14, f12, f1, rne # perform operation
fmul.s f14, f12, f1, rtz # perform operation
fmul.s f14, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmul.s f16, f15, f9, dyn # perform operation
fmul.s f16, f15, f9, rdn # perform operation
fmul.s f16, f15, f9, rmm # perform operation
fmul.s f16, f15, f9, rne # perform operation
fmul.s f16, f15, f9, rtz # perform operation
fmul.s f16, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fmul.s f5, f28, f13, dyn # perform operation
fmul.s f5, f28, f13, rdn # perform operation
fmul.s f5, f28, f13, rmm # perform operation
fmul.s f5, f28, f13, rne # perform operation
fmul.s f5, f28, f13, rtz # perform operation
fmul.s f5, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmul.s f22, f1, f20, dyn # perform operation
fmul.s f22, f1, f20, rdn # perform operation
fmul.s f22, f1, f20, rmm # perform operation
fmul.s f22, f1, f20, rne # perform operation
fmul.s f22, f1, f20, rtz # perform operation
fmul.s f22, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fmul.s f24, f17, f5, dyn # perform operation
fmul.s f24, f17, f5, rdn # perform operation
fmul.s f24, f17, f5, rmm # perform operation
fmul.s f24, f17, f5, rne # perform operation
fmul.s f24, f17, f5, rtz # perform operation
fmul.s f24, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f6, f21, f29, dyn # perform operation
fmul.s f6, f21, f29, rdn # perform operation
fmul.s f6, f21, f29, rmm # perform operation
fmul.s f6, f21, f29, rne # perform operation
fmul.s f6, f21, f29, rtz # perform operation
fmul.s f6, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmul.s f24, f12, f13, dyn # perform operation
fmul.s f24, f12, f13, rdn # perform operation
fmul.s f24, f12, f13, rmm # perform operation
fmul.s f24, f12, f13, rne # perform operation
fmul.s f24, f12, f13, rtz # perform operation
fmul.s f24, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fmul.s f9, f7, f16, dyn # perform operation
fmul.s f9, f7, f16, rdn # perform operation
fmul.s f9, f7, f16, rmm # perform operation
fmul.s f9, f7, f16, rne # perform operation
fmul.s f9, f7, f16, rtz # perform operation
fmul.s f9, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmul.s f15, f18, f7, dyn # perform operation
fmul.s f15, f18, f7, rdn # perform operation
fmul.s f15, f18, f7, rmm # perform operation
fmul.s f15, f18, f7, rne # perform operation
fmul.s f15, f18, f7, rtz # perform operation
fmul.s f15, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f27, f29, f13, dyn # perform operation
fmul.s f27, f29, f13, rdn # perform operation
fmul.s f27, f29, f13, rmm # perform operation
fmul.s f27, f29, f13, rne # perform operation
fmul.s f27, f29, f13, rtz # perform operation
fmul.s f27, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fmul.s f9, f26, f7, dyn # perform operation
fmul.s f9, f26, f7, rdn # perform operation
fmul.s f9, f26, f7, rmm # perform operation
fmul.s f9, f26, f7, rne # perform operation
fmul.s f9, f26, f7, rtz # perform operation
fmul.s f9, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fmul.s f8, f7, f24, dyn # perform operation
fmul.s f8, f7, f24, rdn # perform operation
fmul.s f8, f7, f24, rmm # perform operation
fmul.s f8, f7, f24, rne # perform operation
fmul.s f8, f7, f24, rtz # perform operation
fmul.s f8, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fmul.s f10, f27, f5, dyn # perform operation
fmul.s f10, f27, f5, rdn # perform operation
fmul.s f10, f27, f5, rmm # perform operation
fmul.s f10, f27, f5, rne # perform operation
fmul.s f10, f27, f5, rtz # perform operation
fmul.s f10, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fmul.s f10, f29, f30, dyn # perform operation
fmul.s f10, f29, f30, rdn # perform operation
fmul.s f10, f29, f30, rmm # perform operation
fmul.s f10, f29, f30, rne # perform operation
fmul.s f10, f29, f30, rtz # perform operation
fmul.s f10, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f15, f28, f20, dyn # perform operation
fmul.s f15, f28, f20, rdn # perform operation
fmul.s f15, f28, f20, rmm # perform operation
fmul.s f15, f28, f20, rne # perform operation
fmul.s f15, f28, f20, rtz # perform operation
fmul.s f15, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fmul.s f26, f12, f2, dyn # perform operation
fmul.s f26, f12, f2, rdn # perform operation
fmul.s f26, f12, f2, rmm # perform operation
fmul.s f26, f12, f2, rne # perform operation
fmul.s f26, f12, f2, rtz # perform operation
fmul.s f26, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmul.s f27, f13, f26, dyn # perform operation
fmul.s f27, f13, f26, rdn # perform operation
fmul.s f27, f13, f26, rmm # perform operation
fmul.s f27, f13, f26, rne # perform operation
fmul.s f27, f13, f26, rtz # perform operation
fmul.s f27, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmul.s f11, f9, f13, dyn # perform operation
fmul.s f11, f9, f13, rdn # perform operation
fmul.s f11, f9, f13, rmm # perform operation
fmul.s f11, f9, f13, rne # perform operation
fmul.s f11, f9, f13, rtz # perform operation
fmul.s f11, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fmul.s f23, f2, f3, dyn # perform operation
fmul.s f23, f2, f3, rdn # perform operation
fmul.s f23, f2, f3, rmm # perform operation
fmul.s f23, f2, f3, rne # perform operation
fmul.s f23, f2, f3, rtz # perform operation
fmul.s f23, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f26, f28, f13, dyn # perform operation
fmul.s f26, f28, f13, rdn # perform operation
fmul.s f26, f28, f13, rmm # perform operation
fmul.s f26, f28, f13, rne # perform operation
fmul.s f26, f28, f13, rtz # perform operation
fmul.s f26, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fmul.s f7, f29, f27, dyn # perform operation
fmul.s f7, f29, f27, rdn # perform operation
fmul.s f7, f29, f27, rmm # perform operation
fmul.s f7, f29, f27, rne # perform operation
fmul.s f7, f29, f27, rtz # perform operation
fmul.s f7, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fmul.s f10, f15, f13, dyn # perform operation
fmul.s f10, f15, f13, rdn # perform operation
fmul.s f10, f15, f13, rmm # perform operation
fmul.s f10, f15, f13, rne # perform operation
fmul.s f10, f15, f13, rtz # perform operation
fmul.s f10, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
fmul.s f12, f8, f29, dyn # perform operation
fmul.s f12, f8, f29, rdn # perform operation
fmul.s f12, f8, f29, rmm # perform operation
fmul.s f12, f8, f29, rne # perform operation
fmul.s f12, f8, f29, rtz # perform operation
fmul.s f12, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f19, f5, f27, dyn # perform operation
fmul.s f19, f5, f27, rdn # perform operation
fmul.s f19, f5, f27, rmm # perform operation
fmul.s f19, f5, f27, rne # perform operation
fmul.s f19, f5, f27, rtz # perform operation
fmul.s f19, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fmul.s f8, f6, f28, dyn # perform operation
fmul.s f8, f6, f28, rdn # perform operation
fmul.s f8, f6, f28, rmm # perform operation
fmul.s f8, f6, f28, rne # perform operation
fmul.s f8, f6, f28, rtz # perform operation
fmul.s f8, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fmul.s f22, f1, f15, dyn # perform operation
fmul.s f22, f1, f15, rdn # perform operation
fmul.s f22, f1, f15, rmm # perform operation
fmul.s f22, f1, f15, rne # perform operation
fmul.s f22, f1, f15, rtz # perform operation
fmul.s f22, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f14, f6, f1, dyn # perform operation
fmul.s f14, f6, f1, rdn # perform operation
fmul.s f14, f6, f1, rmm # perform operation
fmul.s f14, f6, f1, rne # perform operation
fmul.s f14, f6, f1, rtz # perform operation
fmul.s f14, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fmul.s f15, f23, f26, dyn # perform operation
fmul.s f15, f23, f26, rdn # perform operation
fmul.s f15, f23, f26, rmm # perform operation
fmul.s f15, f23, f26, rne # perform operation
fmul.s f15, f23, f26, rtz # perform operation
fmul.s f15, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fmul.s f31, f12, f20, dyn # perform operation
fmul.s f31, f12, f20, rdn # perform operation
fmul.s f31, f12, f20, rmm # perform operation
fmul.s f31, f12, f20, rne # perform operation
fmul.s f31, f12, f20, rtz # perform operation
fmul.s f31, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fmul.s f29, f23, f21, dyn # perform operation
fmul.s f29, f23, f21, rdn # perform operation
fmul.s f29, f23, f21, rmm # perform operation
fmul.s f29, f23, f21, rne # perform operation
fmul.s f29, f23, f21, rtz # perform operation
fmul.s f29, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fmul.s f27, f28, f6, dyn # perform operation
fmul.s f27, f28, f6, rdn # perform operation
fmul.s f27, f28, f6, rmm # perform operation
fmul.s f27, f28, f6, rne # perform operation
fmul.s f27, f28, f6, rtz # perform operation
fmul.s f27, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fmul.s f27, f15, f5, dyn # perform operation
fmul.s f27, f15, f5, rdn # perform operation
fmul.s f27, f15, f5, rmm # perform operation
fmul.s f27, f15, f5, rne # perform operation
fmul.s f27, f15, f5, rtz # perform operation
fmul.s f27, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f12, f31, f6, dyn # perform operation
fmul.s f12, f31, f6, rdn # perform operation
fmul.s f12, f31, f6, rmm # perform operation
fmul.s f12, f31, f6, rne # perform operation
fmul.s f12, f31, f6, rtz # perform operation
fmul.s f12, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fmul.s f24, f28, f25, dyn # perform operation
fmul.s f24, f28, f25, rdn # perform operation
fmul.s f24, f28, f25, rmm # perform operation
fmul.s f24, f28, f25, rne # perform operation
fmul.s f24, f28, f25, rtz # perform operation
fmul.s f24, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fmul.s f5, f7, f20, dyn # perform operation
fmul.s f5, f7, f20, rdn # perform operation
fmul.s f5, f7, f20, rmm # perform operation
fmul.s f5, f7, f20, rne # perform operation
fmul.s f5, f7, f20, rtz # perform operation
fmul.s f5, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmul.s f29, f2, f11, dyn # perform operation
fmul.s f29, f2, f11, rdn # perform operation
fmul.s f29, f2, f11, rmm # perform operation
fmul.s f29, f2, f11, rne # perform operation
fmul.s f29, f2, f11, rtz # perform operation
fmul.s f29, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f25, f11, f2, dyn # perform operation
fmul.s f25, f11, f2, rdn # perform operation
fmul.s f25, f11, f2, rmm # perform operation
fmul.s f25, f11, f2, rne # perform operation
fmul.s f25, f11, f2, rtz # perform operation
fmul.s f25, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fmul.s f14, f23, f26, dyn # perform operation
fmul.s f14, f23, f26, rdn # perform operation
fmul.s f14, f23, f26, rmm # perform operation
fmul.s f14, f23, f26, rne # perform operation
fmul.s f14, f23, f26, rtz # perform operation
fmul.s f14, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f8, f14, f23, dyn # perform operation
fmul.s f8, f14, f23, rdn # perform operation
fmul.s f8, f14, f23, rmm # perform operation
fmul.s f8, f14, f23, rne # perform operation
fmul.s f8, f14, f23, rtz # perform operation
fmul.s f8, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f10, f7, f26, dyn # perform operation
fmul.s f10, f7, f26, rdn # perform operation
fmul.s f10, f7, f26, rmm # perform operation
fmul.s f10, f7, f26, rne # perform operation
fmul.s f10, f7, f26, rtz # perform operation
fmul.s f10, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fmul.s f3, f28, f24, dyn # perform operation
fmul.s f3, f28, f24, rdn # perform operation
fmul.s f3, f28, f24, rmm # perform operation
fmul.s f3, f28, f24, rne # perform operation
fmul.s f3, f28, f24, rtz # perform operation
fmul.s f3, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fmul.s f13, f19, f20, dyn # perform operation
fmul.s f13, f19, f20, rdn # perform operation
fmul.s f13, f19, f20, rmm # perform operation
fmul.s f13, f19, f20, rne # perform operation
fmul.s f13, f19, f20, rtz # perform operation
fmul.s f13, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fmul.s f12, f10, f31, dyn # perform operation
fmul.s f12, f10, f31, rdn # perform operation
fmul.s f12, f10, f31, rmm # perform operation
fmul.s f12, f10, f31, rne # perform operation
fmul.s f12, f10, f31, rtz # perform operation
fmul.s f12, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fmul.s f9, f5, f21, dyn # perform operation
fmul.s f9, f5, f21, rdn # perform operation
fmul.s f9, f5, f21, rmm # perform operation
fmul.s f9, f5, f21, rne # perform operation
fmul.s f9, f5, f21, rtz # perform operation
fmul.s f9, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f30, f23, f28, dyn # perform operation
fmul.s f30, f23, f28, rdn # perform operation
fmul.s f30, f23, f28, rmm # perform operation
fmul.s f30, f23, f28, rne # perform operation
fmul.s f30, f23, f28, rtz # perform operation
fmul.s f30, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f31, f13, f11, dyn # perform operation
fmul.s f31, f13, f11, rdn # perform operation
fmul.s f31, f13, f11, rmm # perform operation
fmul.s f31, f13, f11, rne # perform operation
fmul.s f31, f13, f11, rtz # perform operation
fmul.s f31, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fmul.s f20, f25, f17, dyn # perform operation
fmul.s f20, f25, f17, rdn # perform operation
fmul.s f20, f25, f17, rmm # perform operation
fmul.s f20, f25, f17, rne # perform operation
fmul.s f20, f25, f17, rtz # perform operation
fmul.s f20, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fmul.s f29, f12, f16, dyn # perform operation
fmul.s f29, f12, f16, rdn # perform operation
fmul.s f29, f12, f16, rmm # perform operation
fmul.s f29, f12, f16, rne # perform operation
fmul.s f29, f12, f16, rtz # perform operation
fmul.s f29, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fmul.s f21, f13, f6, dyn # perform operation
fmul.s f21, f13, f6, rdn # perform operation
fmul.s f21, f13, f6, rmm # perform operation
fmul.s f21, f13, f6, rne # perform operation
fmul.s f21, f13, f6, rtz # perform operation
fmul.s f21, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fmul.s f2, f1, f18, dyn # perform operation
fmul.s f2, f1, f18, rdn # perform operation
fmul.s f2, f1, f18, rmm # perform operation
fmul.s f2, f1, f18, rne # perform operation
fmul.s f2, f1, f18, rtz # perform operation
fmul.s f2, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fmul.s f17, f5, f7, dyn # perform operation
fmul.s f17, f5, f7, rdn # perform operation
fmul.s f17, f5, f7, rmm # perform operation
fmul.s f17, f5, f7, rne # perform operation
fmul.s f17, f5, f7, rtz # perform operation
fmul.s f17, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmul.s f9, f26, f7, dyn # perform operation
fmul.s f9, f26, f7, rdn # perform operation
fmul.s f9, f26, f7, rmm # perform operation
fmul.s f9, f26, f7, rne # perform operation
fmul.s f9, f26, f7, rtz # perform operation
fmul.s f9, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmul.s f10, f9, f21, dyn # perform operation
fmul.s f10, f9, f21, rdn # perform operation
fmul.s f10, f9, f21, rmm # perform operation
fmul.s f10, f9, f21, rne # perform operation
fmul.s f10, f9, f21, rtz # perform operation
fmul.s f10, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fmul.s f2, f14, f23, dyn # perform operation
fmul.s f2, f14, f23, rdn # perform operation
fmul.s f2, f14, f23, rmm # perform operation
fmul.s f2, f14, f23, rne # perform operation
fmul.s f2, f14, f23, rtz # perform operation
fmul.s f2, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fmul.s f17, f27, f21, dyn # perform operation
fmul.s f17, f27, f21, rdn # perform operation
fmul.s f17, f27, f21, rmm # perform operation
fmul.s f17, f27, f21, rne # perform operation
fmul.s f17, f27, f21, rtz # perform operation
fmul.s f17, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fmul.s f31, f15, f30, dyn # perform operation
fmul.s f31, f15, f30, rdn # perform operation
fmul.s f31, f15, f30, rmm # perform operation
fmul.s f31, f15, f30, rne # perform operation
fmul.s f31, f15, f30, rtz # perform operation
fmul.s f31, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fmul.s f23, f27, f9, dyn # perform operation
fmul.s f23, f27, f9, rdn # perform operation
fmul.s f23, f27, f9, rmm # perform operation
fmul.s f23, f27, f9, rne # perform operation
fmul.s f23, f27, f9, rtz # perform operation
fmul.s f23, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fmul.s f8, f16, f20, dyn # perform operation
fmul.s f8, f16, f20, rdn # perform operation
fmul.s f8, f16, f20, rmm # perform operation
fmul.s f8, f16, f20, rne # perform operation
fmul.s f8, f16, f20, rtz # perform operation
fmul.s f8, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fmul.s f24, f12, f21, dyn # perform operation
fmul.s f24, f12, f21, rdn # perform operation
fmul.s f24, f12, f21, rmm # perform operation
fmul.s f24, f12, f21, rne # perform operation
fmul.s f24, f12, f21, rtz # perform operation
fmul.s f24, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmul.s f31, f20, f24, dyn # perform operation
fmul.s f31, f20, f24, rdn # perform operation
fmul.s f31, f20, f24, rmm # perform operation
fmul.s f31, f20, f24, rne # perform operation
fmul.s f31, f20, f24, rtz # perform operation
fmul.s f31, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f7, f31, f23, dyn # perform operation
fmul.s f7, f31, f23, rdn # perform operation
fmul.s f7, f31, f23, rmm # perform operation
fmul.s f7, f31, f23, rne # perform operation
fmul.s f7, f31, f23, rtz # perform operation
fmul.s f7, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmul.s f19, f27, f7, dyn # perform operation
fmul.s f19, f27, f7, rdn # perform operation
fmul.s f19, f27, f7, rmm # perform operation
fmul.s f19, f27, f7, rne # perform operation
fmul.s f19, f27, f7, rtz # perform operation
fmul.s f19, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fmul.s f24, f13, f30, dyn # perform operation
fmul.s f24, f13, f30, rdn # perform operation
fmul.s f24, f13, f30, rmm # perform operation
fmul.s f24, f13, f30, rne # perform operation
fmul.s f24, f13, f30, rtz # perform operation
fmul.s f24, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmul.s f31, f19, f11, dyn # perform operation
fmul.s f31, f19, f11, rdn # perform operation
fmul.s f31, f19, f11, rmm # perform operation
fmul.s f31, f19, f11, rne # perform operation
fmul.s f31, f19, f11, rtz # perform operation
fmul.s f31, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fmul.s f27, f20, f11, dyn # perform operation
fmul.s f27, f20, f11, rdn # perform operation
fmul.s f27, f20, f11, rmm # perform operation
fmul.s f27, f20, f11, rne # perform operation
fmul.s f27, f20, f11, rtz # perform operation
fmul.s f27, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f24, f31, f13, dyn # perform operation
fmul.s f24, f31, f13, rdn # perform operation
fmul.s f24, f31, f13, rmm # perform operation
fmul.s f24, f31, f13, rne # perform operation
fmul.s f24, f31, f13, rtz # perform operation
fmul.s f24, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fmul.s f1, f2, f16, dyn # perform operation
fmul.s f1, f2, f16, rdn # perform operation
fmul.s f1, f2, f16, rmm # perform operation
fmul.s f1, f2, f16, rne # perform operation
fmul.s f1, f2, f16, rtz # perform operation
fmul.s f1, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f8, f17, f26, dyn # perform operation
fmul.s f8, f17, f26, rdn # perform operation
fmul.s f8, f17, f26, rmm # perform operation
fmul.s f8, f17, f26, rne # perform operation
fmul.s f8, f17, f26, rtz # perform operation
fmul.s f8, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f9, f14, f13, dyn # perform operation
fmul.s f9, f14, f13, rdn # perform operation
fmul.s f9, f14, f13, rmm # perform operation
fmul.s f9, f14, f13, rne # perform operation
fmul.s f9, f14, f13, rtz # perform operation
fmul.s f9, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmul.s f8, f7, f3, dyn # perform operation
fmul.s f8, f7, f3, rdn # perform operation
fmul.s f8, f7, f3, rmm # perform operation
fmul.s f8, f7, f3, rne # perform operation
fmul.s f8, f7, f3, rtz # perform operation
fmul.s f8, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fmul.s f27, f17, f23, dyn # perform operation
fmul.s f27, f17, f23, rdn # perform operation
fmul.s f27, f17, f23, rmm # perform operation
fmul.s f27, f17, f23, rne # perform operation
fmul.s f27, f17, f23, rtz # perform operation
fmul.s f27, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f26, f30, f1, dyn # perform operation
fmul.s f26, f30, f1, rdn # perform operation
fmul.s f26, f30, f1, rmm # perform operation
fmul.s f26, f30, f1, rne # perform operation
fmul.s f26, f30, f1, rtz # perform operation
fmul.s f26, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fmul.s f16, f17, f20, dyn # perform operation
fmul.s f16, f17, f20, rdn # perform operation
fmul.s f16, f17, f20, rmm # perform operation
fmul.s f16, f17, f20, rne # perform operation
fmul.s f16, f17, f20, rtz # perform operation
fmul.s f16, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f13, f12, f8, dyn # perform operation
fmul.s f13, f12, f8, rdn # perform operation
fmul.s f13, f12, f8, rmm # perform operation
fmul.s f13, f12, f8, rne # perform operation
fmul.s f13, f12, f8, rtz # perform operation
fmul.s f13, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmul.s f17, f14, f29, dyn # perform operation
fmul.s f17, f14, f29, rdn # perform operation
fmul.s f17, f14, f29, rmm # perform operation
fmul.s f17, f14, f29, rne # perform operation
fmul.s f17, f14, f29, rtz # perform operation
fmul.s f17, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fmul.s f13, f11, f5, dyn # perform operation
fmul.s f13, f11, f5, rdn # perform operation
fmul.s f13, f11, f5, rmm # perform operation
fmul.s f13, f11, f5, rne # perform operation
fmul.s f13, f11, f5, rtz # perform operation
fmul.s f13, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fmul.s f31, f23, f25, dyn # perform operation
fmul.s f31, f23, f25, rdn # perform operation
fmul.s f31, f23, f25, rmm # perform operation
fmul.s f31, f23, f25, rne # perform operation
fmul.s f31, f23, f25, rtz # perform operation
fmul.s f31, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmul.s f12, f8, f24, dyn # perform operation
fmul.s f12, f8, f24, rdn # perform operation
fmul.s f12, f8, f24, rmm # perform operation
fmul.s f12, f8, f24, rne # perform operation
fmul.s f12, f8, f24, rtz # perform operation
fmul.s f12, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fmul.s f11, f12, f27, dyn # perform operation
fmul.s f11, f12, f27, rdn # perform operation
fmul.s f11, f12, f27, rmm # perform operation
fmul.s f11, f12, f27, rne # perform operation
fmul.s f11, f12, f27, rtz # perform operation
fmul.s f11, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fmul.s f12, f5, f8, dyn # perform operation
fmul.s f12, f5, f8, rdn # perform operation
fmul.s f12, f5, f8, rmm # perform operation
fmul.s f12, f5, f8, rne # perform operation
fmul.s f12, f5, f8, rtz # perform operation
fmul.s f12, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmul.s f21, f19, f16, dyn # perform operation
fmul.s f21, f19, f16, rdn # perform operation
fmul.s f21, f19, f16, rmm # perform operation
fmul.s f21, f19, f16, rne # perform operation
fmul.s f21, f19, f16, rtz # perform operation
fmul.s f21, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fmul.s f16, f22, f27, dyn # perform operation
fmul.s f16, f22, f27, rdn # perform operation
fmul.s f16, f22, f27, rmm # perform operation
fmul.s f16, f22, f27, rne # perform operation
fmul.s f16, f22, f27, rtz # perform operation
fmul.s f16, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fmul.s f5, f1, f13, dyn # perform operation
fmul.s f5, f1, f13, rdn # perform operation
fmul.s f5, f1, f13, rmm # perform operation
fmul.s f5, f1, f13, rne # perform operation
fmul.s f5, f1, f13, rtz # perform operation
fmul.s f5, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fmul.s f29, f13, f5, dyn # perform operation
fmul.s f29, f13, f5, rdn # perform operation
fmul.s f29, f13, f5, rmm # perform operation
fmul.s f29, f13, f5, rne # perform operation
fmul.s f29, f13, f5, rtz # perform operation
fmul.s f29, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fmul.s f27, f8, f24, dyn # perform operation
fmul.s f27, f8, f24, rdn # perform operation
fmul.s f27, f8, f24, rmm # perform operation
fmul.s f27, f8, f24, rne # perform operation
fmul.s f27, f8, f24, rtz # perform operation
fmul.s f27, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fmul.s f15, f22, f10, dyn # perform operation
fmul.s f15, f22, f10, rdn # perform operation
fmul.s f15, f22, f10, rmm # perform operation
fmul.s f15, f22, f10, rne # perform operation
fmul.s f15, f22, f10, rtz # perform operation
fmul.s f15, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fmul.s f27, f30, f2, dyn # perform operation
fmul.s f27, f30, f2, rdn # perform operation
fmul.s f27, f30, f2, rmm # perform operation
fmul.s f27, f30, f2, rne # perform operation
fmul.s f27, f30, f2, rtz # perform operation
fmul.s f27, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fmul.s f23, f21, f7, dyn # perform operation
fmul.s f23, f21, f7, rdn # perform operation
fmul.s f23, f21, f7, rmm # perform operation
fmul.s f23, f21, f7, rne # perform operation
fmul.s f23, f21, f7, rtz # perform operation
fmul.s f23, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f6, f7, f25, dyn # perform operation
fmul.s f6, f7, f25, rdn # perform operation
fmul.s f6, f7, f25, rmm # perform operation
fmul.s f6, f7, f25, rne # perform operation
fmul.s f6, f7, f25, rtz # perform operation
fmul.s f6, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fmul.s f26, f29, f1, dyn # perform operation
fmul.s f26, f29, f1, rdn # perform operation
fmul.s f26, f29, f1, rmm # perform operation
fmul.s f26, f29, f1, rne # perform operation
fmul.s f26, f29, f1, rtz # perform operation
fmul.s f26, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fmul.s f22, f11, f15, dyn # perform operation
fmul.s f22, f11, f15, rdn # perform operation
fmul.s f22, f11, f15, rmm # perform operation
fmul.s f22, f11, f15, rne # perform operation
fmul.s f22, f11, f15, rtz # perform operation
fmul.s f22, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fmul.s f23, f6, f20, dyn # perform operation
fmul.s f23, f6, f20, rdn # perform operation
fmul.s f23, f6, f20, rmm # perform operation
fmul.s f23, f6, f20, rne # perform operation
fmul.s f23, f6, f20, rtz # perform operation
fmul.s f23, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fmul.s f8, f30, f12, dyn # perform operation
fmul.s f8, f30, f12, rdn # perform operation
fmul.s f8, f30, f12, rmm # perform operation
fmul.s f8, f30, f12, rne # perform operation
fmul.s f8, f30, f12, rtz # perform operation
fmul.s f8, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fmul.s f15, f11, f27, dyn # perform operation
fmul.s f15, f11, f27, rdn # perform operation
fmul.s f15, f11, f27, rmm # perform operation
fmul.s f15, f11, f27, rne # perform operation
fmul.s f15, f11, f27, rtz # perform operation
fmul.s f15, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fmul.s f23, f6, f10, dyn # perform operation
fmul.s f23, f6, f10, rdn # perform operation
fmul.s f23, f6, f10, rmm # perform operation
fmul.s f23, f6, f10, rne # perform operation
fmul.s f23, f6, f10, rtz # perform operation
fmul.s f23, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fmul.s f27, f16, f24, dyn # perform operation
fmul.s f27, f16, f24, rdn # perform operation
fmul.s f27, f16, f24, rmm # perform operation
fmul.s f27, f16, f24, rne # perform operation
fmul.s f27, f16, f24, rtz # perform operation
fmul.s f27, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fmul.s f29, f17, f16, dyn # perform operation
fmul.s f29, f17, f16, rdn # perform operation
fmul.s f29, f17, f16, rmm # perform operation
fmul.s f29, f17, f16, rne # perform operation
fmul.s f29, f17, f16, rtz # perform operation
fmul.s f29, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmul.s f19, f23, f6, dyn # perform operation
fmul.s f19, f23, f6, rdn # perform operation
fmul.s f19, f23, f6, rmm # perform operation
fmul.s f19, f23, f6, rne # perform operation
fmul.s f19, f23, f6, rtz # perform operation
fmul.s f19, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fmul.s f2, f18, f5, dyn # perform operation
fmul.s f2, f18, f5, rdn # perform operation
fmul.s f2, f18, f5, rmm # perform operation
fmul.s f2, f18, f5, rne # perform operation
fmul.s f2, f18, f5, rtz # perform operation
fmul.s f2, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fmul.s f24, f29, f5, dyn # perform operation
fmul.s f24, f29, f5, rdn # perform operation
fmul.s f24, f29, f5, rmm # perform operation
fmul.s f24, f29, f5, rne # perform operation
fmul.s f24, f29, f5, rtz # perform operation
fmul.s f24, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fmul.s f23, f28, f9, dyn # perform operation
fmul.s f23, f28, f9, rdn # perform operation
fmul.s f23, f28, f9, rmm # perform operation
fmul.s f23, f28, f9, rne # perform operation
fmul.s f23, f28, f9, rtz # perform operation
fmul.s f23, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fmul.s f22, f10, f27, dyn # perform operation
fmul.s f22, f10, f27, rdn # perform operation
fmul.s f22, f10, f27, rmm # perform operation
fmul.s f22, f10, f27, rne # perform operation
fmul.s f22, f10, f27, rtz # perform operation
fmul.s f22, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fmul.s f21, f28, f25, dyn # perform operation
fmul.s f21, f28, f25, rdn # perform operation
fmul.s f21, f28, f25, rmm # perform operation
fmul.s f21, f28, f25, rne # perform operation
fmul.s f21, f28, f25, rtz # perform operation
fmul.s f21, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fmul.s f24, f1, f19, dyn # perform operation
fmul.s f24, f1, f19, rdn # perform operation
fmul.s f24, f1, f19, rmm # perform operation
fmul.s f24, f1, f19, rne # perform operation
fmul.s f24, f1, f19, rtz # perform operation
fmul.s f24, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fmul.s f2, f12, f25, dyn # perform operation
fmul.s f2, f12, f25, rdn # perform operation
fmul.s f2, f12, f25, rmm # perform operation
fmul.s f2, f12, f25, rne # perform operation
fmul.s f2, f12, f25, rtz # perform operation
fmul.s f2, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fmul.s f15, f5, f8, dyn # perform operation
fmul.s f15, f5, f8, rdn # perform operation
fmul.s f15, f5, f8, rmm # perform operation
fmul.s f15, f5, f8, rne # perform operation
fmul.s f15, f5, f8, rtz # perform operation
fmul.s f15, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
fmul.s f22, f31, f23, dyn # perform operation
fmul.s f22, f31, f23, rdn # perform operation
fmul.s f22, f31, f23, rmm # perform operation
fmul.s f22, f31, f23, rne # perform operation
fmul.s f22, f31, f23, rtz # perform operation
fmul.s f22, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f23, f1, f30, dyn # perform operation
fmul.s f23, f1, f30, rdn # perform operation
fmul.s f23, f1, f30, rmm # perform operation
fmul.s f23, f1, f30, rne # perform operation
fmul.s f23, f1, f30, rtz # perform operation
fmul.s f23, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmul.s f13, f16, f26, dyn # perform operation
fmul.s f13, f16, f26, rdn # perform operation
fmul.s f13, f16, f26, rmm # perform operation
fmul.s f13, f16, f26, rne # perform operation
fmul.s f13, f16, f26, rtz # perform operation
fmul.s f13, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fmul.s f19, f20, f3, dyn # perform operation
fmul.s f19, f20, f3, rdn # perform operation
fmul.s f19, f20, f3, rmm # perform operation
fmul.s f19, f20, f3, rne # perform operation
fmul.s f19, f20, f3, rtz # perform operation
fmul.s f19, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmul.s f10, f18, f25, dyn # perform operation
fmul.s f10, f18, f25, rdn # perform operation
fmul.s f10, f18, f25, rmm # perform operation
fmul.s f10, f18, f25, rne # perform operation
fmul.s f10, f18, f25, rtz # perform operation
fmul.s f10, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fmul.s f11, f22, f1, dyn # perform operation
fmul.s f11, f22, f1, rdn # perform operation
fmul.s f11, f22, f1, rmm # perform operation
fmul.s f11, f22, f1, rne # perform operation
fmul.s f11, f22, f1, rtz # perform operation
fmul.s f11, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fmul.s f3, f11, f2, dyn # perform operation
fmul.s f3, f11, f2, rdn # perform operation
fmul.s f3, f11, f2, rmm # perform operation
fmul.s f3, f11, f2, rne # perform operation
fmul.s f3, f11, f2, rtz # perform operation
fmul.s f3, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fmul.s f28, f17, f24, dyn # perform operation
fmul.s f28, f17, f24, rdn # perform operation
fmul.s f28, f17, f24, rmm # perform operation
fmul.s f28, f17, f24, rne # perform operation
fmul.s f28, f17, f24, rtz # perform operation
fmul.s f28, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fmul.s f25, f3, f21, dyn # perform operation
fmul.s f25, f3, f21, rdn # perform operation
fmul.s f25, f3, f21, rmm # perform operation
fmul.s f25, f3, f21, rne # perform operation
fmul.s f25, f3, f21, rtz # perform operation
fmul.s f25, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmul.s f24, f31, f19, dyn # perform operation
fmul.s f24, f31, f19, rdn # perform operation
fmul.s f24, f31, f19, rmm # perform operation
fmul.s f24, f31, f19, rne # perform operation
fmul.s f24, f31, f19, rtz # perform operation
fmul.s f24, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fmul.s f3, f1, f9, dyn # perform operation
fmul.s f3, f1, f9, rdn # perform operation
fmul.s f3, f1, f9, rmm # perform operation
fmul.s f3, f1, f9, rne # perform operation
fmul.s f3, f1, f9, rtz # perform operation
fmul.s f3, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f1, f16, f11, dyn # perform operation
fmul.s f1, f16, f11, rdn # perform operation
fmul.s f1, f16, f11, rmm # perform operation
fmul.s f1, f16, f11, rne # perform operation
fmul.s f1, f16, f11, rtz # perform operation
fmul.s f1, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fmul.s f31, f18, f21, dyn # perform operation
fmul.s f31, f18, f21, rdn # perform operation
fmul.s f31, f18, f21, rmm # perform operation
fmul.s f31, f18, f21, rne # perform operation
fmul.s f31, f18, f21, rtz # perform operation
fmul.s f31, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f1, f15, f29, dyn # perform operation
fmul.s f1, f15, f29, rdn # perform operation
fmul.s f1, f15, f29, rmm # perform operation
fmul.s f1, f15, f29, rne # perform operation
fmul.s f1, f15, f29, rtz # perform operation
fmul.s f1, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fmul.s f24, f12, f22, dyn # perform operation
fmul.s f24, f12, f22, rdn # perform operation
fmul.s f24, f12, f22, rmm # perform operation
fmul.s f24, f12, f22, rne # perform operation
fmul.s f24, f12, f22, rtz # perform operation
fmul.s f24, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmul.s f14, f24, f18, dyn # perform operation
fmul.s f14, f24, f18, rdn # perform operation
fmul.s f14, f24, f18, rmm # perform operation
fmul.s f14, f24, f18, rne # perform operation
fmul.s f14, f24, f18, rtz # perform operation
fmul.s f14, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f15, f23, f29, dyn # perform operation
fmul.s f15, f23, f29, rdn # perform operation
fmul.s f15, f23, f29, rmm # perform operation
fmul.s f15, f23, f29, rne # perform operation
fmul.s f15, f23, f29, rtz # perform operation
fmul.s f15, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmul.s f2, f9, f23, dyn # perform operation
fmul.s f2, f9, f23, rdn # perform operation
fmul.s f2, f9, f23, rmm # perform operation
fmul.s f2, f9, f23, rne # perform operation
fmul.s f2, f9, f23, rtz # perform operation
fmul.s f2, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fmul.s f29, f26, f30, dyn # perform operation
fmul.s f29, f26, f30, rdn # perform operation
fmul.s f29, f26, f30, rmm # perform operation
fmul.s f29, f26, f30, rne # perform operation
fmul.s f29, f26, f30, rtz # perform operation
fmul.s f29, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fmul.s f16, f6, f14, dyn # perform operation
fmul.s f16, f6, f14, rdn # perform operation
fmul.s f16, f6, f14, rmm # perform operation
fmul.s f16, f6, f14, rne # perform operation
fmul.s f16, f6, f14, rtz # perform operation
fmul.s f16, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f5, f13, f9, dyn # perform operation
fmul.s f5, f13, f9, rdn # perform operation
fmul.s f5, f13, f9, rmm # perform operation
fmul.s f5, f13, f9, rne # perform operation
fmul.s f5, f13, f9, rtz # perform operation
fmul.s f5, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fmul.s f23, f21, f15, dyn # perform operation
fmul.s f23, f21, f15, rdn # perform operation
fmul.s f23, f21, f15, rmm # perform operation
fmul.s f23, f21, f15, rne # perform operation
fmul.s f23, f21, f15, rtz # perform operation
fmul.s f23, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fmul.s f14, f22, f25, dyn # perform operation
fmul.s f14, f22, f25, rdn # perform operation
fmul.s f14, f22, f25, rmm # perform operation
fmul.s f14, f22, f25, rne # perform operation
fmul.s f14, f22, f25, rtz # perform operation
fmul.s f14, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fmul.s f28, f10, f20, dyn # perform operation
fmul.s f28, f10, f20, rdn # perform operation
fmul.s f28, f10, f20, rmm # perform operation
fmul.s f28, f10, f20, rne # perform operation
fmul.s f28, f10, f20, rtz # perform operation
fmul.s f28, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fmul.s f5, f12, f22, dyn # perform operation
fmul.s f5, f12, f22, rdn # perform operation
fmul.s f5, f12, f22, rmm # perform operation
fmul.s f5, f12, f22, rne # perform operation
fmul.s f5, f12, f22, rtz # perform operation
fmul.s f5, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmul.s f14, f18, f6, dyn # perform operation
fmul.s f14, f18, f6, rdn # perform operation
fmul.s f14, f18, f6, rmm # perform operation
fmul.s f14, f18, f6, rne # perform operation
fmul.s f14, f18, f6, rtz # perform operation
fmul.s f14, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fmul.s f24, f19, f12, dyn # perform operation
fmul.s f24, f19, f12, rdn # perform operation
fmul.s f24, f19, f12, rmm # perform operation
fmul.s f24, f19, f12, rne # perform operation
fmul.s f24, f19, f12, rtz # perform operation
fmul.s f24, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fmul.s f14, f9, f22, dyn # perform operation
fmul.s f14, f9, f22, rdn # perform operation
fmul.s f14, f9, f22, rmm # perform operation
fmul.s f14, f9, f22, rne # perform operation
fmul.s f14, f9, f22, rtz # perform operation
fmul.s f14, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
fmul.s f27, f21, f13, dyn # perform operation
fmul.s f27, f21, f13, rdn # perform operation
fmul.s f27, f21, f13, rmm # perform operation
fmul.s f27, f21, f13, rne # perform operation
fmul.s f27, f21, f13, rtz # perform operation
fmul.s f27, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fmul.s f9, f7, f23, dyn # perform operation
fmul.s f9, f7, f23, rdn # perform operation
fmul.s f9, f7, f23, rmm # perform operation
fmul.s f9, f7, f23, rne # perform operation
fmul.s f9, f7, f23, rtz # perform operation
fmul.s f9, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f10, f24, f19, dyn # perform operation
fmul.s f10, f24, f19, rdn # perform operation
fmul.s f10, f24, f19, rmm # perform operation
fmul.s f10, f24, f19, rne # perform operation
fmul.s f10, f24, f19, rtz # perform operation
fmul.s f10, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fmul.s f29, f13, f30, dyn # perform operation
fmul.s f29, f13, f30, rdn # perform operation
fmul.s f29, f13, f30, rmm # perform operation
fmul.s f29, f13, f30, rne # perform operation
fmul.s f29, f13, f30, rtz # perform operation
fmul.s f29, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fmul.s f1, f16, f22, dyn # perform operation
fmul.s f1, f16, f22, rdn # perform operation
fmul.s f1, f16, f22, rmm # perform operation
fmul.s f1, f16, f22, rne # perform operation
fmul.s f1, f16, f22, rtz # perform operation
fmul.s f1, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fmul.s f2, f16, f29, dyn # perform operation
fmul.s f2, f16, f29, rdn # perform operation
fmul.s f2, f16, f29, rmm # perform operation
fmul.s f2, f16, f29, rne # perform operation
fmul.s f2, f16, f29, rtz # perform operation
fmul.s f2, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fmul.s f16, f1, f10, dyn # perform operation
fmul.s f16, f1, f10, rdn # perform operation
fmul.s f16, f1, f10, rmm # perform operation
fmul.s f16, f1, f10, rne # perform operation
fmul.s f16, f1, f10, rtz # perform operation
fmul.s f16, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmul.s f24, f5, f25, dyn # perform operation
fmul.s f24, f5, f25, rdn # perform operation
fmul.s f24, f5, f25, rmm # perform operation
fmul.s f24, f5, f25, rne # perform operation
fmul.s f24, f5, f25, rtz # perform operation
fmul.s f24, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f31, f6, f24, dyn # perform operation
fmul.s f31, f6, f24, rdn # perform operation
fmul.s f31, f6, f24, rmm # perform operation
fmul.s f31, f6, f24, rne # perform operation
fmul.s f31, f6, f24, rtz # perform operation
fmul.s f31, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fmul.s f27, f25, f2, dyn # perform operation
fmul.s f27, f25, f2, rdn # perform operation
fmul.s f27, f25, f2, rmm # perform operation
fmul.s f27, f25, f2, rne # perform operation
fmul.s f27, f25, f2, rtz # perform operation
fmul.s f27, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmul.s f24, f8, f13, dyn # perform operation
fmul.s f24, f8, f13, rdn # perform operation
fmul.s f24, f8, f13, rmm # perform operation
fmul.s f24, f8, f13, rne # perform operation
fmul.s f24, f8, f13, rtz # perform operation
fmul.s f24, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f8, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fmul.s f27, f11, f1, dyn # perform operation
fmul.s f27, f11, f1, rdn # perform operation
fmul.s f27, f11, f1, rmm # perform operation
fmul.s f27, f11, f1, rne # perform operation
fmul.s f27, f11, f1, rtz # perform operation
fmul.s f27, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmul.s f21, f7, f24, dyn # perform operation
fmul.s f21, f7, f24, rdn # perform operation
fmul.s f21, f7, f24, rmm # perform operation
fmul.s f21, f7, f24, rne # perform operation
fmul.s f21, f7, f24, rtz # perform operation
fmul.s f21, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f21, f20, f10, dyn # perform operation
fmul.s f21, f20, f10, rdn # perform operation
fmul.s f21, f20, f10, rmm # perform operation
fmul.s f21, f20, f10, rne # perform operation
fmul.s f21, f20, f10, rtz # perform operation
fmul.s f21, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fmul.s f10, f27, f18, dyn # perform operation
fmul.s f10, f27, f18, rdn # perform operation
fmul.s f10, f27, f18, rmm # perform operation
fmul.s f10, f27, f18, rne # perform operation
fmul.s f10, f27, f18, rtz # perform operation
fmul.s f10, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fmul.s f23, f8, f20, dyn # perform operation
fmul.s f23, f8, f20, rdn # perform operation
fmul.s f23, f8, f20, rmm # perform operation
fmul.s f23, f8, f20, rne # perform operation
fmul.s f23, f8, f20, rtz # perform operation
fmul.s f23, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmul.s f21, f9, f3, dyn # perform operation
fmul.s f21, f9, f3, rdn # perform operation
fmul.s f21, f9, f3, rmm # perform operation
fmul.s f21, f9, f3, rne # perform operation
fmul.s f21, f9, f3, rtz # perform operation
fmul.s f21, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fmul.s f7, f17, f11, dyn # perform operation
fmul.s f7, f17, f11, rdn # perform operation
fmul.s f7, f17, f11, rmm # perform operation
fmul.s f7, f17, f11, rne # perform operation
fmul.s f7, f17, f11, rtz # perform operation
fmul.s f7, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmul.s f7, f11, f21, dyn # perform operation
fmul.s f7, f11, f21, rdn # perform operation
fmul.s f7, f11, f21, rmm # perform operation
fmul.s f7, f11, f21, rne # perform operation
fmul.s f7, f11, f21, rtz # perform operation
fmul.s f7, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fmul.s f24, f23, f26, dyn # perform operation
fmul.s f24, f23, f26, rdn # perform operation
fmul.s f24, f23, f26, rmm # perform operation
fmul.s f24, f23, f26, rne # perform operation
fmul.s f24, f23, f26, rtz # perform operation
fmul.s f24, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmul.s f16, f17, f15, dyn # perform operation
fmul.s f16, f17, f15, rdn # perform operation
fmul.s f16, f17, f15, rmm # perform operation
fmul.s f16, f17, f15, rne # perform operation
fmul.s f16, f17, f15, rtz # perform operation
fmul.s f16, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fmul.s f6, f20, f8, dyn # perform operation
fmul.s f6, f20, f8, rdn # perform operation
fmul.s f6, f20, f8, rmm # perform operation
fmul.s f6, f20, f8, rne # perform operation
fmul.s f6, f20, f8, rtz # perform operation
fmul.s f6, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f13, f26, f19, dyn # perform operation
fmul.s f13, f26, f19, rdn # perform operation
fmul.s f13, f26, f19, rmm # perform operation
fmul.s f13, f26, f19, rne # perform operation
fmul.s f13, f26, f19, rtz # perform operation
fmul.s f13, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fmul.s f18, f9, f15, dyn # perform operation
fmul.s f18, f9, f15, rdn # perform operation
fmul.s f18, f9, f15, rmm # perform operation
fmul.s f18, f9, f15, rne # perform operation
fmul.s f18, f9, f15, rtz # perform operation
fmul.s f18, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fmul.s f2, f10, f15, dyn # perform operation
fmul.s f2, f10, f15, rdn # perform operation
fmul.s f2, f10, f15, rmm # perform operation
fmul.s f2, f10, f15, rne # perform operation
fmul.s f2, f10, f15, rtz # perform operation
fmul.s f2, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f22, f5, f13, dyn # perform operation
fmul.s f22, f5, f13, rdn # perform operation
fmul.s f22, f5, f13, rmm # perform operation
fmul.s f22, f5, f13, rne # perform operation
fmul.s f22, f5, f13, rtz # perform operation
fmul.s f22, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fmul.s f20, f21, f31, dyn # perform operation
fmul.s f20, f21, f31, rdn # perform operation
fmul.s f20, f21, f31, rmm # perform operation
fmul.s f20, f21, f31, rne # perform operation
fmul.s f20, f21, f31, rtz # perform operation
fmul.s f20, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f1, f2, f10, dyn # perform operation
fmul.s f1, f2, f10, rdn # perform operation
fmul.s f1, f2, f10, rmm # perform operation
fmul.s f1, f2, f10, rne # perform operation
fmul.s f1, f2, f10, rtz # perform operation
fmul.s f1, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fmul.s f20, f22, f3, dyn # perform operation
fmul.s f20, f22, f3, rdn # perform operation
fmul.s f20, f22, f3, rmm # perform operation
fmul.s f20, f22, f3, rne # perform operation
fmul.s f20, f22, f3, rtz # perform operation
fmul.s f20, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fmul.s f26, f18, f8, dyn # perform operation
fmul.s f26, f18, f8, rdn # perform operation
fmul.s f26, f18, f8, rmm # perform operation
fmul.s f26, f18, f8, rne # perform operation
fmul.s f26, f18, f8, rtz # perform operation
fmul.s f26, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fmul.s f10, f16, f6, dyn # perform operation
fmul.s f10, f16, f6, rdn # perform operation
fmul.s f10, f16, f6, rmm # perform operation
fmul.s f10, f16, f6, rne # perform operation
fmul.s f10, f16, f6, rtz # perform operation
fmul.s f10, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
fmul.s f5, f25, f17, dyn # perform operation
fmul.s f5, f25, f17, rdn # perform operation
fmul.s f5, f25, f17, rmm # perform operation
fmul.s f5, f25, f17, rne # perform operation
fmul.s f5, f25, f17, rtz # perform operation
fmul.s f5, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f28, f6, f12, dyn # perform operation
fmul.s f28, f6, f12, rdn # perform operation
fmul.s f28, f6, f12, rmm # perform operation
fmul.s f28, f6, f12, rne # perform operation
fmul.s f28, f6, f12, rtz # perform operation
fmul.s f28, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmul.s f18, f29, f28, dyn # perform operation
fmul.s f18, f29, f28, rdn # perform operation
fmul.s f18, f29, f28, rmm # perform operation
fmul.s f18, f29, f28, rne # perform operation
fmul.s f18, f29, f28, rtz # perform operation
fmul.s f18, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmul.s f3, f13, f16, dyn # perform operation
fmul.s f3, f13, f16, rdn # perform operation
fmul.s f3, f13, f16, rmm # perform operation
fmul.s f3, f13, f16, rne # perform operation
fmul.s f3, f13, f16, rtz # perform operation
fmul.s f3, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fmul.s f25, f17, f18, dyn # perform operation
fmul.s f25, f17, f18, rdn # perform operation
fmul.s f25, f17, f18, rmm # perform operation
fmul.s f25, f17, f18, rne # perform operation
fmul.s f25, f17, f18, rtz # perform operation
fmul.s f25, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f11, f2, f19, dyn # perform operation
fmul.s f11, f2, f19, rdn # perform operation
fmul.s f11, f2, f19, rmm # perform operation
fmul.s f11, f2, f19, rne # perform operation
fmul.s f11, f2, f19, rtz # perform operation
fmul.s f11, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fmul.s f9, f1, f15, dyn # perform operation
fmul.s f9, f1, f15, rdn # perform operation
fmul.s f9, f1, f15, rmm # perform operation
fmul.s f9, f1, f15, rne # perform operation
fmul.s f9, f1, f15, rtz # perform operation
fmul.s f9, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fmul.s f6, f10, f16, dyn # perform operation
fmul.s f6, f10, f16, rdn # perform operation
fmul.s f6, f10, f16, rmm # perform operation
fmul.s f6, f10, f16, rne # perform operation
fmul.s f6, f10, f16, rtz # perform operation
fmul.s f6, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f26, f10, f5, dyn # perform operation
fmul.s f26, f10, f5, rdn # perform operation
fmul.s f26, f10, f5, rmm # perform operation
fmul.s f26, f10, f5, rne # perform operation
fmul.s f26, f10, f5, rtz # perform operation
fmul.s f26, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fmul.s f5, f21, f27, dyn # perform operation
fmul.s f5, f21, f27, rdn # perform operation
fmul.s f5, f21, f27, rmm # perform operation
fmul.s f5, f21, f27, rne # perform operation
fmul.s f5, f21, f27, rtz # perform operation
fmul.s f5, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fmul.s f6, f29, f12, dyn # perform operation
fmul.s f6, f29, f12, rdn # perform operation
fmul.s f6, f29, f12, rmm # perform operation
fmul.s f6, f29, f12, rne # perform operation
fmul.s f6, f29, f12, rtz # perform operation
fmul.s f6, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fmul.s f23, f9, f14, dyn # perform operation
fmul.s f23, f9, f14, rdn # perform operation
fmul.s f23, f9, f14, rmm # perform operation
fmul.s f23, f9, f14, rne # perform operation
fmul.s f23, f9, f14, rtz # perform operation
fmul.s f23, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fmul.s f9, f8, f19, dyn # perform operation
fmul.s f9, f8, f19, rdn # perform operation
fmul.s f9, f8, f19, rmm # perform operation
fmul.s f9, f8, f19, rne # perform operation
fmul.s f9, f8, f19, rtz # perform operation
fmul.s f9, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fmul.s f28, f23, f31, dyn # perform operation
fmul.s f28, f23, f31, rdn # perform operation
fmul.s f28, f23, f31, rmm # perform operation
fmul.s f28, f23, f31, rne # perform operation
fmul.s f28, f23, f31, rtz # perform operation
fmul.s f28, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmul.s f10, f14, f18, dyn # perform operation
fmul.s f10, f14, f18, rdn # perform operation
fmul.s f10, f14, f18, rmm # perform operation
fmul.s f10, f14, f18, rne # perform operation
fmul.s f10, f14, f18, rtz # perform operation
fmul.s f10, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fmul.s f5, f9, f14, dyn # perform operation
fmul.s f5, f9, f14, rdn # perform operation
fmul.s f5, f9, f14, rmm # perform operation
fmul.s f5, f9, f14, rne # perform operation
fmul.s f5, f9, f14, rtz # perform operation
fmul.s f5, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fmul.s f3, f13, f29, dyn # perform operation
fmul.s f3, f13, f29, rdn # perform operation
fmul.s f3, f13, f29, rmm # perform operation
fmul.s f3, f13, f29, rne # perform operation
fmul.s f3, f13, f29, rtz # perform operation
fmul.s f3, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fmul.s f23, f19, f12, dyn # perform operation
fmul.s f23, f19, f12, rdn # perform operation
fmul.s f23, f19, f12, rmm # perform operation
fmul.s f23, f19, f12, rne # perform operation
fmul.s f23, f19, f12, rtz # perform operation
fmul.s f23, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f13, f21, f1, dyn # perform operation
fmul.s f13, f21, f1, rdn # perform operation
fmul.s f13, f21, f1, rmm # perform operation
fmul.s f13, f21, f1, rne # perform operation
fmul.s f13, f21, f1, rtz # perform operation
fmul.s f13, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f13, f19, f28, dyn # perform operation
fmul.s f13, f19, f28, rdn # perform operation
fmul.s f13, f19, f28, rmm # perform operation
fmul.s f13, f19, f28, rne # perform operation
fmul.s f13, f19, f28, rtz # perform operation
fmul.s f13, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fmul.s f10, f23, f27, dyn # perform operation
fmul.s f10, f23, f27, rdn # perform operation
fmul.s f10, f23, f27, rmm # perform operation
fmul.s f10, f23, f27, rne # perform operation
fmul.s f10, f23, f27, rtz # perform operation
fmul.s f10, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fmul.s f24, f16, f30, dyn # perform operation
fmul.s f24, f16, f30, rdn # perform operation
fmul.s f24, f16, f30, rmm # perform operation
fmul.s f24, f16, f30, rne # perform operation
fmul.s f24, f16, f30, rtz # perform operation
fmul.s f24, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fmul.s f1, f9, f18, dyn # perform operation
fmul.s f1, f9, f18, rdn # perform operation
fmul.s f1, f9, f18, rmm # perform operation
fmul.s f1, f9, f18, rne # perform operation
fmul.s f1, f9, f18, rtz # perform operation
fmul.s f1, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fmul.s f14, f3, f28, dyn # perform operation
fmul.s f14, f3, f28, rdn # perform operation
fmul.s f14, f3, f28, rmm # perform operation
fmul.s f14, f3, f28, rne # perform operation
fmul.s f14, f3, f28, rtz # perform operation
fmul.s f14, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fmul.s f15, f5, f17, dyn # perform operation
fmul.s f15, f5, f17, rdn # perform operation
fmul.s f15, f5, f17, rmm # perform operation
fmul.s f15, f5, f17, rne # perform operation
fmul.s f15, f5, f17, rtz # perform operation
fmul.s f15, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fmul.s f17, f5, f31, dyn # perform operation
fmul.s f17, f5, f31, rdn # perform operation
fmul.s f17, f5, f31, rmm # perform operation
fmul.s f17, f5, f31, rne # perform operation
fmul.s f17, f5, f31, rtz # perform operation
fmul.s f17, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fmul.s f10, f8, f23, dyn # perform operation
fmul.s f10, f8, f23, rdn # perform operation
fmul.s f10, f8, f23, rmm # perform operation
fmul.s f10, f8, f23, rne # perform operation
fmul.s f10, f8, f23, rtz # perform operation
fmul.s f10, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fmul.s f17, f6, f5, dyn # perform operation
fmul.s f17, f6, f5, rdn # perform operation
fmul.s f17, f6, f5, rmm # perform operation
fmul.s f17, f6, f5, rne # perform operation
fmul.s f17, f6, f5, rtz # perform operation
fmul.s f17, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fmul.s f26, f10, f18, dyn # perform operation
fmul.s f26, f10, f18, rdn # perform operation
fmul.s f26, f10, f18, rmm # perform operation
fmul.s f26, f10, f18, rne # perform operation
fmul.s f26, f10, f18, rtz # perform operation
fmul.s f26, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fmul.s f17, f18, f8, dyn # perform operation
fmul.s f17, f18, f8, rdn # perform operation
fmul.s f17, f18, f8, rmm # perform operation
fmul.s f17, f18, f8, rne # perform operation
fmul.s f17, f18, f8, rtz # perform operation
fmul.s f17, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f24, f17, f20, dyn # perform operation
fmul.s f24, f17, f20, rdn # perform operation
fmul.s f24, f17, f20, rmm # perform operation
fmul.s f24, f17, f20, rne # perform operation
fmul.s f24, f17, f20, rtz # perform operation
fmul.s f24, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fmul.s f29, f6, f25, dyn # perform operation
fmul.s f29, f6, f25, rdn # perform operation
fmul.s f29, f6, f25, rmm # perform operation
fmul.s f29, f6, f25, rne # perform operation
fmul.s f29, f6, f25, rtz # perform operation
fmul.s f29, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmul.s f25, f24, f12, dyn # perform operation
fmul.s f25, f24, f12, rdn # perform operation
fmul.s f25, f24, f12, rmm # perform operation
fmul.s f25, f24, f12, rne # perform operation
fmul.s f25, f24, f12, rtz # perform operation
fmul.s f25, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fmul.s f5, f30, f15, dyn # perform operation
fmul.s f5, f30, f15, rdn # perform operation
fmul.s f5, f30, f15, rmm # perform operation
fmul.s f5, f30, f15, rne # perform operation
fmul.s f5, f30, f15, rtz # perform operation
fmul.s f5, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fmul.s f17, f28, f2, dyn # perform operation
fmul.s f17, f28, f2, rdn # perform operation
fmul.s f17, f28, f2, rmm # perform operation
fmul.s f17, f28, f2, rne # perform operation
fmul.s f17, f28, f2, rtz # perform operation
fmul.s f17, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmul.s f20, f6, f27, dyn # perform operation
fmul.s f20, f6, f27, rdn # perform operation
fmul.s f20, f6, f27, rmm # perform operation
fmul.s f20, f6, f27, rne # perform operation
fmul.s f20, f6, f27, rtz # perform operation
fmul.s f20, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f15, f27, f29, dyn # perform operation
fmul.s f15, f27, f29, rdn # perform operation
fmul.s f15, f27, f29, rmm # perform operation
fmul.s f15, f27, f29, rne # perform operation
fmul.s f15, f27, f29, rtz # perform operation
fmul.s f15, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fmul.s f30, f10, f6, dyn # perform operation
fmul.s f30, f10, f6, rdn # perform operation
fmul.s f30, f10, f6, rmm # perform operation
fmul.s f30, f10, f6, rne # perform operation
fmul.s f30, f10, f6, rtz # perform operation
fmul.s f30, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fmul.s f16, f11, f17, dyn # perform operation
fmul.s f16, f11, f17, rdn # perform operation
fmul.s f16, f11, f17, rmm # perform operation
fmul.s f16, f11, f17, rne # perform operation
fmul.s f16, f11, f17, rtz # perform operation
fmul.s f16, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fmul.s f5, f31, f19, dyn # perform operation
fmul.s f5, f31, f19, rdn # perform operation
fmul.s f5, f31, f19, rmm # perform operation
fmul.s f5, f31, f19, rne # perform operation
fmul.s f5, f31, f19, rtz # perform operation
fmul.s f5, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f10, f31, f17, dyn # perform operation
fmul.s f10, f31, f17, rdn # perform operation
fmul.s f10, f31, f17, rmm # perform operation
fmul.s f10, f31, f17, rne # perform operation
fmul.s f10, f31, f17, rtz # perform operation
fmul.s f10, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmul.s f17, f30, f9, dyn # perform operation
fmul.s f17, f30, f9, rdn # perform operation
fmul.s f17, f30, f9, rmm # perform operation
fmul.s f17, f30, f9, rne # perform operation
fmul.s f17, f30, f9, rtz # perform operation
fmul.s f17, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fmul.s f30, f13, f14, dyn # perform operation
fmul.s f30, f13, f14, rdn # perform operation
fmul.s f30, f13, f14, rmm # perform operation
fmul.s f30, f13, f14, rne # perform operation
fmul.s f30, f13, f14, rtz # perform operation
fmul.s f30, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f29, f27, f13, dyn # perform operation
fmul.s f29, f27, f13, rdn # perform operation
fmul.s f29, f27, f13, rmm # perform operation
fmul.s f29, f27, f13, rne # perform operation
fmul.s f29, f27, f13, rtz # perform operation
fmul.s f29, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fmul.s f9, f20, f8, dyn # perform operation
fmul.s f9, f20, f8, rdn # perform operation
fmul.s f9, f20, f8, rmm # perform operation
fmul.s f9, f20, f8, rne # perform operation
fmul.s f9, f20, f8, rtz # perform operation
fmul.s f9, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmul.s f15, f24, f17, dyn # perform operation
fmul.s f15, f24, f17, rdn # perform operation
fmul.s f15, f24, f17, rmm # perform operation
fmul.s f15, f24, f17, rne # perform operation
fmul.s f15, f24, f17, rtz # perform operation
fmul.s f15, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmul.s f10, f31, f26, dyn # perform operation
fmul.s f10, f31, f26, rdn # perform operation
fmul.s f10, f31, f26, rmm # perform operation
fmul.s f10, f31, f26, rne # perform operation
fmul.s f10, f31, f26, rtz # perform operation
fmul.s f10, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f5, f14, f19, dyn # perform operation
fmul.s f5, f14, f19, rdn # perform operation
fmul.s f5, f14, f19, rmm # perform operation
fmul.s f5, f14, f19, rne # perform operation
fmul.s f5, f14, f19, rtz # perform operation
fmul.s f5, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fmul.s f5, f20, f26, dyn # perform operation
fmul.s f5, f20, f26, rdn # perform operation
fmul.s f5, f20, f26, rmm # perform operation
fmul.s f5, f20, f26, rne # perform operation
fmul.s f5, f20, f26, rtz # perform operation
fmul.s f5, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fmul.s f7, f20, f24, dyn # perform operation
fmul.s f7, f20, f24, rdn # perform operation
fmul.s f7, f20, f24, rmm # perform operation
fmul.s f7, f20, f24, rne # perform operation
fmul.s f7, f20, f24, rtz # perform operation
fmul.s f7, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fmul.s f5, f2, f16, dyn # perform operation
fmul.s f5, f2, f16, rdn # perform operation
fmul.s f5, f2, f16, rmm # perform operation
fmul.s f5, f2, f16, rne # perform operation
fmul.s f5, f2, f16, rtz # perform operation
fmul.s f5, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f13, f24, f22, dyn # perform operation
fmul.s f13, f24, f22, rdn # perform operation
fmul.s f13, f24, f22, rmm # perform operation
fmul.s f13, f24, f22, rne # perform operation
fmul.s f13, f24, f22, rtz # perform operation
fmul.s f13, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fmul.s f9, f10, f18, dyn # perform operation
fmul.s f9, f10, f18, rdn # perform operation
fmul.s f9, f10, f18, rmm # perform operation
fmul.s f9, f10, f18, rne # perform operation
fmul.s f9, f10, f18, rtz # perform operation
fmul.s f9, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fmul.s f16, f15, f5, dyn # perform operation
fmul.s f16, f15, f5, rdn # perform operation
fmul.s f16, f15, f5, rmm # perform operation
fmul.s f16, f15, f5, rne # perform operation
fmul.s f16, f15, f5, rtz # perform operation
fmul.s f16, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f7, f20, f30, dyn # perform operation
fmul.s f7, f20, f30, rdn # perform operation
fmul.s f7, f20, f30, rmm # perform operation
fmul.s f7, f20, f30, rne # perform operation
fmul.s f7, f20, f30, rtz # perform operation
fmul.s f7, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f31, f10, f19, dyn # perform operation
fmul.s f31, f10, f19, rdn # perform operation
fmul.s f31, f10, f19, rmm # perform operation
fmul.s f31, f10, f19, rne # perform operation
fmul.s f31, f10, f19, rtz # perform operation
fmul.s f31, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fmul.s f5, f13, f6, dyn # perform operation
fmul.s f5, f13, f6, rdn # perform operation
fmul.s f5, f13, f6, rmm # perform operation
fmul.s f5, f13, f6, rne # perform operation
fmul.s f5, f13, f6, rtz # perform operation
fmul.s f5, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f15, f19, f1, dyn # perform operation
fmul.s f15, f19, f1, rdn # perform operation
fmul.s f15, f19, f1, rmm # perform operation
fmul.s f15, f19, f1, rne # perform operation
fmul.s f15, f19, f1, rtz # perform operation
fmul.s f15, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fmul.s f19, f9, f15, dyn # perform operation
fmul.s f19, f9, f15, rdn # perform operation
fmul.s f19, f9, f15, rmm # perform operation
fmul.s f19, f9, f15, rne # perform operation
fmul.s f19, f9, f15, rtz # perform operation
fmul.s f19, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmul.s f5, f28, f18, dyn # perform operation
fmul.s f5, f28, f18, rdn # perform operation
fmul.s f5, f28, f18, rmm # perform operation
fmul.s f5, f28, f18, rne # perform operation
fmul.s f5, f28, f18, rtz # perform operation
fmul.s f5, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fmul.s f31, f6, f29, dyn # perform operation
fmul.s f31, f6, f29, rdn # perform operation
fmul.s f31, f6, f29, rmm # perform operation
fmul.s f31, f6, f29, rne # perform operation
fmul.s f31, f6, f29, rtz # perform operation
fmul.s f31, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fmul.s f30, f6, f2, dyn # perform operation
fmul.s f30, f6, f2, rdn # perform operation
fmul.s f30, f6, f2, rmm # perform operation
fmul.s f30, f6, f2, rne # perform operation
fmul.s f30, f6, f2, rtz # perform operation
fmul.s f30, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmul.s f16, f1, f19, dyn # perform operation
fmul.s f16, f1, f19, rdn # perform operation
fmul.s f16, f1, f19, rmm # perform operation
fmul.s f16, f1, f19, rne # perform operation
fmul.s f16, f1, f19, rtz # perform operation
fmul.s f16, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fmul.s f16, f1, f26, dyn # perform operation
fmul.s f16, f1, f26, rdn # perform operation
fmul.s f16, f1, f26, rmm # perform operation
fmul.s f16, f1, f26, rne # perform operation
fmul.s f16, f1, f26, rtz # perform operation
fmul.s f16, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f26, f8, f5, dyn # perform operation
fmul.s f26, f8, f5, rdn # perform operation
fmul.s f26, f8, f5, rmm # perform operation
fmul.s f26, f8, f5, rne # perform operation
fmul.s f26, f8, f5, rtz # perform operation
fmul.s f26, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmul.s f29, f3, f24, dyn # perform operation
fmul.s f29, f3, f24, rdn # perform operation
fmul.s f29, f3, f24, rmm # perform operation
fmul.s f29, f3, f24, rne # perform operation
fmul.s f29, f3, f24, rtz # perform operation
fmul.s f29, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmul.s f22, f5, f14, dyn # perform operation
fmul.s f22, f5, f14, rdn # perform operation
fmul.s f22, f5, f14, rmm # perform operation
fmul.s f22, f5, f14, rne # perform operation
fmul.s f22, f5, f14, rtz # perform operation
fmul.s f22, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fmul.s f19, f22, f13, dyn # perform operation
fmul.s f19, f22, f13, rdn # perform operation
fmul.s f19, f22, f13, rmm # perform operation
fmul.s f19, f22, f13, rne # perform operation
fmul.s f19, f22, f13, rtz # perform operation
fmul.s f19, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fmul.s f19, f17, f5, dyn # perform operation
fmul.s f19, f17, f5, rdn # perform operation
fmul.s f19, f17, f5, rmm # perform operation
fmul.s f19, f17, f5, rne # perform operation
fmul.s f19, f17, f5, rtz # perform operation
fmul.s f19, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fmul.s f20, f29, f12, dyn # perform operation
fmul.s f20, f29, f12, rdn # perform operation
fmul.s f20, f29, f12, rmm # perform operation
fmul.s f20, f29, f12, rne # perform operation
fmul.s f20, f29, f12, rtz # perform operation
fmul.s f20, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fmul.s f2, f5, f12, dyn # perform operation
fmul.s f2, f5, f12, rdn # perform operation
fmul.s f2, f5, f12, rmm # perform operation
fmul.s f2, f5, f12, rne # perform operation
fmul.s f2, f5, f12, rtz # perform operation
fmul.s f2, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fmul.s f13, f22, f23, dyn # perform operation
fmul.s f13, f22, f23, rdn # perform operation
fmul.s f13, f22, f23, rmm # perform operation
fmul.s f13, f22, f23, rne # perform operation
fmul.s f13, f22, f23, rtz # perform operation
fmul.s f13, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fmul.s f2, f9, f12, dyn # perform operation
fmul.s f2, f9, f12, rdn # perform operation
fmul.s f2, f9, f12, rmm # perform operation
fmul.s f2, f9, f12, rne # perform operation
fmul.s f2, f9, f12, rtz # perform operation
fmul.s f2, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fmul.s f14, f20, f22, dyn # perform operation
fmul.s f14, f20, f22, rdn # perform operation
fmul.s f14, f20, f22, rmm # perform operation
fmul.s f14, f20, f22, rne # perform operation
fmul.s f14, f20, f22, rtz # perform operation
fmul.s f14, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fmul.s f28, f11, f25, dyn # perform operation
fmul.s f28, f11, f25, rdn # perform operation
fmul.s f28, f11, f25, rmm # perform operation
fmul.s f28, f11, f25, rne # perform operation
fmul.s f28, f11, f25, rtz # perform operation
fmul.s f28, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fmul.s f8, f20, f24, dyn # perform operation
fmul.s f8, f20, f24, rdn # perform operation
fmul.s f8, f20, f24, rmm # perform operation
fmul.s f8, f20, f24, rne # perform operation
fmul.s f8, f20, f24, rtz # perform operation
fmul.s f8, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f17, f27, f11, dyn # perform operation
fmul.s f17, f27, f11, rdn # perform operation
fmul.s f17, f27, f11, rmm # perform operation
fmul.s f17, f27, f11, rne # perform operation
fmul.s f17, f27, f11, rtz # perform operation
fmul.s f17, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmul.s f30, f15, f29, dyn # perform operation
fmul.s f30, f15, f29, rdn # perform operation
fmul.s f30, f15, f29, rmm # perform operation
fmul.s f30, f15, f29, rne # perform operation
fmul.s f30, f15, f29, rtz # perform operation
fmul.s f30, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f7, f12, f17, dyn # perform operation
fmul.s f7, f12, f17, rdn # perform operation
fmul.s f7, f12, f17, rmm # perform operation
fmul.s f7, f12, f17, rne # perform operation
fmul.s f7, f12, f17, rtz # perform operation
fmul.s f7, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fmul.s f26, f29, f27, dyn # perform operation
fmul.s f26, f29, f27, rdn # perform operation
fmul.s f26, f29, f27, rmm # perform operation
fmul.s f26, f29, f27, rne # perform operation
fmul.s f26, f29, f27, rtz # perform operation
fmul.s f26, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fmul.s f10, f26, f28, dyn # perform operation
fmul.s f10, f26, f28, rdn # perform operation
fmul.s f10, f26, f28, rmm # perform operation
fmul.s f10, f26, f28, rne # perform operation
fmul.s f10, f26, f28, rtz # perform operation
fmul.s f10, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fmul.s f6, f11, f12, dyn # perform operation
fmul.s f6, f11, f12, rdn # perform operation
fmul.s f6, f11, f12, rmm # perform operation
fmul.s f6, f11, f12, rne # perform operation
fmul.s f6, f11, f12, rtz # perform operation
fmul.s f6, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f23, f24, f21, dyn # perform operation
fmul.s f23, f24, f21, rdn # perform operation
fmul.s f23, f24, f21, rmm # perform operation
fmul.s f23, f24, f21, rne # perform operation
fmul.s f23, f24, f21, rtz # perform operation
fmul.s f23, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fmul.s f25, f6, f10, dyn # perform operation
fmul.s f25, f6, f10, rdn # perform operation
fmul.s f25, f6, f10, rmm # perform operation
fmul.s f25, f6, f10, rne # perform operation
fmul.s f25, f6, f10, rtz # perform operation
fmul.s f25, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fmul.s f1, f16, f19, dyn # perform operation
fmul.s f1, f16, f19, rdn # perform operation
fmul.s f1, f16, f19, rmm # perform operation
fmul.s f1, f16, f19, rne # perform operation
fmul.s f1, f16, f19, rtz # perform operation
fmul.s f1, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fmul.s f27, f21, f17, dyn # perform operation
fmul.s f27, f21, f17, rdn # perform operation
fmul.s f27, f21, f17, rmm # perform operation
fmul.s f27, f21, f17, rne # perform operation
fmul.s f27, f21, f17, rtz # perform operation
fmul.s f27, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fmul.s f23, f16, f24, dyn # perform operation
fmul.s f23, f16, f24, rdn # perform operation
fmul.s f23, f16, f24, rmm # perform operation
fmul.s f23, f16, f24, rne # perform operation
fmul.s f23, f16, f24, rtz # perform operation
fmul.s f23, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fmul.s f2, f23, f21, dyn # perform operation
fmul.s f2, f23, f21, rdn # perform operation
fmul.s f2, f23, f21, rmm # perform operation
fmul.s f2, f23, f21, rne # perform operation
fmul.s f2, f23, f21, rtz # perform operation
fmul.s f2, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fmul.s f22, f6, f27, dyn # perform operation
fmul.s f22, f6, f27, rdn # perform operation
fmul.s f22, f6, f27, rmm # perform operation
fmul.s f22, f6, f27, rne # perform operation
fmul.s f22, f6, f27, rtz # perform operation
fmul.s f22, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f25, f8, f24, dyn # perform operation
fmul.s f25, f8, f24, rdn # perform operation
fmul.s f25, f8, f24, rmm # perform operation
fmul.s f25, f8, f24, rne # perform operation
fmul.s f25, f8, f24, rtz # perform operation
fmul.s f25, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f31, f6, f9, dyn # perform operation
fmul.s f31, f6, f9, rdn # perform operation
fmul.s f31, f6, f9, rmm # perform operation
fmul.s f31, f6, f9, rne # perform operation
fmul.s f31, f6, f9, rtz # perform operation
fmul.s f31, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fmul.s f15, f14, f9, dyn # perform operation
fmul.s f15, f14, f9, rdn # perform operation
fmul.s f15, f14, f9, rmm # perform operation
fmul.s f15, f14, f9, rne # perform operation
fmul.s f15, f14, f9, rtz # perform operation
fmul.s f15, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fmul.s f10, f30, f24, dyn # perform operation
fmul.s f10, f30, f24, rdn # perform operation
fmul.s f10, f30, f24, rmm # perform operation
fmul.s f10, f30, f24, rne # perform operation
fmul.s f10, f30, f24, rtz # perform operation
fmul.s f10, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmul.s f30, f14, f8, dyn # perform operation
fmul.s f30, f14, f8, rdn # perform operation
fmul.s f30, f14, f8, rmm # perform operation
fmul.s f30, f14, f8, rne # perform operation
fmul.s f30, f14, f8, rtz # perform operation
fmul.s f30, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmul.s f3, f10, f14, dyn # perform operation
fmul.s f3, f10, f14, rdn # perform operation
fmul.s f3, f10, f14, rmm # perform operation
fmul.s f3, f10, f14, rne # perform operation
fmul.s f3, f10, f14, rtz # perform operation
fmul.s f3, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fmul.s f3, f28, f9, dyn # perform operation
fmul.s f3, f28, f9, rdn # perform operation
fmul.s f3, f28, f9, rmm # perform operation
fmul.s f3, f28, f9, rne # perform operation
fmul.s f3, f28, f9, rtz # perform operation
fmul.s f3, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fmul.s f15, f17, f7, dyn # perform operation
fmul.s f15, f17, f7, rdn # perform operation
fmul.s f15, f17, f7, rmm # perform operation
fmul.s f15, f17, f7, rne # perform operation
fmul.s f15, f17, f7, rtz # perform operation
fmul.s f15, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f6, f10, f23, dyn # perform operation
fmul.s f6, f10, f23, rdn # perform operation
fmul.s f6, f10, f23, rmm # perform operation
fmul.s f6, f10, f23, rne # perform operation
fmul.s f6, f10, f23, rtz # perform operation
fmul.s f6, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fmul.s f26, f6, f10, dyn # perform operation
fmul.s f26, f6, f10, rdn # perform operation
fmul.s f26, f6, f10, rmm # perform operation
fmul.s f26, f6, f10, rne # perform operation
fmul.s f26, f6, f10, rtz # perform operation
fmul.s f26, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fmul.s f17, f9, f14, dyn # perform operation
fmul.s f17, f9, f14, rdn # perform operation
fmul.s f17, f9, f14, rmm # perform operation
fmul.s f17, f9, f14, rne # perform operation
fmul.s f17, f9, f14, rtz # perform operation
fmul.s f17, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmul.s f7, f10, f15, dyn # perform operation
fmul.s f7, f10, f15, rdn # perform operation
fmul.s f7, f10, f15, rmm # perform operation
fmul.s f7, f10, f15, rne # perform operation
fmul.s f7, f10, f15, rtz # perform operation
fmul.s f7, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fmul.s f22, f31, f27, dyn # perform operation
fmul.s f22, f31, f27, rdn # perform operation
fmul.s f22, f31, f27, rmm # perform operation
fmul.s f22, f31, f27, rne # perform operation
fmul.s f22, f31, f27, rtz # perform operation
fmul.s f22, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fmul.s f18, f25, f16, dyn # perform operation
fmul.s f18, f25, f16, rdn # perform operation
fmul.s f18, f25, f16, rmm # perform operation
fmul.s f18, f25, f16, rne # perform operation
fmul.s f18, f25, f16, rtz # perform operation
fmul.s f18, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmul.s f20, f18, f13, dyn # perform operation
fmul.s f20, f18, f13, rdn # perform operation
fmul.s f20, f18, f13, rmm # perform operation
fmul.s f20, f18, f13, rne # perform operation
fmul.s f20, f18, f13, rtz # perform operation
fmul.s f20, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fmul.s f30, f25, f27, dyn # perform operation
fmul.s f30, f25, f27, rdn # perform operation
fmul.s f30, f25, f27, rmm # perform operation
fmul.s f30, f25, f27, rne # perform operation
fmul.s f30, f25, f27, rtz # perform operation
fmul.s f30, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fmul.s f7, f26, f10, dyn # perform operation
fmul.s f7, f26, f10, rdn # perform operation
fmul.s f7, f26, f10, rmm # perform operation
fmul.s f7, f26, f10, rne # perform operation
fmul.s f7, f26, f10, rtz # perform operation
fmul.s f7, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f16, f20, f17, dyn # perform operation
fmul.s f16, f20, f17, rdn # perform operation
fmul.s f16, f20, f17, rmm # perform operation
fmul.s f16, f20, f17, rne # perform operation
fmul.s f16, f20, f17, rtz # perform operation
fmul.s f16, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f21, f12, f1, dyn # perform operation
fmul.s f21, f12, f1, rdn # perform operation
fmul.s f21, f12, f1, rmm # perform operation
fmul.s f21, f12, f1, rne # perform operation
fmul.s f21, f12, f1, rtz # perform operation
fmul.s f21, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fmul.s f31, f26, f18, dyn # perform operation
fmul.s f31, f26, f18, rdn # perform operation
fmul.s f31, f26, f18, rmm # perform operation
fmul.s f31, f26, f18, rne # perform operation
fmul.s f31, f26, f18, rtz # perform operation
fmul.s f31, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fmul.s f1, f28, f2, dyn # perform operation
fmul.s f1, f28, f2, rdn # perform operation
fmul.s f1, f28, f2, rmm # perform operation
fmul.s f1, f28, f2, rne # perform operation
fmul.s f1, f28, f2, rtz # perform operation
fmul.s f1, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fmul.s f25, f2, f10, dyn # perform operation
fmul.s f25, f2, f10, rdn # perform operation
fmul.s f25, f2, f10, rmm # perform operation
fmul.s f25, f2, f10, rne # perform operation
fmul.s f25, f2, f10, rtz # perform operation
fmul.s f25, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fmul.s f1, f2, f14, dyn # perform operation
fmul.s f1, f2, f14, rdn # perform operation
fmul.s f1, f2, f14, rmm # perform operation
fmul.s f1, f2, f14, rne # perform operation
fmul.s f1, f2, f14, rtz # perform operation
fmul.s f1, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fmul.s f29, f6, f13, dyn # perform operation
fmul.s f29, f6, f13, rdn # perform operation
fmul.s f29, f6, f13, rmm # perform operation
fmul.s f29, f6, f13, rne # perform operation
fmul.s f29, f6, f13, rtz # perform operation
fmul.s f29, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fmul.s f13, f16, f30, dyn # perform operation
fmul.s f13, f16, f30, rdn # perform operation
fmul.s f13, f16, f30, rmm # perform operation
fmul.s f13, f16, f30, rne # perform operation
fmul.s f13, f16, f30, rtz # perform operation
fmul.s f13, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fmul.s f7, f31, f13, dyn # perform operation
fmul.s f7, f31, f13, rdn # perform operation
fmul.s f7, f31, f13, rmm # perform operation
fmul.s f7, f31, f13, rne # perform operation
fmul.s f7, f31, f13, rtz # perform operation
fmul.s f7, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmul.s f25, f7, f3, dyn # perform operation
fmul.s f25, f7, f3, rdn # perform operation
fmul.s f25, f7, f3, rmm # perform operation
fmul.s f25, f7, f3, rne # perform operation
fmul.s f25, f7, f3, rtz # perform operation
fmul.s f25, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fmul.s f9, f27, f31, dyn # perform operation
fmul.s f9, f27, f31, rdn # perform operation
fmul.s f9, f27, f31, rmm # perform operation
fmul.s f9, f27, f31, rne # perform operation
fmul.s f9, f27, f31, rtz # perform operation
fmul.s f9, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fmul.s f24, f20, f17, dyn # perform operation
fmul.s f24, f20, f17, rdn # perform operation
fmul.s f24, f20, f17, rmm # perform operation
fmul.s f24, f20, f17, rne # perform operation
fmul.s f24, f20, f17, rtz # perform operation
fmul.s f24, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fmul.s f2, f21, f5, dyn # perform operation
fmul.s f2, f21, f5, rdn # perform operation
fmul.s f2, f21, f5, rmm # perform operation
fmul.s f2, f21, f5, rne # perform operation
fmul.s f2, f21, f5, rtz # perform operation
fmul.s f2, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fmul.s f19, f7, f8, dyn # perform operation
fmul.s f19, f7, f8, rdn # perform operation
fmul.s f19, f7, f8, rmm # perform operation
fmul.s f19, f7, f8, rne # perform operation
fmul.s f19, f7, f8, rtz # perform operation
fmul.s f19, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f22, f29, f11, dyn # perform operation
fmul.s f22, f29, f11, rdn # perform operation
fmul.s f22, f29, f11, rmm # perform operation
fmul.s f22, f29, f11, rne # perform operation
fmul.s f22, f29, f11, rtz # perform operation
fmul.s f22, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fmul.s f15, f5, f17, dyn # perform operation
fmul.s f15, f5, f17, rdn # perform operation
fmul.s f15, f5, f17, rmm # perform operation
fmul.s f15, f5, f17, rne # perform operation
fmul.s f15, f5, f17, rtz # perform operation
fmul.s f15, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fmul.s f5, f21, f20, dyn # perform operation
fmul.s f5, f21, f20, rdn # perform operation
fmul.s f5, f21, f20, rmm # perform operation
fmul.s f5, f21, f20, rne # perform operation
fmul.s f5, f21, f20, rtz # perform operation
fmul.s f5, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fmul.s f31, f7, f3, dyn # perform operation
fmul.s f31, f7, f3, rdn # perform operation
fmul.s f31, f7, f3, rmm # perform operation
fmul.s f31, f7, f3, rne # perform operation
fmul.s f31, f7, f3, rtz # perform operation
fmul.s f31, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fmul.s f16, f27, f26, dyn # perform operation
fmul.s f16, f27, f26, rdn # perform operation
fmul.s f16, f27, f26, rmm # perform operation
fmul.s f16, f27, f26, rne # perform operation
fmul.s f16, f27, f26, rtz # perform operation
fmul.s f16, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fmul.s f23, f15, f6, dyn # perform operation
fmul.s f23, f15, f6, rdn # perform operation
fmul.s f23, f15, f6, rmm # perform operation
fmul.s f23, f15, f6, rne # perform operation
fmul.s f23, f15, f6, rtz # perform operation
fmul.s f23, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f30, f22, f26, dyn # perform operation
fmul.s f30, f22, f26, rdn # perform operation
fmul.s f30, f22, f26, rmm # perform operation
fmul.s f30, f22, f26, rne # perform operation
fmul.s f30, f22, f26, rtz # perform operation
fmul.s f30, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fmul.s f9, f15, f8, dyn # perform operation
fmul.s f9, f15, f8, rdn # perform operation
fmul.s f9, f15, f8, rmm # perform operation
fmul.s f9, f15, f8, rne # perform operation
fmul.s f9, f15, f8, rtz # perform operation
fmul.s f9, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmul.s f27, f30, f3, dyn # perform operation
fmul.s f27, f30, f3, rdn # perform operation
fmul.s f27, f30, f3, rmm # perform operation
fmul.s f27, f30, f3, rne # perform operation
fmul.s f27, f30, f3, rtz # perform operation
fmul.s f27, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fmul.s f30, f1, f8, dyn # perform operation
fmul.s f30, f1, f8, rdn # perform operation
fmul.s f30, f1, f8, rmm # perform operation
fmul.s f30, f1, f8, rne # perform operation
fmul.s f30, f1, f8, rtz # perform operation
fmul.s f30, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fmul.s f16, f28, f23, dyn # perform operation
fmul.s f16, f28, f23, rdn # perform operation
fmul.s f16, f28, f23, rmm # perform operation
fmul.s f16, f28, f23, rne # perform operation
fmul.s f16, f28, f23, rtz # perform operation
fmul.s f16, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fmul.s f25, f13, f3, dyn # perform operation
fmul.s f25, f13, f3, rdn # perform operation
fmul.s f25, f13, f3, rmm # perform operation
fmul.s f25, f13, f3, rne # perform operation
fmul.s f25, f13, f3, rtz # perform operation
fmul.s f25, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fmul.s f21, f18, f23, dyn # perform operation
fmul.s f21, f18, f23, rdn # perform operation
fmul.s f21, f18, f23, rmm # perform operation
fmul.s f21, f18, f23, rne # perform operation
fmul.s f21, f18, f23, rtz # perform operation
fmul.s f21, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fmul.s f23, f14, f16, dyn # perform operation
fmul.s f23, f14, f16, rdn # perform operation
fmul.s f23, f14, f16, rmm # perform operation
fmul.s f23, f14, f16, rne # perform operation
fmul.s f23, f14, f16, rtz # perform operation
fmul.s f23, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f9, f24, f10, dyn # perform operation
fmul.s f9, f24, f10, rdn # perform operation
fmul.s f9, f24, f10, rmm # perform operation
fmul.s f9, f24, f10, rne # perform operation
fmul.s f9, f24, f10, rtz # perform operation
fmul.s f9, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fmul.s f9, f11, f28, dyn # perform operation
fmul.s f9, f11, f28, rdn # perform operation
fmul.s f9, f11, f28, rmm # perform operation
fmul.s f9, f11, f28, rne # perform operation
fmul.s f9, f11, f28, rtz # perform operation
fmul.s f9, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fmul.s f9, f6, f12, dyn # perform operation
fmul.s f9, f6, f12, rdn # perform operation
fmul.s f9, f6, f12, rmm # perform operation
fmul.s f9, f6, f12, rne # perform operation
fmul.s f9, f6, f12, rtz # perform operation
fmul.s f9, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fmul.s f18, f16, f22, dyn # perform operation
fmul.s f18, f16, f22, rdn # perform operation
fmul.s f18, f16, f22, rmm # perform operation
fmul.s f18, f16, f22, rne # perform operation
fmul.s f18, f16, f22, rtz # perform operation
fmul.s f18, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmul.s f25, f13, f7, dyn # perform operation
fmul.s f25, f13, f7, rdn # perform operation
fmul.s f25, f13, f7, rmm # perform operation
fmul.s f25, f13, f7, rne # perform operation
fmul.s f25, f13, f7, rtz # perform operation
fmul.s f25, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fmul.s f5, f10, f2, dyn # perform operation
fmul.s f5, f10, f2, rdn # perform operation
fmul.s f5, f10, f2, rmm # perform operation
fmul.s f5, f10, f2, rne # perform operation
fmul.s f5, f10, f2, rtz # perform operation
fmul.s f5, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fmul.s f6, f8, f27, dyn # perform operation
fmul.s f6, f8, f27, rdn # perform operation
fmul.s f6, f8, f27, rmm # perform operation
fmul.s f6, f8, f27, rne # perform operation
fmul.s f6, f8, f27, rtz # perform operation
fmul.s f6, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fmul.s f1, f26, f5, dyn # perform operation
fmul.s f1, f26, f5, rdn # perform operation
fmul.s f1, f26, f5, rmm # perform operation
fmul.s f1, f26, f5, rne # perform operation
fmul.s f1, f26, f5, rtz # perform operation
fmul.s f1, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmul.s f12, f24, f22, dyn # perform operation
fmul.s f12, f24, f22, rdn # perform operation
fmul.s f12, f24, f22, rmm # perform operation
fmul.s f12, f24, f22, rne # perform operation
fmul.s f12, f24, f22, rtz # perform operation
fmul.s f12, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fmul.s f12, f27, f23, dyn # perform operation
fmul.s f12, f27, f23, rdn # perform operation
fmul.s f12, f27, f23, rmm # perform operation
fmul.s f12, f27, f23, rne # perform operation
fmul.s f12, f27, f23, rtz # perform operation
fmul.s f12, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fmul.s f10, f21, f13, dyn # perform operation
fmul.s f10, f21, f13, rdn # perform operation
fmul.s f10, f21, f13, rmm # perform operation
fmul.s f10, f21, f13, rne # perform operation
fmul.s f10, f21, f13, rtz # perform operation
fmul.s f10, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmul.s f28, f17, f10, dyn # perform operation
fmul.s f28, f17, f10, rdn # perform operation
fmul.s f28, f17, f10, rmm # perform operation
fmul.s f28, f17, f10, rne # perform operation
fmul.s f28, f17, f10, rtz # perform operation
fmul.s f28, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f31, f18, f9, dyn # perform operation
fmul.s f31, f18, f9, rdn # perform operation
fmul.s f31, f18, f9, rmm # perform operation
fmul.s f31, f18, f9, rne # perform operation
fmul.s f31, f18, f9, rtz # perform operation
fmul.s f31, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmul.s f14, f9, f13, dyn # perform operation
fmul.s f14, f9, f13, rdn # perform operation
fmul.s f14, f9, f13, rmm # perform operation
fmul.s f14, f9, f13, rne # perform operation
fmul.s f14, f9, f13, rtz # perform operation
fmul.s f14, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fmul.s f12, f21, f2, dyn # perform operation
fmul.s f12, f21, f2, rdn # perform operation
fmul.s f12, f21, f2, rmm # perform operation
fmul.s f12, f21, f2, rne # perform operation
fmul.s f12, f21, f2, rtz # perform operation
fmul.s f12, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fmul.s f15, f10, f16, dyn # perform operation
fmul.s f15, f10, f16, rdn # perform operation
fmul.s f15, f10, f16, rmm # perform operation
fmul.s f15, f10, f16, rne # perform operation
fmul.s f15, f10, f16, rtz # perform operation
fmul.s f15, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f13, f23, f10, dyn # perform operation
fmul.s f13, f23, f10, rdn # perform operation
fmul.s f13, f23, f10, rmm # perform operation
fmul.s f13, f23, f10, rne # perform operation
fmul.s f13, f23, f10, rtz # perform operation
fmul.s f13, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f3, f11, f2, dyn # perform operation
fmul.s f3, f11, f2, rdn # perform operation
fmul.s f3, f11, f2, rmm # perform operation
fmul.s f3, f11, f2, rne # perform operation
fmul.s f3, f11, f2, rtz # perform operation
fmul.s f3, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fmul.s f21, f23, f31, dyn # perform operation
fmul.s f21, f23, f31, rdn # perform operation
fmul.s f21, f23, f31, rmm # perform operation
fmul.s f21, f23, f31, rne # perform operation
fmul.s f21, f23, f31, rtz # perform operation
fmul.s f21, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fmul.s f23, f26, f1, dyn # perform operation
fmul.s f23, f26, f1, rdn # perform operation
fmul.s f23, f26, f1, rmm # perform operation
fmul.s f23, f26, f1, rne # perform operation
fmul.s f23, f26, f1, rtz # perform operation
fmul.s f23, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f26, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fmul.s f28, f21, f7, dyn # perform operation
fmul.s f28, f21, f7, rdn # perform operation
fmul.s f28, f21, f7, rmm # perform operation
fmul.s f28, f21, f7, rne # perform operation
fmul.s f28, f21, f7, rtz # perform operation
fmul.s f28, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fmul.s f31, f12, f10, dyn # perform operation
fmul.s f31, f12, f10, rdn # perform operation
fmul.s f31, f12, f10, rmm # perform operation
fmul.s f31, f12, f10, rne # perform operation
fmul.s f31, f12, f10, rtz # perform operation
fmul.s f31, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fmul.s f8, f29, f5, dyn # perform operation
fmul.s f8, f29, f5, rdn # perform operation
fmul.s f8, f29, f5, rmm # perform operation
fmul.s f8, f29, f5, rne # perform operation
fmul.s f8, f29, f5, rtz # perform operation
fmul.s f8, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fmul.s f13, f29, f31, dyn # perform operation
fmul.s f13, f29, f31, rdn # perform operation
fmul.s f13, f29, f31, rmm # perform operation
fmul.s f13, f29, f31, rne # perform operation
fmul.s f13, f29, f31, rtz # perform operation
fmul.s f13, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fmul.s f8, f13, f20, dyn # perform operation
fmul.s f8, f13, f20, rdn # perform operation
fmul.s f8, f13, f20, rmm # perform operation
fmul.s f8, f13, f20, rne # perform operation
fmul.s f8, f13, f20, rtz # perform operation
fmul.s f8, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fmul.s f27, f24, f23, dyn # perform operation
fmul.s f27, f24, f23, rdn # perform operation
fmul.s f27, f24, f23, rmm # perform operation
fmul.s f27, f24, f23, rne # perform operation
fmul.s f27, f24, f23, rtz # perform operation
fmul.s f27, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fmul.s f22, f19, f28, dyn # perform operation
fmul.s f22, f19, f28, rdn # perform operation
fmul.s f22, f19, f28, rmm # perform operation
fmul.s f22, f19, f28, rne # perform operation
fmul.s f22, f19, f28, rtz # perform operation
fmul.s f22, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fmul.s f19, f22, f18, dyn # perform operation
fmul.s f19, f22, f18, rdn # perform operation
fmul.s f19, f22, f18, rmm # perform operation
fmul.s f19, f22, f18, rne # perform operation
fmul.s f19, f22, f18, rtz # perform operation
fmul.s f19, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fmul.s f8, f16, f20, dyn # perform operation
fmul.s f8, f16, f20, rdn # perform operation
fmul.s f8, f16, f20, rmm # perform operation
fmul.s f8, f16, f20, rne # perform operation
fmul.s f8, f16, f20, rtz # perform operation
fmul.s f8, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f25, f27, f22, dyn # perform operation
fmul.s f25, f27, f22, rdn # perform operation
fmul.s f25, f27, f22, rmm # perform operation
fmul.s f25, f27, f22, rne # perform operation
fmul.s f25, f27, f22, rtz # perform operation
fmul.s f25, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fmul.s f16, f1, f19, dyn # perform operation
fmul.s f16, f1, f19, rdn # perform operation
fmul.s f16, f1, f19, rmm # perform operation
fmul.s f16, f1, f19, rne # perform operation
fmul.s f16, f1, f19, rtz # perform operation
fmul.s f16, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fmul.s f15, f28, f27, dyn # perform operation
fmul.s f15, f28, f27, rdn # perform operation
fmul.s f15, f28, f27, rmm # perform operation
fmul.s f15, f28, f27, rne # perform operation
fmul.s f15, f28, f27, rtz # perform operation
fmul.s f15, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fmul.s f6, f22, f26, dyn # perform operation
fmul.s f6, f22, f26, rdn # perform operation
fmul.s f6, f22, f26, rmm # perform operation
fmul.s f6, f22, f26, rne # perform operation
fmul.s f6, f22, f26, rtz # perform operation
fmul.s f6, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fmul.s f14, f12, f13, dyn # perform operation
fmul.s f14, f12, f13, rdn # perform operation
fmul.s f14, f12, f13, rmm # perform operation
fmul.s f14, f12, f13, rne # perform operation
fmul.s f14, f12, f13, rtz # perform operation
fmul.s f14, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fmul.s f26, f25, f18, dyn # perform operation
fmul.s f26, f25, f18, rdn # perform operation
fmul.s f26, f25, f18, rmm # perform operation
fmul.s f26, f25, f18, rne # perform operation
fmul.s f26, f25, f18, rtz # perform operation
fmul.s f26, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fmul.s f14, f21, f19, dyn # perform operation
fmul.s f14, f21, f19, rdn # perform operation
fmul.s f14, f21, f19, rmm # perform operation
fmul.s f14, f21, f19, rne # perform operation
fmul.s f14, f21, f19, rtz # perform operation
fmul.s f14, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmul.s f26, f30, f22, dyn # perform operation
fmul.s f26, f30, f22, rdn # perform operation
fmul.s f26, f30, f22, rmm # perform operation
fmul.s f26, f30, f22, rne # perform operation
fmul.s f26, f30, f22, rtz # perform operation
fmul.s f26, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmul.s f2, f9, f16, dyn # perform operation
fmul.s f2, f9, f16, rdn # perform operation
fmul.s f2, f9, f16, rmm # perform operation
fmul.s f2, f9, f16, rne # perform operation
fmul.s f2, f9, f16, rtz # perform operation
fmul.s f2, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fmul.s f25, f3, f31, dyn # perform operation
fmul.s f25, f3, f31, rdn # perform operation
fmul.s f25, f3, f31, rmm # perform operation
fmul.s f25, f3, f31, rne # perform operation
fmul.s f25, f3, f31, rtz # perform operation
fmul.s f25, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fmul.s f5, f15, f17, dyn # perform operation
fmul.s f5, f15, f17, rdn # perform operation
fmul.s f5, f15, f17, rmm # perform operation
fmul.s f5, f15, f17, rne # perform operation
fmul.s f5, f15, f17, rtz # perform operation
fmul.s f5, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmul.s f10, f14, f21, dyn # perform operation
fmul.s f10, f14, f21, rdn # perform operation
fmul.s f10, f14, f21, rmm # perform operation
fmul.s f10, f14, f21, rne # perform operation
fmul.s f10, f14, f21, rtz # perform operation
fmul.s f10, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f11, f16, f25, dyn # perform operation
fmul.s f11, f16, f25, rdn # perform operation
fmul.s f11, f16, f25, rmm # perform operation
fmul.s f11, f16, f25, rne # perform operation
fmul.s f11, f16, f25, rtz # perform operation
fmul.s f11, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fmul.s f19, f15, f27, dyn # perform operation
fmul.s f19, f15, f27, rdn # perform operation
fmul.s f19, f15, f27, rmm # perform operation
fmul.s f19, f15, f27, rne # perform operation
fmul.s f19, f15, f27, rtz # perform operation
fmul.s f19, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmul.s f31, f22, f24, dyn # perform operation
fmul.s f31, f22, f24, rdn # perform operation
fmul.s f31, f22, f24, rmm # perform operation
fmul.s f31, f22, f24, rne # perform operation
fmul.s f31, f22, f24, rtz # perform operation
fmul.s f31, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fmul.s f16, f19, f15, dyn # perform operation
fmul.s f16, f19, f15, rdn # perform operation
fmul.s f16, f19, f15, rmm # perform operation
fmul.s f16, f19, f15, rne # perform operation
fmul.s f16, f19, f15, rtz # perform operation
fmul.s f16, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmul.s f9, f22, f26, dyn # perform operation
fmul.s f9, f22, f26, rdn # perform operation
fmul.s f9, f22, f26, rmm # perform operation
fmul.s f9, f22, f26, rne # perform operation
fmul.s f9, f22, f26, rtz # perform operation
fmul.s f9, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fmul.s f16, f29, f11, dyn # perform operation
fmul.s f16, f29, f11, rdn # perform operation
fmul.s f16, f29, f11, rmm # perform operation
fmul.s f16, f29, f11, rne # perform operation
fmul.s f16, f29, f11, rtz # perform operation
fmul.s f16, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f19, f28, f29, dyn # perform operation
fmul.s f19, f28, f29, rdn # perform operation
fmul.s f19, f28, f29, rmm # perform operation
fmul.s f19, f28, f29, rne # perform operation
fmul.s f19, f28, f29, rtz # perform operation
fmul.s f19, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmul.s f24, f17, f16, dyn # perform operation
fmul.s f24, f17, f16, rdn # perform operation
fmul.s f24, f17, f16, rmm # perform operation
fmul.s f24, f17, f16, rne # perform operation
fmul.s f24, f17, f16, rtz # perform operation
fmul.s f24, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmul.s f18, f5, f21, dyn # perform operation
fmul.s f18, f5, f21, rdn # perform operation
fmul.s f18, f5, f21, rmm # perform operation
fmul.s f18, f5, f21, rne # perform operation
fmul.s f18, f5, f21, rtz # perform operation
fmul.s f18, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fmul.s f21, f6, f17, dyn # perform operation
fmul.s f21, f6, f17, rdn # perform operation
fmul.s f21, f6, f17, rmm # perform operation
fmul.s f21, f6, f17, rne # perform operation
fmul.s f21, f6, f17, rtz # perform operation
fmul.s f21, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f2, f5, f20, dyn # perform operation
fmul.s f2, f5, f20, rdn # perform operation
fmul.s f2, f5, f20, rmm # perform operation
fmul.s f2, f5, f20, rne # perform operation
fmul.s f2, f5, f20, rtz # perform operation
fmul.s f2, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f25, f8, f10, dyn # perform operation
fmul.s f25, f8, f10, rdn # perform operation
fmul.s f25, f8, f10, rmm # perform operation
fmul.s f25, f8, f10, rne # perform operation
fmul.s f25, f8, f10, rtz # perform operation
fmul.s f25, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fmul.s f17, f11, f30, dyn # perform operation
fmul.s f17, f11, f30, rdn # perform operation
fmul.s f17, f11, f30, rmm # perform operation
fmul.s f17, f11, f30, rne # perform operation
fmul.s f17, f11, f30, rtz # perform operation
fmul.s f17, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fmul.s f2, f12, f17, dyn # perform operation
fmul.s f2, f12, f17, rdn # perform operation
fmul.s f2, f12, f17, rmm # perform operation
fmul.s f2, f12, f17, rne # perform operation
fmul.s f2, f12, f17, rtz # perform operation
fmul.s f2, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fmul.s f15, f19, f12, dyn # perform operation
fmul.s f15, f19, f12, rdn # perform operation
fmul.s f15, f19, f12, rmm # perform operation
fmul.s f15, f19, f12, rne # perform operation
fmul.s f15, f19, f12, rtz # perform operation
fmul.s f15, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fmul.s f1, f29, f25, dyn # perform operation
fmul.s f1, f29, f25, rdn # perform operation
fmul.s f1, f29, f25, rmm # perform operation
fmul.s f1, f29, f25, rne # perform operation
fmul.s f1, f29, f25, rtz # perform operation
fmul.s f1, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fmul.s f21, f24, f3, dyn # perform operation
fmul.s f21, f24, f3, rdn # perform operation
fmul.s f21, f24, f3, rmm # perform operation
fmul.s f21, f24, f3, rne # perform operation
fmul.s f21, f24, f3, rtz # perform operation
fmul.s f21, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fmul.s f25, f14, f19, dyn # perform operation
fmul.s f25, f14, f19, rdn # perform operation
fmul.s f25, f14, f19, rmm # perform operation
fmul.s f25, f14, f19, rne # perform operation
fmul.s f25, f14, f19, rtz # perform operation
fmul.s f25, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fmul.s f15, f9, f24, dyn # perform operation
fmul.s f15, f9, f24, rdn # perform operation
fmul.s f15, f9, f24, rmm # perform operation
fmul.s f15, f9, f24, rne # perform operation
fmul.s f15, f9, f24, rtz # perform operation
fmul.s f15, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f18, f29, f30, dyn # perform operation
fmul.s f18, f29, f30, rdn # perform operation
fmul.s f18, f29, f30, rmm # perform operation
fmul.s f18, f29, f30, rne # perform operation
fmul.s f18, f29, f30, rtz # perform operation
fmul.s f18, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fmul.s f8, f22, f3, dyn # perform operation
fmul.s f8, f22, f3, rdn # perform operation
fmul.s f8, f22, f3, rmm # perform operation
fmul.s f8, f22, f3, rne # perform operation
fmul.s f8, f22, f3, rtz # perform operation
fmul.s f8, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fmul.s f14, f31, f7, dyn # perform operation
fmul.s f14, f31, f7, rdn # perform operation
fmul.s f14, f31, f7, rmm # perform operation
fmul.s f14, f31, f7, rne # perform operation
fmul.s f14, f31, f7, rtz # perform operation
fmul.s f14, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fmul.s f6, f10, f3, dyn # perform operation
fmul.s f6, f10, f3, rdn # perform operation
fmul.s f6, f10, f3, rmm # perform operation
fmul.s f6, f10, f3, rne # perform operation
fmul.s f6, f10, f3, rtz # perform operation
fmul.s f6, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fmul.s f13, f1, f3, dyn # perform operation
fmul.s f13, f1, f3, rdn # perform operation
fmul.s f13, f1, f3, rmm # perform operation
fmul.s f13, f1, f3, rne # perform operation
fmul.s f13, f1, f3, rtz # perform operation
fmul.s f13, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f1, f3 # perform operation


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
