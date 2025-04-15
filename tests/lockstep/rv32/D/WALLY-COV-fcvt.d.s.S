///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.d.s.S
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
add x18, x19, x13 # perform first operation
fcvt.d.s f5, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x15, x11 # perform first operation
fcvt.d.s f27, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x29, x31 # perform first operation
fcvt.d.s f19, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f22, f21, f9 # perform first operation
fcvt.d.s f22, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x5, x31 # perform first operation
fcvt.d.s f5, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x6, x12 # perform first operation
fcvt.d.s f24, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f9, f31, f20 # perform first operation
fcvt.d.s f9, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f30, f17 # perform first operation
fcvt.d.s f8, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f1, f8 # perform first operation
fcvt.d.s f18, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f21, f15 # perform first operation
fcvt.d.s f21, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f26, f9 # perform first operation
fcvt.d.s f9, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f1, f9 # perform first operation
fcvt.d.s f5, f22 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bcc205ca # load x3 with value 0x00000000bcc205ca
sw x3, 0(x2) # store 0x00000000bcc205ca in memory
flw f0, 0(x2) # load 0x00000000bcc205ca from memory into f0
fcvt.d.s f22, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000bb4d324 # load x3 with value 0x000000000bb4d324
sw x3, 0(x2) # store 0x000000000bb4d324 in memory
flw f1, 0(x2) # load 0x000000000bb4d324 from memory into f1
fcvt.d.s f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c27a2271 # load x3 with value 0x00000000c27a2271
sw x3, 0(x2) # store 0x00000000c27a2271 in memory
flw f2, 0(x2) # load 0x00000000c27a2271 from memory into f2
fcvt.d.s f31, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006fa1f086 # load x3 with value 0x000000006fa1f086
sw x3, 0(x2) # store 0x000000006fa1f086 in memory
flw f3, 0(x2) # load 0x000000006fa1f086 from memory into f3
fcvt.d.s f19, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000657a9bbe # load x3 with value 0x00000000657a9bbe
sw x3, 0(x2) # store 0x00000000657a9bbe in memory
flw f4, 0(x2) # load 0x00000000657a9bbe from memory into f4
fcvt.d.s f1, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000fbc02666 # load x3 with value 0x00000000fbc02666
sw x3, 0(x2) # store 0x00000000fbc02666 in memory
flw f5, 0(x2) # load 0x00000000fbc02666 from memory into f5
fcvt.d.s f23, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000447061bc # load x3 with value 0x00000000447061bc
sw x3, 0(x2) # store 0x00000000447061bc in memory
flw f6, 0(x2) # load 0x00000000447061bc from memory into f6
fcvt.d.s f8, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000973dd853 # load x3 with value 0x00000000973dd853
sw x3, 0(x2) # store 0x00000000973dd853 in memory
flw f7, 0(x2) # load 0x00000000973dd853 from memory into f7
fcvt.d.s f20, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008d3ea1fc # load x3 with value 0x000000008d3ea1fc
sw x3, 0(x2) # store 0x000000008d3ea1fc in memory
flw f8, 0(x2) # load 0x000000008d3ea1fc from memory into f8
fcvt.d.s f13, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000013458447 # load x3 with value 0x0000000013458447
sw x3, 0(x2) # store 0x0000000013458447 in memory
flw f9, 0(x2) # load 0x0000000013458447 from memory into f9
fcvt.d.s f24, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dbc653b0 # load x3 with value 0x00000000dbc653b0
sw x3, 0(x2) # store 0x00000000dbc653b0 in memory
flw f10, 0(x2) # load 0x00000000dbc653b0 from memory into f10
fcvt.d.s f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000db455b3b # load x3 with value 0x00000000db455b3b
sw x3, 0(x2) # store 0x00000000db455b3b in memory
flw f11, 0(x2) # load 0x00000000db455b3b from memory into f11
fcvt.d.s f1, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000043f0aa3d # load x3 with value 0x0000000043f0aa3d
sw x3, 0(x2) # store 0x0000000043f0aa3d in memory
flw f12, 0(x2) # load 0x0000000043f0aa3d from memory into f12
fcvt.d.s f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000408c9050 # load x3 with value 0x00000000408c9050
sw x3, 0(x2) # store 0x00000000408c9050 in memory
flw f13, 0(x2) # load 0x00000000408c9050 from memory into f13
fcvt.d.s f12, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007b0c07a1 # load x3 with value 0x000000007b0c07a1
sw x3, 0(x2) # store 0x000000007b0c07a1 in memory
flw f14, 0(x2) # load 0x000000007b0c07a1 from memory into f14
fcvt.d.s f13, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001d948799 # load x3 with value 0x000000001d948799
sw x3, 0(x2) # store 0x000000001d948799 in memory
flw f15, 0(x2) # load 0x000000001d948799 from memory into f15
fcvt.d.s f19, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007b241431 # load x3 with value 0x000000007b241431
sw x3, 0(x2) # store 0x000000007b241431 in memory
flw f16, 0(x2) # load 0x000000007b241431 from memory into f16
fcvt.d.s f21, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b0612106 # load x3 with value 0x00000000b0612106
sw x3, 0(x2) # store 0x00000000b0612106 in memory
flw f17, 0(x2) # load 0x00000000b0612106 from memory into f17
fcvt.d.s f15, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000055cf924a # load x3 with value 0x0000000055cf924a
sw x3, 0(x2) # store 0x0000000055cf924a in memory
flw f18, 0(x2) # load 0x0000000055cf924a from memory into f18
fcvt.d.s f1, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000fd2e03b5 # load x3 with value 0x00000000fd2e03b5
sw x3, 0(x2) # store 0x00000000fd2e03b5 in memory
flw f19, 0(x2) # load 0x00000000fd2e03b5 from memory into f19
fcvt.d.s f6, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bc23688a # load x3 with value 0x00000000bc23688a
sw x3, 0(x2) # store 0x00000000bc23688a in memory
flw f20, 0(x2) # load 0x00000000bc23688a from memory into f20
fcvt.d.s f15, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000013d014c4 # load x3 with value 0x0000000013d014c4
sw x3, 0(x2) # store 0x0000000013d014c4 in memory
flw f21, 0(x2) # load 0x0000000013d014c4 from memory into f21
fcvt.d.s f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000de98c60a # load x3 with value 0x00000000de98c60a
sw x3, 0(x2) # store 0x00000000de98c60a in memory
flw f22, 0(x2) # load 0x00000000de98c60a from memory into f22
fcvt.d.s f19, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000897c66d3 # load x3 with value 0x00000000897c66d3
sw x3, 0(x2) # store 0x00000000897c66d3 in memory
flw f23, 0(x2) # load 0x00000000897c66d3 from memory into f23
fcvt.d.s f25, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000418045fb # load x3 with value 0x00000000418045fb
sw x3, 0(x2) # store 0x00000000418045fb in memory
flw f24, 0(x2) # load 0x00000000418045fb from memory into f24
fcvt.d.s f1, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000658680b5 # load x3 with value 0x00000000658680b5
sw x3, 0(x2) # store 0x00000000658680b5 in memory
flw f25, 0(x2) # load 0x00000000658680b5 from memory into f25
fcvt.d.s f18, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000271d9d97 # load x3 with value 0x00000000271d9d97
sw x3, 0(x2) # store 0x00000000271d9d97 in memory
flw f26, 0(x2) # load 0x00000000271d9d97 from memory into f26
fcvt.d.s f27, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e5f00b2f # load x3 with value 0x00000000e5f00b2f
sw x3, 0(x2) # store 0x00000000e5f00b2f in memory
flw f27, 0(x2) # load 0x00000000e5f00b2f from memory into f27
fcvt.d.s f7, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000aecc450c # load x3 with value 0x00000000aecc450c
sw x3, 0(x2) # store 0x00000000aecc450c in memory
flw f28, 0(x2) # load 0x00000000aecc450c from memory into f28
fcvt.d.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000088d1dbb2 # load x3 with value 0x0000000088d1dbb2
sw x3, 0(x2) # store 0x0000000088d1dbb2 in memory
flw f29, 0(x2) # load 0x0000000088d1dbb2 from memory into f29
fcvt.d.s f5, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f539b34 # load x3 with value 0x000000003f539b34
sw x3, 0(x2) # store 0x000000003f539b34 in memory
flw f30, 0(x2) # load 0x000000003f539b34 from memory into f30
fcvt.d.s f19, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b1a96206 # load x3 with value 0x00000000b1a96206
sw x3, 0(x2) # store 0x00000000b1a96206 in memory
flw f31, 0(x2) # load 0x00000000b1a96206 from memory into f31
fcvt.d.s f2, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000086b95044 # load x3 with value 0x0000000086b95044
sw x3, 0(x2) # store 0x0000000086b95044 in memory
flw f23, 0(x2) # load 0x0000000086b95044 from memory into f23
fcvt.d.s f0, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f2498c43 # load x3 with value 0x00000000f2498c43
sw x3, 0(x2) # store 0x00000000f2498c43 in memory
flw f27, 0(x2) # load 0x00000000f2498c43 from memory into f27
fcvt.d.s f1, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000058c37b9d # load x3 with value 0x0000000058c37b9d
sw x3, 0(x2) # store 0x0000000058c37b9d in memory
flw f24, 0(x2) # load 0x0000000058c37b9d from memory into f24
fcvt.d.s f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f9e7ce4e # load x3 with value 0x00000000f9e7ce4e
sw x3, 0(x2) # store 0x00000000f9e7ce4e in memory
flw f5, 0(x2) # load 0x00000000f9e7ce4e from memory into f5
fcvt.d.s f3, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e4f2c4d9 # load x3 with value 0x00000000e4f2c4d9
sw x3, 0(x2) # store 0x00000000e4f2c4d9 in memory
flw f8, 0(x2) # load 0x00000000e4f2c4d9 from memory into f8
fcvt.d.s f4, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a6ca96bf # load x3 with value 0x00000000a6ca96bf
sw x3, 0(x2) # store 0x00000000a6ca96bf in memory
flw f13, 0(x2) # load 0x00000000a6ca96bf from memory into f13
fcvt.d.s f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009a969156 # load x3 with value 0x000000009a969156
sw x3, 0(x2) # store 0x000000009a969156 in memory
flw f7, 0(x2) # load 0x000000009a969156 from memory into f7
fcvt.d.s f6, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f7225875 # load x3 with value 0x00000000f7225875
sw x3, 0(x2) # store 0x00000000f7225875 in memory
flw f11, 0(x2) # load 0x00000000f7225875 from memory into f11
fcvt.d.s f7, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000005096a847 # load x3 with value 0x000000005096a847
sw x3, 0(x2) # store 0x000000005096a847 in memory
flw f28, 0(x2) # load 0x000000005096a847 from memory into f28
fcvt.d.s f8, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000148a0c43 # load x3 with value 0x00000000148a0c43
sw x3, 0(x2) # store 0x00000000148a0c43 in memory
flw f5, 0(x2) # load 0x00000000148a0c43 from memory into f5
fcvt.d.s f9, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f0e2bab9 # load x3 with value 0x00000000f0e2bab9
sw x3, 0(x2) # store 0x00000000f0e2bab9 in memory
flw f26, 0(x2) # load 0x00000000f0e2bab9 from memory into f26
fcvt.d.s f10, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000009a638314 # load x3 with value 0x000000009a638314
sw x3, 0(x2) # store 0x000000009a638314 in memory
flw f23, 0(x2) # load 0x000000009a638314 from memory into f23
fcvt.d.s f11, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001c840623 # load x3 with value 0x000000001c840623
sw x3, 0(x2) # store 0x000000001c840623 in memory
flw f1, 0(x2) # load 0x000000001c840623 from memory into f1
fcvt.d.s f12, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bd5b5318 # load x3 with value 0x00000000bd5b5318
sw x3, 0(x2) # store 0x00000000bd5b5318 in memory
flw f24, 0(x2) # load 0x00000000bd5b5318 from memory into f24
fcvt.d.s f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f41e98be # load x3 with value 0x00000000f41e98be
sw x3, 0(x2) # store 0x00000000f41e98be in memory
flw f24, 0(x2) # load 0x00000000f41e98be from memory into f24
fcvt.d.s f14, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000076a9ba3b # load x3 with value 0x0000000076a9ba3b
sw x3, 0(x2) # store 0x0000000076a9ba3b in memory
flw f29, 0(x2) # load 0x0000000076a9ba3b from memory into f29
fcvt.d.s f15, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000563cfb05 # load x3 with value 0x00000000563cfb05
sw x3, 0(x2) # store 0x00000000563cfb05 in memory
flw f8, 0(x2) # load 0x00000000563cfb05 from memory into f8
fcvt.d.s f16, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008b044e4a # load x3 with value 0x000000008b044e4a
sw x3, 0(x2) # store 0x000000008b044e4a in memory
flw f23, 0(x2) # load 0x000000008b044e4a from memory into f23
fcvt.d.s f17, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000cba7f107 # load x3 with value 0x00000000cba7f107
sw x3, 0(x2) # store 0x00000000cba7f107 in memory
flw f5, 0(x2) # load 0x00000000cba7f107 from memory into f5
fcvt.d.s f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ba66766f # load x3 with value 0x00000000ba66766f
sw x3, 0(x2) # store 0x00000000ba66766f in memory
flw f22, 0(x2) # load 0x00000000ba66766f from memory into f22
fcvt.d.s f19, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004ccbeb69 # load x3 with value 0x000000004ccbeb69
sw x3, 0(x2) # store 0x000000004ccbeb69 in memory
flw f13, 0(x2) # load 0x000000004ccbeb69 from memory into f13
fcvt.d.s f20, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000089c61afe # load x3 with value 0x0000000089c61afe
sw x3, 0(x2) # store 0x0000000089c61afe in memory
flw f6, 0(x2) # load 0x0000000089c61afe from memory into f6
fcvt.d.s f21, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000095ee6058 # load x3 with value 0x0000000095ee6058
sw x3, 0(x2) # store 0x0000000095ee6058 in memory
flw f21, 0(x2) # load 0x0000000095ee6058 from memory into f21
fcvt.d.s f22, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000705bfac5 # load x3 with value 0x00000000705bfac5
sw x3, 0(x2) # store 0x00000000705bfac5 in memory
flw f9, 0(x2) # load 0x00000000705bfac5 from memory into f9
fcvt.d.s f23, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e74d94b6 # load x3 with value 0x00000000e74d94b6
sw x3, 0(x2) # store 0x00000000e74d94b6 in memory
flw f30, 0(x2) # load 0x00000000e74d94b6 from memory into f30
fcvt.d.s f24, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000d7c38017 # load x3 with value 0x00000000d7c38017
sw x3, 0(x2) # store 0x00000000d7c38017 in memory
flw f26, 0(x2) # load 0x00000000d7c38017 from memory into f26
fcvt.d.s f25, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006df5d84f # load x3 with value 0x000000006df5d84f
sw x3, 0(x2) # store 0x000000006df5d84f in memory
flw f20, 0(x2) # load 0x000000006df5d84f from memory into f20
fcvt.d.s f26, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000e90bb5 # load x3 with value 0x0000000000e90bb5
sw x3, 0(x2) # store 0x0000000000e90bb5 in memory
flw f27, 0(x2) # load 0x0000000000e90bb5 from memory into f27
fcvt.d.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000faadbd82 # load x3 with value 0x00000000faadbd82
sw x3, 0(x2) # store 0x00000000faadbd82 in memory
flw f18, 0(x2) # load 0x00000000faadbd82 from memory into f18
fcvt.d.s f28, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000aae00130 # load x3 with value 0x00000000aae00130
sw x3, 0(x2) # store 0x00000000aae00130 in memory
flw f29, 0(x2) # load 0x00000000aae00130 from memory into f29
fcvt.d.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001dbe13d8 # load x3 with value 0x000000001dbe13d8
sw x3, 0(x2) # store 0x000000001dbe13d8 in memory
flw f13, 0(x2) # load 0x000000001dbe13d8 from memory into f13
fcvt.d.s f30, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000dcc21751 # load x3 with value 0x00000000dcc21751
sw x3, 0(x2) # store 0x00000000dcc21751 in memory
flw f25, 0(x2) # load 0x00000000dcc21751 from memory into f25
fcvt.d.s f31, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flw f27, 0(x2) # load 0x0000000000000000 from memory into f27
fcvt.d.s f31, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080000000 # load x3 with value 0x0000000080000000
sw x3, 0(x2) # store 0x0000000080000000 in memory
flw f1, 0(x2) # load 0x0000000080000000 from memory into f1
fcvt.d.s f5, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sw x3, 0(x2) # store 0x000000003f800000 in memory
flw f31, 0(x2) # load 0x000000003f800000 from memory into f31
fcvt.d.s f13, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bf800000 # load x3 with value 0x00000000bf800000
sw x3, 0(x2) # store 0x00000000bf800000 in memory
flw f9, 0(x2) # load 0x00000000bf800000 from memory into f9
fcvt.d.s f19, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003fc00000 # load x3 with value 0x000000003fc00000
sw x3, 0(x2) # store 0x000000003fc00000 in memory
flw f7, 0(x2) # load 0x000000003fc00000 from memory into f7
fcvt.d.s f16, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bfc00000 # load x3 with value 0x00000000bfc00000
sw x3, 0(x2) # store 0x00000000bfc00000 in memory
flw f7, 0(x2) # load 0x00000000bfc00000 from memory into f7
fcvt.d.s f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000040000000 # load x3 with value 0x0000000040000000
sw x3, 0(x2) # store 0x0000000040000000 in memory
flw f31, 0(x2) # load 0x0000000040000000 from memory into f31
fcvt.d.s f1, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c0000000 # load x3 with value 0x00000000c0000000
sw x3, 0(x2) # store 0x00000000c0000000 in memory
flw f6, 0(x2) # load 0x00000000c0000000 from memory into f6
fcvt.d.s f9, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000800000 # load x3 with value 0x0000000000800000
sw x3, 0(x2) # store 0x0000000000800000 in memory
flw f13, 0(x2) # load 0x0000000000800000 from memory into f13
fcvt.d.s f23, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080800000 # load x3 with value 0x0000000080800000
sw x3, 0(x2) # store 0x0000000080800000 in memory
flw f30, 0(x2) # load 0x0000000080800000 from memory into f30
fcvt.d.s f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f7fffff # load x3 with value 0x000000007f7fffff
sw x3, 0(x2) # store 0x000000007f7fffff in memory
flw f29, 0(x2) # load 0x000000007f7fffff from memory into f29
fcvt.d.s f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ff7fffff # load x3 with value 0x00000000ff7fffff
sw x3, 0(x2) # store 0x00000000ff7fffff in memory
flw f24, 0(x2) # load 0x00000000ff7fffff from memory into f24
fcvt.d.s f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000007fffff # load x3 with value 0x00000000007fffff
sw x3, 0(x2) # store 0x00000000007fffff in memory
flw f15, 0(x2) # load 0x00000000007fffff from memory into f15
fcvt.d.s f14, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000807fffff # load x3 with value 0x00000000807fffff
sw x3, 0(x2) # store 0x00000000807fffff in memory
flw f29, 0(x2) # load 0x00000000807fffff from memory into f29
fcvt.d.s f23, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000400000 # load x3 with value 0x0000000000400000
sw x3, 0(x2) # store 0x0000000000400000 in memory
flw f5, 0(x2) # load 0x0000000000400000 from memory into f5
fcvt.d.s f14, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080400000 # load x3 with value 0x0000000080400000
sw x3, 0(x2) # store 0x0000000080400000 in memory
flw f15, 0(x2) # load 0x0000000080400000 from memory into f15
fcvt.d.s f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sw x3, 0(x2) # store 0x0000000000000001 in memory
flw f6, 0(x2) # load 0x0000000000000001 from memory into f6
fcvt.d.s f27, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080000001 # load x3 with value 0x0000000080000001
sw x3, 0(x2) # store 0x0000000080000001 in memory
flw f6, 0(x2) # load 0x0000000080000001 from memory into f6
fcvt.d.s f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f800000 # load x3 with value 0x000000007f800000
sw x3, 0(x2) # store 0x000000007f800000 in memory
flw f24, 0(x2) # load 0x000000007f800000 from memory into f24
fcvt.d.s f26, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ff800000 # load x3 with value 0x00000000ff800000
sw x3, 0(x2) # store 0x00000000ff800000 in memory
flw f27, 0(x2) # load 0x00000000ff800000 from memory into f27
fcvt.d.s f29, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fc00000 # load x3 with value 0x000000007fc00000
sw x3, 0(x2) # store 0x000000007fc00000 in memory
flw f9, 0(x2) # load 0x000000007fc00000 from memory into f9
fcvt.d.s f8, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fffffff # load x3 with value 0x000000007fffffff
sw x3, 0(x2) # store 0x000000007fffffff in memory
flw f8, 0(x2) # load 0x000000007fffffff from memory into f8
fcvt.d.s f13, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffffffff # load x3 with value 0x00000000ffffffff
sw x3, 0(x2) # store 0x00000000ffffffff in memory
flw f30, 0(x2) # load 0x00000000ffffffff from memory into f30
fcvt.d.s f15, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f800001 # load x3 with value 0x000000007f800001
sw x3, 0(x2) # store 0x000000007f800001 in memory
flw f22, 0(x2) # load 0x000000007f800001 from memory into f22
fcvt.d.s f13, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fbfffff # load x3 with value 0x000000007fbfffff
sw x3, 0(x2) # store 0x000000007fbfffff in memory
flw f6, 0(x2) # load 0x000000007fbfffff from memory into f6
fcvt.d.s f17, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffbfffff # load x3 with value 0x00000000ffbfffff
sw x3, 0(x2) # store 0x00000000ffbfffff in memory
flw f30, 0(x2) # load 0x00000000ffbfffff from memory into f30
fcvt.d.s f5, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007ef8654f # load x3 with value 0x000000007ef8654f
sw x3, 0(x2) # store 0x000000007ef8654f in memory
flw f9, 0(x2) # load 0x000000007ef8654f from memory into f9
fcvt.d.s f30, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000813d9ab0 # load x3 with value 0x00000000813d9ab0
sw x3, 0(x2) # store 0x00000000813d9ab0 in memory
flw f9, 0(x2) # load 0x00000000813d9ab0 from memory into f9
fcvt.d.s f22, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007aecfeac # load x3 with value 0x000000007aecfeac
sw x3, 0(x2) # store 0x000000007aecfeac in memory
flw f0, 0(x2) # load 0x000000007aecfeac from memory into f0
fcvt.d.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000adad31b2 # load x3 with value 0x00000000adad31b2
sw x3, 0(x2) # store 0x00000000adad31b2 in memory
flw f1, 0(x2) # load 0x00000000adad31b2 from memory into f1
fcvt.d.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ed729e01 # load x3 with value 0x00000000ed729e01
sw x3, 0(x2) # store 0x00000000ed729e01 in memory
flw f2, 0(x2) # load 0x00000000ed729e01 from memory into f2
fcvt.d.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000023a659cd # load x3 with value 0x0000000023a659cd
sw x3, 0(x2) # store 0x0000000023a659cd in memory
flw f3, 0(x2) # load 0x0000000023a659cd from memory into f3
fcvt.d.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e76d979d # load x3 with value 0x00000000e76d979d
sw x3, 0(x2) # store 0x00000000e76d979d in memory
flw f4, 0(x2) # load 0x00000000e76d979d from memory into f4
fcvt.d.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ebdf2a3e # load x3 with value 0x00000000ebdf2a3e
sw x3, 0(x2) # store 0x00000000ebdf2a3e in memory
flw f5, 0(x2) # load 0x00000000ebdf2a3e from memory into f5
fcvt.d.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c2b3890b # load x3 with value 0x00000000c2b3890b
sw x3, 0(x2) # store 0x00000000c2b3890b in memory
flw f6, 0(x2) # load 0x00000000c2b3890b from memory into f6
fcvt.d.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004def468b # load x3 with value 0x000000004def468b
sw x3, 0(x2) # store 0x000000004def468b in memory
flw f7, 0(x2) # load 0x000000004def468b from memory into f7
fcvt.d.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000e8588097 # load x3 with value 0x00000000e8588097
sw x3, 0(x2) # store 0x00000000e8588097 in memory
flw f8, 0(x2) # load 0x00000000e8588097 from memory into f8
fcvt.d.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bb457f0d # load x3 with value 0x00000000bb457f0d
sw x3, 0(x2) # store 0x00000000bb457f0d in memory
flw f9, 0(x2) # load 0x00000000bb457f0d from memory into f9
fcvt.d.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007ed5cf21 # load x3 with value 0x000000007ed5cf21
sw x3, 0(x2) # store 0x000000007ed5cf21 in memory
flw f10, 0(x2) # load 0x000000007ed5cf21 from memory into f10
fcvt.d.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001eaf4fa2 # load x3 with value 0x000000001eaf4fa2
sw x3, 0(x2) # store 0x000000001eaf4fa2 in memory
flw f11, 0(x2) # load 0x000000001eaf4fa2 from memory into f11
fcvt.d.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000f33c474 # load x3 with value 0x000000000f33c474
sw x3, 0(x2) # store 0x000000000f33c474 in memory
flw f12, 0(x2) # load 0x000000000f33c474 from memory into f12
fcvt.d.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000053dda987 # load x3 with value 0x0000000053dda987
sw x3, 0(x2) # store 0x0000000053dda987 in memory
flw f13, 0(x2) # load 0x0000000053dda987 from memory into f13
fcvt.d.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000a39c164 # load x3 with value 0x000000000a39c164
sw x3, 0(x2) # store 0x000000000a39c164 in memory
flw f14, 0(x2) # load 0x000000000a39c164 from memory into f14
fcvt.d.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000018542171 # load x3 with value 0x0000000018542171
sw x3, 0(x2) # store 0x0000000018542171 in memory
flw f15, 0(x2) # load 0x0000000018542171 from memory into f15
fcvt.d.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000001d0c1865 # load x3 with value 0x000000001d0c1865
sw x3, 0(x2) # store 0x000000001d0c1865 in memory
flw f16, 0(x2) # load 0x000000001d0c1865 from memory into f16
fcvt.d.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ed0667d2 # load x3 with value 0x00000000ed0667d2
sw x3, 0(x2) # store 0x00000000ed0667d2 in memory
flw f17, 0(x2) # load 0x00000000ed0667d2 from memory into f17
fcvt.d.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000006512a8b1 # load x3 with value 0x000000006512a8b1
sw x3, 0(x2) # store 0x000000006512a8b1 in memory
flw f18, 0(x2) # load 0x000000006512a8b1 from memory into f18
fcvt.d.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000072be077f # load x3 with value 0x0000000072be077f
sw x3, 0(x2) # store 0x0000000072be077f in memory
flw f19, 0(x2) # load 0x0000000072be077f from memory into f19
fcvt.d.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000017b3c8d8 # load x3 with value 0x0000000017b3c8d8
sw x3, 0(x2) # store 0x0000000017b3c8d8 in memory
flw f20, 0(x2) # load 0x0000000017b3c8d8 from memory into f20
fcvt.d.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007105b833 # load x3 with value 0x000000007105b833
sw x3, 0(x2) # store 0x000000007105b833 in memory
flw f21, 0(x2) # load 0x000000007105b833 from memory into f21
fcvt.d.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000002da11fd7 # load x3 with value 0x000000002da11fd7
sw x3, 0(x2) # store 0x000000002da11fd7 in memory
flw f22, 0(x2) # load 0x000000002da11fd7 from memory into f22
fcvt.d.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080755192 # load x3 with value 0x0000000080755192
sw x3, 0(x2) # store 0x0000000080755192 in memory
flw f23, 0(x2) # load 0x0000000080755192 from memory into f23
fcvt.d.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000034063bd8 # load x3 with value 0x0000000034063bd8
sw x3, 0(x2) # store 0x0000000034063bd8 in memory
flw f24, 0(x2) # load 0x0000000034063bd8 from memory into f24
fcvt.d.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000b895fecb # load x3 with value 0x00000000b895fecb
sw x3, 0(x2) # store 0x00000000b895fecb in memory
flw f25, 0(x2) # load 0x00000000b895fecb from memory into f25
fcvt.d.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000cd3ac1b8 # load x3 with value 0x00000000cd3ac1b8
sw x3, 0(x2) # store 0x00000000cd3ac1b8 in memory
flw f26, 0(x2) # load 0x00000000cd3ac1b8 from memory into f26
fcvt.d.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000008f39c6e1 # load x3 with value 0x000000008f39c6e1
sw x3, 0(x2) # store 0x000000008f39c6e1 in memory
flw f27, 0(x2) # load 0x000000008f39c6e1 from memory into f27
fcvt.d.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000047894dc0 # load x3 with value 0x0000000047894dc0
sw x3, 0(x2) # store 0x0000000047894dc0 in memory
flw f28, 0(x2) # load 0x0000000047894dc0 from memory into f28
fcvt.d.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003d7f96da # load x3 with value 0x000000003d7f96da
sw x3, 0(x2) # store 0x000000003d7f96da in memory
flw f29, 0(x2) # load 0x000000003d7f96da from memory into f29
fcvt.d.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000074b9d3fd # load x3 with value 0x0000000074b9d3fd
sw x3, 0(x2) # store 0x0000000074b9d3fd in memory
flw f30, 0(x2) # load 0x0000000074b9d3fd from memory into f30
fcvt.d.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000f28afa2d # load x3 with value 0x00000000f28afa2d
sw x3, 0(x2) # store 0x00000000f28afa2d in memory
flw f31, 0(x2) # load 0x00000000f28afa2d from memory into f31
fcvt.d.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
fcvt.d.s f24, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xaaaaaaaa80000000 from memory into f14
fcvt.d.s f12, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003f800000 from memory into f15
fcvt.d.s f31, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xdeadbeefbf800000 from memory into f5
fcvt.d.s f24, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d400800000 from memory into f8
fcvt.d.s f28, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffef80800000 from memory into f9
fcvt.d.s f20, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeffffef7f7fffff from memory into f28
fcvt.d.s f9, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f2
fcvt.d.s f24, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffff7f800000 from memory into f10
fcvt.d.s f29, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffffeff800000 from memory into f24
fcvt.d.s f12, f24 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfeedbee57fc00000 from memory into f16
fcvt.d.s f25, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffc0deff7fffffff from memory into f3
fcvt.d.s f2, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
fcvt.d.s f3, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffeff7fbfffff from memory into f12
fcvt.d.s f13, f12 # perform operation second time to make sure flags don't change

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
