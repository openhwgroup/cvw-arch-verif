///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.lu.h.S
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
li x3, 0x2708182488356c33 # load x3 with value 0x2708182488356c33
sw x3, 0(x2) # store 0x2708182488356c33 in memory
flh f31, 0(x2) # load 0x2708182488356c33 from memory into f31
fcvt.lu.h x0, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xcabcdc04c96b7d5d # load x3 with value 0xcabcdc04c96b7d5d
sw x3, 0(x2) # store 0xcabcdc04c96b7d5d in memory
flh f11, 0(x2) # load 0xcabcdc04c96b7d5d from memory into f11
fcvt.lu.h x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x7625f315b090a007 # load x3 with value 0x7625f315b090a007
sw x3, 0(x2) # store 0x7625f315b090a007 in memory
flh f16, 0(x2) # load 0x7625f315b090a007 from memory into f16
fcvt.lu.h x2, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x992634d25abc6b5d # load x3 with value 0x992634d25abc6b5d
sw x3, 0(x2) # store 0x992634d25abc6b5d in memory
flh f24, 0(x2) # load 0x992634d25abc6b5d from memory into f24
fcvt.lu.h x3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8074262ed7c9e150 # load x3 with value 0x8074262ed7c9e150
sw x3, 0(x2) # store 0x8074262ed7c9e150 in memory
flh f29, 0(x2) # load 0x8074262ed7c9e150 from memory into f29
fcvt.lu.h x4, f29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1dd61ab861f7c222 # load x3 with value 0x1dd61ab861f7c222
sw x3, 0(x2) # store 0x1dd61ab861f7c222 in memory
flh f26, 0(x2) # load 0x1dd61ab861f7c222 from memory into f26
fcvt.lu.h x5, f26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9a71d6ec66a574c9 # load x3 with value 0x9a71d6ec66a574c9
sw x3, 0(x2) # store 0x9a71d6ec66a574c9 in memory
flh f27, 0(x2) # load 0x9a71d6ec66a574c9 from memory into f27
fcvt.lu.h x6, f27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x11919e2f11d50e4a # load x3 with value 0x11919e2f11d50e4a
sw x3, 0(x2) # store 0x11919e2f11d50e4a in memory
flh f2, 0(x2) # load 0x11919e2f11d50e4a from memory into f2
fcvt.lu.h x7, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xc8761d9435883c4a # load x3 with value 0xc8761d9435883c4a
sw x3, 0(x2) # store 0xc8761d9435883c4a in memory
flh f16, 0(x2) # load 0xc8761d9435883c4a from memory into f16
fcvt.lu.h x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x202e420c6fde5015 # load x3 with value 0x202e420c6fde5015
sw x3, 0(x2) # store 0x202e420c6fde5015 in memory
flh f10, 0(x2) # load 0x202e420c6fde5015 from memory into f10
fcvt.lu.h x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xfe4aa808a44270b1 # load x3 with value 0xfe4aa808a44270b1
sw x3, 0(x2) # store 0xfe4aa808a44270b1 in memory
flh f10, 0(x2) # load 0xfe4aa808a44270b1 from memory into f10
fcvt.lu.h x10, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x43c247a6f7908ec0 # load x3 with value 0x43c247a6f7908ec0
sw x3, 0(x2) # store 0x43c247a6f7908ec0 in memory
flh f22, 0(x2) # load 0x43c247a6f7908ec0 from memory into f22
fcvt.lu.h x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x263a634de245a9a8 # load x3 with value 0x263a634de245a9a8
sw x3, 0(x2) # store 0x263a634de245a9a8 in memory
flh f8, 0(x2) # load 0x263a634de245a9a8 from memory into f8
fcvt.lu.h x12, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x5e0587859d33c935 # load x3 with value 0x5e0587859d33c935
sw x3, 0(x2) # store 0x5e0587859d33c935 in memory
flh f9, 0(x2) # load 0x5e0587859d33c935 from memory into f9
fcvt.lu.h x13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x1d61113f641e0709 # load x3 with value 0x1d61113f641e0709
sw x3, 0(x2) # store 0x1d61113f641e0709 in memory
flh f17, 0(x2) # load 0x1d61113f641e0709 from memory into f17
fcvt.lu.h x14, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xde65d58cfa8a29c8 # load x3 with value 0xde65d58cfa8a29c8
sw x3, 0(x2) # store 0xde65d58cfa8a29c8 in memory
flh f10, 0(x2) # load 0xde65d58cfa8a29c8 from memory into f10
fcvt.lu.h x15, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x47fde45d31bba34a # load x3 with value 0x47fde45d31bba34a
sw x3, 0(x2) # store 0x47fde45d31bba34a in memory
flh f3, 0(x2) # load 0x47fde45d31bba34a from memory into f3
fcvt.lu.h x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x5009a1458d454259 # load x3 with value 0x5009a1458d454259
sw x3, 0(x2) # store 0x5009a1458d454259 in memory
flh f15, 0(x2) # load 0x5009a1458d454259 from memory into f15
fcvt.lu.h x17, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xb9e3f6c0b93817c7 # load x3 with value 0xb9e3f6c0b93817c7
sw x3, 0(x2) # store 0xb9e3f6c0b93817c7 in memory
flh f3, 0(x2) # load 0xb9e3f6c0b93817c7 from memory into f3
fcvt.lu.h x18, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x9e713dae1cfdcafe # load x3 with value 0x9e713dae1cfdcafe
sw x3, 0(x2) # store 0x9e713dae1cfdcafe in memory
flh f30, 0(x2) # load 0x9e713dae1cfdcafe from memory into f30
fcvt.lu.h x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xadb3b8283d54007a # load x3 with value 0xadb3b8283d54007a
sw x3, 0(x2) # store 0xadb3b8283d54007a in memory
flh f17, 0(x2) # load 0xadb3b8283d54007a from memory into f17
fcvt.lu.h x20, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x5005f75eaa044aa1 # load x3 with value 0x5005f75eaa044aa1
sw x3, 0(x2) # store 0x5005f75eaa044aa1 in memory
flh f29, 0(x2) # load 0x5005f75eaa044aa1 from memory into f29
fcvt.lu.h x21, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xd051ea8b5ef402cf # load x3 with value 0xd051ea8b5ef402cf
sw x3, 0(x2) # store 0xd051ea8b5ef402cf in memory
flh f2, 0(x2) # load 0xd051ea8b5ef402cf from memory into f2
fcvt.lu.h x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xf00c54f5232f7cd3 # load x3 with value 0xf00c54f5232f7cd3
sw x3, 0(x2) # store 0xf00c54f5232f7cd3 in memory
flh f3, 0(x2) # load 0xf00c54f5232f7cd3 from memory into f3
fcvt.lu.h x23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xf7beb5eabe237563 # load x3 with value 0xf7beb5eabe237563
sw x3, 0(x2) # store 0xf7beb5eabe237563 in memory
flh f10, 0(x2) # load 0xf7beb5eabe237563 from memory into f10
fcvt.lu.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x57da00358463dd6e # load x3 with value 0x57da00358463dd6e
sw x3, 0(x2) # store 0x57da00358463dd6e in memory
flh f30, 0(x2) # load 0x57da00358463dd6e from memory into f30
fcvt.lu.h x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x7d7b6f11aa9a531a # load x3 with value 0x7d7b6f11aa9a531a
sw x3, 0(x2) # store 0x7d7b6f11aa9a531a in memory
flh f8, 0(x2) # load 0x7d7b6f11aa9a531a from memory into f8
fcvt.lu.h x26, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xca5d72e557fa6ba0 # load x3 with value 0xca5d72e557fa6ba0
sw x3, 0(x2) # store 0xca5d72e557fa6ba0 in memory
flh f6, 0(x2) # load 0xca5d72e557fa6ba0 from memory into f6
fcvt.lu.h x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xd7e019068b66925e # load x3 with value 0xd7e019068b66925e
sw x3, 0(x2) # store 0xd7e019068b66925e in memory
flh f25, 0(x2) # load 0xd7e019068b66925e from memory into f25
fcvt.lu.h x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x259a372b5d372510 # load x3 with value 0x259a372b5d372510
sw x3, 0(x2) # store 0x259a372b5d372510 in memory
flh f19, 0(x2) # load 0x259a372b5d372510 from memory into f19
fcvt.lu.h x29, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x22f54c83deecadc9 # load x3 with value 0x22f54c83deecadc9
sw x3, 0(x2) # store 0x22f54c83deecadc9 in memory
flh f1, 0(x2) # load 0x22f54c83deecadc9 from memory into f1
fcvt.lu.h x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xb4ccd0f572860cc6 # load x3 with value 0xb4ccd0f572860cc6
sw x3, 0(x2) # store 0xb4ccd0f572860cc6 in memory
flh f31, 0(x2) # load 0xb4ccd0f572860cc6 from memory into f31
fcvt.lu.h x31, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x23, x28 # perform first operation
fcvt.lu.h x17, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x6, x14 # perform first operation
fcvt.lu.h x7, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x1, x27 # perform first operation
fcvt.lu.h x21, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f18, f5, f19 # perform first operation
fcvt.lu.h x18, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x20, x29 # perform first operation
fcvt.lu.h x20, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x11, x16 # perform first operation
fcvt.lu.h x20, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x26, x28 # perform first operation
fcvt.lu.h x21, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x13, x31 # perform first operation
fcvt.lu.h x25, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x26, x9 # perform first operation
fcvt.lu.h x13, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x25, x9 # perform first operation
fcvt.lu.h x13, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x27, x17 # perform first operation
fcvt.lu.h x23, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x22, x13 # perform first operation
fcvt.lu.h x17, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x23, x25 # perform first operation
fcvt.lu.h x23, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x16, x12 # perform first operation
fcvt.lu.h x12, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x24, x18 # perform first operation
fcvt.lu.h x1, f31 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xa42a1328deb56f94 # load x3 with value 0xa42a1328deb56f94
sw x3, 0(x2) # store 0xa42a1328deb56f94 in memory
flh f0, 0(x2) # load 0xa42a1328deb56f94 from memory into f0
fcvt.lu.h x1, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x2960b4c9d07ee353 # load x3 with value 0x2960b4c9d07ee353
sw x3, 0(x2) # store 0x2960b4c9d07ee353 in memory
flh f1, 0(x2) # load 0x2960b4c9d07ee353 from memory into f1
fcvt.lu.h x11, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x3358cd4f85dd5269 # load x3 with value 0x3358cd4f85dd5269
sw x3, 0(x2) # store 0x3358cd4f85dd5269 in memory
flh f2, 0(x2) # load 0x3358cd4f85dd5269 from memory into f2
fcvt.lu.h x11, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x35a76481cb7a5a25 # load x3 with value 0x35a76481cb7a5a25
sw x3, 0(x2) # store 0x35a76481cb7a5a25 in memory
flh f3, 0(x2) # load 0x35a76481cb7a5a25 from memory into f3
fcvt.lu.h x17, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc47f2833d158d318 # load x3 with value 0xc47f2833d158d318
sw x3, 0(x2) # store 0xc47f2833d158d318 in memory
flh f4, 0(x2) # load 0xc47f2833d158d318 from memory into f4
fcvt.lu.h x27, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfc7539f79591edbe # load x3 with value 0xfc7539f79591edbe
sw x3, 0(x2) # store 0xfc7539f79591edbe in memory
flh f5, 0(x2) # load 0xfc7539f79591edbe from memory into f5
fcvt.lu.h x12, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5a7a15ce96105f2 # load x3 with value 0x5a7a15ce96105f2
sw x3, 0(x2) # store 0x5a7a15ce96105f2 in memory
flh f6, 0(x2) # load 0x5a7a15ce96105f2 from memory into f6
fcvt.lu.h x23, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe6ea14b22a5efeb7 # load x3 with value 0xe6ea14b22a5efeb7
sw x3, 0(x2) # store 0xe6ea14b22a5efeb7 in memory
flh f7, 0(x2) # load 0xe6ea14b22a5efeb7 from memory into f7
fcvt.lu.h x23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x2b66ba5aeb3754a1 # load x3 with value 0x2b66ba5aeb3754a1
sw x3, 0(x2) # store 0x2b66ba5aeb3754a1 in memory
flh f8, 0(x2) # load 0x2b66ba5aeb3754a1 from memory into f8
fcvt.lu.h x7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x2079ca83b8487f58 # load x3 with value 0x2079ca83b8487f58
sw x3, 0(x2) # store 0x2079ca83b8487f58 in memory
flh f9, 0(x2) # load 0x2079ca83b8487f58 from memory into f9
fcvt.lu.h x10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x857c2d6d1c81fa02 # load x3 with value 0x857c2d6d1c81fa02
sw x3, 0(x2) # store 0x857c2d6d1c81fa02 in memory
flh f10, 0(x2) # load 0x857c2d6d1c81fa02 from memory into f10
fcvt.lu.h x15, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x9c0edd7b14df0615 # load x3 with value 0x9c0edd7b14df0615
sw x3, 0(x2) # store 0x9c0edd7b14df0615 in memory
flh f11, 0(x2) # load 0x9c0edd7b14df0615 from memory into f11
fcvt.lu.h x17, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x2de65692bc56725 # load x3 with value 0x2de65692bc56725
sw x3, 0(x2) # store 0x2de65692bc56725 in memory
flh f12, 0(x2) # load 0x2de65692bc56725 from memory into f12
fcvt.lu.h x3, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x66e2273b14eee82e # load x3 with value 0x66e2273b14eee82e
sw x3, 0(x2) # store 0x66e2273b14eee82e in memory
flh f13, 0(x2) # load 0x66e2273b14eee82e from memory into f13
fcvt.lu.h x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x8e80674fedbde59e # load x3 with value 0x8e80674fedbde59e
sw x3, 0(x2) # store 0x8e80674fedbde59e in memory
flh f14, 0(x2) # load 0x8e80674fedbde59e from memory into f14
fcvt.lu.h x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xe7599658ddd231e0 # load x3 with value 0xe7599658ddd231e0
sw x3, 0(x2) # store 0xe7599658ddd231e0 in memory
flh f15, 0(x2) # load 0xe7599658ddd231e0 from memory into f15
fcvt.lu.h x14, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xa08dbcaa451ce09 # load x3 with value 0xa08dbcaa451ce09
sw x3, 0(x2) # store 0xa08dbcaa451ce09 in memory
flh f16, 0(x2) # load 0xa08dbcaa451ce09 from memory into f16
fcvt.lu.h x5, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xeb455c92e2a39662 # load x3 with value 0xeb455c92e2a39662
sw x3, 0(x2) # store 0xeb455c92e2a39662 in memory
flh f17, 0(x2) # load 0xeb455c92e2a39662 from memory into f17
fcvt.lu.h x6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x2130aaa3bab571b9 # load x3 with value 0x2130aaa3bab571b9
sw x3, 0(x2) # store 0x2130aaa3bab571b9 in memory
flh f18, 0(x2) # load 0x2130aaa3bab571b9 from memory into f18
fcvt.lu.h x5, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x90bc0328fbfca17d # load x3 with value 0x90bc0328fbfca17d
sw x3, 0(x2) # store 0x90bc0328fbfca17d in memory
flh f19, 0(x2) # load 0x90bc0328fbfca17d from memory into f19
fcvt.lu.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x116d4a10d37389c2 # load x3 with value 0x116d4a10d37389c2
sw x3, 0(x2) # store 0x116d4a10d37389c2 in memory
flh f20, 0(x2) # load 0x116d4a10d37389c2 from memory into f20
fcvt.lu.h x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xfb4a4b91a7824b7c # load x3 with value 0xfb4a4b91a7824b7c
sw x3, 0(x2) # store 0xfb4a4b91a7824b7c in memory
flh f21, 0(x2) # load 0xfb4a4b91a7824b7c from memory into f21
fcvt.lu.h x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x54008e952b65ddc8 # load x3 with value 0x54008e952b65ddc8
sw x3, 0(x2) # store 0x54008e952b65ddc8 in memory
flh f22, 0(x2) # load 0x54008e952b65ddc8 from memory into f22
fcvt.lu.h x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x2958c4150901c37e # load x3 with value 0x2958c4150901c37e
sw x3, 0(x2) # store 0x2958c4150901c37e in memory
flh f23, 0(x2) # load 0x2958c4150901c37e from memory into f23
fcvt.lu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x4c17f9b986d61718 # load x3 with value 0x4c17f9b986d61718
sw x3, 0(x2) # store 0x4c17f9b986d61718 in memory
flh f24, 0(x2) # load 0x4c17f9b986d61718 from memory into f24
fcvt.lu.h x29, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x3ad648bd54e0d7fc # load x3 with value 0x3ad648bd54e0d7fc
sw x3, 0(x2) # store 0x3ad648bd54e0d7fc in memory
flh f25, 0(x2) # load 0x3ad648bd54e0d7fc from memory into f25
fcvt.lu.h x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x41e464a19ef85f90 # load x3 with value 0x41e464a19ef85f90
sw x3, 0(x2) # store 0x41e464a19ef85f90 in memory
flh f26, 0(x2) # load 0x41e464a19ef85f90 from memory into f26
fcvt.lu.h x24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x36639035b893ec4 # load x3 with value 0x36639035b893ec4
sw x3, 0(x2) # store 0x36639035b893ec4 in memory
flh f27, 0(x2) # load 0x36639035b893ec4 from memory into f27
fcvt.lu.h x19, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xcac255d8fbfaa4c3 # load x3 with value 0xcac255d8fbfaa4c3
sw x3, 0(x2) # store 0xcac255d8fbfaa4c3 in memory
flh f28, 0(x2) # load 0xcac255d8fbfaa4c3 from memory into f28
fcvt.lu.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xe2da6c8f88d72232 # load x3 with value 0xe2da6c8f88d72232
sw x3, 0(x2) # store 0xe2da6c8f88d72232 in memory
flh f29, 0(x2) # load 0xe2da6c8f88d72232 from memory into f29
fcvt.lu.h x31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x5c6b2cce5402ab93 # load x3 with value 0x5c6b2cce5402ab93
sw x3, 0(x2) # store 0x5c6b2cce5402ab93 in memory
flh f30, 0(x2) # load 0x5c6b2cce5402ab93 from memory into f30
fcvt.lu.h x12, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xed1d71b54a904e2c # load x3 with value 0xed1d71b54a904e2c
sw x3, 0(x2) # store 0xed1d71b54a904e2c in memory
flh f31, 0(x2) # load 0xed1d71b54a904e2c from memory into f31
fcvt.lu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fcvt.lu.h x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fcvt.lu.h x17, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fcvt.lu.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fcvt.lu.h x30, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fcvt.lu.h x12, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fcvt.lu.h x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fcvt.lu.h x13, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fcvt.lu.h x31, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fcvt.lu.h x23, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fcvt.lu.h x8, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fcvt.lu.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fcvt.lu.h x1, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fcvt.lu.h x20, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fcvt.lu.h x14, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fcvt.lu.h x16, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fcvt.lu.h x22, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fcvt.lu.h x25, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fcvt.lu.h x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fcvt.lu.h x29, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fcvt.lu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fcvt.lu.h x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fcvt.lu.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fcvt.lu.h x9, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fcvt.lu.h x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fcvt.lu.h x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fcvt.lu.h x18, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fcvt.lu.h x12, f3, dyn # perform operation
fcvt.lu.h x12, f3, rdn # perform operation
fcvt.lu.h x12, f3, rmm # perform operation
fcvt.lu.h x12, f3, rne # perform operation
fcvt.lu.h x12, f3, rtz # perform operation
fcvt.lu.h x12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fcvt.lu.h x28, f30, dyn # perform operation
fcvt.lu.h x28, f30, rdn # perform operation
fcvt.lu.h x28, f30, rmm # perform operation
fcvt.lu.h x28, f30, rne # perform operation
fcvt.lu.h x28, f30, rtz # perform operation
fcvt.lu.h x28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fcvt.lu.h x27, f24, dyn # perform operation
fcvt.lu.h x27, f24, rdn # perform operation
fcvt.lu.h x27, f24, rmm # perform operation
fcvt.lu.h x27, f24, rne # perform operation
fcvt.lu.h x27, f24, rtz # perform operation
fcvt.lu.h x27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fcvt.lu.h x22, f8, dyn # perform operation
fcvt.lu.h x22, f8, rdn # perform operation
fcvt.lu.h x22, f8, rmm # perform operation
fcvt.lu.h x22, f8, rne # perform operation
fcvt.lu.h x22, f8, rtz # perform operation
fcvt.lu.h x22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fcvt.lu.h x28, f19, dyn # perform operation
fcvt.lu.h x28, f19, rdn # perform operation
fcvt.lu.h x28, f19, rmm # perform operation
fcvt.lu.h x28, f19, rne # perform operation
fcvt.lu.h x28, f19, rtz # perform operation
fcvt.lu.h x28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fcvt.lu.h x22, f5, dyn # perform operation
fcvt.lu.h x22, f5, rdn # perform operation
fcvt.lu.h x22, f5, rmm # perform operation
fcvt.lu.h x22, f5, rne # perform operation
fcvt.lu.h x22, f5, rtz # perform operation
fcvt.lu.h x22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x22, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fcvt.lu.h x19, f22, dyn # perform operation
fcvt.lu.h x19, f22, rdn # perform operation
fcvt.lu.h x19, f22, rmm # perform operation
fcvt.lu.h x19, f22, rne # perform operation
fcvt.lu.h x19, f22, rtz # perform operation
fcvt.lu.h x19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fcvt.lu.h x1, f9, dyn # perform operation
fcvt.lu.h x1, f9, rdn # perform operation
fcvt.lu.h x1, f9, rmm # perform operation
fcvt.lu.h x1, f9, rne # perform operation
fcvt.lu.h x1, f9, rtz # perform operation
fcvt.lu.h x1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fcvt.lu.h x19, f17, dyn # perform operation
fcvt.lu.h x19, f17, rdn # perform operation
fcvt.lu.h x19, f17, rmm # perform operation
fcvt.lu.h x19, f17, rne # perform operation
fcvt.lu.h x19, f17, rtz # perform operation
fcvt.lu.h x19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fcvt.lu.h x3, f27, dyn # perform operation
fcvt.lu.h x3, f27, rdn # perform operation
fcvt.lu.h x3, f27, rmm # perform operation
fcvt.lu.h x3, f27, rne # perform operation
fcvt.lu.h x3, f27, rtz # perform operation
fcvt.lu.h x3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fcvt.lu.h x9, f25, dyn # perform operation
fcvt.lu.h x9, f25, rdn # perform operation
fcvt.lu.h x9, f25, rmm # perform operation
fcvt.lu.h x9, f25, rne # perform operation
fcvt.lu.h x9, f25, rtz # perform operation
fcvt.lu.h x9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fcvt.lu.h x24, f11, dyn # perform operation
fcvt.lu.h x24, f11, rdn # perform operation
fcvt.lu.h x24, f11, rmm # perform operation
fcvt.lu.h x24, f11, rne # perform operation
fcvt.lu.h x24, f11, rtz # perform operation
fcvt.lu.h x24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fcvt.lu.h x26, f31, dyn # perform operation
fcvt.lu.h x26, f31, rdn # perform operation
fcvt.lu.h x26, f31, rmm # perform operation
fcvt.lu.h x26, f31, rne # perform operation
fcvt.lu.h x26, f31, rtz # perform operation
fcvt.lu.h x26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fcvt.lu.h x27, f20, dyn # perform operation
fcvt.lu.h x27, f20, rdn # perform operation
fcvt.lu.h x27, f20, rmm # perform operation
fcvt.lu.h x27, f20, rne # perform operation
fcvt.lu.h x27, f20, rtz # perform operation
fcvt.lu.h x27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fcvt.lu.h x8, f22, dyn # perform operation
fcvt.lu.h x8, f22, rdn # perform operation
fcvt.lu.h x8, f22, rmm # perform operation
fcvt.lu.h x8, f22, rne # perform operation
fcvt.lu.h x8, f22, rtz # perform operation
fcvt.lu.h x8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fcvt.lu.h x27, f11, dyn # perform operation
fcvt.lu.h x27, f11, rdn # perform operation
fcvt.lu.h x27, f11, rmm # perform operation
fcvt.lu.h x27, f11, rne # perform operation
fcvt.lu.h x27, f11, rtz # perform operation
fcvt.lu.h x27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fcvt.lu.h x29, f28, dyn # perform operation
fcvt.lu.h x29, f28, rdn # perform operation
fcvt.lu.h x29, f28, rmm # perform operation
fcvt.lu.h x29, f28, rne # perform operation
fcvt.lu.h x29, f28, rtz # perform operation
fcvt.lu.h x29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fcvt.lu.h x1, f26, dyn # perform operation
fcvt.lu.h x1, f26, rdn # perform operation
fcvt.lu.h x1, f26, rmm # perform operation
fcvt.lu.h x1, f26, rne # perform operation
fcvt.lu.h x1, f26, rtz # perform operation
fcvt.lu.h x1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fcvt.lu.h x22, f19, dyn # perform operation
fcvt.lu.h x22, f19, rdn # perform operation
fcvt.lu.h x22, f19, rmm # perform operation
fcvt.lu.h x22, f19, rne # perform operation
fcvt.lu.h x22, f19, rtz # perform operation
fcvt.lu.h x22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fcvt.lu.h x9, f26, dyn # perform operation
fcvt.lu.h x9, f26, rdn # perform operation
fcvt.lu.h x9, f26, rmm # perform operation
fcvt.lu.h x9, f26, rne # perform operation
fcvt.lu.h x9, f26, rtz # perform operation
fcvt.lu.h x9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fcvt.lu.h x31, f14, dyn # perform operation
fcvt.lu.h x31, f14, rdn # perform operation
fcvt.lu.h x31, f14, rmm # perform operation
fcvt.lu.h x31, f14, rne # perform operation
fcvt.lu.h x31, f14, rtz # perform operation
fcvt.lu.h x31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fcvt.lu.h x13, f17, dyn # perform operation
fcvt.lu.h x13, f17, rdn # perform operation
fcvt.lu.h x13, f17, rmm # perform operation
fcvt.lu.h x13, f17, rne # perform operation
fcvt.lu.h x13, f17, rtz # perform operation
fcvt.lu.h x13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fcvt.lu.h x12, f21, dyn # perform operation
fcvt.lu.h x12, f21, rdn # perform operation
fcvt.lu.h x12, f21, rmm # perform operation
fcvt.lu.h x12, f21, rne # perform operation
fcvt.lu.h x12, f21, rtz # perform operation
fcvt.lu.h x12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fcvt.lu.h x20, f10, dyn # perform operation
fcvt.lu.h x20, f10, rdn # perform operation
fcvt.lu.h x20, f10, rmm # perform operation
fcvt.lu.h x20, f10, rne # perform operation
fcvt.lu.h x20, f10, rtz # perform operation
fcvt.lu.h x20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fcvt.lu.h x29, f15, dyn # perform operation
fcvt.lu.h x29, f15, rdn # perform operation
fcvt.lu.h x29, f15, rmm # perform operation
fcvt.lu.h x29, f15, rne # perform operation
fcvt.lu.h x29, f15, rtz # perform operation
fcvt.lu.h x29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x29, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fcvt.lu.h x14, f26, dyn # perform operation
fcvt.lu.h x14, f26, rdn # perform operation
fcvt.lu.h x14, f26, rmm # perform operation
fcvt.lu.h x14, f26, rne # perform operation
fcvt.lu.h x14, f26, rtz # perform operation
fcvt.lu.h x14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fcvt.lu.h x23, f25, dyn # perform operation
fcvt.lu.h x23, f25, rdn # perform operation
fcvt.lu.h x23, f25, rmm # perform operation
fcvt.lu.h x23, f25, rne # perform operation
fcvt.lu.h x23, f25, rtz # perform operation
fcvt.lu.h x23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fcvt.lu.h x24, f9, dyn # perform operation
fcvt.lu.h x24, f9, rdn # perform operation
fcvt.lu.h x24, f9, rmm # perform operation
fcvt.lu.h x24, f9, rne # perform operation
fcvt.lu.h x24, f9, rtz # perform operation
fcvt.lu.h x24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x5c1b4e9be9d29a07 # load x3 with value 0x5c1b4e9be9d29a07
sw x3, 0(x2) # store 0x5c1b4e9be9d29a07 in memory
flh f18, 0(x2) # load 0x5c1b4e9be9d29a07 from memory into f18
fcvt.lu.h x7, f18, dyn # perform operation
fcvt.lu.h x7, f18, rdn # perform operation
fcvt.lu.h x7, f18, rmm # perform operation
fcvt.lu.h x7, f18, rne # perform operation
fcvt.lu.h x7, f18, rtz # perform operation
fcvt.lu.h x7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)


