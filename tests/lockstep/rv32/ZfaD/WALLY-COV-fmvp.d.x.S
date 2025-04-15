///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fmvp.d.x.S
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


# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x0abb0d07 # load immediate value into integer register
li x22, 0xd77e89eb # load immediate value into integer register
fmvp.d.x f2, x0, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2d168ae6 # load immediate value into integer register
li x21, 0x3a79cb27 # load immediate value into integer register
fmvp.d.x f19, x1, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3dc354ef # load immediate value into integer register
li x31, 0x4fe46e7a # load immediate value into integer register
fmvp.d.x f11, x2, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x93b40ed1 # load immediate value into integer register
li x2, 0xaf5b1d1d # load immediate value into integer register
fmvp.d.x f7, x3, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x34f3c094 # load immediate value into integer register
li x2, 0xb67ef62a # load immediate value into integer register
fmvp.d.x f25, x4, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0bb88b9b # load immediate value into integer register
li x17, 0x5c06f93d # load immediate value into integer register
fmvp.d.x f23, x5, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x996675e7 # load immediate value into integer register
li x23, 0xb8f3761c # load immediate value into integer register
fmvp.d.x f18, x6, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x29c949f2 # load immediate value into integer register
li x9, 0x1d9f8728 # load immediate value into integer register
fmvp.d.x f8, x7, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x414b6daf # load immediate value into integer register
li x1, 0x1fc9ae02 # load immediate value into integer register
fmvp.d.x f19, x8, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xcc658e90 # load immediate value into integer register
li x29, 0x54375e70 # load immediate value into integer register
fmvp.d.x f31, x9, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb8f9b322 # load immediate value into integer register
li x15, 0xa3eece56 # load immediate value into integer register
fmvp.d.x f14, x10, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xaa9690b1 # load immediate value into integer register
li x8, 0x9af5a584 # load immediate value into integer register
fmvp.d.x f16, x11, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe6713f89 # load immediate value into integer register
li x22, 0x39da998f # load immediate value into integer register
fmvp.d.x f13, x12, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfa2534cf # load immediate value into integer register
li x29, 0x5703932e # load immediate value into integer register
fmvp.d.x f25, x13, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x3e2fa1e9 # load immediate value into integer register
li x25, 0x8d08e57e # load immediate value into integer register
fmvp.d.x f28, x14, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8a6b0e1d # load immediate value into integer register
li x24, 0x67b51fe7 # load immediate value into integer register
fmvp.d.x f28, x15, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdd55c361 # load immediate value into integer register
li x21, 0xe6b1fcfd # load immediate value into integer register
fmvp.d.x f9, x16, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3d0a0851 # load immediate value into integer register
li x8, 0xe7562bab # load immediate value into integer register
fmvp.d.x f23, x17, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd791a554 # load immediate value into integer register
li x28, 0xa642bd72 # load immediate value into integer register
fmvp.d.x f27, x18, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x793300a3 # load immediate value into integer register
li x24, 0x4602b868 # load immediate value into integer register
fmvp.d.x f22, x19, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1fbd4878 # load immediate value into integer register
li x9, 0x2c827e3d # load immediate value into integer register
fmvp.d.x f27, x20, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9a327ce5 # load immediate value into integer register
li x6, 0x9879593f # load immediate value into integer register
fmvp.d.x f13, x21, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xdaff96e8 # load immediate value into integer register
li x10, 0x525269b3 # load immediate value into integer register
fmvp.d.x f23, x22, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5a8dbe81 # load immediate value into integer register
li x24, 0x633ef545 # load immediate value into integer register
fmvp.d.x f13, x23, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4331f869 # load immediate value into integer register
li x10, 0xbc62ba1e # load immediate value into integer register
fmvp.d.x f22, x24, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf8208669 # load immediate value into integer register
li x6, 0x3637349d # load immediate value into integer register
fmvp.d.x f1, x25, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4cc447e6 # load immediate value into integer register
li x30, 0x6261c0eb # load immediate value into integer register
fmvp.d.x f15, x26, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1be81304 # load immediate value into integer register
li x23, 0x1bb21424 # load immediate value into integer register
fmvp.d.x f2, x27, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd2f066ce # load immediate value into integer register
li x5, 0xc4dc8c3e # load immediate value into integer register
fmvp.d.x f19, x28, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x23fcfcab # load immediate value into integer register
li x10, 0x36a226b1 # load immediate value into integer register
fmvp.d.x f21, x29, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x891b78b0 # load immediate value into integer register
li x1, 0xf14b6725 # load immediate value into integer register
fmvp.d.x f21, x30, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe3ad6e0c # load immediate value into integer register
li x21, 0xce4cf547 # load immediate value into integer register
fmvp.d.x f17, x31, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x12, 0xafddc379 # load immediate value into integer register
li x0, 0xfc178f5a # load immediate value into integer register
fmvp.d.x f28, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x8, 0x478eb1c6 # load immediate value into integer register
li x1, 0x85e2c400 # load immediate value into integer register
fmvp.d.x f2, x8, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x6ab44535 # load immediate value into integer register
li x2, 0xef75d093 # load immediate value into integer register
fmvp.d.x f18, x28, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x7251dd91 # load immediate value into integer register
li x3, 0xe975bc43 # load immediate value into integer register
fmvp.d.x f1, x22, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x7c1c82e6 # load immediate value into integer register
li x4, 0x3f73ab4e # load immediate value into integer register
fmvp.d.x f26, x8, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xec68f14a # load immediate value into integer register
li x5, 0xb0b02fbd # load immediate value into integer register
fmvp.d.x f26, x29, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xff1d8e2c # load immediate value into integer register
li x6, 0x736a2322 # load immediate value into integer register
fmvp.d.x f3, x25, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xd564e561 # load immediate value into integer register
li x7, 0x718f5a75 # load immediate value into integer register
fmvp.d.x f8, x20, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0xebd85fa4 # load immediate value into integer register
li x8, 0x03ff81fd # load immediate value into integer register
fmvp.d.x f29, x1, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x21, 0x82760647 # load immediate value into integer register
li x9, 0xdf92f2ee # load immediate value into integer register
fmvp.d.x f19, x21, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0xdaaab76b # load immediate value into integer register
li x10, 0x84326ef0 # load immediate value into integer register
fmvp.d.x f24, x11, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x0bb3f619 # load immediate value into integer register
li x11, 0x61749548 # load immediate value into integer register
fmvp.d.x f26, x30, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0x7051e026 # load immediate value into integer register
li x12, 0x56bffc22 # load immediate value into integer register
fmvp.d.x f1, x6, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x3a6d804c # load immediate value into integer register
li x13, 0xc1474af1 # load immediate value into integer register
fmvp.d.x f9, x20, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x41281a11 # load immediate value into integer register
li x14, 0xf505c222 # load immediate value into integer register
fmvp.d.x f21, x2, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0xc49f9865 # load immediate value into integer register
li x15, 0xe98430b5 # load immediate value into integer register
fmvp.d.x f11, x28, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0xc931a686 # load immediate value into integer register
li x16, 0x5a7e0093 # load immediate value into integer register
fmvp.d.x f28, x18, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x50e00c75 # load immediate value into integer register
li x17, 0x90697f68 # load immediate value into integer register
fmvp.d.x f23, x29, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0x3c29dd06 # load immediate value into integer register
li x18, 0x837a553d # load immediate value into integer register
fmvp.d.x f7, x1, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0x8804fcee # load immediate value into integer register
li x19, 0x8d77eee9 # load immediate value into integer register
fmvp.d.x f21, x18, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0xeda51374 # load immediate value into integer register
li x20, 0x54cff24b # load immediate value into integer register
fmvp.d.x f10, x22, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0x6e22f15b # load immediate value into integer register
li x21, 0x66bca687 # load immediate value into integer register
fmvp.d.x f1, x26, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x79a3f2e3 # load immediate value into integer register
li x22, 0x0c453cee # load immediate value into integer register
fmvp.d.x f10, x24, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x1, 0xb238c066 # load immediate value into integer register
li x23, 0xc8b27d4f # load immediate value into integer register
fmvp.d.x f9, x1, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xd6f0825a # load immediate value into integer register
li x24, 0xff5d9ee9 # load immediate value into integer register
fmvp.d.x f22, x14, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0x449aa68c # load immediate value into integer register
li x25, 0xfa63479a # load immediate value into integer register
fmvp.d.x f30, x17, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xc6fdf1fd # load immediate value into integer register
li x26, 0x1190da11 # load immediate value into integer register
fmvp.d.x f12, x14, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x19, 0x451be01c # load immediate value into integer register
li x27, 0x5afd9044 # load immediate value into integer register
fmvp.d.x f1, x19, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x23, 0x57cad8ac # load immediate value into integer register
li x28, 0xe5b45005 # load immediate value into integer register
fmvp.d.x f6, x23, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x21, 0x73054b3c # load immediate value into integer register
li x29, 0x7b792099 # load immediate value into integer register
fmvp.d.x f25, x21, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x49372d7e # load immediate value into integer register
li x30, 0xaac62755 # load immediate value into integer register
fmvp.d.x f27, x24, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x6, 0xf4992333 # load immediate value into integer register
li x31, 0x0678ad27 # load immediate value into integer register
fmvp.d.x f2, x6, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x00000000 # load immediate value into integer register
li x1, 0xea960d45 # load immediate value into integer register
fmvp.d.x f18, x25, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x00000001 # load immediate value into integer register
li x12, 0x5610ef8c # load immediate value into integer register
fmvp.d.x f19, x6, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x00000002 # load immediate value into integer register
li x10, 0x049791d9 # load immediate value into integer register
fmvp.d.x f25, x30, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # load immediate value into integer register
li x29, 0x6f170c76 # load immediate value into integer register
fmvp.d.x f18, x30, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x15, 0x80000001 # load immediate value into integer register
li x1, 0x87392bd2 # load immediate value into integer register
fmvp.d.x f5, x15, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # load immediate value into integer register
li x28, 0x042d0a20 # load immediate value into integer register
fmvp.d.x f19, x12, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # load immediate value into integer register
li x8, 0xccd58c02 # load immediate value into integer register
fmvp.d.x f5, x25, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0xffffffff # load immediate value into integer register
li x2, 0x13f9063c # load immediate value into integer register
fmvp.d.x f28, x1, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0xfffffffe # load immediate value into integer register
li x10, 0xe6a22ad0 # load immediate value into integer register
fmvp.d.x f25, x23, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # load immediate value into integer register
li x9, 0x00be9fc2 # load immediate value into integer register
fmvp.d.x f29, x3, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # load immediate value into integer register
li x26, 0xfa0df1c3 # load immediate value into integer register
fmvp.d.x f19, x10, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x55555555 # load immediate value into integer register
li x15, 0xcd584b31 # load immediate value into integer register
fmvp.d.x f12, x25, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0x53814c6e # load immediate value into integer register
li x18, 0x00000000 # load immediate value into integer register
fmvp.d.x f31, x5, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xcd0955f8 # load immediate value into integer register
li x23, 0x00000001 # load immediate value into integer register
fmvp.d.x f24, x6, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x8418f07a # load immediate value into integer register
li x18, 0x00000002 # load immediate value into integer register
fmvp.d.x f23, x26, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0x36f4ed97 # load immediate value into integer register
li x20, 0x80000000 # load immediate value into integer register
fmvp.d.x f14, x31, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0x3274fd7e # load immediate value into integer register
li x30, 0x80000001 # load immediate value into integer register
fmvp.d.x f7, x9, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x10, 0x1701b38c # load immediate value into integer register
li x8, 0x7fffffff # load immediate value into integer register
fmvp.d.x f23, x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0x3bab4dcb # load immediate value into integer register
li x29, 0x7ffffffe # load immediate value into integer register
fmvp.d.x f22, x31, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x90a52873 # load immediate value into integer register
li x29, 0xffffffff # load immediate value into integer register
fmvp.d.x f3, x24, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0xb002f1fc # load immediate value into integer register
li x24, 0xfffffffe # load immediate value into integer register
fmvp.d.x f10, x8, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x23, 0x0851066d # load immediate value into integer register
li x16, 0x5bbc8872 # load immediate value into integer register
fmvp.d.x f24, x23, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x26, 0xa3411b5f # load immediate value into integer register
li x6, 0xaaaaaaaa # load immediate value into integer register
fmvp.d.x f2, x26, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x25, 0xa181a6af # load immediate value into integer register
li x6, 0x55555555 # load immediate value into integer register
fmvp.d.x f28, x25, x6 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x28, x10 # perform first operation
fmvp.d.x f20, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x13, x29 # perform first operation
fmvp.d.x f12, x7, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x18, x30 # perform first operation
fmvp.d.x f31, x16, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f26, f14 # perform first operation
fmvp.d.x f1, x29, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f12, f13, f10 # perform first operation
fmvp.d.x f12, x21, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f11, f29, f27 # perform first operation
fmvp.d.x f11, x22, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f27, f20 # perform first operation
fmvp.d.x f27, x3, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f9, f24 # perform first operation
fmvp.d.x f24, x6, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f12, f27 # perform first operation
fmvp.d.x f30, x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x2, x16 # perform first operation
fmvp.d.x f8, x7, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x29, x10 # perform first operation
fmvp.d.x f20, x11, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x14, x18 # perform first operation
fmvp.d.x f29, x2, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x9, x21 # perform first operation
fmvp.d.x f21, x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x26, x27 # perform first operation
fmvp.d.x f27, x30, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x14, x17 # perform first operation
fmvp.d.x f19, x31, x12 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
li x8, 0xf63f8d02 # load immediate value into integer register
li x31, 0xfa1f00d6 # load immediate value into integer register
fmvp.d.x f0, x8, x31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x7, 0x5f9945f9 # load immediate value into integer register
li x23, 0xb55b091e # load immediate value into integer register
fmvp.d.x f1, x7, x23 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x13, 0xf02bff83 # load immediate value into integer register
li x22, 0x5d874aed # load immediate value into integer register
fmvp.d.x f2, x13, x22 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x10, 0x50403a40 # load immediate value into integer register
li x11, 0x9f450b07 # load immediate value into integer register
fmvp.d.x f3, x10, x11 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x463fc9cd # load immediate value into integer register
li x20, 0xc56b0f58 # load immediate value into integer register
fmvp.d.x f4, x2, x20 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xf590e029 # load immediate value into integer register
li x29, 0xc060a4c2 # load immediate value into integer register
fmvp.d.x f5, x7, x29 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x3d2d058b # load immediate value into integer register
li x24, 0x232ef30b # load immediate value into integer register
fmvp.d.x f6, x1, x24 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x627b854f # load immediate value into integer register
li x8, 0x901da5f0 # load immediate value into integer register
fmvp.d.x f7, x9, x8 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x11, 0xcb0e2d8f # load immediate value into integer register
li x17, 0xef5a96a0 # load immediate value into integer register
fmvp.d.x f8, x11, x17 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x18, 0x89a4a41b # load immediate value into integer register
li x10, 0xbd39ab2e # load immediate value into integer register
fmvp.d.x f9, x18, x10 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x16, 0x347fbe6b # load immediate value into integer register
li x26, 0xe76baf8d # load immediate value into integer register
fmvp.d.x f10, x16, x26 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x28, 0x7e8c597a # load immediate value into integer register
li x24, 0x14846461 # load immediate value into integer register
fmvp.d.x f11, x28, x24 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x25, 0x2ed7bcab # load immediate value into integer register
li x27, 0xf59a62be # load immediate value into integer register
fmvp.d.x f12, x25, x27 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x29, 0x02939563 # load immediate value into integer register
li x25, 0x034bafcf # load immediate value into integer register
fmvp.d.x f13, x29, x25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x5, 0x9f4f5840 # load immediate value into integer register
li x6, 0x49a61d8a # load immediate value into integer register
fmvp.d.x f14, x5, x6 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x10, 0xb05b6dfd # load immediate value into integer register
li x8, 0x5e22d0d4 # load immediate value into integer register
fmvp.d.x f15, x10, x8 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x31, 0x3fb1a555 # load immediate value into integer register
li x22, 0x282ee41b # load immediate value into integer register
fmvp.d.x f16, x31, x22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x9, 0x0baef8f4 # load immediate value into integer register
li x17, 0xcfc3d353 # load immediate value into integer register
fmvp.d.x f17, x9, x17 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x19, 0x597f76cf # load immediate value into integer register
li x21, 0xdc44b2a8 # load immediate value into integer register
fmvp.d.x f18, x19, x21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x8, 0x2b36a420 # load immediate value into integer register
li x13, 0x0ad75ac7 # load immediate value into integer register
fmvp.d.x f19, x8, x13 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x24, 0x4aba3f67 # load immediate value into integer register
li x5, 0xd0b546f9 # load immediate value into integer register
fmvp.d.x f20, x24, x5 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x10, 0x224dfa76 # load immediate value into integer register
li x9, 0x90eee6a0 # load immediate value into integer register
fmvp.d.x f21, x10, x9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x10, 0x38245a11 # load immediate value into integer register
li x3, 0x82011145 # load immediate value into integer register
fmvp.d.x f22, x10, x3 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x8, 0x59010f6a # load immediate value into integer register
li x30, 0xbec2127a # load immediate value into integer register
fmvp.d.x f23, x8, x30 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x25, 0x36a52b88 # load immediate value into integer register
li x14, 0xf5cccc16 # load immediate value into integer register
fmvp.d.x f24, x25, x14 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x10, 0xe90d6e9e # load immediate value into integer register
li x19, 0x274e7341 # load immediate value into integer register
fmvp.d.x f25, x10, x19 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x7, 0x0226ce8d # load immediate value into integer register
li x1, 0x47c271df # load immediate value into integer register
fmvp.d.x f26, x7, x1 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x15, 0x5267f2be # load immediate value into integer register
li x10, 0x30405c91 # load immediate value into integer register
fmvp.d.x f27, x15, x10 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x29, 0xb9c95a3c # load immediate value into integer register
li x8, 0x907987a7 # load immediate value into integer register
fmvp.d.x f28, x29, x8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x3, 0x9cf8f7d1 # load immediate value into integer register
li x12, 0x24e03ab0 # load immediate value into integer register
fmvp.d.x f29, x3, x12 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x8, 0x01d048bc # load immediate value into integer register
li x9, 0x980749aa # load immediate value into integer register
fmvp.d.x f30, x8, x9 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x5, 0xc937ce38 # load immediate value into integer register
li x7, 0xb3c6c105 # load immediate value into integer register
fmvp.d.x f31, x5, x7 # perform operation

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
