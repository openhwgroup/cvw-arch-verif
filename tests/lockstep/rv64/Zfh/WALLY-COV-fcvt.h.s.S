///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.h.s.S
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
add x28, x20, x3 # perform first operation
fcvt.h.s f9, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x3, x31 # perform first operation
fcvt.h.s f23, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x2, x8 # perform first operation
fcvt.h.s f25, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f20, f7 # perform first operation
fcvt.h.s f7, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x23, x22 # perform first operation
fcvt.h.s f23, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x22, x12 # perform first operation
fcvt.h.s f13, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f26, f24 # perform first operation
fcvt.h.s f22, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f6, f14 # perform first operation
fcvt.h.s f20, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f1, f20 # perform first operation
fcvt.h.s f18, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f16, f30 # perform first operation
fcvt.h.s f16, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f30, f11 # perform first operation
fcvt.h.s f11, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f23, f18 # perform first operation
fcvt.h.s f1, f30 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x463a18a541aeb2f5 # load x3 with value 0x463a18a541aeb2f5
sw x3, 0(x2) # store 0x463a18a541aeb2f5 in memory
flw f0, 0(x2) # load 0x463a18a541aeb2f5 from memory into f0
fcvt.h.s f26, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42850b4b1f4a01a7 # load x3 with value 0x42850b4b1f4a01a7
sw x3, 0(x2) # store 0x42850b4b1f4a01a7 in memory
flw f1, 0(x2) # load 0x42850b4b1f4a01a7 from memory into f1
fcvt.h.s f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32b665fdf677edb5 # load x3 with value 0x32b665fdf677edb5
sw x3, 0(x2) # store 0x32b665fdf677edb5 in memory
flw f2, 0(x2) # load 0x32b665fdf677edb5 from memory into f2
fcvt.h.s f30, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46240beb89aa8a93 # load x3 with value 0x46240beb89aa8a93
sw x3, 0(x2) # store 0x46240beb89aa8a93 in memory
flw f3, 0(x2) # load 0x46240beb89aa8a93 from memory into f3
fcvt.h.s f18, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd67c7dd9a91e44fa # load x3 with value 0xd67c7dd9a91e44fa
sw x3, 0(x2) # store 0xd67c7dd9a91e44fa in memory
flw f4, 0(x2) # load 0xd67c7dd9a91e44fa from memory into f4
fcvt.h.s f17, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1996bc4bc2cba9e # load x3 with value 0xc1996bc4bc2cba9e
sw x3, 0(x2) # store 0xc1996bc4bc2cba9e in memory
flw f5, 0(x2) # load 0xc1996bc4bc2cba9e from memory into f5
fcvt.h.s f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3072a57088a01951 # load x3 with value 0x3072a57088a01951
sw x3, 0(x2) # store 0x3072a57088a01951 in memory
flw f6, 0(x2) # load 0x3072a57088a01951 from memory into f6
fcvt.h.s f28, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc6e3665928a3ac47 # load x3 with value 0xc6e3665928a3ac47
sw x3, 0(x2) # store 0xc6e3665928a3ac47 in memory
flw f7, 0(x2) # load 0xc6e3665928a3ac47 from memory into f7
fcvt.h.s f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x564f9b7cfbdcf15a # load x3 with value 0x564f9b7cfbdcf15a
sw x3, 0(x2) # store 0x564f9b7cfbdcf15a in memory
flw f8, 0(x2) # load 0x564f9b7cfbdcf15a from memory into f8
fcvt.h.s f2, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe9b0469654d1ed07 # load x3 with value 0xe9b0469654d1ed07
sw x3, 0(x2) # store 0xe9b0469654d1ed07 in memory
flw f9, 0(x2) # load 0xe9b0469654d1ed07 from memory into f9
fcvt.h.s f29, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3e73cfd3ae9ab5b8 # load x3 with value 0x3e73cfd3ae9ab5b8
sw x3, 0(x2) # store 0x3e73cfd3ae9ab5b8 in memory
flw f10, 0(x2) # load 0x3e73cfd3ae9ab5b8 from memory into f10
fcvt.h.s f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc487865a25448fa7 # load x3 with value 0xc487865a25448fa7
sw x3, 0(x2) # store 0xc487865a25448fa7 in memory
flw f11, 0(x2) # load 0xc487865a25448fa7 from memory into f11
fcvt.h.s f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4e705c42ab52263 # load x3 with value 0xe4e705c42ab52263
sw x3, 0(x2) # store 0xe4e705c42ab52263 in memory
flw f12, 0(x2) # load 0xe4e705c42ab52263 from memory into f12
fcvt.h.s f16, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7948a4a2d4394383 # load x3 with value 0x7948a4a2d4394383
sw x3, 0(x2) # store 0x7948a4a2d4394383 in memory
flw f13, 0(x2) # load 0x7948a4a2d4394383 from memory into f13
fcvt.h.s f8, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe990f49cf64b022e # load x3 with value 0xe990f49cf64b022e
sw x3, 0(x2) # store 0xe990f49cf64b022e in memory
flw f14, 0(x2) # load 0xe990f49cf64b022e from memory into f14
fcvt.h.s f2, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb47241eddd5f06c6 # load x3 with value 0xb47241eddd5f06c6
sw x3, 0(x2) # store 0xb47241eddd5f06c6 in memory
flw f15, 0(x2) # load 0xb47241eddd5f06c6 from memory into f15
fcvt.h.s f13, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2e0f10da553b172 # load x3 with value 0xa2e0f10da553b172
sw x3, 0(x2) # store 0xa2e0f10da553b172 in memory
flw f16, 0(x2) # load 0xa2e0f10da553b172 from memory into f16
fcvt.h.s f6, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe80c4a5791e24635 # load x3 with value 0xe80c4a5791e24635
sw x3, 0(x2) # store 0xe80c4a5791e24635 in memory
flw f17, 0(x2) # load 0xe80c4a5791e24635 from memory into f17
fcvt.h.s f18, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb1abf0a66ebbf0c # load x3 with value 0xeb1abf0a66ebbf0c
sw x3, 0(x2) # store 0xeb1abf0a66ebbf0c in memory
flw f18, 0(x2) # load 0xeb1abf0a66ebbf0c from memory into f18
fcvt.h.s f17, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x986c479b614fce0d # load x3 with value 0x986c479b614fce0d
sw x3, 0(x2) # store 0x986c479b614fce0d in memory
flw f19, 0(x2) # load 0x986c479b614fce0d from memory into f19
fcvt.h.s f8, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29e423b58927bb3 # load x3 with value 0x29e423b58927bb3
sw x3, 0(x2) # store 0x29e423b58927bb3 in memory
flw f20, 0(x2) # load 0x29e423b58927bb3 from memory into f20
fcvt.h.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed1afb8b7f033aee # load x3 with value 0xed1afb8b7f033aee
sw x3, 0(x2) # store 0xed1afb8b7f033aee in memory
flw f21, 0(x2) # load 0xed1afb8b7f033aee from memory into f21
fcvt.h.s f19, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8061e183277f8316 # load x3 with value 0x8061e183277f8316
sw x3, 0(x2) # store 0x8061e183277f8316 in memory
flw f22, 0(x2) # load 0x8061e183277f8316 from memory into f22
fcvt.h.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2574cdd52ea78a6 # load x3 with value 0xb2574cdd52ea78a6
sw x3, 0(x2) # store 0xb2574cdd52ea78a6 in memory
flw f23, 0(x2) # load 0xb2574cdd52ea78a6 from memory into f23
fcvt.h.s f28, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4beda638dec5a893 # load x3 with value 0x4beda638dec5a893
sw x3, 0(x2) # store 0x4beda638dec5a893 in memory
flw f24, 0(x2) # load 0x4beda638dec5a893 from memory into f24
fcvt.h.s f8, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0b9999af8876ee # load x3 with value 0xe0b9999af8876ee
sw x3, 0(x2) # store 0xe0b9999af8876ee in memory
flw f25, 0(x2) # load 0xe0b9999af8876ee from memory into f25
fcvt.h.s f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5ef19f589be706 # load x3 with value 0xd5ef19f589be706
sw x3, 0(x2) # store 0xd5ef19f589be706 in memory
flw f26, 0(x2) # load 0xd5ef19f589be706 from memory into f26
fcvt.h.s f13, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63bd436c0330227b # load x3 with value 0x63bd436c0330227b
sw x3, 0(x2) # store 0x63bd436c0330227b in memory
flw f27, 0(x2) # load 0x63bd436c0330227b from memory into f27
fcvt.h.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5751d91ae66ba77 # load x3 with value 0x5751d91ae66ba77
sw x3, 0(x2) # store 0x5751d91ae66ba77 in memory
flw f28, 0(x2) # load 0x5751d91ae66ba77 from memory into f28
fcvt.h.s f11, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd26fa2e67f51e1d7 # load x3 with value 0xd26fa2e67f51e1d7
sw x3, 0(x2) # store 0xd26fa2e67f51e1d7 in memory
flw f29, 0(x2) # load 0xd26fa2e67f51e1d7 from memory into f29
fcvt.h.s f19, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d071c3032614483 # load x3 with value 0x5d071c3032614483
sw x3, 0(x2) # store 0x5d071c3032614483 in memory
flw f30, 0(x2) # load 0x5d071c3032614483 from memory into f30
fcvt.h.s f9, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66d0086728fd6606 # load x3 with value 0x66d0086728fd6606
sw x3, 0(x2) # store 0x66d0086728fd6606 in memory
flw f31, 0(x2) # load 0x66d0086728fd6606 from memory into f31
fcvt.h.s f6, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2771c2e26357abee # load x3 with value 0x2771c2e26357abee
sw x3, 0(x2) # store 0x2771c2e26357abee in memory
flw f23, 0(x2) # load 0x2771c2e26357abee from memory into f23
fcvt.h.s f0, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2a5ade61d99f595 # load x3 with value 0xc2a5ade61d99f595
sw x3, 0(x2) # store 0xc2a5ade61d99f595 in memory
flw f19, 0(x2) # load 0xc2a5ade61d99f595 from memory into f19
fcvt.h.s f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf1675ed2082db616 # load x3 with value 0xf1675ed2082db616
sw x3, 0(x2) # store 0xf1675ed2082db616 in memory
flw f24, 0(x2) # load 0xf1675ed2082db616 from memory into f24
fcvt.h.s f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc49874a497ffce9d # load x3 with value 0xc49874a497ffce9d
sw x3, 0(x2) # store 0xc49874a497ffce9d in memory
flw f9, 0(x2) # load 0xc49874a497ffce9d from memory into f9
fcvt.h.s f3, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7be5d454ed8c5db # load x3 with value 0x7be5d454ed8c5db
sw x3, 0(x2) # store 0x7be5d454ed8c5db in memory
flw f21, 0(x2) # load 0x7be5d454ed8c5db from memory into f21
fcvt.h.s f4, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c169de7421b9c9d # load x3 with value 0x9c169de7421b9c9d
sw x3, 0(x2) # store 0x9c169de7421b9c9d in memory
flw f19, 0(x2) # load 0x9c169de7421b9c9d from memory into f19
fcvt.h.s f5, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a7d827adcbfcddf # load x3 with value 0x7a7d827adcbfcddf
sw x3, 0(x2) # store 0x7a7d827adcbfcddf in memory
flw f25, 0(x2) # load 0x7a7d827adcbfcddf from memory into f25
fcvt.h.s f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe645dfc1c402f704 # load x3 with value 0xe645dfc1c402f704
sw x3, 0(x2) # store 0xe645dfc1c402f704 in memory
flw f31, 0(x2) # load 0xe645dfc1c402f704 from memory into f31
fcvt.h.s f7, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x296f400d4e1aa2e6 # load x3 with value 0x296f400d4e1aa2e6
sw x3, 0(x2) # store 0x296f400d4e1aa2e6 in memory
flw f15, 0(x2) # load 0x296f400d4e1aa2e6 from memory into f15
fcvt.h.s f8, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdae301f83bafa834 # load x3 with value 0xdae301f83bafa834
sw x3, 0(x2) # store 0xdae301f83bafa834 in memory
flw f22, 0(x2) # load 0xdae301f83bafa834 from memory into f22
fcvt.h.s f9, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84e1605caeaa0cbf # load x3 with value 0x84e1605caeaa0cbf
sw x3, 0(x2) # store 0x84e1605caeaa0cbf in memory
flw f18, 0(x2) # load 0x84e1605caeaa0cbf from memory into f18
fcvt.h.s f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8c694284ae25b93 # load x3 with value 0xf8c694284ae25b93
sw x3, 0(x2) # store 0xf8c694284ae25b93 in memory
flw f26, 0(x2) # load 0xf8c694284ae25b93 from memory into f26
fcvt.h.s f11, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1dd1c45a0ed373aa # load x3 with value 0x1dd1c45a0ed373aa
sw x3, 0(x2) # store 0x1dd1c45a0ed373aa in memory
flw f18, 0(x2) # load 0x1dd1c45a0ed373aa from memory into f18
fcvt.h.s f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x219735ac1ad0b1a0 # load x3 with value 0x219735ac1ad0b1a0
sw x3, 0(x2) # store 0x219735ac1ad0b1a0 in memory
flw f21, 0(x2) # load 0x219735ac1ad0b1a0 from memory into f21
fcvt.h.s f13, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5fc281bb8592b88 # load x3 with value 0xb5fc281bb8592b88
sw x3, 0(x2) # store 0xb5fc281bb8592b88 in memory
flw f12, 0(x2) # load 0xb5fc281bb8592b88 from memory into f12
fcvt.h.s f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x395562b6af406e04 # load x3 with value 0x395562b6af406e04
sw x3, 0(x2) # store 0x395562b6af406e04 in memory
flw f22, 0(x2) # load 0x395562b6af406e04 from memory into f22
fcvt.h.s f15, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x650de151fd9a434e # load x3 with value 0x650de151fd9a434e
sw x3, 0(x2) # store 0x650de151fd9a434e in memory
flw f11, 0(x2) # load 0x650de151fd9a434e from memory into f11
fcvt.h.s f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85982d3da7407fda # load x3 with value 0x85982d3da7407fda
sw x3, 0(x2) # store 0x85982d3da7407fda in memory
flw f6, 0(x2) # load 0x85982d3da7407fda from memory into f6
fcvt.h.s f17, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9579c39732230d2e # load x3 with value 0x9579c39732230d2e
sw x3, 0(x2) # store 0x9579c39732230d2e in memory
flw f5, 0(x2) # load 0x9579c39732230d2e from memory into f5
fcvt.h.s f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbdc374b08324733 # load x3 with value 0xbdc374b08324733
sw x3, 0(x2) # store 0xbdc374b08324733 in memory
flw f28, 0(x2) # load 0xbdc374b08324733 from memory into f28
fcvt.h.s f19, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x250b2b27252a5c19 # load x3 with value 0x250b2b27252a5c19
sw x3, 0(x2) # store 0x250b2b27252a5c19 in memory
flw f30, 0(x2) # load 0x250b2b27252a5c19 from memory into f30
fcvt.h.s f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x43f9405aff9330df # load x3 with value 0x43f9405aff9330df
sw x3, 0(x2) # store 0x43f9405aff9330df in memory
flw f11, 0(x2) # load 0x43f9405aff9330df from memory into f11
fcvt.h.s f21, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf656b6d5bbbd1a1 # load x3 with value 0xaf656b6d5bbbd1a1
sw x3, 0(x2) # store 0xaf656b6d5bbbd1a1 in memory
flw f26, 0(x2) # load 0xaf656b6d5bbbd1a1 from memory into f26
fcvt.h.s f22, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc0f66496424e720 # load x3 with value 0xfc0f66496424e720
sw x3, 0(x2) # store 0xfc0f66496424e720 in memory
flw f20, 0(x2) # load 0xfc0f66496424e720 from memory into f20
fcvt.h.s f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa37edcdb6eb15eea # load x3 with value 0xa37edcdb6eb15eea
sw x3, 0(x2) # store 0xa37edcdb6eb15eea in memory
flw f27, 0(x2) # load 0xa37edcdb6eb15eea from memory into f27
fcvt.h.s f24, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x411c1a6375fb4697 # load x3 with value 0x411c1a6375fb4697
sw x3, 0(x2) # store 0x411c1a6375fb4697 in memory
flw f1, 0(x2) # load 0x411c1a6375fb4697 from memory into f1
fcvt.h.s f25, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ffce70af22a14e0 # load x3 with value 0x8ffce70af22a14e0
sw x3, 0(x2) # store 0x8ffce70af22a14e0 in memory
flw f15, 0(x2) # load 0x8ffce70af22a14e0 from memory into f15
fcvt.h.s f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe790ddc8cb9cc422 # load x3 with value 0xe790ddc8cb9cc422
sw x3, 0(x2) # store 0xe790ddc8cb9cc422 in memory
flw f14, 0(x2) # load 0xe790ddc8cb9cc422 from memory into f14
fcvt.h.s f27, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf40f4ef3ecf87674 # load x3 with value 0xf40f4ef3ecf87674
sw x3, 0(x2) # store 0xf40f4ef3ecf87674 in memory
flw f20, 0(x2) # load 0xf40f4ef3ecf87674 from memory into f20
fcvt.h.s f28, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc83443fff70b995 # load x3 with value 0xdc83443fff70b995
sw x3, 0(x2) # store 0xdc83443fff70b995 in memory
flw f23, 0(x2) # load 0xdc83443fff70b995 from memory into f23
fcvt.h.s f29, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67236b321002e9a9 # load x3 with value 0x67236b321002e9a9
sw x3, 0(x2) # store 0x67236b321002e9a9 in memory
flw f27, 0(x2) # load 0x67236b321002e9a9 from memory into f27
fcvt.h.s f30, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14fd4db92a66b91e # load x3 with value 0x14fd4db92a66b91e
sw x3, 0(x2) # store 0x14fd4db92a66b91e in memory
flw f10, 0(x2) # load 0x14fd4db92a66b91e from memory into f10
fcvt.h.s f31, f10 # perform operation second time to make sure flags don't change

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
flw f23, 0(x2) # load 0x80000000 from memory into f23
fcvt.h.s f21, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fcvt.h.s f3, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fcvt.h.s f29, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fcvt.h.s f8, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fcvt.h.s f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fcvt.h.s f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fcvt.h.s f17, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fcvt.h.s f14, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fcvt.h.s f5, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fcvt.h.s f11, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fcvt.h.s f27, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fcvt.h.s f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fcvt.h.s f23, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fcvt.h.s f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fcvt.h.s f13, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fcvt.h.s f6, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fcvt.h.s f11, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fcvt.h.s f23, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fcvt.h.s f6, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fcvt.h.s f31, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fcvt.h.s f6, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fcvt.h.s f27, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fcvt.h.s f24, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fcvt.h.s f28, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fcvt.h.s f20, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fcvt.h.s f26, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fcvt.h.s f27, f10 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fcvt.h.s f9, f10, dyn # perform operation
fcvt.h.s f9, f10, rdn # perform operation
fcvt.h.s f9, f10, rmm # perform operation
fcvt.h.s f9, f10, rne # perform operation
fcvt.h.s f9, f10, rtz # perform operation
fcvt.h.s f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f9, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fcvt.h.s f31, f6, dyn # perform operation
fcvt.h.s f31, f6, rdn # perform operation
fcvt.h.s f31, f6, rmm # perform operation
fcvt.h.s f31, f6, rne # perform operation
fcvt.h.s f31, f6, rtz # perform operation
fcvt.h.s f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f31, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fcvt.h.s f23, f26, dyn # perform operation
fcvt.h.s f23, f26, rdn # perform operation
fcvt.h.s f23, f26, rmm # perform operation
fcvt.h.s f23, f26, rne # perform operation
fcvt.h.s f23, f26, rtz # perform operation
fcvt.h.s f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f23, f26 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fcvt.h.s f2, f17, dyn # perform operation
fcvt.h.s f2, f17, rdn # perform operation
fcvt.h.s f2, f17, rmm # perform operation
fcvt.h.s f2, f17, rne # perform operation
fcvt.h.s f2, f17, rtz # perform operation
fcvt.h.s f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f2, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fcvt.h.s f31, f19, dyn # perform operation
fcvt.h.s f31, f19, rdn # perform operation
fcvt.h.s f31, f19, rmm # perform operation
fcvt.h.s f31, f19, rne # perform operation
fcvt.h.s f31, f19, rtz # perform operation
fcvt.h.s f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f31, f19 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fcvt.h.s f11, f7, dyn # perform operation
fcvt.h.s f11, f7, rdn # perform operation
fcvt.h.s f11, f7, rmm # perform operation
fcvt.h.s f11, f7, rne # perform operation
fcvt.h.s f11, f7, rtz # perform operation
fcvt.h.s f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f11, f7 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fcvt.h.s f8, f13, dyn # perform operation
fcvt.h.s f8, f13, rdn # perform operation
fcvt.h.s f8, f13, rmm # perform operation
fcvt.h.s f8, f13, rne # perform operation
fcvt.h.s f8, f13, rtz # perform operation
fcvt.h.s f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f8, f13 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fcvt.h.s f21, f31, dyn # perform operation
fcvt.h.s f21, f31, rdn # perform operation
fcvt.h.s f21, f31, rmm # perform operation
fcvt.h.s f21, f31, rne # perform operation
fcvt.h.s f21, f31, rtz # perform operation
fcvt.h.s f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f21, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fcvt.h.s f5, f23, dyn # perform operation
fcvt.h.s f5, f23, rdn # perform operation
fcvt.h.s f5, f23, rmm # perform operation
fcvt.h.s f5, f23, rne # perform operation
fcvt.h.s f5, f23, rtz # perform operation
fcvt.h.s f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f5, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fcvt.h.s f11, f2, dyn # perform operation
fcvt.h.s f11, f2, rdn # perform operation
fcvt.h.s f11, f2, rmm # perform operation
fcvt.h.s f11, f2, rne # perform operation
fcvt.h.s f11, f2, rtz # perform operation
fcvt.h.s f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f11, f2 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fcvt.h.s f17, f30, dyn # perform operation
fcvt.h.s f17, f30, rdn # perform operation
fcvt.h.s f17, f30, rmm # perform operation
fcvt.h.s f17, f30, rne # perform operation
fcvt.h.s f17, f30, rtz # perform operation
fcvt.h.s f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f17, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fcvt.h.s f24, f19, dyn # perform operation
fcvt.h.s f24, f19, rdn # perform operation
fcvt.h.s f24, f19, rmm # perform operation
fcvt.h.s f24, f19, rne # perform operation
fcvt.h.s f24, f19, rtz # perform operation
fcvt.h.s f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f24, f19 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fcvt.h.s f28, f7, dyn # perform operation
fcvt.h.s f28, f7, rdn # perform operation
fcvt.h.s f28, f7, rmm # perform operation
fcvt.h.s f28, f7, rne # perform operation
fcvt.h.s f28, f7, rtz # perform operation
fcvt.h.s f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f28, f7 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fcvt.h.s f29, f23, dyn # perform operation
fcvt.h.s f29, f23, rdn # perform operation
fcvt.h.s f29, f23, rmm # perform operation
fcvt.h.s f29, f23, rne # perform operation
fcvt.h.s f29, f23, rtz # perform operation
fcvt.h.s f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f29, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fcvt.h.s f5, f7, dyn # perform operation
fcvt.h.s f5, f7, rdn # perform operation
fcvt.h.s f5, f7, rmm # perform operation
fcvt.h.s f5, f7, rne # perform operation
fcvt.h.s f5, f7, rtz # perform operation
fcvt.h.s f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f5, f7 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fcvt.h.s f14, f6, dyn # perform operation
fcvt.h.s f14, f6, rdn # perform operation
fcvt.h.s f14, f6, rmm # perform operation
fcvt.h.s f14, f6, rne # perform operation
fcvt.h.s f14, f6, rtz # perform operation
fcvt.h.s f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f14, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fcvt.h.s f13, f14, dyn # perform operation
fcvt.h.s f13, f14, rdn # perform operation
fcvt.h.s f13, f14, rmm # perform operation
fcvt.h.s f13, f14, rne # perform operation
fcvt.h.s f13, f14, rtz # perform operation
fcvt.h.s f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f13, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fcvt.h.s f8, f14, dyn # perform operation
fcvt.h.s f8, f14, rdn # perform operation
fcvt.h.s f8, f14, rmm # perform operation
fcvt.h.s f8, f14, rne # perform operation
fcvt.h.s f8, f14, rtz # perform operation
fcvt.h.s f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f8, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fcvt.h.s f21, f6, dyn # perform operation
fcvt.h.s f21, f6, rdn # perform operation
fcvt.h.s f21, f6, rmm # perform operation
fcvt.h.s f21, f6, rne # perform operation
fcvt.h.s f21, f6, rtz # perform operation
fcvt.h.s f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f21, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fcvt.h.s f1, f21, dyn # perform operation
fcvt.h.s f1, f21, rdn # perform operation
fcvt.h.s f1, f21, rmm # perform operation
fcvt.h.s f1, f21, rne # perform operation
fcvt.h.s f1, f21, rtz # perform operation
fcvt.h.s f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f1, f21 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fcvt.h.s f30, f28, dyn # perform operation
fcvt.h.s f30, f28, rdn # perform operation
fcvt.h.s f30, f28, rmm # perform operation
fcvt.h.s f30, f28, rne # perform operation
fcvt.h.s f30, f28, rtz # perform operation
fcvt.h.s f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f30, f28 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fcvt.h.s f17, f5, dyn # perform operation
fcvt.h.s f17, f5, rdn # perform operation
fcvt.h.s f17, f5, rmm # perform operation
fcvt.h.s f17, f5, rne # perform operation
fcvt.h.s f17, f5, rtz # perform operation
fcvt.h.s f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f17, f5 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fcvt.h.s f28, f2, dyn # perform operation
fcvt.h.s f28, f2, rdn # perform operation
fcvt.h.s f28, f2, rmm # perform operation
fcvt.h.s f28, f2, rne # perform operation
fcvt.h.s f28, f2, rtz # perform operation
fcvt.h.s f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f28, f2 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fcvt.h.s f17, f15, dyn # perform operation
fcvt.h.s f17, f15, rdn # perform operation
fcvt.h.s f17, f15, rmm # perform operation
fcvt.h.s f17, f15, rne # perform operation
fcvt.h.s f17, f15, rtz # perform operation
fcvt.h.s f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f17, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fcvt.h.s f21, f22, dyn # perform operation
fcvt.h.s f21, f22, rdn # perform operation
fcvt.h.s f21, f22, rmm # perform operation
fcvt.h.s f21, f22, rne # perform operation
fcvt.h.s f21, f22, rtz # perform operation
fcvt.h.s f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f21, f22 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fcvt.h.s f21, f1, dyn # perform operation
fcvt.h.s f21, f1, rdn # perform operation
fcvt.h.s f21, f1, rmm # perform operation
fcvt.h.s f21, f1, rne # perform operation
fcvt.h.s f21, f1, rtz # perform operation
fcvt.h.s f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f21, f1 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fcvt.h.s f22, f11, dyn # perform operation
fcvt.h.s f22, f11, rdn # perform operation
fcvt.h.s f22, f11, rmm # perform operation
fcvt.h.s f22, f11, rne # perform operation
fcvt.h.s f22, f11, rtz # perform operation
fcvt.h.s f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f22, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fcvt.h.s f11, f16, dyn # perform operation
fcvt.h.s f11, f16, rdn # perform operation
fcvt.h.s f11, f16, rmm # perform operation
fcvt.h.s f11, f16, rne # perform operation
fcvt.h.s f11, f16, rtz # perform operation
fcvt.h.s f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f11, f16 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3ce2a807927ff4d # load x3 with value 0xd3ce2a807927ff4d
sw x3, 0(x2) # store 0xd3ce2a807927ff4d in memory
flw f0, 0(x2) # load 0xd3ce2a807927ff4d from memory into f0
fcvt.h.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9372ec87b41a4a61 # load x3 with value 0x9372ec87b41a4a61
sw x3, 0(x2) # store 0x9372ec87b41a4a61 in memory
flw f1, 0(x2) # load 0x9372ec87b41a4a61 from memory into f1
fcvt.h.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc9b424be0d54f2b2 # load x3 with value 0xc9b424be0d54f2b2
sw x3, 0(x2) # store 0xc9b424be0d54f2b2 in memory
flw f2, 0(x2) # load 0xc9b424be0d54f2b2 from memory into f2
fcvt.h.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeb8adf0c08dd565 # load x3 with value 0xdeb8adf0c08dd565
sw x3, 0(x2) # store 0xdeb8adf0c08dd565 in memory
flw f3, 0(x2) # load 0xdeb8adf0c08dd565 from memory into f3
fcvt.h.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f6903479aaec039 # load x3 with value 0x9f6903479aaec039
sw x3, 0(x2) # store 0x9f6903479aaec039 in memory
flw f4, 0(x2) # load 0x9f6903479aaec039 from memory into f4
fcvt.h.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x88dbf970b760082f # load x3 with value 0x88dbf970b760082f
sw x3, 0(x2) # store 0x88dbf970b760082f in memory
flw f5, 0(x2) # load 0x88dbf970b760082f from memory into f5
fcvt.h.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b40de217e68fc4b # load x3 with value 0x7b40de217e68fc4b
sw x3, 0(x2) # store 0x7b40de217e68fc4b in memory
flw f6, 0(x2) # load 0x7b40de217e68fc4b from memory into f6
fcvt.h.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4cb27235785c1b2 # load x3 with value 0xa4cb27235785c1b2
sw x3, 0(x2) # store 0xa4cb27235785c1b2 in memory
flw f7, 0(x2) # load 0xa4cb27235785c1b2 from memory into f7
fcvt.h.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd31e85dc079620c # load x3 with value 0xbd31e85dc079620c
sw x3, 0(x2) # store 0xbd31e85dc079620c in memory
flw f8, 0(x2) # load 0xbd31e85dc079620c from memory into f8
fcvt.h.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7bc514cc0dbce1db # load x3 with value 0x7bc514cc0dbce1db
sw x3, 0(x2) # store 0x7bc514cc0dbce1db in memory
flw f9, 0(x2) # load 0x7bc514cc0dbce1db from memory into f9
fcvt.h.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e39604aa7e4d26f # load x3 with value 0x4e39604aa7e4d26f
sw x3, 0(x2) # store 0x4e39604aa7e4d26f in memory
flw f10, 0(x2) # load 0x4e39604aa7e4d26f from memory into f10
fcvt.h.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3905663e3e6b547 # load x3 with value 0xe3905663e3e6b547
sw x3, 0(x2) # store 0xe3905663e3e6b547 in memory
flw f11, 0(x2) # load 0xe3905663e3e6b547 from memory into f11
fcvt.h.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29d67f33600f4ae4 # load x3 with value 0x29d67f33600f4ae4
sw x3, 0(x2) # store 0x29d67f33600f4ae4 in memory
flw f12, 0(x2) # load 0x29d67f33600f4ae4 from memory into f12
fcvt.h.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xadbb4f3e1121e7ba # load x3 with value 0xadbb4f3e1121e7ba
sw x3, 0(x2) # store 0xadbb4f3e1121e7ba in memory
flw f13, 0(x2) # load 0xadbb4f3e1121e7ba from memory into f13
fcvt.h.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23b521890a1c15f9 # load x3 with value 0x23b521890a1c15f9
sw x3, 0(x2) # store 0x23b521890a1c15f9 in memory
flw f14, 0(x2) # load 0x23b521890a1c15f9 from memory into f14
fcvt.h.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfdb5a21b2b0d08de # load x3 with value 0xfdb5a21b2b0d08de
sw x3, 0(x2) # store 0xfdb5a21b2b0d08de in memory
flw f15, 0(x2) # load 0xfdb5a21b2b0d08de from memory into f15
fcvt.h.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0992111823b6dd1 # load x3 with value 0xd0992111823b6dd1
sw x3, 0(x2) # store 0xd0992111823b6dd1 in memory
flw f16, 0(x2) # load 0xd0992111823b6dd1 from memory into f16
fcvt.h.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe15f6fa26b911da5 # load x3 with value 0xe15f6fa26b911da5
sw x3, 0(x2) # store 0xe15f6fa26b911da5 in memory
flw f17, 0(x2) # load 0xe15f6fa26b911da5 from memory into f17
fcvt.h.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5bc0dd1fee41b33 # load x3 with value 0xd5bc0dd1fee41b33
sw x3, 0(x2) # store 0xd5bc0dd1fee41b33 in memory
flw f18, 0(x2) # load 0xd5bc0dd1fee41b33 from memory into f18
fcvt.h.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c52a4131815159c # load x3 with value 0x1c52a4131815159c
sw x3, 0(x2) # store 0x1c52a4131815159c in memory
flw f19, 0(x2) # load 0x1c52a4131815159c from memory into f19
fcvt.h.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13e466c1cf3a0ac2 # load x3 with value 0x13e466c1cf3a0ac2
sw x3, 0(x2) # store 0x13e466c1cf3a0ac2 in memory
flw f20, 0(x2) # load 0x13e466c1cf3a0ac2 from memory into f20
fcvt.h.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75148b53e463618e # load x3 with value 0x75148b53e463618e
sw x3, 0(x2) # store 0x75148b53e463618e in memory
flw f21, 0(x2) # load 0x75148b53e463618e from memory into f21
fcvt.h.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe73cd1816f833486 # load x3 with value 0xe73cd1816f833486
sw x3, 0(x2) # store 0xe73cd1816f833486 in memory
flw f22, 0(x2) # load 0xe73cd1816f833486 from memory into f22
fcvt.h.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e4edec4b531cbe # load x3 with value 0x6e4edec4b531cbe
sw x3, 0(x2) # store 0x6e4edec4b531cbe in memory
flw f23, 0(x2) # load 0x6e4edec4b531cbe from memory into f23
fcvt.h.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23e74be202fd9c69 # load x3 with value 0x23e74be202fd9c69
sw x3, 0(x2) # store 0x23e74be202fd9c69 in memory
flw f24, 0(x2) # load 0x23e74be202fd9c69 from memory into f24
fcvt.h.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2fc2ceff3aa7d118 # load x3 with value 0x2fc2ceff3aa7d118
sw x3, 0(x2) # store 0x2fc2ceff3aa7d118 in memory
flw f25, 0(x2) # load 0x2fc2ceff3aa7d118 from memory into f25
fcvt.h.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x20a322f8fc85b52a # load x3 with value 0x20a322f8fc85b52a
sw x3, 0(x2) # store 0x20a322f8fc85b52a in memory
flw f26, 0(x2) # load 0x20a322f8fc85b52a from memory into f26
fcvt.h.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5d665a616dd8136 # load x3 with value 0xe5d665a616dd8136
sw x3, 0(x2) # store 0xe5d665a616dd8136 in memory
flw f27, 0(x2) # load 0xe5d665a616dd8136 from memory into f27
fcvt.h.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e15b2abd20aed6f # load x3 with value 0x9e15b2abd20aed6f
sw x3, 0(x2) # store 0x9e15b2abd20aed6f in memory
flw f28, 0(x2) # load 0x9e15b2abd20aed6f from memory into f28
fcvt.h.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x130b214fab24e8c # load x3 with value 0x130b214fab24e8c
sw x3, 0(x2) # store 0x130b214fab24e8c in memory
flw f29, 0(x2) # load 0x130b214fab24e8c from memory into f29
fcvt.h.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9dc167c5c5bc1b4d # load x3 with value 0x9dc167c5c5bc1b4d
sw x3, 0(x2) # store 0x9dc167c5c5bc1b4d in memory
flw f30, 0(x2) # load 0x9dc167c5c5bc1b4d from memory into f30
fcvt.h.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26d9dc447949cb5 # load x3 with value 0x26d9dc447949cb5
sw x3, 0(x2) # store 0x26d9dc447949cb5 in memory
flw f31, 0(x2) # load 0x26d9dc447949cb5 from memory into f31
fcvt.h.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f283235d893a1c3 # load x3 with value 0x7f283235d893a1c3
sw x3, 0(x2) # store 0x7f283235d893a1c3 in memory
flw f1, 0(x2) # load 0x7f283235d893a1c3 from memory into f1
fcvt.h.s f29, f1, dyn # perform operation
fcvt.h.s f29, f1, rdn # perform operation
fcvt.h.s f29, f1, rmm # perform operation
fcvt.h.s f29, f1, rne # perform operation
fcvt.h.s f29, f1, rtz # perform operation
fcvt.h.s f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f29, f1 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b3d6ea1317e0ca2 # load x3 with value 0x3b3d6ea1317e0ca2
sw x3, 0(x2) # store 0x3b3d6ea1317e0ca2 in memory
flw f15, 0(x2) # load 0x3b3d6ea1317e0ca2 from memory into f15
fcvt.h.s f1, f15 # perform operation second time to make sure flags don't change

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
