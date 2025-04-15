///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfh/WALLY-COV-fround.h.S
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
add x18, x13, x25 # perform first operation
fround.h f16, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x3, x25 # perform first operation
fround.h f8, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x27, x9 # perform first operation
fround.h f17, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f8, f18 # perform first operation
fround.h f23, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x18, x3 # perform first operation
fround.h f24, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x15, x20 # perform first operation
fround.h f21, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f17, f24, f26 # perform first operation
fround.h f17, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f24, f30 # perform first operation
fround.h f1, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f16, f22 # perform first operation
fround.h f25, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f16, f7 # perform first operation
fround.h f16, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f10, f12, f17 # perform first operation
fround.h f17, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f24, f22 # perform first operation
fround.h f20, f27 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8358a51a6fe32d09 # load x3 with value 0x8358a51a6fe32d09
sw x3, 0(x2) # store 0x8358a51a6fe32d09 in memory
flh f0, 0(x2) # load 0x8358a51a6fe32d09 from memory into f0
fround.h f26, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb99ef538c63b11cb # load x3 with value 0xb99ef538c63b11cb
sw x3, 0(x2) # store 0xb99ef538c63b11cb in memory
flh f1, 0(x2) # load 0xb99ef538c63b11cb from memory into f1
fround.h f22, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc00cd01d981923a7 # load x3 with value 0xc00cd01d981923a7
sw x3, 0(x2) # store 0xc00cd01d981923a7 in memory
flh f2, 0(x2) # load 0xc00cd01d981923a7 from memory into f2
fround.h f6, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfcd34171bdef2332 # load x3 with value 0xfcd34171bdef2332
sw x3, 0(x2) # store 0xfcd34171bdef2332 in memory
flh f3, 0(x2) # load 0xfcd34171bdef2332 from memory into f3
fround.h f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde2262aa612ad8b0 # load x3 with value 0xde2262aa612ad8b0
sw x3, 0(x2) # store 0xde2262aa612ad8b0 in memory
flh f4, 0(x2) # load 0xde2262aa612ad8b0 from memory into f4
fround.h f20, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1f497e411bba192 # load x3 with value 0xc1f497e411bba192
sw x3, 0(x2) # store 0xc1f497e411bba192 in memory
flh f5, 0(x2) # load 0xc1f497e411bba192 from memory into f5
fround.h f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e6c4fb33a0ef30c # load x3 with value 0x5e6c4fb33a0ef30c
sw x3, 0(x2) # store 0x5e6c4fb33a0ef30c in memory
flh f6, 0(x2) # load 0x5e6c4fb33a0ef30c from memory into f6
fround.h f2, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacd02de2ad8990a3 # load x3 with value 0xacd02de2ad8990a3
sw x3, 0(x2) # store 0xacd02de2ad8990a3 in memory
flh f7, 0(x2) # load 0xacd02de2ad8990a3 from memory into f7
fround.h f10, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5d3a87965972c23 # load x3 with value 0xf5d3a87965972c23
sw x3, 0(x2) # store 0xf5d3a87965972c23 in memory
flh f8, 0(x2) # load 0xf5d3a87965972c23 from memory into f8
fround.h f28, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40b0a01d8ac39a5a # load x3 with value 0x40b0a01d8ac39a5a
sw x3, 0(x2) # store 0x40b0a01d8ac39a5a in memory
flh f9, 0(x2) # load 0x40b0a01d8ac39a5a from memory into f9
fround.h f30, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e66f960c612aa5d # load x3 with value 0x9e66f960c612aa5d
sw x3, 0(x2) # store 0x9e66f960c612aa5d in memory
flh f10, 0(x2) # load 0x9e66f960c612aa5d from memory into f10
fround.h f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x11efa411c8c78add # load x3 with value 0x11efa411c8c78add
sw x3, 0(x2) # store 0x11efa411c8c78add in memory
flh f11, 0(x2) # load 0x11efa411c8c78add from memory into f11
fround.h f2, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc209b1085100d7f9 # load x3 with value 0xc209b1085100d7f9
sw x3, 0(x2) # store 0xc209b1085100d7f9 in memory
flh f12, 0(x2) # load 0xc209b1085100d7f9 from memory into f12
fround.h f22, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6fb9e25e5d5e38e4 # load x3 with value 0x6fb9e25e5d5e38e4
sw x3, 0(x2) # store 0x6fb9e25e5d5e38e4 in memory
flh f13, 0(x2) # load 0x6fb9e25e5d5e38e4 from memory into f13
fround.h f1, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x915b844c81b6f3ef # load x3 with value 0x915b844c81b6f3ef
sw x3, 0(x2) # store 0x915b844c81b6f3ef in memory
flh f14, 0(x2) # load 0x915b844c81b6f3ef from memory into f14
fround.h f12, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x21760c21fdf6592f # load x3 with value 0x21760c21fdf6592f
sw x3, 0(x2) # store 0x21760c21fdf6592f in memory
flh f15, 0(x2) # load 0x21760c21fdf6592f from memory into f15
fround.h f19, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c76cc4cd024b40a # load x3 with value 0x9c76cc4cd024b40a
sw x3, 0(x2) # store 0x9c76cc4cd024b40a in memory
flh f16, 0(x2) # load 0x9c76cc4cd024b40a from memory into f16
fround.h f19, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c658e79e2576412 # load x3 with value 0x7c658e79e2576412
sw x3, 0(x2) # store 0x7c658e79e2576412 in memory
flh f17, 0(x2) # load 0x7c658e79e2576412 from memory into f17
fround.h f28, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x91c2a32cd60ffb6a # load x3 with value 0x91c2a32cd60ffb6a
sw x3, 0(x2) # store 0x91c2a32cd60ffb6a in memory
flh f18, 0(x2) # load 0x91c2a32cd60ffb6a from memory into f18
fround.h f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x529f049edec84ff6 # load x3 with value 0x529f049edec84ff6
sw x3, 0(x2) # store 0x529f049edec84ff6 in memory
flh f19, 0(x2) # load 0x529f049edec84ff6 from memory into f19
fround.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc760569f664c0ff4 # load x3 with value 0xc760569f664c0ff4
sw x3, 0(x2) # store 0xc760569f664c0ff4 in memory
flh f20, 0(x2) # load 0xc760569f664c0ff4 from memory into f20
fround.h f3, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x11a0302592dc5b7b # load x3 with value 0x11a0302592dc5b7b
sw x3, 0(x2) # store 0x11a0302592dc5b7b in memory
flh f21, 0(x2) # load 0x11a0302592dc5b7b from memory into f21
fround.h f12, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbc082c8a410f7f0f # load x3 with value 0xbc082c8a410f7f0f
sw x3, 0(x2) # store 0xbc082c8a410f7f0f in memory
flh f22, 0(x2) # load 0xbc082c8a410f7f0f from memory into f22
fround.h f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0a5fa13dbf894a8 # load x3 with value 0xe0a5fa13dbf894a8
sw x3, 0(x2) # store 0xe0a5fa13dbf894a8 in memory
flh f23, 0(x2) # load 0xe0a5fa13dbf894a8 from memory into f23
fround.h f10, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73c6a4930b089023 # load x3 with value 0x73c6a4930b089023
sw x3, 0(x2) # store 0x73c6a4930b089023 in memory
flh f24, 0(x2) # load 0x73c6a4930b089023 from memory into f24
fround.h f14, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb75192ae9c16bb10 # load x3 with value 0xb75192ae9c16bb10
sw x3, 0(x2) # store 0xb75192ae9c16bb10 in memory
flh f25, 0(x2) # load 0xb75192ae9c16bb10 from memory into f25
fround.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x709c28bcddd39c72 # load x3 with value 0x709c28bcddd39c72
sw x3, 0(x2) # store 0x709c28bcddd39c72 in memory
flh f26, 0(x2) # load 0x709c28bcddd39c72 from memory into f26
fround.h f25, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfabbb5fb95718fdb # load x3 with value 0xfabbb5fb95718fdb
sw x3, 0(x2) # store 0xfabbb5fb95718fdb in memory
flh f27, 0(x2) # load 0xfabbb5fb95718fdb from memory into f27
fround.h f25, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x36c0801baa747184 # load x3 with value 0x36c0801baa747184
sw x3, 0(x2) # store 0x36c0801baa747184 in memory
flh f28, 0(x2) # load 0x36c0801baa747184 from memory into f28
fround.h f18, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2fbeefa823775db9 # load x3 with value 0x2fbeefa823775db9
sw x3, 0(x2) # store 0x2fbeefa823775db9 in memory
flh f29, 0(x2) # load 0x2fbeefa823775db9 from memory into f29
fround.h f28, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbba887138a4c6509 # load x3 with value 0xbba887138a4c6509
sw x3, 0(x2) # store 0xbba887138a4c6509 in memory
flh f30, 0(x2) # load 0xbba887138a4c6509 from memory into f30
fround.h f19, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x659ae476c9cdf6ae # load x3 with value 0x659ae476c9cdf6ae
sw x3, 0(x2) # store 0x659ae476c9cdf6ae in memory
flh f31, 0(x2) # load 0x659ae476c9cdf6ae from memory into f31
fround.h f20, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed5703d3ad96cb00 # load x3 with value 0xed5703d3ad96cb00
sw x3, 0(x2) # store 0xed5703d3ad96cb00 in memory
flh f29, 0(x2) # load 0xed5703d3ad96cb00 from memory into f29
fround.h f0, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6b373f1308827bdd # load x3 with value 0x6b373f1308827bdd
sw x3, 0(x2) # store 0x6b373f1308827bdd in memory
flh f30, 0(x2) # load 0x6b373f1308827bdd from memory into f30
fround.h f1, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f2df344d98b2eb7 # load x3 with value 0x6f2df344d98b2eb7
sw x3, 0(x2) # store 0x6f2df344d98b2eb7 in memory
flh f1, 0(x2) # load 0x6f2df344d98b2eb7 from memory into f1
fround.h f2, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcb7866cd77b8efca # load x3 with value 0xcb7866cd77b8efca
sw x3, 0(x2) # store 0xcb7866cd77b8efca in memory
flh f25, 0(x2) # load 0xcb7866cd77b8efca from memory into f25
fround.h f3, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc78f96789bda18a3 # load x3 with value 0xc78f96789bda18a3
sw x3, 0(x2) # store 0xc78f96789bda18a3 in memory
flh f22, 0(x2) # load 0xc78f96789bda18a3 from memory into f22
fround.h f4, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee6347861c1ea6a7 # load x3 with value 0xee6347861c1ea6a7
sw x3, 0(x2) # store 0xee6347861c1ea6a7 in memory
flh f15, 0(x2) # load 0xee6347861c1ea6a7 from memory into f15
fround.h f5, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ef922835f811d97 # load x3 with value 0x2ef922835f811d97
sw x3, 0(x2) # store 0x2ef922835f811d97 in memory
flh f14, 0(x2) # load 0x2ef922835f811d97 from memory into f14
fround.h f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x31889886dea7ed1 # load x3 with value 0x31889886dea7ed1
sw x3, 0(x2) # store 0x31889886dea7ed1 in memory
flh f12, 0(x2) # load 0x31889886dea7ed1 from memory into f12
fround.h f7, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc344970ab7f1daf0 # load x3 with value 0xc344970ab7f1daf0
sw x3, 0(x2) # store 0xc344970ab7f1daf0 in memory
flh f13, 0(x2) # load 0xc344970ab7f1daf0 from memory into f13
fround.h f8, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x98b7dcb923a88f13 # load x3 with value 0x98b7dcb923a88f13
sw x3, 0(x2) # store 0x98b7dcb923a88f13 in memory
flh f1, 0(x2) # load 0x98b7dcb923a88f13 from memory into f1
fround.h f9, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e8938e60d4689c # load x3 with value 0x8e8938e60d4689c
sw x3, 0(x2) # store 0x8e8938e60d4689c in memory
flh f17, 0(x2) # load 0x8e8938e60d4689c from memory into f17
fround.h f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc61cfc9b5de7e713 # load x3 with value 0xc61cfc9b5de7e713
sw x3, 0(x2) # store 0xc61cfc9b5de7e713 in memory
flh f15, 0(x2) # load 0xc61cfc9b5de7e713 from memory into f15
fround.h f11, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8d35f88455646530 # load x3 with value 0x8d35f88455646530
sw x3, 0(x2) # store 0x8d35f88455646530 in memory
flh f24, 0(x2) # load 0x8d35f88455646530 from memory into f24
fround.h f12, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85f5fed24bd29d01 # load x3 with value 0x85f5fed24bd29d01
sw x3, 0(x2) # store 0x85f5fed24bd29d01 in memory
flh f14, 0(x2) # load 0x85f5fed24bd29d01 from memory into f14
fround.h f13, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabbf769bdce57d30 # load x3 with value 0xabbf769bdce57d30
sw x3, 0(x2) # store 0xabbf769bdce57d30 in memory
flh f19, 0(x2) # load 0xabbf769bdce57d30 from memory into f19
fround.h f14, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x684565fd8f474c11 # load x3 with value 0x684565fd8f474c11
sw x3, 0(x2) # store 0x684565fd8f474c11 in memory
flh f1, 0(x2) # load 0x684565fd8f474c11 from memory into f1
fround.h f15, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93768bf684fa638e # load x3 with value 0x93768bf684fa638e
sw x3, 0(x2) # store 0x93768bf684fa638e in memory
flh f8, 0(x2) # load 0x93768bf684fa638e from memory into f8
fround.h f16, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf653196381dc88e6 # load x3 with value 0xf653196381dc88e6
sw x3, 0(x2) # store 0xf653196381dc88e6 in memory
flh f10, 0(x2) # load 0xf653196381dc88e6 from memory into f10
fround.h f17, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbbbf8b238de10a24 # load x3 with value 0xbbbf8b238de10a24
sw x3, 0(x2) # store 0xbbbf8b238de10a24 in memory
flh f5, 0(x2) # load 0xbbbf8b238de10a24 from memory into f5
fround.h f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe606b6db0365cf03 # load x3 with value 0xe606b6db0365cf03
sw x3, 0(x2) # store 0xe606b6db0365cf03 in memory
flh f24, 0(x2) # load 0xe606b6db0365cf03 from memory into f24
fround.h f19, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x733d7619fc00be75 # load x3 with value 0x733d7619fc00be75
sw x3, 0(x2) # store 0x733d7619fc00be75 in memory
flh f7, 0(x2) # load 0x733d7619fc00be75 from memory into f7
fround.h f20, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x18ed69e29a94c576 # load x3 with value 0x18ed69e29a94c576
sw x3, 0(x2) # store 0x18ed69e29a94c576 in memory
flh f12, 0(x2) # load 0x18ed69e29a94c576 from memory into f12
fround.h f21, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x353ac70a3fbe319d # load x3 with value 0x353ac70a3fbe319d
sw x3, 0(x2) # store 0x353ac70a3fbe319d in memory
flh f10, 0(x2) # load 0x353ac70a3fbe319d from memory into f10
fround.h f22, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4148b3581ca59ee1 # load x3 with value 0x4148b3581ca59ee1
sw x3, 0(x2) # store 0x4148b3581ca59ee1 in memory
flh f14, 0(x2) # load 0x4148b3581ca59ee1 from memory into f14
fround.h f23, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x323b2f6c5e804c34 # load x3 with value 0x323b2f6c5e804c34
sw x3, 0(x2) # store 0x323b2f6c5e804c34 in memory
flh f14, 0(x2) # load 0x323b2f6c5e804c34 from memory into f14
fround.h f24, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfb9dce1c6e5af18a # load x3 with value 0xfb9dce1c6e5af18a
sw x3, 0(x2) # store 0xfb9dce1c6e5af18a in memory
flh f6, 0(x2) # load 0xfb9dce1c6e5af18a from memory into f6
fround.h f25, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc53477ca5ed841c5 # load x3 with value 0xc53477ca5ed841c5
sw x3, 0(x2) # store 0xc53477ca5ed841c5 in memory
flh f19, 0(x2) # load 0xc53477ca5ed841c5 from memory into f19
fround.h f26, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3ba1a8f3fc193a0 # load x3 with value 0xb3ba1a8f3fc193a0
sw x3, 0(x2) # store 0xb3ba1a8f3fc193a0 in memory
flh f14, 0(x2) # load 0xb3ba1a8f3fc193a0 from memory into f14
fround.h f27, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65c28238389bfd0d # load x3 with value 0x65c28238389bfd0d
sw x3, 0(x2) # store 0x65c28238389bfd0d in memory
flh f8, 0(x2) # load 0x65c28238389bfd0d from memory into f8
fround.h f28, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x15ce8cc867c5623d # load x3 with value 0x15ce8cc867c5623d
sw x3, 0(x2) # store 0x15ce8cc867c5623d in memory
flh f15, 0(x2) # load 0x15ce8cc867c5623d from memory into f15
fround.h f29, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2f430a76852b98a0 # load x3 with value 0x2f430a76852b98a0
sw x3, 0(x2) # store 0x2f430a76852b98a0 in memory
flh f16, 0(x2) # load 0x2f430a76852b98a0 from memory into f16
fround.h f30, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78ae535a7cfabe43 # load x3 with value 0x78ae535a7cfabe43
sw x3, 0(x2) # store 0x78ae535a7cfabe43 in memory
flh f10, 0(x2) # load 0x78ae535a7cfabe43 from memory into f10
fround.h f31, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fround.h f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fround.h f20, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fround.h f2, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fround.h f7, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fround.h f21, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fround.h f24, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fround.h f10, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fround.h f3, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fround.h f8, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fround.h f13, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fround.h f26, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fround.h f26, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fround.h f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fround.h f3, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fround.h f24, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fround.h f16, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fround.h f10, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fround.h f10, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fround.h f22, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fround.h f14, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fround.h f15, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fround.h f5, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fround.h f15, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fround.h f10, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fround.h f26, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fround.h f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fround.h f14, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fround.h f10, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacb56a6439f08788 # load x3 with value 0xacb56a6439f08788
sw x3, 0(x2) # store 0xacb56a6439f08788 in memory
flh f0, 0(x2) # load 0xacb56a6439f08788 from memory into f0
fround.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5431c8c12062db0 # load x3 with value 0xd5431c8c12062db0
sw x3, 0(x2) # store 0xd5431c8c12062db0 in memory
flh f1, 0(x2) # load 0xd5431c8c12062db0 from memory into f1
fround.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1042fb291a777eef # load x3 with value 0x1042fb291a777eef
sw x3, 0(x2) # store 0x1042fb291a777eef in memory
flh f2, 0(x2) # load 0x1042fb291a777eef from memory into f2
fround.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x249b39f9131c63f9 # load x3 with value 0x249b39f9131c63f9
sw x3, 0(x2) # store 0x249b39f9131c63f9 in memory
flh f3, 0(x2) # load 0x249b39f9131c63f9 from memory into f3
fround.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b4afb7729e203c5 # load x3 with value 0x1b4afb7729e203c5
sw x3, 0(x2) # store 0x1b4afb7729e203c5 in memory
flh f4, 0(x2) # load 0x1b4afb7729e203c5 from memory into f4
fround.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeec7fd100fe3ab05 # load x3 with value 0xeec7fd100fe3ab05
sw x3, 0(x2) # store 0xeec7fd100fe3ab05 in memory
flh f5, 0(x2) # load 0xeec7fd100fe3ab05 from memory into f5
fround.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x91d3d3daf3e72a95 # load x3 with value 0x91d3d3daf3e72a95
sw x3, 0(x2) # store 0x91d3d3daf3e72a95 in memory
flh f6, 0(x2) # load 0x91d3d3daf3e72a95 from memory into f6
fround.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb647dcd6dd639ac # load x3 with value 0xeb647dcd6dd639ac
sw x3, 0(x2) # store 0xeb647dcd6dd639ac in memory
flh f7, 0(x2) # load 0xeb647dcd6dd639ac from memory into f7
fround.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e2aaf1edb14e768 # load x3 with value 0x2e2aaf1edb14e768
sw x3, 0(x2) # store 0x2e2aaf1edb14e768 in memory
flh f8, 0(x2) # load 0x2e2aaf1edb14e768 from memory into f8
fround.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4331f5595941b4ef # load x3 with value 0x4331f5595941b4ef
sw x3, 0(x2) # store 0x4331f5595941b4ef in memory
flh f9, 0(x2) # load 0x4331f5595941b4ef from memory into f9
fround.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x954cd0ef80556d7 # load x3 with value 0x954cd0ef80556d7
sw x3, 0(x2) # store 0x954cd0ef80556d7 in memory
flh f10, 0(x2) # load 0x954cd0ef80556d7 from memory into f10
fround.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5586c42c11d64a6 # load x3 with value 0xc5586c42c11d64a6
sw x3, 0(x2) # store 0xc5586c42c11d64a6 in memory
flh f11, 0(x2) # load 0xc5586c42c11d64a6 from memory into f11
fround.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f27ec839721c737 # load x3 with value 0x4f27ec839721c737
sw x3, 0(x2) # store 0x4f27ec839721c737 in memory
flh f12, 0(x2) # load 0x4f27ec839721c737 from memory into f12
fround.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x69b0a2f4830f92f6 # load x3 with value 0x69b0a2f4830f92f6
sw x3, 0(x2) # store 0x69b0a2f4830f92f6 in memory
flh f13, 0(x2) # load 0x69b0a2f4830f92f6 from memory into f13
fround.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc8f16fbdfc17d168 # load x3 with value 0xc8f16fbdfc17d168
sw x3, 0(x2) # store 0xc8f16fbdfc17d168 in memory
flh f14, 0(x2) # load 0xc8f16fbdfc17d168 from memory into f14
fround.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66065a8ca142288b # load x3 with value 0x66065a8ca142288b
sw x3, 0(x2) # store 0x66065a8ca142288b in memory
flh f15, 0(x2) # load 0x66065a8ca142288b from memory into f15
fround.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5b3211aea19ef02c # load x3 with value 0x5b3211aea19ef02c
sw x3, 0(x2) # store 0x5b3211aea19ef02c in memory
flh f16, 0(x2) # load 0x5b3211aea19ef02c from memory into f16
fround.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e3724e6180b1325 # load x3 with value 0x6e3724e6180b1325
sw x3, 0(x2) # store 0x6e3724e6180b1325 in memory
flh f17, 0(x2) # load 0x6e3724e6180b1325 from memory into f17
fround.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d53efe00824c06d # load x3 with value 0x4d53efe00824c06d
sw x3, 0(x2) # store 0x4d53efe00824c06d in memory
flh f18, 0(x2) # load 0x4d53efe00824c06d from memory into f18
fround.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8a05582d1a02013e # load x3 with value 0x8a05582d1a02013e
sw x3, 0(x2) # store 0x8a05582d1a02013e in memory
flh f19, 0(x2) # load 0x8a05582d1a02013e from memory into f19
fround.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e70aa6fb8d2c0e7 # load x3 with value 0x2e70aa6fb8d2c0e7
sw x3, 0(x2) # store 0x2e70aa6fb8d2c0e7 in memory
flh f20, 0(x2) # load 0x2e70aa6fb8d2c0e7 from memory into f20
fround.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x15b97e7f7268b66e # load x3 with value 0x15b97e7f7268b66e
sw x3, 0(x2) # store 0x15b97e7f7268b66e in memory
flh f21, 0(x2) # load 0x15b97e7f7268b66e from memory into f21
fround.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x913b97dde0b3783b # load x3 with value 0x913b97dde0b3783b
sw x3, 0(x2) # store 0x913b97dde0b3783b in memory
flh f22, 0(x2) # load 0x913b97dde0b3783b from memory into f22
fround.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc60f61c61c41021c # load x3 with value 0xc60f61c61c41021c
sw x3, 0(x2) # store 0xc60f61c61c41021c in memory
flh f23, 0(x2) # load 0xc60f61c61c41021c from memory into f23
fround.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeeac1dceb3f86744 # load x3 with value 0xeeac1dceb3f86744
sw x3, 0(x2) # store 0xeeac1dceb3f86744 in memory
flh f24, 0(x2) # load 0xeeac1dceb3f86744 from memory into f24
fround.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x559523faa0a10aae # load x3 with value 0x559523faa0a10aae
sw x3, 0(x2) # store 0x559523faa0a10aae in memory
flh f25, 0(x2) # load 0x559523faa0a10aae from memory into f25
fround.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x18e8427234168f90 # load x3 with value 0x18e8427234168f90
sw x3, 0(x2) # store 0x18e8427234168f90 in memory
flh f26, 0(x2) # load 0x18e8427234168f90 from memory into f26
fround.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x107324d2dc9fff72 # load x3 with value 0x107324d2dc9fff72
sw x3, 0(x2) # store 0x107324d2dc9fff72 in memory
flh f27, 0(x2) # load 0x107324d2dc9fff72 from memory into f27
fround.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc3bc1aa1114d89ea # load x3 with value 0xc3bc1aa1114d89ea
sw x3, 0(x2) # store 0xc3bc1aa1114d89ea in memory
flh f28, 0(x2) # load 0xc3bc1aa1114d89ea from memory into f28
fround.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x452d2e4a0e681da9 # load x3 with value 0x452d2e4a0e681da9
sw x3, 0(x2) # store 0x452d2e4a0e681da9 in memory
flh f29, 0(x2) # load 0x452d2e4a0e681da9 from memory into f29
fround.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c902ffb0a2b7867 # load x3 with value 0x7c902ffb0a2b7867
sw x3, 0(x2) # store 0x7c902ffb0a2b7867 in memory
flh f30, 0(x2) # load 0x7c902ffb0a2b7867 from memory into f30
fround.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x115bf9d135c9e68a # load x3 with value 0x115bf9d135c9e68a
sw x3, 0(x2) # store 0x115bf9d135c9e68a in memory
flh f31, 0(x2) # load 0x115bf9d135c9e68a from memory into f31
fround.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95d0196f060fe269 # load x3 with value 0x95d0196f060fe269
sw x3, 0(x2) # store 0x95d0196f060fe269 in memory
flh f15, 0(x2) # load 0x95d0196f060fe269 from memory into f15
fround.h f6, f15, dyn # perform operation
fround.h f6, f15, rdn # perform operation
fround.h f6, f15, rmm # perform operation
fround.h f6, f15, rne # perform operation
fround.h f6, f15, rtz # perform operation
fround.h f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.h f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.h f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.h f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.h f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.h f6, f15 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x70f1afbf09fc71c4 # load x3 with value 0x70f1afbf09fc71c4
sw x3, 0(x2) # store 0x70f1afbf09fc71c4 in memory
flh f29, 0(x2) # load 0x70f1afbf09fc71c4 from memory into f29
fround.h f17, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fround.h f28, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f19, 0(x2) # load 0xfffe8000 from memory into f19
fround.h f30, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f10, 0(x2) # load 0x7fff3c00 from memory into f10
fround.h f8, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f13, 0(x2) # load 0xbeefbc00 from memory into f13
fround.h f26, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f12, 0(x2) # load 0xfeff0400 from memory into f12
fround.h f26, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f6, 0(x2) # load 0x0fff8400 from memory into f6
fround.h f31, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f3, 0(x2) # load 0xefff7bff from memory into f3
fround.h f16, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f7, 0(x2) # load 0xc0defbff from memory into f7
fround.h f2, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f28, 0(x2) # load 0x4f1a7c00 from memory into f28
fround.h f24, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f6, 0(x2) # load 0x0ffffc00 from memory into f6
fround.h f29, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f9, 0(x2) # load 0xffef7e00 from memory into f9
fround.h f2, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f8, 0(x2) # load 0xfeef7fff from memory into f8
fround.h f17, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f18, 0(x2) # load 0xa1b27c01 from memory into f18
fround.h f14, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f12, 0(x2) # load 0x4fd77dff from memory into f12
fround.h f9, f12 # perform operation second time to make sure flags don't change

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
