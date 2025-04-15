///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaF/WALLY-COV-fround.s.S
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
add x9, x19, x29 # perform first operation
fround.s f21, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x16, x2 # perform first operation
fround.s f29, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x18, x25 # perform first operation
fround.s f14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f10, f31, f6 # perform first operation
fround.s f12, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x7, x19 # perform first operation
fround.s f19, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x25, x12 # perform first operation
fround.s f12, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f6, f21 # perform first operation
fround.s f2, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f25, f21 # perform first operation
fround.s f7, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f18, f22 # perform first operation
fround.s f1, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f24, f9 # perform first operation
fround.s f24, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f21, f22 # perform first operation
fround.s f22, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f9, f12 # perform first operation
fround.s f25, f3 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8d66f7014511cf99 # load x3 with value 0x8d66f7014511cf99
sw x3, 0(x2) # store 0x8d66f7014511cf99 in memory
flw f0, 0(x2) # load 0x8d66f7014511cf99 from memory into f0
fround.s f7, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5074c66861ff255 # load x3 with value 0x5074c66861ff255
sw x3, 0(x2) # store 0x5074c66861ff255 in memory
flw f1, 0(x2) # load 0x5074c66861ff255 from memory into f1
fround.s f23, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c6f7dbe74ceeee2 # load x3 with value 0x4c6f7dbe74ceeee2
sw x3, 0(x2) # store 0x4c6f7dbe74ceeee2 in memory
flw f2, 0(x2) # load 0x4c6f7dbe74ceeee2 from memory into f2
fround.s f11, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5097e512c765444b # load x3 with value 0x5097e512c765444b
sw x3, 0(x2) # store 0x5097e512c765444b in memory
flw f3, 0(x2) # load 0x5097e512c765444b from memory into f3
fround.s f27, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27758a2063a11c05 # load x3 with value 0x27758a2063a11c05
sw x3, 0(x2) # store 0x27758a2063a11c05 in memory
flw f4, 0(x2) # load 0x27758a2063a11c05 from memory into f4
fround.s f18, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1895519e2a1e28e # load x3 with value 0xc1895519e2a1e28e
sw x3, 0(x2) # store 0xc1895519e2a1e28e in memory
flw f5, 0(x2) # load 0xc1895519e2a1e28e from memory into f5
fround.s f1, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x435a77fd6e4d6e07 # load x3 with value 0x435a77fd6e4d6e07
sw x3, 0(x2) # store 0x435a77fd6e4d6e07 in memory
flw f6, 0(x2) # load 0x435a77fd6e4d6e07 from memory into f6
fround.s f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x583c16e464097a75 # load x3 with value 0x583c16e464097a75
sw x3, 0(x2) # store 0x583c16e464097a75 in memory
flw f7, 0(x2) # load 0x583c16e464097a75 from memory into f7
fround.s f24, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6daf63435b4e7052 # load x3 with value 0x6daf63435b4e7052
sw x3, 0(x2) # store 0x6daf63435b4e7052 in memory
flw f8, 0(x2) # load 0x6daf63435b4e7052 from memory into f8
fround.s f27, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc29046b8bc05bf0a # load x3 with value 0xc29046b8bc05bf0a
sw x3, 0(x2) # store 0xc29046b8bc05bf0a in memory
flw f9, 0(x2) # load 0xc29046b8bc05bf0a from memory into f9
fround.s f22, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7daa8e798812d8f4 # load x3 with value 0x7daa8e798812d8f4
sw x3, 0(x2) # store 0x7daa8e798812d8f4 in memory
flw f10, 0(x2) # load 0x7daa8e798812d8f4 from memory into f10
fround.s f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7130b59a2d6a3749 # load x3 with value 0x7130b59a2d6a3749
sw x3, 0(x2) # store 0x7130b59a2d6a3749 in memory
flw f11, 0(x2) # load 0x7130b59a2d6a3749 from memory into f11
fround.s f29, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30e6b4e7547229fd # load x3 with value 0x30e6b4e7547229fd
sw x3, 0(x2) # store 0x30e6b4e7547229fd in memory
flw f12, 0(x2) # load 0x30e6b4e7547229fd from memory into f12
fround.s f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x780cf8aa1d15565e # load x3 with value 0x780cf8aa1d15565e
sw x3, 0(x2) # store 0x780cf8aa1d15565e in memory
flw f13, 0(x2) # load 0x780cf8aa1d15565e from memory into f13
fround.s f23, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9219d5ff3068122 # load x3 with value 0xb9219d5ff3068122
sw x3, 0(x2) # store 0xb9219d5ff3068122 in memory
flw f14, 0(x2) # load 0xb9219d5ff3068122 from memory into f14
fround.s f27, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee04b74f43a4f076 # load x3 with value 0xee04b74f43a4f076
sw x3, 0(x2) # store 0xee04b74f43a4f076 in memory
flw f15, 0(x2) # load 0xee04b74f43a4f076 from memory into f15
fround.s f7, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc28a2705c5f8a5f6 # load x3 with value 0xc28a2705c5f8a5f6
sw x3, 0(x2) # store 0xc28a2705c5f8a5f6 in memory
flw f16, 0(x2) # load 0xc28a2705c5f8a5f6 from memory into f16
fround.s f18, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1fa6860cfbc19224 # load x3 with value 0x1fa6860cfbc19224
sw x3, 0(x2) # store 0x1fa6860cfbc19224 in memory
flw f17, 0(x2) # load 0x1fa6860cfbc19224 from memory into f17
fround.s f28, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa15b3edfbaffcbfb # load x3 with value 0xa15b3edfbaffcbfb
sw x3, 0(x2) # store 0xa15b3edfbaffcbfb in memory
flw f18, 0(x2) # load 0xa15b3edfbaffcbfb from memory into f18
fround.s f13, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4266b8a5447cb1c1 # load x3 with value 0x4266b8a5447cb1c1
sw x3, 0(x2) # store 0x4266b8a5447cb1c1 in memory
flw f19, 0(x2) # load 0x4266b8a5447cb1c1 from memory into f19
fround.s f17, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7b6442d32a543bc # load x3 with value 0xe7b6442d32a543bc
sw x3, 0(x2) # store 0xe7b6442d32a543bc in memory
flw f20, 0(x2) # load 0xe7b6442d32a543bc from memory into f20
fround.s f30, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2dea1ba236d6604f # load x3 with value 0x2dea1ba236d6604f
sw x3, 0(x2) # store 0x2dea1ba236d6604f in memory
flw f21, 0(x2) # load 0x2dea1ba236d6604f from memory into f21
fround.s f24, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec199fd932ad543e # load x3 with value 0xec199fd932ad543e
sw x3, 0(x2) # store 0xec199fd932ad543e in memory
flw f22, 0(x2) # load 0xec199fd932ad543e from memory into f22
fround.s f25, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbb1fb7ecff574e8 # load x3 with value 0xfbb1fb7ecff574e8
sw x3, 0(x2) # store 0xfbb1fb7ecff574e8 in memory
flw f23, 0(x2) # load 0xfbb1fb7ecff574e8 from memory into f23
fround.s f11, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8abdf8c3484b2d0 # load x3 with value 0xf8abdf8c3484b2d0
sw x3, 0(x2) # store 0xf8abdf8c3484b2d0 in memory
flw f24, 0(x2) # load 0xf8abdf8c3484b2d0 from memory into f24
fround.s f9, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3d89b71e56cfe18e # load x3 with value 0x3d89b71e56cfe18e
sw x3, 0(x2) # store 0x3d89b71e56cfe18e in memory
flw f25, 0(x2) # load 0x3d89b71e56cfe18e from memory into f25
fround.s f17, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x392824b19958247e # load x3 with value 0x392824b19958247e
sw x3, 0(x2) # store 0x392824b19958247e in memory
flw f26, 0(x2) # load 0x392824b19958247e from memory into f26
fround.s f17, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x675f1b1a44054669 # load x3 with value 0x675f1b1a44054669
sw x3, 0(x2) # store 0x675f1b1a44054669 in memory
flw f27, 0(x2) # load 0x675f1b1a44054669 from memory into f27
fround.s f12, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14bb125540b2dadb # load x3 with value 0x14bb125540b2dadb
sw x3, 0(x2) # store 0x14bb125540b2dadb in memory
flw f28, 0(x2) # load 0x14bb125540b2dadb from memory into f28
fround.s f13, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x41d7f94be585731c # load x3 with value 0x41d7f94be585731c
sw x3, 0(x2) # store 0x41d7f94be585731c in memory
flw f29, 0(x2) # load 0x41d7f94be585731c from memory into f29
fround.s f5, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9266c617ae12b6a4 # load x3 with value 0x9266c617ae12b6a4
sw x3, 0(x2) # store 0x9266c617ae12b6a4 in memory
flw f30, 0(x2) # load 0x9266c617ae12b6a4 from memory into f30
fround.s f3, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbbc1812d97160e87 # load x3 with value 0xbbc1812d97160e87
sw x3, 0(x2) # store 0xbbc1812d97160e87 in memory
flw f31, 0(x2) # load 0xbbc1812d97160e87 from memory into f31
fround.s f27, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8dcd8f11a6f086ec # load x3 with value 0x8dcd8f11a6f086ec
sw x3, 0(x2) # store 0x8dcd8f11a6f086ec in memory
flw f8, 0(x2) # load 0x8dcd8f11a6f086ec from memory into f8
fround.s f0, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7923108e3174ba6 # load x3 with value 0xe7923108e3174ba6
sw x3, 0(x2) # store 0xe7923108e3174ba6 in memory
flw f6, 0(x2) # load 0xe7923108e3174ba6 from memory into f6
fround.s f1, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3efb73c07d0fccab # load x3 with value 0x3efb73c07d0fccab
sw x3, 0(x2) # store 0x3efb73c07d0fccab in memory
flw f16, 0(x2) # load 0x3efb73c07d0fccab from memory into f16
fround.s f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5154b07e0e12fb14 # load x3 with value 0x5154b07e0e12fb14
sw x3, 0(x2) # store 0x5154b07e0e12fb14 in memory
flw f28, 0(x2) # load 0x5154b07e0e12fb14 from memory into f28
fround.s f3, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a68cf290b6c5c8 # load x3 with value 0x3a68cf290b6c5c8
sw x3, 0(x2) # store 0x3a68cf290b6c5c8 in memory
flw f23, 0(x2) # load 0x3a68cf290b6c5c8 from memory into f23
fround.s f4, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef0be490db326173 # load x3 with value 0xef0be490db326173
sw x3, 0(x2) # store 0xef0be490db326173 in memory
flw f2, 0(x2) # load 0xef0be490db326173 from memory into f2
fround.s f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4964ba804560ae4 # load x3 with value 0xb4964ba804560ae4
sw x3, 0(x2) # store 0xb4964ba804560ae4 in memory
flw f24, 0(x2) # load 0xb4964ba804560ae4 from memory into f24
fround.s f6, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x89d17714d14b50f8 # load x3 with value 0x89d17714d14b50f8
sw x3, 0(x2) # store 0x89d17714d14b50f8 in memory
flw f23, 0(x2) # load 0x89d17714d14b50f8 from memory into f23
fround.s f7, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xadbeff95b3960eb5 # load x3 with value 0xadbeff95b3960eb5
sw x3, 0(x2) # store 0xadbeff95b3960eb5 in memory
flw f2, 0(x2) # load 0xadbeff95b3960eb5 from memory into f2
fround.s f8, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc9c592a9ca6d4bcd # load x3 with value 0xc9c592a9ca6d4bcd
sw x3, 0(x2) # store 0xc9c592a9ca6d4bcd in memory
flw f30, 0(x2) # load 0xc9c592a9ca6d4bcd from memory into f30
fround.s f9, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf9234b0100616a99 # load x3 with value 0xf9234b0100616a99
sw x3, 0(x2) # store 0xf9234b0100616a99 in memory
flw f26, 0(x2) # load 0xf9234b0100616a99 from memory into f26
fround.s f10, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0e4e5ae8b3df3b1 # load x3 with value 0xa0e4e5ae8b3df3b1
sw x3, 0(x2) # store 0xa0e4e5ae8b3df3b1 in memory
flw f21, 0(x2) # load 0xa0e4e5ae8b3df3b1 from memory into f21
fround.s f11, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd978cd4d37e8967a # load x3 with value 0xd978cd4d37e8967a
sw x3, 0(x2) # store 0xd978cd4d37e8967a in memory
flw f29, 0(x2) # load 0xd978cd4d37e8967a from memory into f29
fround.s f12, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94fbd06e98bbe01e # load x3 with value 0x94fbd06e98bbe01e
sw x3, 0(x2) # store 0x94fbd06e98bbe01e in memory
flw f1, 0(x2) # load 0x94fbd06e98bbe01e from memory into f1
fround.s f13, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f863fa2f6ba5e91 # load x3 with value 0x4f863fa2f6ba5e91
sw x3, 0(x2) # store 0x4f863fa2f6ba5e91 in memory
flw f25, 0(x2) # load 0x4f863fa2f6ba5e91 from memory into f25
fround.s f14, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbe4c16ae72f632fc # load x3 with value 0xbe4c16ae72f632fc
sw x3, 0(x2) # store 0xbe4c16ae72f632fc in memory
flw f24, 0(x2) # load 0xbe4c16ae72f632fc from memory into f24
fround.s f15, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5bbc0b3b93a15ff # load x3 with value 0xf5bbc0b3b93a15ff
sw x3, 0(x2) # store 0xf5bbc0b3b93a15ff in memory
flw f28, 0(x2) # load 0xf5bbc0b3b93a15ff from memory into f28
fround.s f16, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27a3ae911fdbf3d8 # load x3 with value 0x27a3ae911fdbf3d8
sw x3, 0(x2) # store 0x27a3ae911fdbf3d8 in memory
flw f30, 0(x2) # load 0x27a3ae911fdbf3d8 from memory into f30
fround.s f17, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e41a9802366d1a6 # load x3 with value 0x5e41a9802366d1a6
sw x3, 0(x2) # store 0x5e41a9802366d1a6 in memory
flw f11, 0(x2) # load 0x5e41a9802366d1a6 from memory into f11
fround.s f18, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94d23e1ae136ea3a # load x3 with value 0x94d23e1ae136ea3a
sw x3, 0(x2) # store 0x94d23e1ae136ea3a in memory
flw f25, 0(x2) # load 0x94d23e1ae136ea3a from memory into f25
fround.s f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77028328837f57a7 # load x3 with value 0x77028328837f57a7
sw x3, 0(x2) # store 0x77028328837f57a7 in memory
flw f7, 0(x2) # load 0x77028328837f57a7 from memory into f7
fround.s f20, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1642d8384dee42 # load x3 with value 0xa1642d8384dee42
sw x3, 0(x2) # store 0xa1642d8384dee42 in memory
flw f8, 0(x2) # load 0xa1642d8384dee42 from memory into f8
fround.s f21, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f4ddde9dd0ee3bb # load x3 with value 0x6f4ddde9dd0ee3bb
sw x3, 0(x2) # store 0x6f4ddde9dd0ee3bb in memory
flw f23, 0(x2) # load 0x6f4ddde9dd0ee3bb from memory into f23
fround.s f22, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa362effb029e27e5 # load x3 with value 0xa362effb029e27e5
sw x3, 0(x2) # store 0xa362effb029e27e5 in memory
flw f3, 0(x2) # load 0xa362effb029e27e5 from memory into f3
fround.s f23, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa79de79636b9eb45 # load x3 with value 0xa79de79636b9eb45
sw x3, 0(x2) # store 0xa79de79636b9eb45 in memory
flw f20, 0(x2) # load 0xa79de79636b9eb45 from memory into f20
fround.s f24, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d92e015690d6038 # load x3 with value 0x9d92e015690d6038
sw x3, 0(x2) # store 0x9d92e015690d6038 in memory
flw f8, 0(x2) # load 0x9d92e015690d6038 from memory into f8
fround.s f25, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x969a5133adeaaf2f # load x3 with value 0x969a5133adeaaf2f
sw x3, 0(x2) # store 0x969a5133adeaaf2f in memory
flw f15, 0(x2) # load 0x969a5133adeaaf2f from memory into f15
fround.s f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6026b144c9a5ec10 # load x3 with value 0x6026b144c9a5ec10
sw x3, 0(x2) # store 0x6026b144c9a5ec10 in memory
flw f26, 0(x2) # load 0x6026b144c9a5ec10 from memory into f26
fround.s f27, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb50e7f15d73a258d # load x3 with value 0xb50e7f15d73a258d
sw x3, 0(x2) # store 0xb50e7f15d73a258d in memory
flw f12, 0(x2) # load 0xb50e7f15d73a258d from memory into f12
fround.s f28, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd6388fc5251df0dd # load x3 with value 0xd6388fc5251df0dd
sw x3, 0(x2) # store 0xd6388fc5251df0dd in memory
flw f28, 0(x2) # load 0xd6388fc5251df0dd from memory into f28
fround.s f29, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf54cfec3a57cccd1 # load x3 with value 0xf54cfec3a57cccd1
sw x3, 0(x2) # store 0xf54cfec3a57cccd1 in memory
flw f21, 0(x2) # load 0xf54cfec3a57cccd1 from memory into f21
fround.s f30, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6256936d75e9d7d5 # load x3 with value 0x6256936d75e9d7d5
sw x3, 0(x2) # store 0x6256936d75e9d7d5 in memory
flw f28, 0(x2) # load 0x6256936d75e9d7d5 from memory into f28
fround.s f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fround.s f18, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fround.s f2, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fround.s f28, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fround.s f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fround.s f20, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fround.s f9, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fround.s f5, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fround.s f28, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fround.s f15, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fround.s f29, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fround.s f19, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fround.s f17, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fround.s f17, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fround.s f23, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fround.s f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fround.s f29, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fround.s f31, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fround.s f5, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fround.s f16, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fround.s f21, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fround.s f30, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fround.s f29, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
fround.s f2, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fround.s f5, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fround.s f30, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fround.s f24, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fround.s f19, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fround.s f3, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd423613eb0acbe5e # load x3 with value 0xd423613eb0acbe5e
sw x3, 0(x2) # store 0xd423613eb0acbe5e in memory
flw f0, 0(x2) # load 0xd423613eb0acbe5e from memory into f0
fround.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda3ad172a745fd36 # load x3 with value 0xda3ad172a745fd36
sw x3, 0(x2) # store 0xda3ad172a745fd36 in memory
flw f1, 0(x2) # load 0xda3ad172a745fd36 from memory into f1
fround.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x702ffe60fbc35ddd # load x3 with value 0x702ffe60fbc35ddd
sw x3, 0(x2) # store 0x702ffe60fbc35ddd in memory
flw f2, 0(x2) # load 0x702ffe60fbc35ddd from memory into f2
fround.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x771f0e16b26a506 # load x3 with value 0x771f0e16b26a506
sw x3, 0(x2) # store 0x771f0e16b26a506 in memory
flw f3, 0(x2) # load 0x771f0e16b26a506 from memory into f3
fround.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x877ca6d5125aa3e9 # load x3 with value 0x877ca6d5125aa3e9
sw x3, 0(x2) # store 0x877ca6d5125aa3e9 in memory
flw f4, 0(x2) # load 0x877ca6d5125aa3e9 from memory into f4
fround.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x496dfa853c06ac33 # load x3 with value 0x496dfa853c06ac33
sw x3, 0(x2) # store 0x496dfa853c06ac33 in memory
flw f5, 0(x2) # load 0x496dfa853c06ac33 from memory into f5
fround.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x44311125e479de35 # load x3 with value 0x44311125e479de35
sw x3, 0(x2) # store 0x44311125e479de35 in memory
flw f6, 0(x2) # load 0x44311125e479de35 from memory into f6
fround.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ade6d308b97be73 # load x3 with value 0x7ade6d308b97be73
sw x3, 0(x2) # store 0x7ade6d308b97be73 in memory
flw f7, 0(x2) # load 0x7ade6d308b97be73 from memory into f7
fround.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0fff2dc7578794f # load x3 with value 0xa0fff2dc7578794f
sw x3, 0(x2) # store 0xa0fff2dc7578794f in memory
flw f8, 0(x2) # load 0xa0fff2dc7578794f from memory into f8
fround.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83998846c9af0d9c # load x3 with value 0x83998846c9af0d9c
sw x3, 0(x2) # store 0x83998846c9af0d9c in memory
flw f9, 0(x2) # load 0x83998846c9af0d9c from memory into f9
fround.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x62e9a1143a6cdcab # load x3 with value 0x62e9a1143a6cdcab
sw x3, 0(x2) # store 0x62e9a1143a6cdcab in memory
flw f10, 0(x2) # load 0x62e9a1143a6cdcab from memory into f10
fround.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed09c0db088390ab # load x3 with value 0xed09c0db088390ab
sw x3, 0(x2) # store 0xed09c0db088390ab in memory
flw f11, 0(x2) # load 0xed09c0db088390ab from memory into f11
fround.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfdcee9b0c4399342 # load x3 with value 0xfdcee9b0c4399342
sw x3, 0(x2) # store 0xfdcee9b0c4399342 in memory
flw f12, 0(x2) # load 0xfdcee9b0c4399342 from memory into f12
fround.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeaaf312da68cd7ca # load x3 with value 0xeaaf312da68cd7ca
sw x3, 0(x2) # store 0xeaaf312da68cd7ca in memory
flw f13, 0(x2) # load 0xeaaf312da68cd7ca from memory into f13
fround.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfadf24f6e9402c74 # load x3 with value 0xfadf24f6e9402c74
sw x3, 0(x2) # store 0xfadf24f6e9402c74 in memory
flw f14, 0(x2) # load 0xfadf24f6e9402c74 from memory into f14
fround.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc3aa21729230bf18 # load x3 with value 0xc3aa21729230bf18
sw x3, 0(x2) # store 0xc3aa21729230bf18 in memory
flw f15, 0(x2) # load 0xc3aa21729230bf18 from memory into f15
fround.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6a40abd761372442 # load x3 with value 0x6a40abd761372442
sw x3, 0(x2) # store 0x6a40abd761372442 in memory
flw f16, 0(x2) # load 0x6a40abd761372442 from memory into f16
fround.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fa15fcc95e7cee2 # load x3 with value 0x4fa15fcc95e7cee2
sw x3, 0(x2) # store 0x4fa15fcc95e7cee2 in memory
flw f17, 0(x2) # load 0x4fa15fcc95e7cee2 from memory into f17
fround.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb672fd6dfdfdeb06 # load x3 with value 0xb672fd6dfdfdeb06
sw x3, 0(x2) # store 0xb672fd6dfdfdeb06 in memory
flw f18, 0(x2) # load 0xb672fd6dfdfdeb06 from memory into f18
fround.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xea22a488a9d22604 # load x3 with value 0xea22a488a9d22604
sw x3, 0(x2) # store 0xea22a488a9d22604 in memory
flw f19, 0(x2) # load 0xea22a488a9d22604 from memory into f19
fround.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57b4b24ca8ac3561 # load x3 with value 0x57b4b24ca8ac3561
sw x3, 0(x2) # store 0x57b4b24ca8ac3561 in memory
flw f20, 0(x2) # load 0x57b4b24ca8ac3561 from memory into f20
fround.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe9aa6cf11cb8923e # load x3 with value 0xe9aa6cf11cb8923e
sw x3, 0(x2) # store 0xe9aa6cf11cb8923e in memory
flw f21, 0(x2) # load 0xe9aa6cf11cb8923e from memory into f21
fround.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8424e630ab6e0c1 # load x3 with value 0xf8424e630ab6e0c1
sw x3, 0(x2) # store 0xf8424e630ab6e0c1 in memory
flw f22, 0(x2) # load 0xf8424e630ab6e0c1 from memory into f22
fround.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6a373389d4d5b3b4 # load x3 with value 0x6a373389d4d5b3b4
sw x3, 0(x2) # store 0x6a373389d4d5b3b4 in memory
flw f23, 0(x2) # load 0x6a373389d4d5b3b4 from memory into f23
fround.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ec7b5ce7e1a497 # load x3 with value 0x4ec7b5ce7e1a497
sw x3, 0(x2) # store 0x4ec7b5ce7e1a497 in memory
flw f24, 0(x2) # load 0x4ec7b5ce7e1a497 from memory into f24
fround.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x604718eadf9a7eb6 # load x3 with value 0x604718eadf9a7eb6
sw x3, 0(x2) # store 0x604718eadf9a7eb6 in memory
flw f25, 0(x2) # load 0x604718eadf9a7eb6 from memory into f25
fround.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d963b141e63429 # load x3 with value 0x9d963b141e63429
sw x3, 0(x2) # store 0x9d963b141e63429 in memory
flw f26, 0(x2) # load 0x9d963b141e63429 from memory into f26
fround.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd1b74dfac6f12e3b # load x3 with value 0xd1b74dfac6f12e3b
sw x3, 0(x2) # store 0xd1b74dfac6f12e3b in memory
flw f27, 0(x2) # load 0xd1b74dfac6f12e3b from memory into f27
fround.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77599c847f360078 # load x3 with value 0x77599c847f360078
sw x3, 0(x2) # store 0x77599c847f360078 in memory
flw f28, 0(x2) # load 0x77599c847f360078 from memory into f28
fround.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71c5920d3417ac76 # load x3 with value 0x71c5920d3417ac76
sw x3, 0(x2) # store 0x71c5920d3417ac76 in memory
flw f29, 0(x2) # load 0x71c5920d3417ac76 from memory into f29
fround.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x395ede1e07f058bf # load x3 with value 0x395ede1e07f058bf
sw x3, 0(x2) # store 0x395ede1e07f058bf in memory
flw f30, 0(x2) # load 0x395ede1e07f058bf from memory into f30
fround.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x36969f4da5e49c8a # load x3 with value 0x36969f4da5e49c8a
sw x3, 0(x2) # store 0x36969f4da5e49c8a in memory
flw f31, 0(x2) # load 0x36969f4da5e49c8a from memory into f31
fround.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0a2e7934635cc60 # load x3 with value 0xe0a2e7934635cc60
sw x3, 0(x2) # store 0xe0a2e7934635cc60 in memory
flw f7, 0(x2) # load 0xe0a2e7934635cc60 from memory into f7
fround.s f2, f7, dyn # perform operation
fround.s f2, f7, rdn # perform operation
fround.s f2, f7, rmm # perform operation
fround.s f2, f7, rne # perform operation
fround.s f2, f7, rtz # perform operation
fround.s f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.s f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.s f2, f7 # perform operation


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