# Testcase Improper NaNBoxed argument test (Value 0x0 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fcvt.lu.h x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f11, 0(x2) # load 0xfffe8000 from memory into f11
fcvt.lu.h x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f26, 0(x2) # load 0x7fff3c00 from memory into f26
fcvt.lu.h x22, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f7, 0(x2) # load 0xbeefbc00 from memory into f7
fcvt.lu.h x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f15, 0(x2) # load 0xfeff0400 from memory into f15
fcvt.lu.h x2, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f13, 0(x2) # load 0x0fff8400 from memory into f13
fcvt.lu.h x29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f15, 0(x2) # load 0xefff7bff from memory into f15
fcvt.lu.h x23, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 144)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f28, 0(x2) # load 0xc0defbff from memory into f28
fcvt.lu.h x9, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f9, 0(x2) # load 0x4f1a7c00 from memory into f9
fcvt.lu.h x1, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f9, 0(x2) # load 0x0ffffc00 from memory into f9
fcvt.lu.h x2, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f23, 0(x2) # load 0xffef7e00 from memory into f23
fcvt.lu.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f22, 0(x2) # load 0xfeef7fff from memory into f22
fcvt.lu.h x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f6, 0(x2) # load 0xa1b27c01 from memory into f6
fcvt.lu.h x28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f30, 0(x2) # load 0x4fd77dff from memory into f30
fcvt.lu.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

.EQU SIGSIZE,2008


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
