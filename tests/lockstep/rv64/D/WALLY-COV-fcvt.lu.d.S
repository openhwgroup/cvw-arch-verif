///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.lu.d.S
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
li x3, 0xa79b425e73aae4e8 # load x3 with value 0xa79b425e73aae4e8
sd x3, 0(x2) # store 0xa79b425e73aae4e8 in memory
fld f28, 0(x2) # load 0xa79b425e73aae4e8 from memory into f28
fcvt.lu.d x0, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xe5d6c84557915e2f # load x3 with value 0xe5d6c84557915e2f
sd x3, 0(x2) # store 0xe5d6c84557915e2f in memory
fld f21, 0(x2) # load 0xe5d6c84557915e2f from memory into f21
fcvt.lu.d x1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x2593dffd58563aef # load x3 with value 0x2593dffd58563aef
sd x3, 0(x2) # store 0x2593dffd58563aef in memory
fld f22, 0(x2) # load 0x2593dffd58563aef from memory into f22
fcvt.lu.d x2, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x8877773c0968704f # load x3 with value 0x8877773c0968704f
sd x3, 0(x2) # store 0x8877773c0968704f in memory
fld f29, 0(x2) # load 0x8877773c0968704f from memory into f29
fcvt.lu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9ac683ebfa3582f7 # load x3 with value 0x9ac683ebfa3582f7
sd x3, 0(x2) # store 0x9ac683ebfa3582f7 in memory
fld f24, 0(x2) # load 0x9ac683ebfa3582f7 from memory into f24
fcvt.lu.d x4, f24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd825ecbde6c69d95 # load x3 with value 0xd825ecbde6c69d95
sd x3, 0(x2) # store 0xd825ecbde6c69d95 in memory
fld f15, 0(x2) # load 0xd825ecbde6c69d95 from memory into f15
fcvt.lu.d x5, f15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1a9e4005a4525e2e # load x3 with value 0x1a9e4005a4525e2e
sd x3, 0(x2) # store 0x1a9e4005a4525e2e in memory
fld f7, 0(x2) # load 0x1a9e4005a4525e2e from memory into f7
fcvt.lu.d x6, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
la x2, scratch
li x3, 0x22d2bb4947f62b4b # load x3 with value 0x22d2bb4947f62b4b
sd x3, 0(x2) # store 0x22d2bb4947f62b4b in memory
fld f6, 0(x2) # load 0x22d2bb4947f62b4b from memory into f6
fcvt.lu.d x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xfbfd0c65a495bd65 # load x3 with value 0xfbfd0c65a495bd65
sd x3, 0(x2) # store 0xfbfd0c65a495bd65 in memory
fld f11, 0(x2) # load 0xfbfd0c65a495bd65 from memory into f11
fcvt.lu.d x8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x7fa6abe2c73479e7 # load x3 with value 0x7fa6abe2c73479e7
sd x3, 0(x2) # store 0x7fa6abe2c73479e7 in memory
fld f3, 0(x2) # load 0x7fa6abe2c73479e7 from memory into f3
fcvt.lu.d x9, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xfc4a89136309c501 # load x3 with value 0xfc4a89136309c501
sd x3, 0(x2) # store 0xfc4a89136309c501 in memory
fld f28, 0(x2) # load 0xfc4a89136309c501 from memory into f28
fcvt.lu.d x10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x84c8d8a036a89d77 # load x3 with value 0x84c8d8a036a89d77
sd x3, 0(x2) # store 0x84c8d8a036a89d77 in memory
fld f2, 0(x2) # load 0x84c8d8a036a89d77 from memory into f2
fcvt.lu.d x11, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x03eab2732c73cc60 # load x3 with value 0x03eab2732c73cc60
sd x3, 0(x2) # store 0x03eab2732c73cc60 in memory
fld f11, 0(x2) # load 0x03eab2732c73cc60 from memory into f11
fcvt.lu.d x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x560edea1277a02b2 # load x3 with value 0x560edea1277a02b2
sd x3, 0(x2) # store 0x560edea1277a02b2 in memory
fld f25, 0(x2) # load 0x560edea1277a02b2 from memory into f25
fcvt.lu.d x13, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x9993f4f6808a37c1 # load x3 with value 0x9993f4f6808a37c1
sd x3, 0(x2) # store 0x9993f4f6808a37c1 in memory
fld f16, 0(x2) # load 0x9993f4f6808a37c1 from memory into f16
fcvt.lu.d x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xeebbfc7a26a28159 # load x3 with value 0xeebbfc7a26a28159
sd x3, 0(x2) # store 0xeebbfc7a26a28159 in memory
fld f18, 0(x2) # load 0xeebbfc7a26a28159 from memory into f18
fcvt.lu.d x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x277604a6dcfd5f47 # load x3 with value 0x277604a6dcfd5f47
sd x3, 0(x2) # store 0x277604a6dcfd5f47 in memory
fld f12, 0(x2) # load 0x277604a6dcfd5f47 from memory into f12
fcvt.lu.d x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xe9c70b62b8613dde # load x3 with value 0xe9c70b62b8613dde
sd x3, 0(x2) # store 0xe9c70b62b8613dde in memory
fld f1, 0(x2) # load 0xe9c70b62b8613dde from memory into f1
fcvt.lu.d x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x60fb21d6773e5231 # load x3 with value 0x60fb21d6773e5231
sd x3, 0(x2) # store 0x60fb21d6773e5231 in memory
fld f17, 0(x2) # load 0x60fb21d6773e5231 from memory into f17
fcvt.lu.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x930ab0d3143a5072 # load x3 with value 0x930ab0d3143a5072
sd x3, 0(x2) # store 0x930ab0d3143a5072 in memory
fld f22, 0(x2) # load 0x930ab0d3143a5072 from memory into f22
fcvt.lu.d x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xb7d8a4d6dd398a25 # load x3 with value 0xb7d8a4d6dd398a25
sd x3, 0(x2) # store 0xb7d8a4d6dd398a25 in memory
fld f15, 0(x2) # load 0xb7d8a4d6dd398a25 from memory into f15
fcvt.lu.d x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x63790ecaee8bf30d # load x3 with value 0x63790ecaee8bf30d
sd x3, 0(x2) # store 0x63790ecaee8bf30d in memory
fld f30, 0(x2) # load 0x63790ecaee8bf30d from memory into f30
fcvt.lu.d x21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x0e40541988aa3a23 # load x3 with value 0x0e40541988aa3a23
sd x3, 0(x2) # store 0x0e40541988aa3a23 in memory
fld f12, 0(x2) # load 0x0e40541988aa3a23 from memory into f12
fcvt.lu.d x22, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xcf29f52190818333 # load x3 with value 0xcf29f52190818333
sd x3, 0(x2) # store 0xcf29f52190818333 in memory
fld f21, 0(x2) # load 0xcf29f52190818333 from memory into f21
fcvt.lu.d x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x9663145cbc743b57 # load x3 with value 0x9663145cbc743b57
sd x3, 0(x2) # store 0x9663145cbc743b57 in memory
fld f17, 0(x2) # load 0x9663145cbc743b57 from memory into f17
fcvt.lu.d x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x0046f9a1649b5dba # load x3 with value 0x0046f9a1649b5dba
sd x3, 0(x2) # store 0x0046f9a1649b5dba in memory
fld f11, 0(x2) # load 0x0046f9a1649b5dba from memory into f11
fcvt.lu.d x25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x5124a97a44c93aa3 # load x3 with value 0x5124a97a44c93aa3
sd x3, 0(x2) # store 0x5124a97a44c93aa3 in memory
fld f31, 0(x2) # load 0x5124a97a44c93aa3 from memory into f31
fcvt.lu.d x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xd47f4b79e2e5750b # load x3 with value 0xd47f4b79e2e5750b
sd x3, 0(x2) # store 0xd47f4b79e2e5750b in memory
fld f1, 0(x2) # load 0xd47f4b79e2e5750b from memory into f1
fcvt.lu.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xc6a822f878dc7733 # load x3 with value 0xc6a822f878dc7733
sd x3, 0(x2) # store 0xc6a822f878dc7733 in memory
fld f9, 0(x2) # load 0xc6a822f878dc7733 from memory into f9
fcvt.lu.d x28, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xc77a3839a60d2f47 # load x3 with value 0xc77a3839a60d2f47
sd x3, 0(x2) # store 0xc77a3839a60d2f47 in memory
fld f1, 0(x2) # load 0xc77a3839a60d2f47 from memory into f1
fcvt.lu.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x794c4f5ca2169830 # load x3 with value 0x794c4f5ca2169830
sd x3, 0(x2) # store 0x794c4f5ca2169830 in memory
fld f7, 0(x2) # load 0x794c4f5ca2169830 from memory into f7
fcvt.lu.d x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x47430d9b38246dea # load x3 with value 0x47430d9b38246dea
sd x3, 0(x2) # store 0x47430d9b38246dea in memory
fld f9, 0(x2) # load 0x47430d9b38246dea from memory into f9
fcvt.lu.d x31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x31, x24 # perform first operation
fcvt.lu.d x12, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x10, x8 # perform first operation
fcvt.lu.d x27, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x21, x3 # perform first operation
fcvt.lu.d x30, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f9, f14, f3 # perform first operation
fcvt.lu.d x27, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x7, x25 # perform first operation
fcvt.lu.d x22, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x17, x24 # perform first operation
fcvt.lu.d x17, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x11, x2 # perform first operation
fcvt.lu.d x9, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x13, x24 # perform first operation
fcvt.lu.d x10, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x6, x12 # perform first operation
fcvt.lu.d x1, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x16, x27 # perform first operation
fcvt.lu.d x19, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x15, x16 # perform first operation
fcvt.lu.d x19, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x1, x30 # perform first operation
fcvt.lu.d x5, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x31, x23 # perform first operation
fcvt.lu.d x31, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x27, x23 # perform first operation
fcvt.lu.d x23, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x26, x12 # perform first operation
fcvt.lu.d x10, f14 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x19ed3b5d2a0224d9 # load x3 with value 0x19ed3b5d2a0224d9
sd x3, 0(x2) # store 0x19ed3b5d2a0224d9 in memory
fld f0, 0(x2) # load 0x19ed3b5d2a0224d9 from memory into f0
fcvt.lu.d x26, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x9f86d6ba870264fc # load x3 with value 0x9f86d6ba870264fc
sd x3, 0(x2) # store 0x9f86d6ba870264fc in memory
fld f1, 0(x2) # load 0x9f86d6ba870264fc from memory into f1
fcvt.lu.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xe08f9f0fa6c6b63e # load x3 with value 0xe08f9f0fa6c6b63e
sd x3, 0(x2) # store 0xe08f9f0fa6c6b63e in memory
fld f2, 0(x2) # load 0xe08f9f0fa6c6b63e from memory into f2
fcvt.lu.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x0be3af34833fe9c9 # load x3 with value 0x0be3af34833fe9c9
sd x3, 0(x2) # store 0x0be3af34833fe9c9 in memory
fld f3, 0(x2) # load 0x0be3af34833fe9c9 from memory into f3
fcvt.lu.d x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x011fa35be9e18769 # load x3 with value 0x011fa35be9e18769
sd x3, 0(x2) # store 0x011fa35be9e18769 in memory
fld f4, 0(x2) # load 0x011fa35be9e18769 from memory into f4
fcvt.lu.d x16, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8909fc8dbb5914d5 # load x3 with value 0x8909fc8dbb5914d5
sd x3, 0(x2) # store 0x8909fc8dbb5914d5 in memory
fld f5, 0(x2) # load 0x8909fc8dbb5914d5 from memory into f5
fcvt.lu.d x17, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1d2753993ca512be # load x3 with value 0x1d2753993ca512be
sd x3, 0(x2) # store 0x1d2753993ca512be in memory
fld f6, 0(x2) # load 0x1d2753993ca512be from memory into f6
fcvt.lu.d x17, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x41f8147e2577d426 # load x3 with value 0x41f8147e2577d426
sd x3, 0(x2) # store 0x41f8147e2577d426 in memory
fld f7, 0(x2) # load 0x41f8147e2577d426 from memory into f7
fcvt.lu.d x28, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xd1a10232dcb34e40 # load x3 with value 0xd1a10232dcb34e40
sd x3, 0(x2) # store 0xd1a10232dcb34e40 in memory
fld f8, 0(x2) # load 0xd1a10232dcb34e40 from memory into f8
fcvt.lu.d x8, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xa7f8480dc73b3fe7 # load x3 with value 0xa7f8480dc73b3fe7
sd x3, 0(x2) # store 0xa7f8480dc73b3fe7 in memory
fld f9, 0(x2) # load 0xa7f8480dc73b3fe7 from memory into f9
fcvt.lu.d x31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xe7042bac97da1349 # load x3 with value 0xe7042bac97da1349
sd x3, 0(x2) # store 0xe7042bac97da1349 in memory
fld f10, 0(x2) # load 0xe7042bac97da1349 from memory into f10
fcvt.lu.d x30, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xfc890d96966234c6 # load x3 with value 0xfc890d96966234c6
sd x3, 0(x2) # store 0xfc890d96966234c6 in memory
fld f11, 0(x2) # load 0xfc890d96966234c6 from memory into f11
fcvt.lu.d x16, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x2ba7dc3419ea749f # load x3 with value 0x2ba7dc3419ea749f
sd x3, 0(x2) # store 0x2ba7dc3419ea749f in memory
fld f12, 0(x2) # load 0x2ba7dc3419ea749f from memory into f12
fcvt.lu.d x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x92010ef35b519795 # load x3 with value 0x92010ef35b519795
sd x3, 0(x2) # store 0x92010ef35b519795 in memory
fld f13, 0(x2) # load 0x92010ef35b519795 from memory into f13
fcvt.lu.d x8, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x5cdc0c0231103e11 # load x3 with value 0x5cdc0c0231103e11
sd x3, 0(x2) # store 0x5cdc0c0231103e11 in memory
fld f14, 0(x2) # load 0x5cdc0c0231103e11 from memory into f14
fcvt.lu.d x12, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x592b2d690678b5cd # load x3 with value 0x592b2d690678b5cd
sd x3, 0(x2) # store 0x592b2d690678b5cd in memory
fld f15, 0(x2) # load 0x592b2d690678b5cd from memory into f15
fcvt.lu.d x10, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x89262e2ba9ad4c64 # load x3 with value 0x89262e2ba9ad4c64
sd x3, 0(x2) # store 0x89262e2ba9ad4c64 in memory
fld f16, 0(x2) # load 0x89262e2ba9ad4c64 from memory into f16
fcvt.lu.d x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xfa03518f060d5124 # load x3 with value 0xfa03518f060d5124
sd x3, 0(x2) # store 0xfa03518f060d5124 in memory
fld f17, 0(x2) # load 0xfa03518f060d5124 from memory into f17
fcvt.lu.d x2, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x3a4a09c1a95d3112 # load x3 with value 0x3a4a09c1a95d3112
sd x3, 0(x2) # store 0x3a4a09c1a95d3112 in memory
fld f18, 0(x2) # load 0x3a4a09c1a95d3112 from memory into f18
fcvt.lu.d x13, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x0b267755e621b8a2 # load x3 with value 0x0b267755e621b8a2
sd x3, 0(x2) # store 0x0b267755e621b8a2 in memory
fld f19, 0(x2) # load 0x0b267755e621b8a2 from memory into f19
fcvt.lu.d x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xc0b8b8d0ec450a76 # load x3 with value 0xc0b8b8d0ec450a76
sd x3, 0(x2) # store 0xc0b8b8d0ec450a76 in memory
fld f20, 0(x2) # load 0xc0b8b8d0ec450a76 from memory into f20
fcvt.lu.d x13, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x63e33868d98df09f # load x3 with value 0x63e33868d98df09f
sd x3, 0(x2) # store 0x63e33868d98df09f in memory
fld f21, 0(x2) # load 0x63e33868d98df09f from memory into f21
fcvt.lu.d x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x241620bd09f4dc99 # load x3 with value 0x241620bd09f4dc99
sd x3, 0(x2) # store 0x241620bd09f4dc99 in memory
fld f22, 0(x2) # load 0x241620bd09f4dc99 from memory into f22
fcvt.lu.d x18, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xa777145d3fb8b89b # load x3 with value 0xa777145d3fb8b89b
sd x3, 0(x2) # store 0xa777145d3fb8b89b in memory
fld f23, 0(x2) # load 0xa777145d3fb8b89b from memory into f23
fcvt.lu.d x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x24366294a6b1d0db # load x3 with value 0x24366294a6b1d0db
sd x3, 0(x2) # store 0x24366294a6b1d0db in memory
fld f24, 0(x2) # load 0x24366294a6b1d0db from memory into f24
fcvt.lu.d x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xa8678fcafb50d259 # load x3 with value 0xa8678fcafb50d259
sd x3, 0(x2) # store 0xa8678fcafb50d259 in memory
fld f25, 0(x2) # load 0xa8678fcafb50d259 from memory into f25
fcvt.lu.d x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x059e5a60c2a0807c # load x3 with value 0x059e5a60c2a0807c
sd x3, 0(x2) # store 0x059e5a60c2a0807c in memory
fld f26, 0(x2) # load 0x059e5a60c2a0807c from memory into f26
fcvt.lu.d x16, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x8d2716789208a535 # load x3 with value 0x8d2716789208a535
sd x3, 0(x2) # store 0x8d2716789208a535 in memory
fld f27, 0(x2) # load 0x8d2716789208a535 from memory into f27
fcvt.lu.d x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x3a2aad5930d5f5e7 # load x3 with value 0x3a2aad5930d5f5e7
sd x3, 0(x2) # store 0x3a2aad5930d5f5e7 in memory
fld f28, 0(x2) # load 0x3a2aad5930d5f5e7 from memory into f28
fcvt.lu.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x41ecc5bdd82b60e4 # load x3 with value 0x41ecc5bdd82b60e4
sd x3, 0(x2) # store 0x41ecc5bdd82b60e4 in memory
fld f29, 0(x2) # load 0x41ecc5bdd82b60e4 from memory into f29
fcvt.lu.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xee5d6726a0badd50 # load x3 with value 0xee5d6726a0badd50
sd x3, 0(x2) # store 0xee5d6726a0badd50 in memory
fld f30, 0(x2) # load 0xee5d6726a0badd50 from memory into f30
fcvt.lu.d x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x9719c95ff0a530ca # load x3 with value 0x9719c95ff0a530ca
sd x3, 0(x2) # store 0x9719c95ff0a530ca in memory
fld f31, 0(x2) # load 0x9719c95ff0a530ca from memory into f31
fcvt.lu.d x16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fcvt.lu.d x5, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fcvt.lu.d x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fcvt.lu.d x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fcvt.lu.d x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fcvt.lu.d x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fcvt.lu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fcvt.lu.d x2, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fcvt.lu.d x14, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fcvt.lu.d x3, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fcvt.lu.d x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fcvt.lu.d x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fcvt.lu.d x13, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fcvt.lu.d x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fcvt.lu.d x23, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fcvt.lu.d x29, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fcvt.lu.d x27, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fcvt.lu.d x12, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fcvt.lu.d x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fcvt.lu.d x5, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fcvt.lu.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fcvt.lu.d x6, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fcvt.lu.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f10, 0(x2) # load 0xfff8000000000000 from memory into f10
fcvt.lu.d x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fcvt.lu.d x30, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fcvt.lu.d x31, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f13, 0(x2) # load 0xfff0000000000001 from memory into f13
fcvt.lu.d x18, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
fcvt.lu.d x13, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fcvt.lu.d x21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fcvt.lu.d x6, f1, dyn # perform operation
fcvt.lu.d x6, f1, rdn # perform operation
fcvt.lu.d x6, f1, rmm # perform operation
fcvt.lu.d x6, f1, rne # perform operation
fcvt.lu.d x6, f1, rtz # perform operation
fcvt.lu.d x6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fcvt.lu.d x20, f25, dyn # perform operation
fcvt.lu.d x20, f25, rdn # perform operation
fcvt.lu.d x20, f25, rmm # perform operation
fcvt.lu.d x20, f25, rne # perform operation
fcvt.lu.d x20, f25, rtz # perform operation
fcvt.lu.d x20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x20, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x20, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x20, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x20, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x20, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fcvt.lu.d x30, f19, dyn # perform operation
fcvt.lu.d x30, f19, rdn # perform operation
fcvt.lu.d x30, f19, rmm # perform operation
fcvt.lu.d x30, f19, rne # perform operation
fcvt.lu.d x30, f19, rtz # perform operation
fcvt.lu.d x30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fcvt.lu.d x14, f25, dyn # perform operation
fcvt.lu.d x14, f25, rdn # perform operation
fcvt.lu.d x14, f25, rmm # perform operation
fcvt.lu.d x14, f25, rne # perform operation
fcvt.lu.d x14, f25, rtz # perform operation
fcvt.lu.d x14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fcvt.lu.d x1, f11, dyn # perform operation
fcvt.lu.d x1, f11, rdn # perform operation
fcvt.lu.d x1, f11, rmm # perform operation
fcvt.lu.d x1, f11, rne # perform operation
fcvt.lu.d x1, f11, rtz # perform operation
fcvt.lu.d x1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fcvt.lu.d x3, f29, dyn # perform operation
fcvt.lu.d x3, f29, rdn # perform operation
fcvt.lu.d x3, f29, rmm # perform operation
fcvt.lu.d x3, f29, rne # perform operation
fcvt.lu.d x3, f29, rtz # perform operation
fcvt.lu.d x3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fcvt.lu.d x27, f25, dyn # perform operation
fcvt.lu.d x27, f25, rdn # perform operation
fcvt.lu.d x27, f25, rmm # perform operation
fcvt.lu.d x27, f25, rne # perform operation
fcvt.lu.d x27, f25, rtz # perform operation
fcvt.lu.d x27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fcvt.lu.d x25, f2, dyn # perform operation
fcvt.lu.d x25, f2, rdn # perform operation
fcvt.lu.d x25, f2, rmm # perform operation
fcvt.lu.d x25, f2, rne # perform operation
fcvt.lu.d x25, f2, rtz # perform operation
fcvt.lu.d x25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fcvt.lu.d x16, f30, dyn # perform operation
fcvt.lu.d x16, f30, rdn # perform operation
fcvt.lu.d x16, f30, rmm # perform operation
fcvt.lu.d x16, f30, rne # perform operation
fcvt.lu.d x16, f30, rtz # perform operation
fcvt.lu.d x16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fcvt.lu.d x2, f18, dyn # perform operation
fcvt.lu.d x2, f18, rdn # perform operation
fcvt.lu.d x2, f18, rmm # perform operation
fcvt.lu.d x2, f18, rne # perform operation
fcvt.lu.d x2, f18, rtz # perform operation
fcvt.lu.d x2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x2, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x2, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x2, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x2, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x2, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fcvt.lu.d x30, f17, dyn # perform operation
fcvt.lu.d x30, f17, rdn # perform operation
fcvt.lu.d x30, f17, rmm # perform operation
fcvt.lu.d x30, f17, rne # perform operation
fcvt.lu.d x30, f17, rtz # perform operation
fcvt.lu.d x30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fcvt.lu.d x7, f17, dyn # perform operation
fcvt.lu.d x7, f17, rdn # perform operation
fcvt.lu.d x7, f17, rmm # perform operation
fcvt.lu.d x7, f17, rne # perform operation
fcvt.lu.d x7, f17, rtz # perform operation
fcvt.lu.d x7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fcvt.lu.d x19, f30, dyn # perform operation
fcvt.lu.d x19, f30, rdn # perform operation
fcvt.lu.d x19, f30, rmm # perform operation
fcvt.lu.d x19, f30, rne # perform operation
fcvt.lu.d x19, f30, rtz # perform operation
fcvt.lu.d x19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fcvt.lu.d x17, f28, dyn # perform operation
fcvt.lu.d x17, f28, rdn # perform operation
fcvt.lu.d x17, f28, rmm # perform operation
fcvt.lu.d x17, f28, rne # perform operation
fcvt.lu.d x17, f28, rtz # perform operation
fcvt.lu.d x17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fcvt.lu.d x28, f2, dyn # perform operation
fcvt.lu.d x28, f2, rdn # perform operation
fcvt.lu.d x28, f2, rmm # perform operation
fcvt.lu.d x28, f2, rne # perform operation
fcvt.lu.d x28, f2, rtz # perform operation
fcvt.lu.d x28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x28, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x28, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x28, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x28, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x28, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fcvt.lu.d x12, f7, dyn # perform operation
fcvt.lu.d x12, f7, rdn # perform operation
fcvt.lu.d x12, f7, rmm # perform operation
fcvt.lu.d x12, f7, rne # perform operation
fcvt.lu.d x12, f7, rtz # perform operation
fcvt.lu.d x12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fcvt.lu.d x20, f21, dyn # perform operation
fcvt.lu.d x20, f21, rdn # perform operation
fcvt.lu.d x20, f21, rmm # perform operation
fcvt.lu.d x20, f21, rne # perform operation
fcvt.lu.d x20, f21, rtz # perform operation
fcvt.lu.d x20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fcvt.lu.d x19, f15, dyn # perform operation
fcvt.lu.d x19, f15, rdn # perform operation
fcvt.lu.d x19, f15, rmm # perform operation
fcvt.lu.d x19, f15, rne # perform operation
fcvt.lu.d x19, f15, rtz # perform operation
fcvt.lu.d x19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fcvt.lu.d x30, f9, dyn # perform operation
fcvt.lu.d x30, f9, rdn # perform operation
fcvt.lu.d x30, f9, rmm # perform operation
fcvt.lu.d x30, f9, rne # perform operation
fcvt.lu.d x30, f9, rtz # perform operation
fcvt.lu.d x30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fcvt.lu.d x9, f5, dyn # perform operation
fcvt.lu.d x9, f5, rdn # perform operation
fcvt.lu.d x9, f5, rmm # perform operation
fcvt.lu.d x9, f5, rne # perform operation
fcvt.lu.d x9, f5, rtz # perform operation
fcvt.lu.d x9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x9, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x9, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x9, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x9, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x9, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fcvt.lu.d x26, f6, dyn # perform operation
fcvt.lu.d x26, f6, rdn # perform operation
fcvt.lu.d x26, f6, rmm # perform operation
fcvt.lu.d x26, f6, rne # perform operation
fcvt.lu.d x26, f6, rtz # perform operation
fcvt.lu.d x26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fcvt.lu.d x10, f6, dyn # perform operation
fcvt.lu.d x10, f6, rdn # perform operation
fcvt.lu.d x10, f6, rmm # perform operation
fcvt.lu.d x10, f6, rne # perform operation
fcvt.lu.d x10, f6, rtz # perform operation
fcvt.lu.d x10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f14, 0(x2) # load 0xfff8000000000000 from memory into f14
fcvt.lu.d x15, f14, dyn # perform operation
fcvt.lu.d x15, f14, rdn # perform operation
fcvt.lu.d x15, f14, rmm # perform operation
fcvt.lu.d x15, f14, rne # perform operation
fcvt.lu.d x15, f14, rtz # perform operation
fcvt.lu.d x15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fcvt.lu.d x23, f27, dyn # perform operation
fcvt.lu.d x23, f27, rdn # perform operation
fcvt.lu.d x23, f27, rmm # perform operation
fcvt.lu.d x23, f27, rne # perform operation
fcvt.lu.d x23, f27, rtz # perform operation
fcvt.lu.d x23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fcvt.lu.d x13, f28, dyn # perform operation
fcvt.lu.d x13, f28, rdn # perform operation
fcvt.lu.d x13, f28, rmm # perform operation
fcvt.lu.d x13, f28, rne # perform operation
fcvt.lu.d x13, f28, rtz # perform operation
fcvt.lu.d x13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f3, 0(x2) # load 0xfff0000000000001 from memory into f3
fcvt.lu.d x31, f3, dyn # perform operation
fcvt.lu.d x31, f3, rdn # perform operation
fcvt.lu.d x31, f3, rmm # perform operation
fcvt.lu.d x31, f3, rne # perform operation
fcvt.lu.d x31, f3, rtz # perform operation
fcvt.lu.d x31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fcvt.lu.d x12, f24, dyn # perform operation
fcvt.lu.d x12, f24, rdn # perform operation
fcvt.lu.d x12, f24, rmm # perform operation
fcvt.lu.d x12, f24, rne # perform operation
fcvt.lu.d x12, f24, rtz # perform operation
fcvt.lu.d x12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x12, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x12, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x12, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x12, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x12, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fcvt.lu.d x22, f15, dyn # perform operation
fcvt.lu.d x22, f15, rdn # perform operation
fcvt.lu.d x22, f15, rmm # perform operation
fcvt.lu.d x22, f15, rne # perform operation
fcvt.lu.d x22, f15, rtz # perform operation
fcvt.lu.d x22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x22, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x22, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x22, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x22, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x22, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x4ccbe41697b7868a # load x3 with value 0x4ccbe41697b7868a
sd x3, 0(x2) # store 0x4ccbe41697b7868a in memory
fld f14, 0(x2) # load 0x4ccbe41697b7868a from memory into f14
fcvt.lu.d x3, f14, dyn # perform operation
fcvt.lu.d x3, f14, rdn # perform operation
fcvt.lu.d x3, f14, rmm # perform operation
fcvt.lu.d x3, f14, rne # perform operation
fcvt.lu.d x3, f14, rtz # perform operation
fcvt.lu.d x3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.d x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.d x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.d x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.d x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.d x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)


.EQU SIGSIZE,1896


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
