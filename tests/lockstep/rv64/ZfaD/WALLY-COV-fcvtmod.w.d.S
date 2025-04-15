///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fcvtmod.w.d.S
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


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0xb91482361bf398e0 # load x3 with value 0xb91482361bf398e0
sd x3, 0(x2) # store 0xb91482361bf398e0 in memory
fld f16, 0(x2) # load 0xb91482361bf398e0 from memory into f16
fcvtmod.w.d x0, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xf2bcc783e9f64b28 # load x3 with value 0xf2bcc783e9f64b28
sd x3, 0(x2) # store 0xf2bcc783e9f64b28 in memory
fld f27, 0(x2) # load 0xf2bcc783e9f64b28 from memory into f27
fcvtmod.w.d x1, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x791bc20d28b3aa5f # load x3 with value 0x791bc20d28b3aa5f
sd x3, 0(x2) # store 0x791bc20d28b3aa5f in memory
fld f15, 0(x2) # load 0x791bc20d28b3aa5f from memory into f15
fcvtmod.w.d x2, f15, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x1b2ce50433164ad4 # load x3 with value 0x1b2ce50433164ad4
sd x3, 0(x2) # store 0x1b2ce50433164ad4 in memory
fld f14, 0(x2) # load 0x1b2ce50433164ad4 from memory into f14
fcvtmod.w.d x3, f14, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7cc3bc148c356051 # load x3 with value 0x7cc3bc148c356051
sd x3, 0(x2) # store 0x7cc3bc148c356051 in memory
fld f13, 0(x2) # load 0x7cc3bc148c356051 from memory into f13
fcvtmod.w.d x4, f13, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfd3d99f8538aae79 # load x3 with value 0xfd3d99f8538aae79
sd x3, 0(x2) # store 0xfd3d99f8538aae79 in memory
fld f14, 0(x2) # load 0xfd3d99f8538aae79 from memory into f14
fcvtmod.w.d x5, f14, rtz # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcd2f3cfa0cb9ca71 # load x3 with value 0xcd2f3cfa0cb9ca71
sd x3, 0(x2) # store 0xcd2f3cfa0cb9ca71 in memory
fld f2, 0(x2) # load 0xcd2f3cfa0cb9ca71 from memory into f2
fcvtmod.w.d x6, f2, rtz # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5e29c7dccf01723b # load x3 with value 0x5e29c7dccf01723b
sd x3, 0(x2) # store 0x5e29c7dccf01723b in memory
fld f22, 0(x2) # load 0x5e29c7dccf01723b from memory into f22
fcvtmod.w.d x7, f22, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x86441c67cfda4977 # load x3 with value 0x86441c67cfda4977
sd x3, 0(x2) # store 0x86441c67cfda4977 in memory
fld f29, 0(x2) # load 0x86441c67cfda4977 from memory into f29
fcvtmod.w.d x8, f29, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x58d22e9401630cde # load x3 with value 0x58d22e9401630cde
sd x3, 0(x2) # store 0x58d22e9401630cde in memory
fld f6, 0(x2) # load 0x58d22e9401630cde from memory into f6
fcvtmod.w.d x9, f6, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x6abdf65faf06cf23 # load x3 with value 0x6abdf65faf06cf23
sd x3, 0(x2) # store 0x6abdf65faf06cf23 in memory
fld f28, 0(x2) # load 0x6abdf65faf06cf23 from memory into f28
fcvtmod.w.d x10, f28, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xf237cc97b0cf68df # load x3 with value 0xf237cc97b0cf68df
sd x3, 0(x2) # store 0xf237cc97b0cf68df in memory
fld f29, 0(x2) # load 0xf237cc97b0cf68df from memory into f29
fcvtmod.w.d x11, f29, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xe305854fd6634714 # load x3 with value 0xe305854fd6634714
sd x3, 0(x2) # store 0xe305854fd6634714 in memory
fld f3, 0(x2) # load 0xe305854fd6634714 from memory into f3
fcvtmod.w.d x12, f3, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x60b8b13ea5917dd4 # load x3 with value 0x60b8b13ea5917dd4
sd x3, 0(x2) # store 0x60b8b13ea5917dd4 in memory
fld f28, 0(x2) # load 0x60b8b13ea5917dd4 from memory into f28
fcvtmod.w.d x13, f28, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x975af59c19350da3 # load x3 with value 0x975af59c19350da3
sd x3, 0(x2) # store 0x975af59c19350da3 in memory
fld f16, 0(x2) # load 0x975af59c19350da3 from memory into f16
fcvtmod.w.d x14, f16, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x2071e371bdaba8aa # load x3 with value 0x2071e371bdaba8aa
sd x3, 0(x2) # store 0x2071e371bdaba8aa in memory
fld f6, 0(x2) # load 0x2071e371bdaba8aa from memory into f6
fcvtmod.w.d x15, f6, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x9ea9559c8819a337 # load x3 with value 0x9ea9559c8819a337
sd x3, 0(x2) # store 0x9ea9559c8819a337 in memory
fld f7, 0(x2) # load 0x9ea9559c8819a337 from memory into f7
fcvtmod.w.d x16, f7, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xea114815eea694b3 # load x3 with value 0xea114815eea694b3
sd x3, 0(x2) # store 0xea114815eea694b3 in memory
fld f12, 0(x2) # load 0xea114815eea694b3 from memory into f12
fcvtmod.w.d x17, f12, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x6e09e11c12ffe7ed # load x3 with value 0x6e09e11c12ffe7ed
sd x3, 0(x2) # store 0x6e09e11c12ffe7ed in memory
fld f31, 0(x2) # load 0x6e09e11c12ffe7ed from memory into f31
fcvtmod.w.d x18, f31, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x13caf88f3cbed57f # load x3 with value 0x13caf88f3cbed57f
sd x3, 0(x2) # store 0x13caf88f3cbed57f in memory
fld f20, 0(x2) # load 0x13caf88f3cbed57f from memory into f20
fcvtmod.w.d x19, f20, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x69985c1df45e4ad5 # load x3 with value 0x69985c1df45e4ad5
sd x3, 0(x2) # store 0x69985c1df45e4ad5 in memory
fld f4, 0(x2) # load 0x69985c1df45e4ad5 from memory into f4
fcvtmod.w.d x20, f4, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x32b76cfb5f994d01 # load x3 with value 0x32b76cfb5f994d01
sd x3, 0(x2) # store 0x32b76cfb5f994d01 in memory
fld f12, 0(x2) # load 0x32b76cfb5f994d01 from memory into f12
fcvtmod.w.d x21, f12, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x042f5e42519f70d8 # load x3 with value 0x042f5e42519f70d8
sd x3, 0(x2) # store 0x042f5e42519f70d8 in memory
fld f30, 0(x2) # load 0x042f5e42519f70d8 from memory into f30
fcvtmod.w.d x22, f30, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x6043931db3173ee0 # load x3 with value 0x6043931db3173ee0
sd x3, 0(x2) # store 0x6043931db3173ee0 in memory
fld f13, 0(x2) # load 0x6043931db3173ee0 from memory into f13
fcvtmod.w.d x23, f13, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x80c6fc888e001b7a # load x3 with value 0x80c6fc888e001b7a
sd x3, 0(x2) # store 0x80c6fc888e001b7a in memory
fld f8, 0(x2) # load 0x80c6fc888e001b7a from memory into f8
fcvtmod.w.d x24, f8, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xa055710fe4ed75fa # load x3 with value 0xa055710fe4ed75fa
sd x3, 0(x2) # store 0xa055710fe4ed75fa in memory
fld f17, 0(x2) # load 0xa055710fe4ed75fa from memory into f17
fcvtmod.w.d x25, f17, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x024f51d3f17be76e # load x3 with value 0x024f51d3f17be76e
sd x3, 0(x2) # store 0x024f51d3f17be76e in memory
fld f6, 0(x2) # load 0x024f51d3f17be76e from memory into f6
fcvtmod.w.d x26, f6, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xc229002562d8c6e7 # load x3 with value 0xc229002562d8c6e7
sd x3, 0(x2) # store 0xc229002562d8c6e7 in memory
fld f23, 0(x2) # load 0xc229002562d8c6e7 from memory into f23
fcvtmod.w.d x27, f23, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x159aa6c6ca717602 # load x3 with value 0x159aa6c6ca717602
sd x3, 0(x2) # store 0x159aa6c6ca717602 in memory
fld f10, 0(x2) # load 0x159aa6c6ca717602 from memory into f10
fcvtmod.w.d x28, f10, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x6dc05ee9892c74db # load x3 with value 0x6dc05ee9892c74db
sd x3, 0(x2) # store 0x6dc05ee9892c74db in memory
fld f24, 0(x2) # load 0x6dc05ee9892c74db from memory into f24
fcvtmod.w.d x29, f24, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xc7474aab2b9c7da8 # load x3 with value 0xc7474aab2b9c7da8
sd x3, 0(x2) # store 0xc7474aab2b9c7da8 in memory
fld f26, 0(x2) # load 0xc7474aab2b9c7da8 from memory into f26
fcvtmod.w.d x30, f26, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xd5e7f0400a814077 # load x3 with value 0xd5e7f0400a814077
sd x3, 0(x2) # store 0xd5e7f0400a814077 in memory
fld f24, 0(x2) # load 0xd5e7f0400a814077 from memory into f24
fcvtmod.w.d x31, f24, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x22, x29 # perform first operation
fcvtmod.w.d x9, f12, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x27, x6 # perform first operation
fcvtmod.w.d x30, f18, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x6, x26 # perform first operation
fcvtmod.w.d x20, f11, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f13, f7, f14 # perform first operation
fcvtmod.w.d x13, f13, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x13, x20 # perform first operation
fcvtmod.w.d x10, f31, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x15, x4 # perform first operation
fcvtmod.w.d x4, f3, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x4, x27 # perform first operation
fcvtmod.w.d x2, f18, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x15, x24 # perform first operation
fcvtmod.w.d x13, f3, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x14, x31 # perform first operation
fcvtmod.w.d x10, f1, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x3, x22 # perform first operation
fcvtmod.w.d x30, f19, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x23, x17 # perform first operation
fcvtmod.w.d x3, f22, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x28, x16 # perform first operation
fcvtmod.w.d x18, f21, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x30, x8 # perform first operation
fcvtmod.w.d x30, f14, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x20, x6 # perform first operation
fcvtmod.w.d x6, f2, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x23, x10 # perform first operation
fcvtmod.w.d x30, f17, rtz # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xc79cedd57bc64d77 # load x3 with value 0xc79cedd57bc64d77
sd x3, 0(x2) # store 0xc79cedd57bc64d77 in memory
fld f0, 0(x2) # load 0xc79cedd57bc64d77 from memory into f0
fcvtmod.w.d x26, f0, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x26, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xa3ce75d871389709 # load x3 with value 0xa3ce75d871389709
sd x3, 0(x2) # store 0xa3ce75d871389709 in memory
fld f1, 0(x2) # load 0xa3ce75d871389709 from memory into f1
fcvtmod.w.d x1, f1, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x8240d914c20864e9 # load x3 with value 0x8240d914c20864e9
sd x3, 0(x2) # store 0x8240d914c20864e9 in memory
fld f2, 0(x2) # load 0x8240d914c20864e9 from memory into f2
fcvtmod.w.d x13, f2, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x13, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xacc27321b9cc9cc3 # load x3 with value 0xacc27321b9cc9cc3
sd x3, 0(x2) # store 0xacc27321b9cc9cc3 in memory
fld f3, 0(x2) # load 0xacc27321b9cc9cc3 from memory into f3
fcvtmod.w.d x24, f3, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x24, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
la x2, scratch
li x3, 0x8f45face6c0cdd86 # load x3 with value 0x8f45face6c0cdd86
sd x3, 0(x2) # store 0x8f45face6c0cdd86 in memory
fld f4, 0(x2) # load 0x8f45face6c0cdd86 from memory into f4
fcvtmod.w.d x30, f4, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x30, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2577dad1a11f7e62 # load x3 with value 0x2577dad1a11f7e62
sd x3, 0(x2) # store 0x2577dad1a11f7e62 in memory
fld f5, 0(x2) # load 0x2577dad1a11f7e62 from memory into f5
fcvtmod.w.d x25, f5, rtz # perform operation
RVTEST_SIGUPD(x6, x0, x25, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcbfbd2565dd365a4 # load x3 with value 0xcbfbd2565dd365a4
sd x3, 0(x2) # store 0xcbfbd2565dd365a4 in memory
fld f6, 0(x2) # load 0xcbfbd2565dd365a4 from memory into f6
fcvtmod.w.d x12, f6, rtz # perform operation
RVTEST_SIGUPD(x7, x0, x12, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1a00e48c479efba9 # load x3 with value 0x1a00e48c479efba9
sd x3, 0(x2) # store 0x1a00e48c479efba9 in memory
fld f7, 0(x2) # load 0x1a00e48c479efba9 from memory into f7
fcvtmod.w.d x3, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x73e3f1cd3b380018 # load x3 with value 0x73e3f1cd3b380018
sd x3, 0(x2) # store 0x73e3f1cd3b380018 in memory
fld f8, 0(x2) # load 0x73e3f1cd3b380018 from memory into f8
fcvtmod.w.d x24, f8, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xde2be7a1825cb444 # load x3 with value 0xde2be7a1825cb444
sd x3, 0(x2) # store 0xde2be7a1825cb444 in memory
fld f9, 0(x2) # load 0xde2be7a1825cb444 from memory into f9
fcvtmod.w.d x13, f9, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x31e5adac5d4638c4 # load x3 with value 0x31e5adac5d4638c4
sd x3, 0(x2) # store 0x31e5adac5d4638c4 in memory
fld f10, 0(x2) # load 0x31e5adac5d4638c4 from memory into f10
fcvtmod.w.d x2, f10, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x8aaac03d6cbaba25 # load x3 with value 0x8aaac03d6cbaba25
sd x3, 0(x2) # store 0x8aaac03d6cbaba25 in memory
fld f11, 0(x2) # load 0x8aaac03d6cbaba25 from memory into f11
fcvtmod.w.d x3, f11, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x7eba95944dc5e36c # load x3 with value 0x7eba95944dc5e36c
sd x3, 0(x2) # store 0x7eba95944dc5e36c in memory
fld f12, 0(x2) # load 0x7eba95944dc5e36c from memory into f12
fcvtmod.w.d x7, f12, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x7, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xb29af89400c6a685 # load x3 with value 0xb29af89400c6a685
sd x3, 0(x2) # store 0xb29af89400c6a685 in memory
fld f13, 0(x2) # load 0xb29af89400c6a685 from memory into f13
fcvtmod.w.d x30, f13, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x3760c7d03f3a87e2 # load x3 with value 0x3760c7d03f3a87e2
sd x3, 0(x2) # store 0x3760c7d03f3a87e2 in memory
fld f14, 0(x2) # load 0x3760c7d03f3a87e2 from memory into f14
fcvtmod.w.d x10, f14, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x10, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xfc163139627dc296 # load x3 with value 0xfc163139627dc296
sd x3, 0(x2) # store 0xfc163139627dc296 in memory
fld f15, 0(x2) # load 0xfc163139627dc296 from memory into f15
fcvtmod.w.d x3, f15, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x2abbccf8a6d92efc # load x3 with value 0x2abbccf8a6d92efc
sd x3, 0(x2) # store 0x2abbccf8a6d92efc in memory
fld f16, 0(x2) # load 0x2abbccf8a6d92efc from memory into f16
fcvtmod.w.d x1, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x0cacb4cb64c33b78 # load x3 with value 0x0cacb4cb64c33b78
sd x3, 0(x2) # store 0x0cacb4cb64c33b78 in memory
fld f17, 0(x2) # load 0x0cacb4cb64c33b78 from memory into f17
fcvtmod.w.d x18, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xacd3cb063a9dccc2 # load x3 with value 0xacd3cb063a9dccc2
sd x3, 0(x2) # store 0xacd3cb063a9dccc2 in memory
fld f18, 0(x2) # load 0xacd3cb063a9dccc2 from memory into f18
fcvtmod.w.d x22, f18, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3e2352ba26da43c4 # load x3 with value 0x3e2352ba26da43c4
sd x3, 0(x2) # store 0x3e2352ba26da43c4 in memory
fld f19, 0(x2) # load 0x3e2352ba26da43c4 from memory into f19
fcvtmod.w.d x30, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x47c35d113a3767e4 # load x3 with value 0x47c35d113a3767e4
sd x3, 0(x2) # store 0x47c35d113a3767e4 in memory
fld f20, 0(x2) # load 0x47c35d113a3767e4 from memory into f20
fcvtmod.w.d x1, f20, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x23dc108b07deee34 # load x3 with value 0x23dc108b07deee34
sd x3, 0(x2) # store 0x23dc108b07deee34 in memory
fld f21, 0(x2) # load 0x23dc108b07deee34 from memory into f21
fcvtmod.w.d x3, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x9f536a9b815a2dea # load x3 with value 0x9f536a9b815a2dea
sd x3, 0(x2) # store 0x9f536a9b815a2dea in memory
fld f22, 0(x2) # load 0x9f536a9b815a2dea from memory into f22
fcvtmod.w.d x5, f22, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x74bbdcb3a027c426 # load x3 with value 0x74bbdcb3a027c426
sd x3, 0(x2) # store 0x74bbdcb3a027c426 in memory
fld f23, 0(x2) # load 0x74bbdcb3a027c426 from memory into f23
fcvtmod.w.d x10, f23, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x0cdc631350b957a7 # load x3 with value 0x0cdc631350b957a7
sd x3, 0(x2) # store 0x0cdc631350b957a7 in memory
fld f24, 0(x2) # load 0x0cdc631350b957a7 from memory into f24
fcvtmod.w.d x25, f24, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x87b270118bf7b456 # load x3 with value 0x87b270118bf7b456
sd x3, 0(x2) # store 0x87b270118bf7b456 in memory
fld f25, 0(x2) # load 0x87b270118bf7b456 from memory into f25
fcvtmod.w.d x13, f25, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x083f37fb50275380 # load x3 with value 0x083f37fb50275380
sd x3, 0(x2) # store 0x083f37fb50275380 in memory
fld f26, 0(x2) # load 0x083f37fb50275380 from memory into f26
fcvtmod.w.d x22, f26, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xc1ac924756a1ce87 # load x3 with value 0xc1ac924756a1ce87
sd x3, 0(x2) # store 0xc1ac924756a1ce87 in memory
fld f27, 0(x2) # load 0xc1ac924756a1ce87 from memory into f27
fcvtmod.w.d x9, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x9516ac5351d669df # load x3 with value 0x9516ac5351d669df
sd x3, 0(x2) # store 0x9516ac5351d669df in memory
fld f28, 0(x2) # load 0x9516ac5351d669df from memory into f28
fcvtmod.w.d x14, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xffabeda7d0cc03b3 # load x3 with value 0xffabeda7d0cc03b3
sd x3, 0(x2) # store 0xffabeda7d0cc03b3 in memory
fld f29, 0(x2) # load 0xffabeda7d0cc03b3 from memory into f29
fcvtmod.w.d x14, f29, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x9f4e1a373dfb7a4d # load x3 with value 0x9f4e1a373dfb7a4d
sd x3, 0(x2) # store 0x9f4e1a373dfb7a4d in memory
fld f30, 0(x2) # load 0x9f4e1a373dfb7a4d from memory into f30
fcvtmod.w.d x17, f30, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x1bf3953cc65c4f59 # load x3 with value 0x1bf3953cc65c4f59
sd x3, 0(x2) # store 0x1bf3953cc65c4f59 in memory
fld f31, 0(x2) # load 0x1bf3953cc65c4f59 from memory into f31
fcvtmod.w.d x16, f31, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvtmod.w.d x15, f13, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fcvtmod.w.d x23, f20, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fcvtmod.w.d x24, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fcvtmod.w.d x20, f6, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fcvtmod.w.d x19, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fcvtmod.w.d x23, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fcvtmod.w.d x3, f26, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fcvtmod.w.d x20, f31, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fcvtmod.w.d x1, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fcvtmod.w.d x5, f20, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fcvtmod.w.d x24, f18, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
fcvtmod.w.d x3, f8, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fcvtmod.w.d x16, f22, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fcvtmod.w.d x21, f25, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fcvtmod.w.d x18, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fcvtmod.w.d x22, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x22, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fcvtmod.w.d x7, f1, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x7, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fcvtmod.w.d x6, f20, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x6, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fcvtmod.w.d x8, f24, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fcvtmod.w.d x21, f5, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fcvtmod.w.d x18, f24, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fcvtmod.w.d x24, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f28, 0(x2) # load 0xfff8000000000000 from memory into f28
fcvtmod.w.d x13, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fcvtmod.w.d x25, f6, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fcvtmod.w.d x8, f9, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f25, 0(x2) # load 0xfff0000000000001 from memory into f25
fcvtmod.w.d x24, f25, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fcvtmod.w.d x3, f1, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fcvtmod.w.d x20, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x20, 728)

.EQU SIGSIZE,736


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
