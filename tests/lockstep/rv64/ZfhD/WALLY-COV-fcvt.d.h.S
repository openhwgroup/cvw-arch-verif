///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fcvt.d.h.S
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
add x24, x9, x23 # perform first operation
fcvt.d.h f13, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x10, x28 # perform first operation
fcvt.d.h f1, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x2, x11 # perform first operation
fcvt.d.h f6, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f15, f1, f14 # perform first operation
fcvt.d.h f6, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x21 # perform first operation
fcvt.d.h f28, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x10, x2 # perform first operation
fcvt.d.h f1, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f18, f12 # perform first operation
fcvt.d.h f6, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f15, f11 # perform first operation
fcvt.d.h f25, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f30, f29 # perform first operation
fcvt.d.h f27, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f15, f30 # perform first operation
fcvt.d.h f15, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f25, f27 # perform first operation
fcvt.d.h f27, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f31, f23 # perform first operation
fcvt.d.h f2, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95913341caff791e # load x3 with value 0x95913341caff791e
sd x3, 0(x2) # store 0x95913341caff791e in memory
flh f0, 0(x2) # load 0x95913341caff791e from memory into f0
fcvt.d.h f19, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee74f3557d9e68ba # load x3 with value 0xee74f3557d9e68ba
sd x3, 0(x2) # store 0xee74f3557d9e68ba in memory
flh f1, 0(x2) # load 0xee74f3557d9e68ba from memory into f1
fcvt.d.h f21, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0da8cd89ba2a8377 # load x3 with value 0x0da8cd89ba2a8377
sd x3, 0(x2) # store 0x0da8cd89ba2a8377 in memory
flh f2, 0(x2) # load 0x0da8cd89ba2a8377 from memory into f2
fcvt.d.h f24, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5cfdbe16a787e2ee # load x3 with value 0x5cfdbe16a787e2ee
sd x3, 0(x2) # store 0x5cfdbe16a787e2ee in memory
flh f3, 0(x2) # load 0x5cfdbe16a787e2ee from memory into f3
fcvt.d.h f16, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec5ffa8332ce1ea0 # load x3 with value 0xec5ffa8332ce1ea0
sd x3, 0(x2) # store 0xec5ffa8332ce1ea0 in memory
flh f4, 0(x2) # load 0xec5ffa8332ce1ea0 from memory into f4
fcvt.d.h f18, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66408476e679731b # load x3 with value 0x66408476e679731b
sd x3, 0(x2) # store 0x66408476e679731b in memory
flh f5, 0(x2) # load 0x66408476e679731b from memory into f5
fcvt.d.h f8, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd17bac4b84822118 # load x3 with value 0xd17bac4b84822118
sd x3, 0(x2) # store 0xd17bac4b84822118 in memory
flh f6, 0(x2) # load 0xd17bac4b84822118 from memory into f6
fcvt.d.h f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47ac70bef53a15af # load x3 with value 0x47ac70bef53a15af
sd x3, 0(x2) # store 0x47ac70bef53a15af in memory
flh f7, 0(x2) # load 0x47ac70bef53a15af from memory into f7
fcvt.d.h f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5b7bd97176bf822 # load x3 with value 0xd5b7bd97176bf822
sd x3, 0(x2) # store 0xd5b7bd97176bf822 in memory
flh f8, 0(x2) # load 0xd5b7bd97176bf822 from memory into f8
fcvt.d.h f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9fd72510f12134d8 # load x3 with value 0x9fd72510f12134d8
sd x3, 0(x2) # store 0x9fd72510f12134d8 in memory
flh f9, 0(x2) # load 0x9fd72510f12134d8 from memory into f9
fcvt.d.h f29, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x117d822023bfb786 # load x3 with value 0x117d822023bfb786
sd x3, 0(x2) # store 0x117d822023bfb786 in memory
flh f10, 0(x2) # load 0x117d822023bfb786 from memory into f10
fcvt.d.h f19, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52b959d4bda6a7ba # load x3 with value 0x52b959d4bda6a7ba
sd x3, 0(x2) # store 0x52b959d4bda6a7ba in memory
flh f11, 0(x2) # load 0x52b959d4bda6a7ba from memory into f11
fcvt.d.h f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5731b64d640ca39 # load x3 with value 0xb5731b64d640ca39
sd x3, 0(x2) # store 0xb5731b64d640ca39 in memory
flh f12, 0(x2) # load 0xb5731b64d640ca39 from memory into f12
fcvt.d.h f2, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0887c767a5a7bc06 # load x3 with value 0x0887c767a5a7bc06
sd x3, 0(x2) # store 0x0887c767a5a7bc06 in memory
flh f13, 0(x2) # load 0x0887c767a5a7bc06 from memory into f13
fcvt.d.h f10, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2dc4ebc3bfeba46d # load x3 with value 0x2dc4ebc3bfeba46d
sd x3, 0(x2) # store 0x2dc4ebc3bfeba46d in memory
flh f14, 0(x2) # load 0x2dc4ebc3bfeba46d from memory into f14
fcvt.d.h f16, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x24d73847f002ea53 # load x3 with value 0x24d73847f002ea53
sd x3, 0(x2) # store 0x24d73847f002ea53 in memory
flh f15, 0(x2) # load 0x24d73847f002ea53 from memory into f15
fcvt.d.h f1, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfb70baf8661eef7b # load x3 with value 0xfb70baf8661eef7b
sd x3, 0(x2) # store 0xfb70baf8661eef7b in memory
flh f16, 0(x2) # load 0xfb70baf8661eef7b from memory into f16
fcvt.d.h f25, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x58855e16d4aadf60 # load x3 with value 0x58855e16d4aadf60
sd x3, 0(x2) # store 0x58855e16d4aadf60 in memory
flh f17, 0(x2) # load 0x58855e16d4aadf60 from memory into f17
fcvt.d.h f8, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2eae23f3ff70c262 # load x3 with value 0x2eae23f3ff70c262
sd x3, 0(x2) # store 0x2eae23f3ff70c262 in memory
flh f18, 0(x2) # load 0x2eae23f3ff70c262 from memory into f18
fcvt.d.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x586ffcebc10a538d # load x3 with value 0x586ffcebc10a538d
sd x3, 0(x2) # store 0x586ffcebc10a538d in memory
flh f19, 0(x2) # load 0x586ffcebc10a538d from memory into f19
fcvt.d.h f7, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf89ac16811e24c0b # load x3 with value 0xf89ac16811e24c0b
sd x3, 0(x2) # store 0xf89ac16811e24c0b in memory
flh f20, 0(x2) # load 0xf89ac16811e24c0b from memory into f20
fcvt.d.h f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa60f311003f94bd3 # load x3 with value 0xa60f311003f94bd3
sd x3, 0(x2) # store 0xa60f311003f94bd3 in memory
flh f21, 0(x2) # load 0xa60f311003f94bd3 from memory into f21
fcvt.d.h f29, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b898283ba3ad98d # load x3 with value 0x1b898283ba3ad98d
sd x3, 0(x2) # store 0x1b898283ba3ad98d in memory
flh f22, 0(x2) # load 0x1b898283ba3ad98d from memory into f22
fcvt.d.h f14, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8a9a0b3020dcbbd # load x3 with value 0xd8a9a0b3020dcbbd
sd x3, 0(x2) # store 0xd8a9a0b3020dcbbd in memory
flh f23, 0(x2) # load 0xd8a9a0b3020dcbbd from memory into f23
fcvt.d.h f21, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8aa10c5530899d4 # load x3 with value 0xa8aa10c5530899d4
sd x3, 0(x2) # store 0xa8aa10c5530899d4 in memory
flh f24, 0(x2) # load 0xa8aa10c5530899d4 from memory into f24
fcvt.d.h f27, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f01673fb49d5858 # load x3 with value 0x7f01673fb49d5858
sd x3, 0(x2) # store 0x7f01673fb49d5858 in memory
flh f25, 0(x2) # load 0x7f01673fb49d5858 from memory into f25
fcvt.d.h f30, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e4229e66c333065 # load x3 with value 0x8e4229e66c333065
sd x3, 0(x2) # store 0x8e4229e66c333065 in memory
flh f26, 0(x2) # load 0x8e4229e66c333065 from memory into f26
fcvt.d.h f23, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00bbdc0c5be0a861 # load x3 with value 0x00bbdc0c5be0a861
sd x3, 0(x2) # store 0x00bbdc0c5be0a861 in memory
flh f27, 0(x2) # load 0x00bbdc0c5be0a861 from memory into f27
fcvt.d.h f14, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcc90df927374e461 # load x3 with value 0xcc90df927374e461
sd x3, 0(x2) # store 0xcc90df927374e461 in memory
flh f28, 0(x2) # load 0xcc90df927374e461 from memory into f28
fcvt.d.h f14, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6db99820004bb470 # load x3 with value 0x6db99820004bb470
sd x3, 0(x2) # store 0x6db99820004bb470 in memory
flh f29, 0(x2) # load 0x6db99820004bb470 from memory into f29
fcvt.d.h f2, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbcca858b5728e443 # load x3 with value 0xbcca858b5728e443
sd x3, 0(x2) # store 0xbcca858b5728e443 in memory
flh f30, 0(x2) # load 0xbcca858b5728e443 from memory into f30
fcvt.d.h f2, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe20d135321710274 # load x3 with value 0xe20d135321710274
sd x3, 0(x2) # store 0xe20d135321710274 in memory
flh f31, 0(x2) # load 0xe20d135321710274 from memory into f31
fcvt.d.h f6, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x51db593f91664c0a # load x3 with value 0x51db593f91664c0a
sd x3, 0(x2) # store 0x51db593f91664c0a in memory
flh f27, 0(x2) # load 0x51db593f91664c0a from memory into f27
fcvt.d.h f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4972fe414a694cb # load x3 with value 0xa4972fe414a694cb
sd x3, 0(x2) # store 0xa4972fe414a694cb in memory
flh f10, 0(x2) # load 0xa4972fe414a694cb from memory into f10
fcvt.d.h f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73f78e71181281ff # load x3 with value 0x73f78e71181281ff
sd x3, 0(x2) # store 0x73f78e71181281ff in memory
flh f9, 0(x2) # load 0x73f78e71181281ff from memory into f9
fcvt.d.h f2, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5b77b56bb815b87 # load x3 with value 0xb5b77b56bb815b87
sd x3, 0(x2) # store 0xb5b77b56bb815b87 in memory
flh f9, 0(x2) # load 0xb5b77b56bb815b87 from memory into f9
fcvt.d.h f3, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x59692723e60fe5bc # load x3 with value 0x59692723e60fe5bc
sd x3, 0(x2) # store 0x59692723e60fe5bc in memory
flh f26, 0(x2) # load 0x59692723e60fe5bc from memory into f26
fcvt.d.h f4, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04aeed8368579c17 # load x3 with value 0x04aeed8368579c17
sd x3, 0(x2) # store 0x04aeed8368579c17 in memory
flh f3, 0(x2) # load 0x04aeed8368579c17 from memory into f3
fcvt.d.h f5, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe94d937d63d4697f # load x3 with value 0xe94d937d63d4697f
sd x3, 0(x2) # store 0xe94d937d63d4697f in memory
flh f21, 0(x2) # load 0xe94d937d63d4697f from memory into f21
fcvt.d.h f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3e3a3febc1dea40 # load x3 with value 0xe3e3a3febc1dea40
sd x3, 0(x2) # store 0xe3e3a3febc1dea40 in memory
flh f20, 0(x2) # load 0xe3e3a3febc1dea40 from memory into f20
fcvt.d.h f7, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaedfa7182843f1db # load x3 with value 0xaedfa7182843f1db
sd x3, 0(x2) # store 0xaedfa7182843f1db in memory
flh f20, 0(x2) # load 0xaedfa7182843f1db from memory into f20
fcvt.d.h f8, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe52df51ff563bbb8 # load x3 with value 0xe52df51ff563bbb8
sd x3, 0(x2) # store 0xe52df51ff563bbb8 in memory
flh f26, 0(x2) # load 0xe52df51ff563bbb8 from memory into f26
fcvt.d.h f9, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7801b41a2990c470 # load x3 with value 0x7801b41a2990c470
sd x3, 0(x2) # store 0x7801b41a2990c470 in memory
flh f19, 0(x2) # load 0x7801b41a2990c470 from memory into f19
fcvt.d.h f10, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8395582bdddb1b28 # load x3 with value 0x8395582bdddb1b28
sd x3, 0(x2) # store 0x8395582bdddb1b28 in memory
flh f29, 0(x2) # load 0x8395582bdddb1b28 from memory into f29
fcvt.d.h f11, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdfbab71874576bff # load x3 with value 0xdfbab71874576bff
sd x3, 0(x2) # store 0xdfbab71874576bff in memory
flh f5, 0(x2) # load 0xdfbab71874576bff from memory into f5
fcvt.d.h f12, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf92adfcda691a3c # load x3 with value 0xdf92adfcda691a3c
sd x3, 0(x2) # store 0xdf92adfcda691a3c in memory
flh f10, 0(x2) # load 0xdf92adfcda691a3c from memory into f10
fcvt.d.h f13, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeba66b9bbeb4cfc # load x3 with value 0xbeba66b9bbeb4cfc
sd x3, 0(x2) # store 0xbeba66b9bbeb4cfc in memory
flh f26, 0(x2) # load 0xbeba66b9bbeb4cfc from memory into f26
fcvt.d.h f14, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0e61d6fa95b5d08 # load x3 with value 0xb0e61d6fa95b5d08
sd x3, 0(x2) # store 0xb0e61d6fa95b5d08 in memory
flh f25, 0(x2) # load 0xb0e61d6fa95b5d08 from memory into f25
fcvt.d.h f15, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x212327bb31948bd3 # load x3 with value 0x212327bb31948bd3
sd x3, 0(x2) # store 0x212327bb31948bd3 in memory
flh f19, 0(x2) # load 0x212327bb31948bd3 from memory into f19
fcvt.d.h f16, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc80d5c32a35ac387 # load x3 with value 0xc80d5c32a35ac387
sd x3, 0(x2) # store 0xc80d5c32a35ac387 in memory
flh f12, 0(x2) # load 0xc80d5c32a35ac387 from memory into f12
fcvt.d.h f17, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5879d68ef0d4a667 # load x3 with value 0x5879d68ef0d4a667
sd x3, 0(x2) # store 0x5879d68ef0d4a667 in memory
flh f31, 0(x2) # load 0x5879d68ef0d4a667 from memory into f31
fcvt.d.h f18, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8bc78dc3c2647aca # load x3 with value 0x8bc78dc3c2647aca
sd x3, 0(x2) # store 0x8bc78dc3c2647aca in memory
flh f17, 0(x2) # load 0x8bc78dc3c2647aca from memory into f17
fcvt.d.h f19, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04604c0355677e19 # load x3 with value 0x04604c0355677e19
sd x3, 0(x2) # store 0x04604c0355677e19 in memory
flh f29, 0(x2) # load 0x04604c0355677e19 from memory into f29
fcvt.d.h f20, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc8562456f6234b0a # load x3 with value 0xc8562456f6234b0a
sd x3, 0(x2) # store 0xc8562456f6234b0a in memory
flh f18, 0(x2) # load 0xc8562456f6234b0a from memory into f18
fcvt.d.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5fe3c72474747af8 # load x3 with value 0x5fe3c72474747af8
sd x3, 0(x2) # store 0x5fe3c72474747af8 in memory
flh f31, 0(x2) # load 0x5fe3c72474747af8 from memory into f31
fcvt.d.h f22, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x56d5ddf315bd3913 # load x3 with value 0x56d5ddf315bd3913
sd x3, 0(x2) # store 0x56d5ddf315bd3913 in memory
flh f2, 0(x2) # load 0x56d5ddf315bd3913 from memory into f2
fcvt.d.h f23, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d90e157ac7380c4 # load x3 with value 0x9d90e157ac7380c4
sd x3, 0(x2) # store 0x9d90e157ac7380c4 in memory
flh f30, 0(x2) # load 0x9d90e157ac7380c4 from memory into f30
fcvt.d.h f24, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9896ee407eed619 # load x3 with value 0xb9896ee407eed619
sd x3, 0(x2) # store 0xb9896ee407eed619 in memory
flh f5, 0(x2) # load 0xb9896ee407eed619 from memory into f5
fcvt.d.h f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7826e2004d3bf7a # load x3 with value 0xd7826e2004d3bf7a
sd x3, 0(x2) # store 0xd7826e2004d3bf7a in memory
flh f7, 0(x2) # load 0xd7826e2004d3bf7a from memory into f7
fcvt.d.h f26, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8ceb1d2e487fef1 # load x3 with value 0xa8ceb1d2e487fef1
sd x3, 0(x2) # store 0xa8ceb1d2e487fef1 in memory
flh f20, 0(x2) # load 0xa8ceb1d2e487fef1 from memory into f20
fcvt.d.h f27, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf0173c48b4d261d9 # load x3 with value 0xf0173c48b4d261d9
sd x3, 0(x2) # store 0xf0173c48b4d261d9 in memory
flh f13, 0(x2) # load 0xf0173c48b4d261d9 from memory into f13
fcvt.d.h f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd6f31c7b2e61629 # load x3 with value 0xfd6f31c7b2e61629
sd x3, 0(x2) # store 0xfd6f31c7b2e61629 in memory
flh f17, 0(x2) # load 0xfd6f31c7b2e61629 from memory into f17
fcvt.d.h f29, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6f69a511c1c330e # load x3 with value 0xf6f69a511c1c330e
sd x3, 0(x2) # store 0xf6f69a511c1c330e in memory
flh f11, 0(x2) # load 0xf6f69a511c1c330e from memory into f11
fcvt.d.h f30, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0400f2e6608d5d40 # load x3 with value 0x0400f2e6608d5d40
sd x3, 0(x2) # store 0x0400f2e6608d5d40 in memory
flh f18, 0(x2) # load 0x0400f2e6608d5d40 from memory into f18
fcvt.d.h f31, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flh f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvt.d.h f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008000 # load x3 with value 0x0000000000008000
sd x3, 0(x2) # store 0x0000000000008000 in memory
flh f30, 0(x2) # load 0x0000000000008000 from memory into f30
fcvt.d.h f17, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003c00 # load x3 with value 0x0000000000003c00
sd x3, 0(x2) # store 0x0000000000003c00 in memory
flh f6, 0(x2) # load 0x0000000000003c00 from memory into f6
fcvt.d.h f30, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000bc00 # load x3 with value 0x000000000000bc00
sd x3, 0(x2) # store 0x000000000000bc00 in memory
flh f11, 0(x2) # load 0x000000000000bc00 from memory into f11
fcvt.d.h f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000003e00 # load x3 with value 0x0000000000003e00
sd x3, 0(x2) # store 0x0000000000003e00 in memory
flh f22, 0(x2) # load 0x0000000000003e00 from memory into f22
fcvt.d.h f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000be00 # load x3 with value 0x000000000000be00
sd x3, 0(x2) # store 0x000000000000be00 in memory
flh f21, 0(x2) # load 0x000000000000be00 from memory into f21
fcvt.d.h f3, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000004000 # load x3 with value 0x0000000000004000
sd x3, 0(x2) # store 0x0000000000004000 in memory
flh f11, 0(x2) # load 0x0000000000004000 from memory into f11
fcvt.d.h f10, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c000 # load x3 with value 0x000000000000c000
sd x3, 0(x2) # store 0x000000000000c000 in memory
flh f14, 0(x2) # load 0x000000000000c000 from memory into f14
fcvt.d.h f5, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000400 # load x3 with value 0x0000000000000400
sd x3, 0(x2) # store 0x0000000000000400 in memory
flh f18, 0(x2) # load 0x0000000000000400 from memory into f18
fcvt.d.h f24, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008400 # load x3 with value 0x0000000000008400
sd x3, 0(x2) # store 0x0000000000008400 in memory
flh f5, 0(x2) # load 0x0000000000008400 from memory into f5
fcvt.d.h f8, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007bff # load x3 with value 0x0000000000007bff
sd x3, 0(x2) # store 0x0000000000007bff in memory
flh f11, 0(x2) # load 0x0000000000007bff from memory into f11
fcvt.d.h f12, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fbff # load x3 with value 0x000000000000fbff
sd x3, 0(x2) # store 0x000000000000fbff in memory
flh f25, 0(x2) # load 0x000000000000fbff from memory into f25
fcvt.d.h f29, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000003ff # load x3 with value 0x00000000000003ff
sd x3, 0(x2) # store 0x00000000000003ff in memory
flh f3, 0(x2) # load 0x00000000000003ff from memory into f3
fcvt.d.h f8, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000083ff # load x3 with value 0x00000000000083ff
sd x3, 0(x2) # store 0x00000000000083ff in memory
flh f28, 0(x2) # load 0x00000000000083ff from memory into f28
fcvt.d.h f24, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000200 # load x3 with value 0x0000000000000200
sd x3, 0(x2) # store 0x0000000000000200 in memory
flh f31, 0(x2) # load 0x0000000000000200 from memory into f31
fcvt.d.h f5, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008200 # load x3 with value 0x0000000000008200
sd x3, 0(x2) # store 0x0000000000008200 in memory
flh f10, 0(x2) # load 0x0000000000008200 from memory into f10
fcvt.d.h f12, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
flh f2, 0(x2) # load 0x0000000000000001 from memory into f2
fcvt.d.h f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000008001 # load x3 with value 0x0000000000008001
sd x3, 0(x2) # store 0x0000000000008001 in memory
flh f10, 0(x2) # load 0x0000000000008001 from memory into f10
fcvt.d.h f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c00 # load x3 with value 0x0000000000007c00
sd x3, 0(x2) # store 0x0000000000007c00 in memory
flh f11, 0(x2) # load 0x0000000000007c00 from memory into f11
fcvt.d.h f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc00 # load x3 with value 0x000000000000fc00
sd x3, 0(x2) # store 0x000000000000fc00 in memory
flh f20, 0(x2) # load 0x000000000000fc00 from memory into f20
fcvt.d.h f6, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007e00 # load x3 with value 0x0000000000007e00
sd x3, 0(x2) # store 0x0000000000007e00 in memory
flh f14, 0(x2) # load 0x0000000000007e00 from memory into f14
fcvt.d.h f30, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007fff # load x3 with value 0x0000000000007fff
sd x3, 0(x2) # store 0x0000000000007fff in memory
flh f8, 0(x2) # load 0x0000000000007fff from memory into f8
fcvt.d.h f6, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fe00 # load x3 with value 0x000000000000fe00
sd x3, 0(x2) # store 0x000000000000fe00 in memory
flh f17, 0(x2) # load 0x000000000000fe00 from memory into f17
fcvt.d.h f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007c01 # load x3 with value 0x0000000000007c01
sd x3, 0(x2) # store 0x0000000000007c01 in memory
flh f10, 0(x2) # load 0x0000000000007c01 from memory into f10
fcvt.d.h f2, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000007dff # load x3 with value 0x0000000000007dff
sd x3, 0(x2) # store 0x0000000000007dff in memory
flh f22, 0(x2) # load 0x0000000000007dff from memory into f22
fcvt.d.h f17, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000fc01 # load x3 with value 0x000000000000fc01
sd x3, 0(x2) # store 0x000000000000fc01 in memory
flh f7, 0(x2) # load 0x000000000000fc01 from memory into f7
fcvt.d.h f16, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000000058b4 # load x3 with value 0x00000000000058b4
sd x3, 0(x2) # store 0x00000000000058b4 in memory
flh f23, 0(x2) # load 0x00000000000058b4 from memory into f23
fcvt.d.h f2, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000000c93a # load x3 with value 0x000000000000c93a
sd x3, 0(x2) # store 0x000000000000c93a in memory
flh f21, 0(x2) # load 0x000000000000c93a from memory into f21
fcvt.d.h f11, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb205c6fd06d14b5b # load x3 with value 0xb205c6fd06d14b5b
sd x3, 0(x2) # store 0xb205c6fd06d14b5b in memory
flh f0, 0(x2) # load 0xb205c6fd06d14b5b from memory into f0
fcvt.d.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3e7a65e1539a76d # load x3 with value 0xb3e7a65e1539a76d
sd x3, 0(x2) # store 0xb3e7a65e1539a76d in memory
flh f1, 0(x2) # load 0xb3e7a65e1539a76d from memory into f1
fcvt.d.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x935f891eb5d2d022 # load x3 with value 0x935f891eb5d2d022
sd x3, 0(x2) # store 0x935f891eb5d2d022 in memory
flh f2, 0(x2) # load 0x935f891eb5d2d022 from memory into f2
fcvt.d.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x06a7255223e2b88b # load x3 with value 0x06a7255223e2b88b
sd x3, 0(x2) # store 0x06a7255223e2b88b in memory
flh f3, 0(x2) # load 0x06a7255223e2b88b from memory into f3
fcvt.d.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c58c066700621aa # load x3 with value 0x5c58c066700621aa
sd x3, 0(x2) # store 0x5c58c066700621aa in memory
flh f4, 0(x2) # load 0x5c58c066700621aa from memory into f4
fcvt.d.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x340f0db85ff33cdc # load x3 with value 0x340f0db85ff33cdc
sd x3, 0(x2) # store 0x340f0db85ff33cdc in memory
flh f5, 0(x2) # load 0x340f0db85ff33cdc from memory into f5
fcvt.d.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40fdedca8db32810 # load x3 with value 0x40fdedca8db32810
sd x3, 0(x2) # store 0x40fdedca8db32810 in memory
flh f6, 0(x2) # load 0x40fdedca8db32810 from memory into f6
fcvt.d.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5382bb75d5393c21 # load x3 with value 0x5382bb75d5393c21
sd x3, 0(x2) # store 0x5382bb75d5393c21 in memory
flh f7, 0(x2) # load 0x5382bb75d5393c21 from memory into f7
fcvt.d.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x155d28088311d4d6 # load x3 with value 0x155d28088311d4d6
sd x3, 0(x2) # store 0x155d28088311d4d6 in memory
flh f8, 0(x2) # load 0x155d28088311d4d6 from memory into f8
fcvt.d.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb24df53fc5e8433b # load x3 with value 0xb24df53fc5e8433b
sd x3, 0(x2) # store 0xb24df53fc5e8433b in memory
flh f9, 0(x2) # load 0xb24df53fc5e8433b from memory into f9
fcvt.d.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x70f3614d1068514a # load x3 with value 0x70f3614d1068514a
sd x3, 0(x2) # store 0x70f3614d1068514a in memory
flh f10, 0(x2) # load 0x70f3614d1068514a from memory into f10
fcvt.d.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4e4355fbf948d9b # load x3 with value 0xe4e4355fbf948d9b
sd x3, 0(x2) # store 0xe4e4355fbf948d9b in memory
flh f11, 0(x2) # load 0xe4e4355fbf948d9b from memory into f11
fcvt.d.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x74609710f29f387f # load x3 with value 0x74609710f29f387f
sd x3, 0(x2) # store 0x74609710f29f387f in memory
flh f12, 0(x2) # load 0x74609710f29f387f from memory into f12
fcvt.d.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35a4b07a6a669930 # load x3 with value 0x35a4b07a6a669930
sd x3, 0(x2) # store 0x35a4b07a6a669930 in memory
flh f13, 0(x2) # load 0x35a4b07a6a669930 from memory into f13
fcvt.d.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x739c43a6fa4d03eb # load x3 with value 0x739c43a6fa4d03eb
sd x3, 0(x2) # store 0x739c43a6fa4d03eb in memory
flh f14, 0(x2) # load 0x739c43a6fa4d03eb from memory into f14
fcvt.d.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x635bf6f00a999336 # load x3 with value 0x635bf6f00a999336
sd x3, 0(x2) # store 0x635bf6f00a999336 in memory
flh f15, 0(x2) # load 0x635bf6f00a999336 from memory into f15
fcvt.d.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcace83edddd712d5 # load x3 with value 0xcace83edddd712d5
sd x3, 0(x2) # store 0xcace83edddd712d5 in memory
flh f16, 0(x2) # load 0xcace83edddd712d5 from memory into f16
fcvt.d.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e049fcde4e62b69 # load x3 with value 0x5e049fcde4e62b69
sd x3, 0(x2) # store 0x5e049fcde4e62b69 in memory
flh f17, 0(x2) # load 0x5e049fcde4e62b69 from memory into f17
fcvt.d.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6d50c8ec87ebdb0 # load x3 with value 0xa6d50c8ec87ebdb0
sd x3, 0(x2) # store 0xa6d50c8ec87ebdb0 in memory
flh f18, 0(x2) # load 0xa6d50c8ec87ebdb0 from memory into f18
fcvt.d.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4e8db448d846d39 # load x3 with value 0xd4e8db448d846d39
sd x3, 0(x2) # store 0xd4e8db448d846d39 in memory
flh f19, 0(x2) # load 0xd4e8db448d846d39 from memory into f19
fcvt.d.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1ed1dcad7f316e7 # load x3 with value 0xc1ed1dcad7f316e7
sd x3, 0(x2) # store 0xc1ed1dcad7f316e7 in memory
flh f20, 0(x2) # load 0xc1ed1dcad7f316e7 from memory into f20
fcvt.d.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ab7e14741aaa9f6 # load x3 with value 0x4ab7e14741aaa9f6
sd x3, 0(x2) # store 0x4ab7e14741aaa9f6 in memory
flh f21, 0(x2) # load 0x4ab7e14741aaa9f6 from memory into f21
fcvt.d.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6c146642e8a7552 # load x3 with value 0xf6c146642e8a7552
sd x3, 0(x2) # store 0xf6c146642e8a7552 in memory
flh f22, 0(x2) # load 0xf6c146642e8a7552 from memory into f22
fcvt.d.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e849b189c9bfe8a # load x3 with value 0x1e849b189c9bfe8a
sd x3, 0(x2) # store 0x1e849b189c9bfe8a in memory
flh f23, 0(x2) # load 0x1e849b189c9bfe8a from memory into f23
fcvt.d.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfaa84b4a466e512 # load x3 with value 0xbfaa84b4a466e512
sd x3, 0(x2) # store 0xbfaa84b4a466e512 in memory
flh f24, 0(x2) # load 0xbfaa84b4a466e512 from memory into f24
fcvt.d.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf4d1796ac4bc2bb # load x3 with value 0xdf4d1796ac4bc2bb
sd x3, 0(x2) # store 0xdf4d1796ac4bc2bb in memory
flh f25, 0(x2) # load 0xdf4d1796ac4bc2bb from memory into f25
fcvt.d.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x356336ba87057e1c # load x3 with value 0x356336ba87057e1c
sd x3, 0(x2) # store 0x356336ba87057e1c in memory
flh f26, 0(x2) # load 0x356336ba87057e1c from memory into f26
fcvt.d.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd975f19b2fb3ddd6 # load x3 with value 0xd975f19b2fb3ddd6
sd x3, 0(x2) # store 0xd975f19b2fb3ddd6 in memory
flh f27, 0(x2) # load 0xd975f19b2fb3ddd6 from memory into f27
fcvt.d.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00758167d6f462c0 # load x3 with value 0x00758167d6f462c0
sd x3, 0(x2) # store 0x00758167d6f462c0 in memory
flh f28, 0(x2) # load 0x00758167d6f462c0 from memory into f28
fcvt.d.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd7379dcf4e13dc2 # load x3 with value 0xcd7379dcf4e13dc2
sd x3, 0(x2) # store 0xcd7379dcf4e13dc2 in memory
flh f29, 0(x2) # load 0xcd7379dcf4e13dc2 from memory into f29
fcvt.d.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32c093331c30974e # load x3 with value 0x32c093331c30974e
sd x3, 0(x2) # store 0x32c093331c30974e in memory
flh f30, 0(x2) # load 0x32c093331c30974e from memory into f30
fcvt.d.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef26456432d26ad3 # load x3 with value 0xef26456432d26ad3
sd x3, 0(x2) # store 0xef26456432d26ad3 in memory
flh f31, 0(x2) # load 0xef26456432d26ad3 from memory into f31
fcvt.d.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fcvt.d.h f13, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fcvt.d.h f24, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
fcvt.d.h f20, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fcvt.d.h f28, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f8, 0(x2) # load 0xffffffefffff0400 from memory into f8
fcvt.d.h f11, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fcvt.d.h f12, f21 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f9, 0(x2) # load 0xefffffffffff7bff from memory into f9
fcvt.d.h f1, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
fcvt.d.h f9, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f29, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f29
fcvt.d.h f5, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fcvt.d.h f13, f30 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
fcvt.d.h f1, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
fcvt.d.h f25, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fcvt.d.h f25, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f9, 0(x2) # load 0xfffffffcffff7dff from memory into f9
fcvt.d.h f27, f9 # perform operation second time to make sure flags don't change

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
